## %：代表任意多个字符 abcd————a%

## _：单个字符   abcd————a_%

## 例： 打印一个三个字母名字，已知第一个字母为b： b__

## 在终端导入数据语法
#	mysql> create database world;      # 创建数据库
#	mysql> use world;                  # 使用已创建的数据库 
#	mysql> set names utf8;           # 设置编码
#	mysql> source E：/data analysis study/SQL study/world.sql  # 导入备份数据库


use world;
select * from city;
###		正则表达式应用举例

#选出以A开头的country code的name
###	语法结构：
			# SELECT column_name FROM table_name WHERE column_name LIKE ‘正则表达式’


select name from city where CountryCode like 'A%';

select CountryCode from city where CountryCode like 'A%';


#选出Countrycode 第三个字符是D的countrycode
select CountryCode from city where CountryCode like '__D%';

#第二个字符是C的cuntrycode
select CountryCode from city where CountryCode like '_C%';


###		order by 命令【升序】

use Qadbtesting;
select * from employeeinfo order by name;
select * from employeeinfo order by id;
select * from employeeinfo order by id desc;    # ORDER BY colunmn_name DESC;



