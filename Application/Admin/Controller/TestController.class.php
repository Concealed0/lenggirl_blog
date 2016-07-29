<?php
namespace Admin\Controller;
use Think\Controller;
class TestController extends Controller{
	public function index(){
		$groupid=M('AuthGroupAccess')->where(array(uid=>'1'))->join('think_auth_group ON think_auth_group_access.group_id=think_auth_group.id')->field('title')->select();
		print_r($groupid);
	}
}

?>