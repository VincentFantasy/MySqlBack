@echo off

set password=123456
set host=127.0.0.1
set port=3306
set backupDir=E:/tz/back/
set dbname=local2

rem -------------------------- 应用库 ------------------------
rem ***** 商城应用表 *****
set tablename=ds_mallapp
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商城应用申请表 *****
set tablename=ds_mallappapply
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem -------------------------- 商店库 ------------------------
rem ***** 店铺数据表 *****
set tablename=ds_store
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 店铺商品分类下的商品 *****
set tablename=ds_storegcgoods
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 店铺商品分类表 *****
set tablename=ds_storegoodsclass
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 店铺冗余信息表 *****
set tablename=ds_storeinfo
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 店铺入驻表 *****
set tablename=ds_storejoinin
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem -------------------------- 商店库 ------------------------
rem ***** 商品信息 *****
set tablename=ds_goods
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品与属性对应表 *****
set tablename=ds_goodsattrindex
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品分类表 *****
set tablename=ds_goodsclass
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品图片 *****
set tablename=ds_goodsimages
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 应用商品分类关联表 *****
set tablename=ds_mallgoodsclass
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品类型表 *****
set tablename=ds_type
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品属性表 *****
set tablename=ds_attribute
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 商品属性值表 *****
set tablename=ds_attributevalue
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 扩展区域信息表 *****
set tablename=ds_extend_area
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem -------------------------- 推广库 ------------------------
rem ***** 推广商品 *****
set tablename=t_vi_spreadgoods
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem -------------------------- 管理员库 ------------------------
rem ***** 搜索关键词 *****
set tablename=ds_keywords
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 品类信息 *****
set tablename=ds_appcat
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 品类分组 *****
set tablename=ds_appcatgrp
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 品类菜单 *****
set tablename=ds_appcatmenu
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 分类导航栏 *****
set tablename=ds_appcatnav
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem ***** 轮播图 *****
set tablename=ds_cycleimage
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%

rem -------------------------- 账户库 ------------------------
rem ***** 用户地址信息 *****
set tablename=ds_address
call recover.bat %password% %host% %port% %backupDir% %dbname% %tablename%
