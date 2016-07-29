<?php
/**
 * 权限继承控制表
 * 时间：2015.8.24
 * author:一只尼玛
 * www.lenggirl.com
·*/
namespace Admin\Controller;
use Think\Controller;
class CommomController extends Controller {
    public function _initialize () {
		if(!C(AUTH_CONFIG.AUTH_ON)){//1.开启了权限控制
			return true;
		}
        if(!isset($_SESSION[C('USER_AUTH_KEY')])){ //2.用户是否有登陆
            $this->redirect("Public/login");
        }
        $Auth = new \Think\Auth();//3.超级管理员和节点权限
        $module_name=MODULE_NAME.'/'.CONTROLLER_NAME.'/'.ACTION_NAME;
        if(in_array($_SESSION['uname'],C('ADMIN_AUTH_KEY'))){ //以用户名来判断是否是超级管理员，绕过验证，不用用户组来判断的原因是用户组有时候是中文    ，而且常删除或更改。
            return true;
        }
        if(!$Auth->check($module_name,$_SESSION[C('USER_AUTH_KEY')])){
            $this->error('没有权限');
        }
    }
}