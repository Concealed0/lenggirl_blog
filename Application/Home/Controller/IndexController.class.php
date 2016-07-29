<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends CommonController {
    public function index(){
    //目录
    $p=I('p','1');
    $cp=I('cp','1');
    $Category = M('Category'); 
    $cate = $Category->where('status=1')->order('`order` desc')->select();
    $this->assign('cate',$cate );// 赋值数据集
	
	//文章
	$Paper = M('Paper');
	$paper = $Paper->where('status=1')->order('`order` desc,createtime desc')->page($p,C('pp'))->select();
	foreach ($paper as &$pa){
		$paa=M('Category')->where(array(id=>$pa['cid']))->find();
		$pa['cname']=$paa['title'];
		$pa['createtime']=date('Y-m-d H:i',$pa['createtime']);
	}
	$this->assign('paper',$paper);
	
	$count = $Paper->where('status=1')->count();
	$Page = getpage($count,C('pp'));
	$show1 = $Page->show();
	$this->assign('page1',$show1);
	
//评论
	$Comment = M('Comment');
	$comment = $Comment->where('status=1')->order('createtime desc')->page($cp,C('pp'))->select();
	foreach ($comment as &$co){
		$coo=M('Paper')->where(array(id=>$co['pid']))->find();
		if($coo){
		$co['pname']=$coo['title'];}
		else{
			$co['pname']='男神';
		}
		$co['createtime']=date('Y-m-d H:i',$co['createtime']);
	}
	$this->assign('comment',$comment);
	
	$count = $Comment->where('status=1')->count();
	$Page = cpgetpage($count,C('pp'));
	$show2 = $Page->show();
	$this->assign('page2',$show2); 
	
	
	
	
	
	
	$this->display(); 
    }
    
    public function category(){
    	//目录
    	$p=I('p','1');
    	$id=I('id','');
    	$cp=I('cp','1');
    	if($id==''){
    		$this->error404();
    	}
    	$Category = M('Category');
    	$cate = $Category->where('status=1')->order('`order` desc')->select();
    	$this->assign('cate',$cate );// 赋值数据集
    	
    	//文章
    	$Paper = M('Paper');
    	$paper = $Paper->where('status=1')->where(array(cid=>$id))->order('`order` desc,createtime desc')->page($p,C('pp'))->select();
    	foreach ($paper as &$pa){
    		$paa=M('Category')->where(array(id=>$pa['cid']))->find();
    		$pa['cname']=$paa['title'];
    		$pa['createtime']=date('Y-m-d H:i',$pa['createtime']);
    	}
    	$this->assign('paper',$paper);
    	
    	$count = $Paper->where('status=1')->where(array(cid=>$id))->count();
    	$Page = getpage($count,C('pp'));
    	$show1 = $Page->show();
    	$this->assign('page1',$show1);
    	
    	//评论
    	$Comment = M('Comment');
    	$comment = $Comment->where('status=1')->order('createtime desc')->page($cp,C('pp'))->select();
    	foreach ($comment as &$co){
    		$coo=M('Paper')->where(array(id=>$co['pid']))->find();
    		if($coo){
    			$co['pname']=$coo['title'];
    			$co['createtime']=date('Y-m-d H:i',$co['createtime']);}
    			else{
    				$co['pname']='男神';
    			}
    	}
    	$this->assign('comment',$comment);
    	
    	$count = $Comment->where('status=1')->count();
    	$Page = cpgetpage($count,C('pp'));
    	$show2 = $Page->show();
    	$this->assign('page2',$show2);
    	
    	$this->display('index');
    }
    
    public function addcomment() {
    	$nickname=I('nickname'.'');
    	if($nickname==''){
			$this->error("昵称不能为空");
		}
		$email=I('email','',FILTER_VALIDATE_EMAIL);
		if($email==''){
			$this->error('邮箱格式错误');
		}
		$comment=I('comment');
		$comment=nl2br($comment);
		$pid=I('pid','0');
		$data['nickname']=$nickname;
		$data['email']=$email;
		$data['content']=$comment;
		$data['createtime']=time();
		$data['pid']=$pid;
		if(M('Comment')->add($data)){
			$this->success('吐槽成功');
		}else{
			$this->error('吐槽失败');
		}
    }
    /*<empty name="name">
name为空
<else />
name不为空
</empty>*/
    public function paper() {
    	$Category = M('Category');
    	$cate = $Category->where('status=1')->order('`order` desc')->select();
    	$this->assign('cate',$cate );// 赋值数据集
    	
    	$pid=I('pid','');
    	if($pid==''){
    		$this->error("找不到该文章");
    	}
    	$papers=M('Paper')->where(array('id'=>$pid))->find();
    	
    	if($papers){
			M('Paper')->where(array('id'=>$pid))->setInc('view');
    		$map['createtime']=array('gt',$papers['createtime']);
    		$map['cid']=array('eq',$papers['cid']);
    		$next=M('Paper')->where($map)->find();
    		if($next){
    			$this->assign('next',$next['id']);
    			$this->assign('nexttitle',$next['title']);
    		}
    		$map1['createtime']=array('lt',$papers['createtime']);
    		$map1['cid']=array('eq',$papers['cid']);
    		$pre=M('Paper')->where($map1)->find();
    		if($pre){
    			$this->assign('pre',$pre['id']);
    			$this->assign('pretitle',$pre['title']);
    		}
    		$papers['createtime']=date('Y-m-d H-i-s',$papers['createtime']);
    		$this->assign('paper',$papers);
    	}else{
    		$this->error("找不到该文章");
    	}
    	
    	
    	/*评论*/
    	$p=I('p','1');
    	$Comment = M('Comment');
    	$comment = $Comment->where('status=1')->where(array(pid=>$pid))->order('createtime desc')->page($p,C('pp'))->select();
    	foreach ($comment as &$co){
    		$co['createtime']=date('Y-m-d H:i:s',$co['createtime']);
    	}
    	$this->assign('comment',$comment);
    	$count = $Comment->where('status=1')->where(array(pid=>$pid))->count();
    	$Page = getpage($count,C('pp'));
    	$show = $Page->show();
    	$this->assign('page',$show);
    	
    	$this->display();
    }
}

?>