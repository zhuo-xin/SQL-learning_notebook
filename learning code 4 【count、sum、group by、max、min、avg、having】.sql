create database demo;

#用use命令指向要用的数据库
use demo;

### 创建表          
#语法结构： CREATE TABLE table_name (column_name column_type);

create table company(name varchar(20), branch varchar(20), employees int);


insert into company values('HuaWei',  'US' , 23);
insert into company values('Google',  'US' , 550);
insert into company values('Yahoo',  'Canada' , 255);
insert into company values('Google',  'China' , 450);
insert into company values('HuaWei',  'China' , 480);
insert into company values('HuaWei',  'UK' , 11);
insert into company values('HuaWei',  'Canada' , 33);
insert into company values('Yahoo',  'US' , 220);
insert into company values('Yahoo',  'China' , 160);
insert into company values('Facabook',  'US' , 60);

use demo;
select * from company;

# 全球branch个数：
select count(Branch) from company;			## count函数应用 count（expression），返回查询的记录总数。【行数】    sum函数是加和

#哪个分支有最大员工数：
select branch, max(employees) from company;

#每个分支的最大员工数分别是多少：
select branch, max(Employees) from company group by branch;

#员工平均数：
select avg(Employees) from company;

###	group by 语法结构：
##  SELECT column_name, function(column_name) FROM table_name GROUP BY column_name HAVING expression ;

#每个分支最小的员工数分别是多少：
select branch, min(Employees) from company group by branch;

#所有员工总和多少人：
select sum(Employees) from company;

#每一个分支地理位置的员工总数：
select branch, sum(Employees) from company group by branch;

#每一个公司的员工总和：
select name, sum(Employees) from company group by name;

# 只要canada和china两个分支的员工总数 
select branch, sum(Employees) from company group by branch;
select branch, sum(Employees) from company group by branch having branch='Canada' or branch='China';   