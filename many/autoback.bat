@echo off

rem 要备份的appid
set appid='219696853603061760'
set password=123456
set host=127.0.0.1
set port=3306
set backupDir=E:/tz/back/

rem -------------------------- 应用库 ------------------------
set dbname=local

rem ***** 商城应用表 *****
set tablename=ds_mallapp
set where="id="%appid%
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N
rem pause

rem ***** 商城应用申请表 *****
set tablename=ds_mallappapply
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem -------------------------- 商店库 ------------------------
set dbname=local

rem ***** 店铺数据表 *****
set tablename=ds_store
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 店铺商品分类下的商品 *****
set tablename=ds_storegcgoods
set where="store_id in (select id from ds_store where app_id = %appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 店铺商品分类表 *****
set tablename=ds_storegoodsclass
set where="store_id in (select id from ds_store where app_id = %appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 店铺冗余信息表 *****
set tablename=ds_storeinfo
set where="store_id in (select id from ds_store where app_id = %appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 店铺入驻表 *****
set tablename=ds_storejoinin
set where="store_name in (select store_name from ds_store where app_id = %appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem -------------------------- 商店库 ------------------------
set dbname=local

rem ***** 商品信息 *****
set tablename=ds_goods
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品与属性对应表 *****
set tablename=ds_goodsattrindex
set where="goods_id in (select id from ds_goods where app_id=%appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 商品分类表 *****
set tablename=ds_goodsclass
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品图片 *****
set tablename=ds_goodsimages
set where="goods_id in (select id from ds_goods where app_id=%appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 应用商品分类关联表 *****
set tablename=ds_mallgoodsclass
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品类型表 *****
set tablename=ds_type
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品属性表 *****
set tablename=ds_attribute
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品属性值表 *****
set tablename=ds_attributevalue
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 商品与属性对应表 *****
set tablename=ds_goodsattrindex
set where="goods_id in (select id from ds_goods where app_id=%appid%)"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% Y N

rem ***** 扩展区域信息表 *****
set tablename=ds_extend_area
set where="1=1"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem -------------------------- 推广库 ------------------------
set dbname=local

rem ***** 推广商品 *****
set tablename=t_vi_spreadgoods
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem -------------------------- 管理员库 ------------------------
set dbname=local

rem ***** 搜索关键词 *****
set tablename=ds_keywords
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 品类信息 *****
set tablename=ds_appcat
set where="1=1"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 品类分组 *****
set tablename=ds_appcatgrp
set where="1=1"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 品类菜单 *****
set tablename=ds_appcatmenu
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem ***** 分类导航栏 *****
set tablename=ds_appcatnav
set where="app_id=%appid%"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N

rem -------------------------- 账户库 ------------------------
set dbname=local

rem ***** 用户地址信息 *****
set tablename=ds_address
set where="1=1"
call back.bat %password% %host% %port% %backupDir% %dbname% %tablename% %where% N N
