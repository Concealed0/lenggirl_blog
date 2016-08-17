<?php
/**
 * 公共控制表，不需权限
 * 时间：2015.8.24
 * author:一只尼玛
 * php.lenggirl.com
·*/
namespace Admin\Controller;
use Think\Controller;
class PublicController extends Controller {
    public function index(){
        $this->display('login');
    }

    //登录页
    public function login(){
        $this->display();
    }

    //登出
    public function logout(){
        if($_SESSION[C('USER_AUTH_KEY')]) {
            session_destroy();
            $this->redirect("Public/login");
        }else {
            $this->error('已经登出！',U('Public/login'));
        }
    }

    //验证登陆表单
    public function checkLogin(){
        $username=I('username','');
        $password=I('password','');
        $verify_code=I('verify','');
        if($username==''||$password==''||$verify_code==''){
            $this->redirect("Public/login");
        }
        if(!$this->_verifyCheck($verify_code)){
            $this->error("验证码错误！！！");
        }
        $user=M('user')->where(array('username'=>$username))->find();
        if(!$user||md5($password)!=$user['password']){
            $this->error("用户名或密码错误！！！");
        }
		if(in_array($user['username'],C('ADMIN_AUTH_KEY'))){ //以用户名来判断是否是超级管理员，绕过验证，不用用户组来判断的原因是用户组有时候是中文    ，而且常删除或更改。
        }else{
			 if(!$user['status']){  //status为0时表示锁定
			 $this->error("用户被锁定！！！");}
		}
            $data['lastloginip'] =  get_client_ip();
            $data['lastlogintime']=time();
            if(M("user")->where(array('id'=>$user['id']))->save($data)){
                M("user")->where(array('id'=>$user['id']))->setInc("loginnum");
            }
            session(C('USER_AUTH_KEY'),$user['id']);
            session('uname',$user['username']);
			session('nickname',$user['nickname']);
            $this->success("登录成功...",U("Index/index"));
    }

    //验证码
    public function verify(){
        $config = array(    
            'fontSize'    =>    20,     // 验证码字体大小    
            'length'      =>    4,      // 验证码位数    
            'useNoise'    =>   false,  // 关闭验证码杂点
            'imageH'    =>  50,          // 验证码图片高度
            'imageW'    =>  200,          // 验证码图片宽度
        );
        $Verify =new \Think\Verify($config);
        $Verify->entry();
    }

    //验证验证码
    private function _verifyCheck($code, $id = ''){
        $verify = new \Think\Verify();
        return $verify->check($code, $id);
    }
    
    //修改密码
    public function changepass(){  //不能用post
    	$password=I('password','1','md5');
    	$username=I('session.uname');
    	$newpassword=I('newpassword','','md5');
    	$user=M('User')->where(array('username'=>$username))->find();
    	if(!$user){
    		$this->ajaxReturn("找不到该用户");
    	}
    	if($password!==$user['password']){
    		$this->ajaxReturn("原始密码错误");
    	}else{
    		$data['password']=$newpassword;//密码和原来一样返回0
    		if(false===M('User')->where(array('username'=>$username))->save($data)){
    			$this->ajaxReturn("修改失败");
    		}else{
    			$this->ajaxReturn("修改成功");
    		}
    	} 
    }
    
    
}

?>