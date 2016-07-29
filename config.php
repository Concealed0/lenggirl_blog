<?php
return array(
'FILE_UPLOAD_TYPE' => 'Sae',
	/* 1.数据库设置 */
    'DB_TYPE'               =>  'mysql',     // 数据库类型
    'DB_HOST'               =>  localhost,// 服务器地址
    'DB_NAME'               =>  'a1201202331',          // 数据库名
    'DB_USER'               =>  a1201202331,      // 用户名
    'DB_PWD'                =>  d9336ebe,          // 密码
    'DB_PORT'               =>  3306,        // 端口
    'DB_PREFIX'             =>  'think_',    // 数据库表前缀
	'URL_MODEL'             =>  2,       // URL访问模式,可选参数0、1、2、3,代表以下四种模式：
    // 0 (普通模式); 1 (PATHINFO 模式); 2 (REWRITE  模式); 3 (兼容模式)  默认为PATHINFO 模式
	
	/* 2.权限设置 */
	'AUTH_CONFIG' => array(
    'AUTH_ON' => true, //认证开关
	'AUTH_TYPE' => 1, // 认证方式，1为时时认证；2为登录认证。
	'AUTH_GROUP' => 'think_auth_group', //用户组数据表名
	'AUTH_GROUP_ACCESS' => 'think_auth_group_access', //用户组明细表
	'AUTH_RULE' => 'think_auth_rule', //权限规则表
	'AUTH_USER' => 'think_user'//用户信息表
	),
  
	'USER_AUTH_KEY'=>'userkey',
	'ADMIN_AUTH_KEY'=>array('admins','hunter'),
	
	/* 3.路由设置 
	'URL_ROUTER_ON'         =>  true,   // 是否开启URL路由
    'URL_ROUTE_RULES'       =>  array(), // 默认路由规则 针对模块
    'URL_MAP_RULES'         =>  array(), // URL映射定义规则
	*/
	
	/* 4. 模板配置 
	'TMPL_PARSE_STRING' =>array(
	'__PUBLIC__' => '/Public', // 更改默认的/Public 替换规则
	'__PJS__' => '/Public/Js', // 增加新的JS类库路径替换规则
	'__PCSS__' => '/Public/Css',
	'__PIMAGES__' => '/Public/Images',
	'__PO__' => '/Public/Others',
	'__UPLOAD__' => '/Uploads', // 增加新的上传路径替换规则
	),*/
		
	'pp'=>6 //显示的页数
);