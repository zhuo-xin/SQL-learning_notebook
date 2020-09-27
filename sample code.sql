#创建数据库
create database Qadbtesting;

#用use命令指向要用的数据库
use Qadbtesting;

#创建表
create table employeeinfo(name varchar(20), id int, location varchar(20), age int);
                             #变量名 数据类型 （字符串最长长度）
describe employeeinfo;   #展示表格

#向表中插入信息
insert into employeeinfo values('Tim', 1, 'Beijing' , 21);
insert into employeeinfo values('Jack', 2, 'Shanghai' , 22);
insert into employeeinfo values('Rose', 3, 'guangzhou' , 23);
insert into employeeinfo values('Lucy', 4, 'shenzhen' , 24);
insert into employeeinfo values('Lily', 5, 'hangzhou' , 25);

#检索信息（变量/列）
select  name, id, location,age from employeeinfo;
select  name, location from employeeinfo;
select * from employeeinfo;

#添加department列：alter table + 表的名字 + 操作方式 + 变量名
alter table employeeinfo add department varchar(20);                 #add
#修改添加的department列
alter table employeeinfo modify department varchar(30);              #modify
#删除department列
alter table employeeinfo drop department;                            #drop

#更新表格的行
update employeeinfo set department ='QA' where name='Tim';
update employeeinfo set department ='IT' where name='Jack';
update employeeinfo set department ='HR' where name='Rose';
update employeeinfo set department ='Finacial' where name='Lucy';
update employeeinfo set department ='HR' where name='Lily';

#删除行
delete from employeeinfo where name='Lily';            #与删除列区分开

#删除数据库
create database example;
use example;
drop database example;
