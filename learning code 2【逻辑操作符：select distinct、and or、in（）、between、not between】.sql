use Qadbtesting;
select department,age from employeeinfo;
select * from employeeinfo;

### select distinct用法： 取列中唯一值
select distinct name from employeeinfo;

insert into employeeinfo values('Lucy', 5, 'hangzhou' , 25,'HR');
select distinct name from employeeinfo;

### WHERE命令：
# 语法结构： SELECT column_name FROM table_name WHERE expression;

select name from employeeinfo where location='Shanghai';

# 条件：location是上shanghai，年龄大于20的员工
select name from employeeinfo where location='Shanghai' and age>20;

### and 和 or 逻辑运算符用法
#来自北京的员工，年龄小于21，或者来自广州的员工
select name from employeeinfo where (location='Beijing' and age<21) or location='guangzhou';

# 打印id是2或者来自北京的员工的名字
select name from employeeinfo where id=2 or location ='Beijing';

# 【范围条件】 打印年龄在23到25之间的员工的名字
select name from employeeinfo where age in(22,23,24,25);           #范围条件用‘in （....）’表示

select name from employeeinfo where location in('Beijing','Shanghai');

### between 用法
#打印年龄在20到55之间的员工的名字

#打印年龄在1到1000的员工的名字
select name from employeeinfo where id between 1 and 1000;          #范围条件用 between and 表达

#打印所有年龄小于25的员工的姓名
# 思路1：  age<25
# 思路2：  in(1,2,3,...25)
# 思路3：  between 0 and 25

select name from employeeinfo where id not between 25 and 1000;       # not between 用法