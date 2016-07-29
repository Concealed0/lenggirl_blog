<?php
namespace Home\Controller;
use Think\Controller;
class CommonController extends Controller{
	function _initialize() {
		header("Content-Type:text/html; charset=utf-8");
	}
	/*空操作*/
	function _empty() {
		redirect(__ROOT__.'/Public/404.html');
	}
	function error404() {
		redirect(__ROOT__.'/Public/404.html');
	}
}