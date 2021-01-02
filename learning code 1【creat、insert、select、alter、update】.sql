###  创建数据库
create database Qadbtesting;

#用use命令指向要用的数据库
use Qadbtesting;

### 创建表          
#语法结构： CREATE TABLE table_name (column_name column_type);

create table employeeinfo(name varchar(20), id int, location varchar(20), age int);
                             #变量名 数据类型 （字符串最长长度）
                             
###显示表格变量的数据类型                             
describe employeeinfo;  

### 向表中插入数据
#  语法格式： INSERT INTO table_name ( field1, field2,...fieldN ) VALUES ( value1, value2,...valueN );
#  如果数据是字符型，必须使用单引号或者双引号，如："value"。

insert into employeeinfo values('Tim', 1, 'Beijing' , 21);
insert into employeeinfo values('Jack', 2, 'Shanghai' , 22);
insert into employeeinfo values('Rose', 3, 'guangzhou' , 23);
insert into employeeinfo values('Lucy', 4, 'shenzhen' , 24);
insert into employeeinfo values('Lily', 5, 'hangzhou' , 25);

### 查询数据
#  语法格式： SELECT columnA_name,columnB_name FROM table_name 

select  name, id, location,age from employeeinfo;
select  name, location from employeeinfo;
select * from employeeinfo;

### ALTER命令修改表（增加、修改、删除）【列】
# 语法结构： ALTER TABLE  table_name  ADD/MODIFY/DROP/RENAME TO  column_name

#增加列
alter table employeeinfo add department varchar(20) AFTER age;               
alter table employeeinfo add skill varchar(20) FIRST;  
#修改数据类型
alter table employeeinfo modify department varchar(30);             
#删除列
alter table employeeinfo drop department;                           
alter table employeeinfo drop skill;    


### 更新表格的行
# 语法:update 表名称 set 列名称 = 新值 where 更新条件 

update employeeinfo set department ='QA' where name='Tim';
update employeeinfo set department ='IT' where name='Jack';
update employeeinfo set department ='HR' where name='Rose';
update employeeinfo set department ='Finacial' where name='Lucy';
update employeeinfo set department ='HR' where name='Lily';

#删除行 delete from语句
delete from employeeinfo where name='Lily';            #与删除列区分开

#删除数据库
create database example;
use example;
drop database example;


