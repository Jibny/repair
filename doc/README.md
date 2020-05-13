# repair-system-design
```sql
DROP TABLE IF EXISTS `rsp_repair_online`;
CREATE TABLE `rsp_repair_online` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
	`category` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '报修分类',
	`area` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '区域',
	`dorm` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '宿舍楼',
	`room` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '房间号',
	`user_number` BIGINT ( 64 ) UNSIGNED DEFAULT NULL COMMENT '学号',
	`user_name` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '名字',
    `problem` VARCHAR ( 256 ) NOT NULL DEFAULT 'zzz' COMMENT '故障描述',
    `image` VARCHAR ( 128 ) NOT NULL DEFAULT 'zzz' COMMENT '故障图片',
    `reason` VARCHAR ( 256 ) NOT NULL DEFAULT 'zzz' COMMENT '故障原因',
    `status` VARCHAR ( 32 ) NOT NULL DEFAULT 'zzz' COMMENT '维修状态',
	`repairman_name` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '名字',
	`repairman_telephone` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
	`context` VARCHAR ( 256 ) NOT NULL DEFAULT 'zzz' COMMENT '评价内容',
	`score` INT ( 16 ) NOT NULL DEFAULT 90 COMMENT '评价分数',
    `gmt_deal` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '处理时间',
	`gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	`extention` BIGINT ( 64 ) UNSIGNED DEFAULT NULL COMMENT '扩展',
	PRIMARY KEY ( `id` )
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '在线报修';



DROP TABLE IF EXISTS `rsp_repair_type`;
CREATE TABLE `rsp_repair_type` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
     `encode` VARCHAR ( 32 ) NOT NULL DEFAULT 'zzz' COMMENT '编码',
	`category` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '报修分类',
    `description` VARCHAR ( 256 ) NOT NULL DEFAULT 'zzz' COMMENT '分类描述',
	`gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	PRIMARY KEY ( `id` )
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '报修类型';



DROP TABLE IF EXISTS `rsp_repair_address`;
CREATE TABLE `rsp_repair_address` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
    `encode` VARCHAR ( 32 ) NOT NULL DEFAULT 'zzz' COMMENT '编码',
	`area` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '区域',
	`dorm` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '宿舍楼',
	`gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	PRIMARY KEY ( `id` )
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '报修地址';



DROP TABLE IF EXISTS `rsp_repair_advice`;
CREATE TABLE `rsp_repair_advice` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
	`context` VARCHAR ( 256 ) NOT NULL DEFAULT 'zzz' COMMENT '评价内容',
	`score` INT ( 16 ) NOT NULL DEFAULT 90 COMMENT '评价分数',
	`gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	PRIMARY KEY ( `id` )
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '报修评价';

DROP TABLE IF EXISTS `rsp_repair_repairman`;
CREATE TABLE `rsp_repair_repairman` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
	`number` BIGINT ( 64 ) UNSIGNED DEFAULT NULL COMMENT '工号',
	`name` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '名字',
    `username` VARCHAR ( 128 ) NOT NULL DEFAULT 'zzz' COMMENT '用户名',
    `password` VARCHAR ( 128 ) NOT NULL DEFAULT 'zzz' COMMENT '密码',
    `category` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '维修类型',
	`address` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '地址',
    `telephone` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
    `email` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '邮箱',
    `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	PRIMARY KEY ( `id` ),
    UNIQUE KEY `username` (`username`),
    UNIQUE KEY `number` (`number`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '维修人员';


DROP TABLE IF EXISTS `rsp_repair_user`;
CREATE TABLE `rsp_repair_user` (
	`id` BIGINT ( 64 ) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
	`number` BIGINT ( 64 ) UNSIGNED DEFAULT NULL COMMENT '学号',
	`name` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '名字',
    `username` VARCHAR ( 128 ) NOT NULL DEFAULT 'zzz' COMMENT '用户名',
    `password` VARCHAR ( 128 ) NOT NULL DEFAULT 'zzz' COMMENT '密码',
	`address` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '地址',
    `telephone` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '手机号码',
    `email` VARCHAR ( 64 ) NOT NULL DEFAULT 'zzz' COMMENT '邮箱',
    `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
	`gmt_modified` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
	PRIMARY KEY ( `id` ),
    UNIQUE KEY `username` (`username`),
    UNIQUE KEY `number` (`number`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT '用户报修';

```


