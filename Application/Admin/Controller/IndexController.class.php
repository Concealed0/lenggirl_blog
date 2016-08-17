<?php
/**
 * 后台登陆控制表
 * 时间：2015.8.24
 * author:一只尼玛
 * php.lenggirl.com
·*/
namespace Admin\Controller;
use Think\Controller;
class IndexController extends Controller {
   public function index() {
	   
	if(!C('AUTH_CONFIG.AUTH_ON')){
			$this->display();
			return true;
		}
	if(!isset($_SESSION[C('USER_AUTH_KEY')])){ //判断是否有uid
            $this->redirect("Public/login");
        }else{
				$this->display();
		}
  }
}