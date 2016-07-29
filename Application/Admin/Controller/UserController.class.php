<?php
/**
 * 用户控制表
 * 时间：2015.8.24
 * author:一只尼玛
 * www.lenggirl.com
·*/

namespace Admin\Controller;
use Think\Controller;
class UserController extends CommomController {
	//列出用户
	public function listuser(){ $this->display();}
	public function listusers(){ 
		$total=M('User')->count();
		$pageSize =I('rows','');
		$page = I('page','');
		$pageStart = ($page - 1) * $pageSize;
		$rows =M('User')->limit($pageStart.','.$pageSize)->select();
		foreach($rows as &$row){
		$gg=array();
		//找出所属用户组
		$groupid=M('AuthGroupAccess')->where(array(uid=>$row['id']))->join('think_auth_group ON think_auth_group_access.group_id=think_auth_group.id')->field('title')->select();
		foreach($groupid as $g){
			$gg[]=$g['title'];
		}
		$grouptitle=implode(',', $gg);
		$row['grouptitle']=$grouptitle;
		$row['lastlogintime']=date('Y-m-d:H-i-s', $row['lastlogintime']);
		$row['createtime']=date('Y-m-d:H-i-s', $row['createtime']);
		$row['updatetime']=date('Y-m-d:H-i-s', $row['updatetime']);
		}
		$data['total']=$total;
		$data['rows']=$rows;
		$this->ajaxReturn($data);
	}
	
	//更改用户信息
	public function updateuser(){
		$userid=I('id','');
		if($userid==''){
			$this->error("找不到该用户");
		}
		$User = M("User"); // 实例化User对象
		$data = $User->where(array('id'=>$userid))->find();
		if($data){
			//查找已有用户组
			$groupid=M('AuthGroupAccess')->where(array(uid=>$data['id']))->join('think_auth_group ON think_auth_group_access.group_id=think_auth_group.id')->field('title')->select();
			foreach($groupid as $g){
				$gg[]=$g['title'];
			}
			//查找所有用户组
			$groupall=M('AuthGroup')->field('id,title')->select();
			foreach($groupall as &$all){
				if(in_array($all['title'], $gg)){
					$all['check']='1';
				}else{
					$all['check']='0';
				}
			}
			$this->assign($data);
			$this->assign("groups",$groupall);
			$this->display();
		}else{
			$this->error("找不到该用户");
		}
	}
	
	public function updateusers(){
		$userid=I('id','');
		if($userid==''){
			$this->error("找不到该用户");
		}
		
		$nickname=I('nickname','');
		if($nickname==''){
			$this->error("昵称不能为空");
		}
			
		$User = M("User"); // 实例化User对象
		$data['id'] = $userid;
		$data['nickname'] = $nickname;
		$data['status']=I('status','1');	
		$data['updatetime']=time();
		$email=I('email','',FILTER_VALIDATE_EMAIL);
		if($email==''){
			$this->error('邮箱格式错误');
		}
		$data['email']=$email;
		$changep=I('changep','');
		//更改密码
		if($changep=='y'){
			$password1=I('password1','');
			$password2=I('password2','');
				if($password1==''||$password2==''){
					$this->error("密码不能为空");
				}else if($password1!=$password2){
					$this->error("两次密码不一致");
				}
			$data['password']=md5($password2);	
		}
		
		if(false!==$User->save($data)){
			$groups=I('groups');
			M('AuthGroupAccess')->where(array(uid=>$userid))->delete();
			foreach($groups as $gg){
				$datas=array();
				$datas['uid']=$userid;
				$datas['group_id']=$gg;
				M('AuthGroupAccess')->data($datas)->add();
			}
			$this->success("修改成功",	U('User/updateuser?id='.$userid));
		}else{
			$this->error("修改失败");
		}
	}
	
	//增加用户
	public function adduser(){
		$this->display();
	}
	public function addusers(){
		$nickname=I('nickname','');
		$username=I('username','');
		$status=I('status','1');
		if($username==''){
			$this->error("用户名不能为空");
		}
		if($nickname==''){
			$this->error("昵称不能为空");
		}
		$email=I('email','',FILTER_VALIDATE_EMAIL);
		if($email==''){
			$this->error('邮箱格式错误');
		}
		$password1=I('password1','');
		$password2=I('password2','');
		if($password1==''||$password2==''){
			$this->error("密码不能为空");
		}else if($password1!=$password2){
			$this->error("两次密码不一致");
		}
		
		if(M('User')->where(array(username=>$username))->find()){
			$this->error("该用户已存在");
		}else{
			$data['username']=$username;
			$data['nickname']=$nickname;
			$data['password']=md5($password2);
			$data['email']=$email;
			$data['status']=$status;
			$data['lastloginip']=get_client_ip();
			$data['createtime']=time();
			if(M('User')->add($data)){
				$this->success("添加成功");
			}else{
				$this->error("添加失败");
			}
		}
	}
	
	//删除用户
	public function deleteuser(){
		$id=I('id','');
		if($id==''){
			$this->ajaxReturn("找不到用户");
		}
		$user=M('User')->where(array(id=>$id))->find();
		if(in_array($user['username'], C('ADMIN_AUTH_KEY'))){
			$this->ajaxReturn("神一样的存在，不能删除");
		}
		if(M('User')->where(array(id=>$id))->delete()){
			$this->ajaxReturn("成功删除");
		}else{
			$this->ajaxReturn("删除失败");
		}
	}
 	
	//用户组管理
	public function listgroup(){
		$this->display();}
		
		public function listgroups(){
			$total=M('AuthGroup')->count();
			$pageSize =I('rows','');
			$page = I('page','');
			$pageStart = ($page - 1) * $pageSize;
			$rows =M('AuthGroup')->limit($pageStart.','.$pageSize)->select();
			foreach($rows as &$row){
				$ruletitle=array();
				$rule=array();
				$rule=explode(',', $row['rules']);
				foreach($rule as $r){
					$ruletitle[]=M('AuthRule')->where(array(id=>$r))->getField("title");
				}
				$row['rulestitle']=implode(',', $ruletitle);
			}
			$data['total']=$total;
			$data['rows']=$rows;
			$this->ajaxReturn($data);
		}
		
		//更改用户组信息
		public function updategroup(){
			$userid=I('id','');
			if($userid==''){
				$this->error("找不到该用户");
			}
			$User = M("AuthGroup"); 
			$data = $User->where(array('id'=>$userid))->find();
			if($data){
				$rules=M('AuthRule')->field('id,title,name')->select();//查找所有规则
				//查找该用户组已有规则
				$grouprule=$User->where(array('id'=>$userid))->getField('rules');
				$rule=explode(',', $grouprule);
				foreach($rules as &$r){
					if(in_array($r['id'],$rule)){
						$r['check']=1;
					}else{
						$r['check']=0;
					}
				}
				$this->assign('id',$data['id']);
				$this->assign('title',$data['title']);
				$this->assign('status',$data['status']);
				$this->assign('rules',$rules);
				$this->display();
			}else{
				$this->error("找不到该用户组");
			}
		}
		
		public function updategroups(){
			$userid=I('id','');
			if($userid==''){
				$this->error("找不到该用户组");
			}
			$title=I('title','');
			if($title==''){
				$this->error("名称不能为空");
			}
			$data['title']=$title;
			$data['status']=I('status','1');
			$rules=I('rules');
			if(!empty($rules)){
				$data['rules']=implode(',', $rules);
			}else{
				$data['rules']='';
			}
			if(false!==M('AuthGroup')->where(array(id=>$userid))->save($data)){
				$this->success("修改成功",	U('User/updategroup?id='.$userid));
			}else{
				$this->error("更改失败");
			}
		}
		
		//添加用户组
		//增加用户
		public function addgroup(){
			$rules=M('AuthRule')->field('id,title,name')->select();//查找所有规则
			$this->assign('rules',$rules);
			$this->display();
		}
		public function addgroups(){
			$title=I('title','');
			$status=I('status','1');
			if($title==''){
				$this->error("用户组名不能为空");
			}
			$rules=I('rules');
			if(!empty($rules)){
				$data['rules']=implode(',', $rules);
			}else{
				$data['rules']='';
			}
			$data['title']=$title;
			$data['status']=$status;
			if(M('AuthGroup')->add($data)){
				$this->success("更改成功");
			}else{
				$this->error("更改失败");
			}
		}
		
		//删除用户组
		public function deletegroup(){
			$id=I('id','');
			if($id==''){
				$this->ajaxReturn("找不到该用户组");
			}
			if(M('AuthGroupAccess')->where(array('group_id'=>$id))->select()){
				$this->ajaxReturn("用户组下有用户，不能删除");
			}
			if(M('AuthGroup')->where(array(id=>$id))->delete()){
				$this->ajaxReturn("成功删除");
			}else{
				$this->ajaxReturn("删除出错");
			}
		}
		
		//规则
		//列出规则
		public function listrule(){ $this->display();}
		public function listrules(){
			$total=M('AuthRule')->count();
			$pageSize =I('rows','');
			$page = I('page','');
			$pageStart = ($page - 1) * $pageSize;
			$rows =M('AuthRule')->limit($pageStart.','.$pageSize)->select();
			$data['total']=$total;
			$data['rows']=$rows;
			$this->ajaxReturn($data);
		}
		
		//更改规则
		public function updaterule(){
			$userid=I('id','');
			if($userid==''){
				$this->error("找不到该规则");
			}
			$Rule = M("AuthRule");
			$data = $Rule->where(array('id'=>$userid))->find();
			if($data){
				$this->assign('id',$data['id']);
				$this->assign('name',$data['name']);
				$this->assign('status',$data['status']);
				$this->assign('title',$data['title']);
				$this->assign('condition',$data['condition']);
				$this->display();
			}else{
				$this->error("找不到该规则");
			}
		}
		
		public function updaterules(){
			$userid=I('id','');
			if($userid==''){
				$this->error("找不到该用户组");
			}
			$name=I('name','');
			if($name==''){
				$this->error("规则名称不能为空");
			}
			$title=I('title','');
			if($title==''){
				$this->error("规则名称不能为空");
			}
			$data['name']=$name;
			$data['title']=$title;
			$data['status']=I('status','1');
			$data['condition']=I('condition','');
			if(false!==M('AuthRule')->where(array(id=>$userid))->save($data)){
				$this->success("修改成功",	U('User/updaterule?id='.$userid));
			}else{
				$this->error("更改失败");
			}
		}
		
		//增加规则
		public function addrule(){
			$this->display();
		}
		public function addrules(){
			$name=I('name','');
			if($name==''){
				$this->error("规则名称不能为空");
			}
			$title=I('title','');
			if($title==''){
				$this->error("规则名称不能为空");
			}
			$data['name']=$name;
			$data['title']=$title;
			$data['status']=I('status','1');
			$data['condition']=I('condition','');
			if(M('AuthRule')->add($data)){
				$this->success("添加成功");
			}else{
				$this->error("添加失败");
			}
		}
		
		//删除规则
		public function deleterule(){
			$id=I('id','');
			if($id==''){
				$this->ajaxReturn("不存在该规则");
			}
			if(!M('AuthRule')->where(array('id'=>$id))->find()){
				$this->ajaxReturn("找不到该规则");
			}else{
				$group=M('AuthGroup')->select();
				foreach ($group as $g){
					$temp=array();
					$temp=explode(',', $g['rules']);
						if(in_array($id, $temp)){
							$this->ajaxReturn("有用户组用了该规则");
						}
				}
				if(M('AuthRule')->where(array('id'=>$id))->delete()){
					$this->ajaxReturn("删除成功");
				}else{
					$this->ajaxReturn("删除失败");
				}
			}
		}
}