select * from employees where employee_id=100;
select * from employees where employee_id=101;
select * from employees where employee_id=102;
select * FROM employees where employee_id=102;

select * from v$sql where sql_text like 
'%select * from employees where employee_id%'

select * from employees where employee_id=:1;


DECLARE -- declaration
begin -- EXECUTABLE

EXCEPTION

end;


begin
null;
end;

select hire_date from employees where employee_id=200

DECLARE
V_HDATE DATE;
begin
select hire_date INTO V_HDATE 
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE(V_HDATE);
end;

DECLARE
V_HDATE DATE;
begin
select hire_date INTO V_HDATE 
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE);
end;

SET SERVEROUTPUT ON

DECLARE
V_HDATE DATE;
v_lname varchar2(20);
begin
select hire_date,last_name INTO V_HDATE,v_lname
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE||' Soyadı: '||v_lname);
end;


DECLARE
V_HDATE employees.hire_date%type;
v_lname employees.last_name%type;
v_name v_lname%type;
v_sal number(4,2);
v_sals v_sal%type;
begin
select hire_date,last_name INTO V_HDATE,v_lname
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE||' Soyadı: '||v_lname);
end;



select avg(avg_row_len) from dba_tables -- 30.22
select * from v$parameter where name like '%block%'
select avg(avg_row_len) from dba_tables 
where table_name='EMPLOYEES'

db_block_size	                8192
db_file_multiblock_read_count	82

select (8192/29)*82 from dual

desc standard


VARIABLE

SCALAR - number,date,varchar2 - tek tip  tek alan verisi

user defined type -
composite(array)
            record - tek satır çok tip
            collection - çok satır tek tip
            collection of records - çok satır çok tip
            
cursor

declare
v_fname employees.first_name%type;
begin
select first_name into v_fname 
from employees
where last_name='King';
end;

declare
v_fname employees.first_name%type;
begin
select first_name into v_fname 
from employees
where last_name='king';
end;


declare
first_name employees.first_name%type;
v_empid employees.employee_id%type;
begin
select first_name into first_name 
from employees
where last_name='Abel';
select employee_id into v_empid
from employees 
where first_name=first_name;
end;


declare
v_city varchar2(20) := 'Atlanta';
begin
DBMS_OUTPUT.PUT_LINE(v_city);
v_city := 'Batlanta';
DBMS_OUTPUT.PUT_LINE(v_city);
end;

DECLARE
v_deptno NUMBER(2) NOT NULL := 10;
begin
v_deptno:=20;
end;


DECLARE
	  v_hiredate		DATE;		
	  v_location		VARCHAR2(13) := 'Atlanta';
      v_deptno			NUMBER(2) NOT NULL := 10;
	  c_comm			CONSTANT NUMBER := 1400;
begin
c_comm:=20;
end;


DECLARE
  v_myName  VARCHAR2(20);
BEGIN
  DBMS_OUTPUT.PUT_LINE('My name is: '||v_myName );
  v_myName  := 'John';
  DBMS_OUTPUT.PUT_LINE('My name is: '||v_myName );
END;
/


DECLARE
 v_myName VARCHAR2(20):= 'John';
BEGIN
 v_myName := 'Steven';
 DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myName);
END; 
/


declare
v_today date := sysdate;
v_tomorrow v_today%type := v_today +1;
begin
dbms_output.put_line(v_today);
dbms_output.put_line(v_tomorrow);
end;

select sysdate
from dual

v_date_of_joining DATE:= '02-Feb-2000';
v_date_of_joining DATE:= 'February 02,2000';
v_date_of_joining DATE:= TO_DATE('February 02,2000','Month DD, YYYY');



DECLARE
 v_outer_variable VARCHAR2(20):='GLOBAL VARIABLE';
BEGIN
  DECLARE
   v_inner_variable VARCHAR2(20):='INNER VARIABLE';
   v_outer_variable VARCHAR2(25):='INNER GLOBAL VARIABLE';
  BEGIN
   DBMS_OUTPUT.PUT_LINE(v_inner_variable);
   DBMS_OUTPUT.PUT_LINE(v_outer_variable);
  END;
 DBMS_OUTPUT.PUT_LINE(v_outer_variable); 
END;




DECLARE
 v_father_name VARCHAR2(20):='Patrick';
 v_date_of_birth DATE:='20-Apr-1972';
BEGIN
  DECLARE
   v_child_name VARCHAR2(20):='Mike';
   v_date_of_birth DATE:='12-Dec-2002';
  BEGIN
   DBMS_OUTPUT.PUT_LINE('Father''s Name: '||v_father_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
   DBMS_OUTPUT.PUT_LINE('Child''s Name: '||v_child_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
  END; 
END;
/




BEGIN <<outer>>
DECLARE
 v_father_name VARCHAR2(20):='Patrick';
 v_date_of_birth DATE:='20-Apr-1972';
BEGIN
  DECLARE
   v_child_name VARCHAR2(20):='Mike';
   v_date_of_birth DATE:='12-Dec-2002';
  BEGIN
   DBMS_OUTPUT.PUT_LINE('Father''s Name: '||v_father_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '
                        ||outer.v_date_of_birth);
   DBMS_OUTPUT.PUT_LINE('Child''s Name: '||v_child_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
  END;
END;
END outer;



BEGIN <<outer>>
DECLARE
  v_sal      NUMBER(7,2) := 60000;
  v_comm     NUMBER(7,2) := v_sal * 0.20;
  v_message  VARCHAR2(255) := ' eligible for commission';
BEGIN 
  DECLARE
    	v_sal	    NUMBER(7,2) := 50000;
    	v_comm 	    NUMBER(7,2) := 0;
    	v_total_comp  NUMBER(7,2) := v_sal + v_comm;
        v_message  VARCHAR2(255) :='FOR COMM';
  BEGIN 
    	 v_message := 'CLERK not'||v_message;
    	outer.v_comm := v_sal * 0.30; 
        --DBMS_OUTPUT.PUT_LINE(v_message);
        --DBMS_OUTPUT.PUT_LINE(v_comm);
        --DBMS_OUTPUT.PUT_LINE(OUTER.v_comm);
        DBMS_OUTPUT.PUT_LINE(v_total_comp);
  END;
 v_message := 'SALESMAN'||v_message;
 DBMS_OUTPUT.PUT_LINE(v_message);
END;
END outer;
/

declare
v_lname employees.last_name%type;
begin
select last_name into v_lname from employees where employee_id=&idgir;

if v_lname is null then DBMS_OUTPUT.PUT_LINE('Soyadı Yok');
elsif v_lname='King' then DBMS_OUTPUT.PUT_LINE('Kingsin');
elsif v_lname<>'King' then DBMS_OUTPUT.PUT_LINE('King Değilsin');
else DBMS_OUTPUT.PUT_LINE(v_lname);
end if;
end;



0-15  
15-25
25-35
35-45
>45


declare
v_yas number := &yasgir;
begin
if v_yas<15 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Küçük');
elsif v_yas<25 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Genç');
elsif v_yas<35 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Genç Üstü');
elsif v_yas<45 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Orta');
else                DBMS_OUTPUT.PUT_LINE(v_yas ||' Orta Üstü');
end if;
end;

set verify off

update employees set salary=1
where employee_id=500;

begin
update employees set salary=1 where employee_id=500;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
commit;
update employees set salary=1 where employee_id=101;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
rollback;
end;



begin
update employees set salary=1 where employee_id=100;
commit;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
end;

begin
update employees set salary=1 where employee_id=101;
commit;
if sql%found then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
end;

begin
update employees set salary=salary*1.1 where department_id=50;
if sql%rowcount>10 then commit;
else rollback;
end if;
end;

select salary from employees where department_id=50;

8000
8200
7900

8800
9020
8690

update employees emp set salary=(
select salary from employees
as of timestamp sysdate-5/1440
where department_id=50 and employee_id=emp.employee_id)
where department_id=50

commit

create table emp as select * from employees

drop table emp purge

%>20 delete

insert /*+ append nologging parallel */

select /*+ parallel(32) */ 

insert into emp select * from emp

commit

select department_id,count(*)
from emp
group by department_id

call dbms_stats.gather_table_stats('HR','EMP');

DELETE FROM EMP WHERE EMPLOYEE_ID>105

SELECT * FROM ALL_TABLES WHERE TABLE_NAME='EMP'

ALTER TABLE EMP ENABLE ROW MOVEMENT
ALTER TABLE EMP SHRINK SPACE

create table tablo(a number) tablespace tbs pctfree 0

select * from all_tab_modifications


DECLARE
   v_grade  CHAR(1) := UPPER('&grade');
   v_appraisal VARCHAR2(20);
BEGIN
    v_appraisal := CASE 
         WHEN v_grade  = 'A' THEN 'Excellent'
         WHEN v_grade  IN ('B','C') THEN 'Good'          
         ELSE 'No such grade'   
     END;
   DBMS_OUTPUT.PUT_LINE ('Grade: '|| v_grade  ||
                  ' Appraisal ' || v_appraisal);
END;
/

DECLARE
   v_grade  CHAR(1) := UPPER('&grade');
   v_appraisal VARCHAR2(20);
BEGIN
    v_appraisal := CASE v_grade
         WHEN 'A' THEN 'Excellent'
         WHEN 'B' THEN 'Good'          
         WHEN 'C' THEN 'GoodY'          
         ELSE 'No such grade'   
     END;
   DBMS_OUTPUT.PUT_LINE ('Grade: '|| v_grade  ||
                  ' Appraisal ' || v_appraisal);
END;
/


DECLARE
   v_deptid NUMBER;
   v_deptname VARCHAR2(20);
   v_emps NUMBER;
   v_mngid NUMBER:= &MGRID;   
BEGIN
  CASE  v_mngid
   WHEN  108 THEN 
    SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=108;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
   WHEN  200 THEN 
   SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=200;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
 END CASE;
DBMS_OUTPUT.PUT_LINE ('You are working in the '|| v_deptname||
' department. There are '||v_emps ||' employees in this 
department');
END;
/


DECLARE
   v_deptid NUMBER;
   v_deptname VARCHAR2(20);
   v_emps NUMBER;
   v_mngid NUMBER:= &MGRID;   
BEGIN
      SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=v_mngid;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
DBMS_OUTPUT.PUT_LINE ('You are working in the '|| v_deptname||
' department. There are '||v_emps ||' employees in this 
department');
END;
/


LOOP

BASIC LOOP
WHILE LOOP
FOR LOOP



DECLARE
V_I NUMBER :=0;
BEGIN
LOOP
V_I := V_I +1;
DBMS_OUTPUT.PUT_LINE(V_I);
EXIT WHEN V_I=10;
END LOOP;
END;

DECLARE
V_I NUMBER :=0;
BEGIN
WHILE (V_I<10) LOOP
V_I := V_I +1;
DBMS_OUTPUT.PUT_LINE(V_I);
END LOOP;
END;


BEGIN
FOR V_I IN 1..10 LOOP
V_I := V_I+1;
DBMS_OUTPUT.PUT_LINE(V_I);
END LOOP;
END;



BEGIN
FOR V_COUNTER IN 1..10 LOOP
IF V_COUNTER NOT IN(6,8) 
THEN DBMS_OUTPUT.PUT_LINE(V_COUNTER);
END IF;
END LOOP;
END;

BEGIN
FOR V_COUNTER IN 1..10 LOOP
IF V_COUNTER  IN(6,8) THEN NULL;
ELSE DBMS_OUTPUT.PUT_LINE(V_COUNTER);
END IF;
END LOOP;
END;


DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_counter		  NUMBER(2) := 1;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
    v_counter := v_counter + 1;
    EXIT WHEN v_counter > 3;
  END LOOP;
DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/

SELECT MAX(location_id)  FROM locations WHERE country_id = 'CA';

SELECT * FROM locations

DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_counter		  NUMBER(2) := 1;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  WHILE (v_counter<=3) LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
    v_counter := v_counter + 1;
  END LOOP;
DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/

DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  FOR v_counter IN 1..3 LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
  END LOOP;
--DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/


declare
v_fname employees.first_name%type;
v_lname employees.last_name%type;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for v_counter in v_min..v_max loop
select first_name,last_name into v_fname,v_lname
from employees where employee_id=v_counter;
dbms_output.put_line(v_fname || ' ' || v_lname);
end loop;
end;


10000

32*500 = 16000




select count(*) from dict



DECLARE
  v_total SIMPLE_INTEGER := 0;
BEGIN
  FOR i IN 1..10 LOOP
    v_total := v_total + i;
    DBMS_OUTPUT.PUT_LINE
     ('Total is: '|| v_total);
    CONTINUE WHEN i > 5;
    v_total := v_total + i; 
    DBMS_OUTPUT.PUT_LINE
     ('Out of Loop Total is:
      '|| v_total);    
  END LOOP;
END;
/


DECLARE 
 v_total NUMBER := 0;
BEGIN
 <<BeforeTopLoop>>
 FOR i IN 1..5 LOOP
   v_total := v_total + 1;
   DBMS_OUTPUT.PUT_LINE 
     ('v_total(in BeforeTopLoop): ' || v_total);
    <<BeforeTopLoop>>
   FOR j IN 1..5 LOOP
     CONTINUE BeforeTopLoop WHEN i + j > 5;
     v_total := v_total + 1;
		DBMS_OUTPUT.PUT_LINE('v_total(in the inner loop): ' || v_total);
   END LOOP;
 END LOOP BeforeTopLoop;
END;


1Z0-071 SQL EXPERT
1Z0-144 OCA
1Z0-148 DEVELOPER OCP 

OCE
OCP
OCM

record - tek satır çok tip
collection - çok satır tek tip
collection of record - array - çok satır çok tip


declare
v_hdate employees.hire_date%type;
begin
select hire_date into v_hdate from employees
where employee_id=100;
dbms_output.put_line(v_hdate);
end;

declare
type rec is record(v_hdate employees.hire_date%type,
                   v_lname employees.last_name%type);
v_rec rec;
begin
select hire_date,last_name into v_rec from employees
where employee_id=100;
v_rec.v_lname:='Kings';
dbms_output.put_line(v_rec.v_hdate || ' ' ||v_rec.v_lname);
end;

declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for i in v_min..v_max loop
select salary into v_rec(i) from employees where employee_id=i;
dbms_output.put_line(v_rec(i));
end loop;
end;



declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for i in v_min..v_max loop
select salary into v_rec(i) from employees where employee_id=i;
end loop;
for j in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(j));
end loop;
end;

declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
begin
select salary bulk collect into v_rec from employees;
for j in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(j));
end loop;
end;


declare
type rec1 is record
(v_fname employees.first_name%type,
 v_lname employees.last_name%type,
 v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select first_name,last_name,salary bulk collect into v_rec 
from employees;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(i).v_fname || ' ' || v_Rec(i).v_lname
|| ' ' || v_rec(i).v_sal);
end loop;
end;

alter table employees add(stars varchar2(30))


select * from employees

declare
type rec1 is record(v_empid employees.employee_id%type,
                   v_sal employees.salary%type,
                   v_stars employees.stars%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,salary,rpad('*',round(salary/1000),'*')
bulk collect into v_rec from employees for update;
for i in v_rec.first..v_rec.last loop
update employees set stars=v_rec(i).v_stars 
where employee_id=v_rec(i).v_empid;
end loop;
commit;
end;


declare
type rec1 is record(v_empid employees.employee_id%type,
                   v_sal employees.salary%type,
                   v_stars employees.stars%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,salary,stars bulk collect into v_rec 
from employees;
for i in v_rec.first..v_rec.last loop
v_rec(i).v_stars:=rpad('*',round(v_rec(i).v_sal/1000),'*');
update employees set stars=v_rec(i).v_stars 
where employee_id=v_rec(i).v_empid;
end loop;
commit;
end;



select * from employees


declare
type rec1 is table of employees.employee_id%type index by pls_integer;
v_rec1 rec1;
type rec2 is record(v_fname employees.first_name%type,
                    v_lname employees.last_name%type);
type rec3 is table of rec2 index by pls_integer;
v_rec2 rec3;
begin
select employee_id bulk collect into v_rec1 from employees;
for i in v_rec1.first..v_rec1.last loop
select first_name,last_name into v_rec2(i) from employees
where employee_id=v_rec1(i);
dbms_output.put_line(v_rec2(i).v_fname || ' ' ||v_rec2(i).v_lname);
end loop;
end;


declare
v_rec employees%rowtype;
begin
select * into v_rec from employees where employee_id=200;
dbms_output.put_line(v_rec.first_name|| ' '||v_rec.last_name);
end;





declare
cursor cur is 
select * from employees;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;




begin
for rec in (select * from employees) loop
dbms_output.put_line(rec.salary);
end loop;
end;



Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

Forall i in 1..MyArr.Count
save exceptions
insert into ForAll_test_Table values MyArr(i);
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
End;
/


set timing on

create table ForAll_Test_Table(a varchar2(20),b number)

--bulk işlemler için for kullanmamalı.

Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

For i in 1..MyArr.Count loop
insert into ForAll_test_Table values MyArr(i);
end loop;
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
End;
/

--bulk işlemler için forall hızlı
Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

Forall i in 1..MyArr.Count
save exceptions
insert into ForAll_test_Table values MyArr(i);
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
EXCEPTION
    WHEN ex_dml_errors THEN
      l_error_count := SQL%BULK_EXCEPTIONS.count;
      DBMS_OUTPUT.put_line('Number of failures: ' || l_error_count);
      FOR i IN 1 .. l_error_count LOOP
        DBMS_OUTPUT.put_line('Error: ' || i || 
          ' Array Index: ' || SQL%BULK_EXCEPTIONS(i).error_index ||
          ' Message: ' || SQLERRM(-SQL%BULK_EXCEPTIONS(i).ERROR_CODE));
      END LOOP;
End;
/

CURSOR private memory area

DECLARE
OPEN
FETCH
CLOSE

declare
cursor cur is 
select * from employees;
v_rec cur%rowtype;
begin
open cur;
loop
fetch cur into v_Rec;
dbms_output.put_line(v_rec.last_name);
exit when cur%notfound;
end loop;
close cur;
end;

set serveroutput on


-- basic cursor
declare
cursor cur is 
select * from employees;
--v_rec cur%rowtype;
begin
--open cur;
for v_rec in cur loop
--fetch cur into v_Rec;
dbms_output.put_line(v_rec.last_name);
--exit when cur%notfound;
end loop;
--close cur;
end;



declare
cursor cur is 
select * from employees;
begin
for v_rec in cur loop
dbms_output.put_line(v_rec.last_name);
end loop;
end;

--for loop (kısa hali)
begin
for v_rec in (select * from employees) loop
dbms_output.put_line(v_rec.last_name);
end loop;
end;

-- top n salary kötü yöntem
declare
cursor cur is
select salary from employees order by salary desc;
v_topkac number := &topkac;
begin
for rec in cur loop
if cur%rowcount<=v_topkac then dbms_output.put_line(rec.salary);
end if;
end loop;
end;


--elemeden sonra 5 kayıt cursorda, fetch first &rowsayısı rows only;
declare
cursor cur is
select salary from employees order by salary desc
fetch first &rowsayısı rows only;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;

--elemeden sonra 5 kayıt cursorda , rownum kullanarak
declare
cursor cur is
select salary from (select salary from employees order by salary desc)
where rownum<=&sayıkac;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;

 

declare
cursor cur is 
select first_name,salary,manager_id from employees;
begin
for rec in cur loop
if rec.salary>5000 and rec.manager_id in (101,202) then 
dbms_output.put_line(rec.first_name || ' raise for a salary' );
else dbms_output.put_line(rec.first_name || ' not raise for a salary' );
end if;
end loop;
end;

Empidnin Zamdan Önceki Maaşı(deptid):
Empidnin Zamdan Sonraki Maaşı(deptid):


create table emps as select * from employees


declare
cursor cur is 
select employee_id,department_id,salary,
salary+(salary*department_id/100) sals,last_name from employees;
begin
for rec in cur loop
dbms_output.put_line(rec.employee_id ||' Önceki Maaşı: '||
rec.salary||'('||rec.department_id||')');
dbms_output.put_line(rec.employee_id ||' Sonraki Maaşı: '||
rec.sals||'('||rec.department_id||')');
update emps set salary=rec.sals
where employee_id=rec.employee_id;
end loop;
end;




declare 
type rec1 is record (v_empid employees.employee_id%type,
                     v_sal employees.salary%type,
                     v_depid employees.department_id%type);
type rec2 is table of rec1 index by pls_integer; 
v_coll rec2;
v_coll2 rec2;

type rec3 is table of employees.employee_id%type index by pls_integer;
v_counter rec3;

begin
select employee_id,salary,department_id bulk collect into v_coll from employees;
select employee_id,salary,department_id bulk collect into v_coll2 from emps for update;

for i in v_coll.first..v_coll.last loop
dbms_output.put_line(v_coll(i).v_empid|| 'nin zamdan önceki maaşı ('|| v_coll(i).v_depid || ')' || v_coll(i).v_sal);
v_coll(i).v_sal := v_coll(i).v_sal + (v_coll(i).v_sal/100 * v_coll(i).v_depid);
update emps set salary = v_coll(i).v_sal
where employee_id = v_coll(i).v_empid;
--commit
end loop;
select employee_id,salary,department_id bulk collect into v_coll2 from emps;
for j in v_coll2.first..v_coll2.last loop
dbms_output.put_line(v_coll2(j).v_empid|| 'nin zamdan sonraki maaşı ('|| v_coll2(j).v_depid || ')' || v_coll2(j).v_sal);
end loop;
end;

--parametrik cursor
declare
cursor cur(v_deptid number) is
select * from employees where department_id=v_deptid;
begin
for rec in cur(&deptidgir) loop
dbms_output.put_line(rec.last_name);
end loop;
end;


declare
cursor cur(v_deptid number) is
select * from employees where department_id=v_deptid;
begin
for rec in cur(30) loop
update emps set salary=rec.salary+(rec.salary*30/100)
where employee_id=rec.employee_id;
end loop;
end;


EXCEPTION
----------
PREDEFINED EXCEPTION
USER DEFINED EXCEPTION
RAISE EXCEPTION
RAISE_APPLICATION_ERROR EXCEPTION


DECLARE
V_LNAME EMPLOYEES.LAST_NAME%TYPE;
BEGIN
SELECT LAST_NAME INTO V_LNAME FROM EMPLOYEES
WHERE EMPLOYEE_ID=99;
--UPDATE
EXCEPTION
WHEN NO_DATA_FOUND THEN dbms_output.put_line('KAYIT YOK');
END;


DECLARE
V_LNAME EMPLOYEES.LAST_NAME%TYPE;
BEGIN
SELECT LAST_NAME INTO V_LNAME FROM EMPLOYEES
WHERE LAST_NAME='King';
--UPDATE
EXCEPTION
--WHEN NO_DATA_FOUND THEN dbms_output.put_line('KAYIT YOK');
--WHEN TOO_MANY_ROWS THEN dbms_output.put_line('KAYIT ÇOK');
WHEN OTHERS THEN dbms_output.put_line(SQLERRM);
                 dbms_output.put_line(SQLCODE);
END;

--RAISE EXCEPTION;

DECLARE
HATA EXCEPTION;
BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE HATA;
END IF;
EXCEPTION 
WHEN HATA THEN dbms_output.put_line('kayıt güncellenemedi!.');
END;

BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE_APPLICATION_ERROR(-20001,'HATA');
END IF;
END;

-- RAISE_APPLICATION_ERROR EXCEPTION
DECLARE
HATA EXCEPTION;
BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE HATA;
END IF;
EXCEPTION 
WHEN HATA THEN RAISE_APPLICATION_ERROR(-20001,'HATA');
END;


--USER DEFINED EXCEPTION
DECLARE
V_CHILD EXCEPTION;
PRAGMA EXCEPTION_INIT(V_CHILD,-2292);
BEGIN
DELETE FROM EMPLOYEES;
EXCEPTION
WHEN V_CHILD THEN dbms_output.put_line('ÇOCUKLARI VAR');
END;


STORED OBJECTS
--------------

PROCEDURE 
FUNCTIONS
PACKAGE 
TRIGGER



create or replace procedure p_zam is
begin
update employees set salary=salary*1.1;
commit;
end;

begin
p_zam;
end;

call p_zam();

execute p_zam;

exec p_zam;


create or replace procedure p_zam_deptid
(v_deptid departments.department_id%type) is
begin 
update employees set salary=salary*1.1
where department_id=v_deptid;
commit;
end;

declare
v_deptid departments.department_id%type:=&deptidgir;
begin
p_zam_deptid(v_deptid);
end;

create or replace procedure p_zam_dept_once_sonra
(v_deptid departments.department_id%type) is
type rec1 is record(v_empid employees.employee_id%type,
                   v_deptid employees.department_id%type,
                   v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Önceki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
v_rec(i).v_sal:=v_rec(i).v_sal*1.1;
end loop;
forall update employees set salary=v_rec(i).v_sal 
where department_id=v_rec(i).v_deptid;
commit;
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Sonraki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
end loop;
end;

declare
v_deptid departments.department_id%type:=&deptidgir;
begin
P_ZAM_DEPT_ONCE_SONRA(v_deptid);
end;


select salary from employees




create or replace procedure p_zam_dept_oran_once_sonra
(v_deptid departments.department_id%type,
 v_oran number) is
type rec1 is record(v_empid employees.employee_id%type,
                   v_deptid employees.department_id%type,
                   v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Önceki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
v_rec(i).v_sal:=v_rec(i).v_sal+(v_rec(i).v_sal*v_oran/100);
end loop;
forall update employees set salary=v_rec(i).v_sal 
where department_id=v_rec(i).v_deptid;
commit;
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Sonraki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
end loop;
end;


begin
p_zam_dept_oran_once_sonra(20,-90);
end;

set serveroutput on

MODE 
IN
OUT
IN OUT

create or replace procedure p_zam_deptid_oran
(v_deptid IN departments.department_id%type,
 v_oran IN number) is
begin 
update employees set salary=salary+(salary*v_oran/100)
where department_id=v_deptid;
commit;
end;

CREATE OR REPLACE PROCEDURE P_OUT_SAL
(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,
 V_SAL OUT EMPLOYEES.SALARY%TYPE) IS
 BEGIN
 SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
 END;
 
 DECLARE
 V_SALS EMPLOYEES.SALARY%TYPE;
 BEGIN
 P_OUT_SAL(200,V_SALS);
 DBMS_OUTPUT.PUT_LINE(V_SALS);
 END;
 
CREATE OR REPLACE PROCEDURE YAZ(A VARCHAR2) IS
BEGIN
DBMS_OUTPUT.PUT_LINE(A);
END;


BEGIN
YAZ('DASDSA');
END;

CREATE OR REPLACE PROCEDURE P_FORMAT_CARD 
(V_KART IN OUT VARCHAR2) IS
BEGIN
V_KART:=SUBSTR(V_KART,1,4) || ' ' ||SUBSTR(V_KART,5,4) || ' '
||SUBSTR(V_KART,9,4) || ' '||SUBSTR(V_KART,13); 
END;

DECLARE
V_KARD VARCHAR2(25):='1234567898765432';
BEGIN
P_FORMAT_CARD(V_KARD);
YAZ(V_KARD);
END;

SET SERVEROUTPUT ON

FUNCTION


CREATE OR REPLACE FUNCTION F_SAL
(V_EMPID EMPLOYEES.EMPLOYEE_ID%TYPE) 
RETURN EMPLOYEES.SALARY%TYPE IS
V_SAL EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES
WHERE EMPLOYEE_ID=V_EMPID;
RETURN V_SAL;
END;

DECLARE
V_SALS EMPLOYEES.SALARY%TYPE;
BEGIN
V_SALS:=F_SAL(120);
YAZ(V_SALS);
END;


BEGIN
YAZ(F_SAL(120));
END;

CALL YAZ(F_SAL(120));

EXECUTE YAZ(F_SAL(120));

EXEC YAZ(F_SAL(120));


SELECT F_SAL(150) FROM DUAL

SELECT F_SAL(EMPLOYEE_ID) FROM EMPLOYEES


PACKAGE
forward declaration
overloading

PKG SPEC -  procedure + function + global varibale definition
PKG BODY -  code


CREATE OR REPLACE PACKAGE PKG_EMP IS
PROCEDURE P_ZAM(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,V_SAL OUT EMPLOYEES.SALARY%TYPE);
FUNCTION F_SAL(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE) RETURN EMPLOYEES.SALARY%TYPE;
V_DEG NUMBER :=100;
END;

CREATE OR REPLACE PACKAGE BODY PKG_EMP IS
PROCEDURE P_ZAM(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,V_SAL OUT EMPLOYEES.SALARY%TYPE) IS
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
END P_ZAM;
FUNCTION F_SAL(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE) RETURN EMPLOYEES.SALARY%TYPE IS
V_SAL EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
RETURN V_SAL;
END F_SAL;
END PKG_EMP;


Oracle Database 12c: Performance Management and Tuning 
Oracle Database 12c: Advanced PL/SQL


declare
v_sals employees.salary%type;
begin
PKG_EMP.P_ZAM(105,v_sals);
yaz(v_sals);
yaz(pkg_emp.F_SAL(105));
end;


PKG_EMP_ALL
-----------
PROCEDURE PKG_DEPT_INS(V_DEPTID,V_DEPTNAME) MNG 100  LOCATION 1800
PROCEDURE PKG_DEPT_UPD(V_DEPTID,V_newDEPTNAME);
                                            -- şu departman güncellendi
                                            -- exception kayıt güncellenemedi
PROCEDURE PKG_DEPT_DEL(V_DEPTID); -- şu departman silindi
                                  -- exception kayıt bulunamadı
FUNCTION  PKG_DEPT_SEL(V_DEPTID) return deptname
                                  -- exception kayıt bulunamadı

SELECT * FROM DEPARTMENTS

CREATE OR REPLACE PACKAGE PKG_EMP_ALL IS
PROCEDURE PKG_DEPT_INS(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_DEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE,
		       V_MNGID  DEPARTMENTS.MANAGER_ID%TYPE DEFAULT 100,
		       V_LOCID DEPARTMENTS.LOCATION_ID%TYPE DEFAULT 1800);
PROCEDURE PKG_DEPT_UPD(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_NEWDEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE);
PROCEDURE PKG_DEPT_DEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE);
FUNCTION  PKG_DEPT_SEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) 
          RETURN DEPARTMENTS.DEPARTMENT_NAME%TYPE;
END;


create or replace PACKAGE BODY PKG_EMP_ALL IS
PROCEDURE PKG_DEPT_INS(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_DEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE,
		       V_MNGID  DEPARTMENTS.MANAGER_ID%TYPE DEFAULT 100,
		       V_LOCID DEPARTMENTS.LOCATION_ID%TYPE DEFAULT 1800) IS
BEGIN
INSERT INTO DEPARTMENTS VALUES(V_DEPTID,V_DEPTNAME,V_MNGID,V_LOCID);
COMMIT;
YAZ(V_DEPTID || ' no.lı departman eklendi.');
EXCEPTION
WHEN OTHERS THEN YAZ(SQLERRM);
END PKG_DEPT_INS;

PROCEDURE PKG_DEPT_UPD(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_NEWDEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE) is
v_deptname DEPARTMENTS.DEPARTMENT_NAME%TYPE;
begin
select department_name into v_deptname from departments where department_id=V_DEPTID for update;
update departments set department_name=V_NEWDEPTNAME where department_id=V_DEPTID;
if sql%rowcount<>0 then 
yaz(V_NEWDEPTNAME || ' departmanı güncellendi.');
else
yaz(V_DEPTID || ' departmanı bulunamadı.');
end if;
commit;
exception 
when no_data_found then yaz(V_DEPTID || ' departmanı bulunamadı.');
WHEN OTHERS THEN YAZ(SQLERRM);
end PKG_DEPT_UPD;

PROCEDURE PKG_DEPT_DEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) is
begin
delete from departments where department_id=V_DEPTID;
if sql%rowcount<>0 then 
yaz(V_DEPTID || ' departmanı silindi.');
else
yaz(V_DEPTID || ' departmanı bulunamadı.');
end if;
commit;
exception 
WHEN OTHERS THEN YAZ(SQLERRM);
end PKG_DEPT_DEL;

FUNCTION  PKG_DEPT_SEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) 
RETURN DEPARTMENTS.DEPARTMENT_NAME%TYPE is
v_deptname DEPARTMENTS.DEPARTMENT_NAME%TYPE;
begin
select department_name into v_deptname from departments where department_id=V_DEPTID;
yaz(V_DEPTNAME || ' departmanı bulundu.');
return v_Deptname;
exception 
when no_data_found then yaz(V_DEPTID || ' departmanı bulunamadı.');
return  NULL;
WHEN OTHERS THEN YAZ(SQLERRM);
return v_Deptname;
end PKG_DEPT_SEL;

END PKG_EMP_ALL;


begin
yaz(PKG_EMP_ALL.PKG_DEPT_SEL(4000));
PKG_EMP_ALL.PKG_DEPT_INS(V_DEPTID=>4000,V_DEPTNAME=>'Dept 4000');
PKG_EMP_ALL.PKG_DEPT_UPD(4000,'D4000');
PKG_EMP_ALL.PKG_DEPT_DEL(4000);
yaz(PKG_EMP_ALL.PKG_DEPT_SEL(4000));
end;

SELECT * FROM DEPARTMENTS

CREATE OR REPLACE PACKAGE emp_pkg is
type emp_table_type is table of employees%rowtype index by pls_integer;
procedure get_employees(p_emps out emp_table_type);
end emp_pkg;

CREATE OR REPLACE PACKAGE BODY emp_pkg is
procedure get_employees(p_emps out emp_table_type) IS
i number:=0;
BEGIN
FOR v_rec in (select * from employees) loop
p_emps(i):=v_rec;
i:=i+1;
end loop;
END get_employees;
end emp_pkg;

declare
v_emps emp_pkg.emp_table_type;
begin
emp_pkg.get_employees(v_emps);
for i in v_emps.first..v_emps.last loop
yaz(v_emps(i).hire_date || ' ' || v_emps(i).salary);
end loop;
end;


create OR REPLACE procedure add_job(v_jobid jobs.job_id%type,
                         v_jobtitle jobs.job_title%type) is
begin
insert into jobs(job_id,job_title) values(v_jobid,v_jobtitle);
EXCEPTION
WHEN OTHERS THEN YAZ(SQLERRM);
end;

create OR REPLACE procedure add_job(v_jobid jobs.job_id%type,
                         v_jobtitle jobs.job_title%type) is
begin
insert into jobs(job_id,job_title) values(v_jobid,v_jobtitle);
EXCEPTION
WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20005,'HATA');
end;

create OR REPLACE procedure p_jobsadd is
begin
add_job('IT','ITCI');
add_job('DP2','DPCI2');
add_job('SR2','SRCI2');
end;


CALL p_jobsadd();


select * from jobs

DESC DBMS_SCHEDULER

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN my_job_proc(''CREATE_PROGRAM (BLOCK)''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name      => 'test_prog_sched_job_definition',
    program_name  => 'test_plsql_block_prog',
    schedule_name => 'test_hourly_schedule',
    enabled       => TRUE,
    comments      => 'Job defined by an existing program and schedule.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_prog_job_definition',
    program_name    => 'test_plsql_block_prog',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined by existing program and inline schedule.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
     job_name      => 'test_sched_job_definition',
     schedule_name => 'test_hourly_schedule',
     job_type      => 'PLSQL_BLOCK',
     job_action    => 'BEGIN my_job_proc(''CREATE_PROGRAM (BLOCK)''); END;',
     enabled       => TRUE,
     comments      => 'Job defined by existing schedule and inline program.');
END;
/


BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN my_job_procedure; END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0; bysecond=0;',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');
END;
/


BEGIN
  DBMS_SCHEDULER.create_program (
    program_name   => 'test_plsql_block_prog',
    program_type   => 'PLSQL_BLOCK',
    program_action => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
    enabled        => TRUE,
    comments       => 'Program to gather SCOTT''s statistics using a PL/SQL block.');

  -- Shell Script.
  DBMS_SCHEDULER.create_program (
    program_name        => 'test_executable_prog',
    program_type        => 'EXECUTABLE',
    program_action      => '/u01/app/oracle/dba/gather_scott_stats.sh',
    number_of_arguments => 0,
    enabled             => TRUE,
    comments            => 'Program to gather SCOTT''s statistics us a shell script.');


  DBMS_SCHEDULER.create_program (
    program_name        => 'test_stored_procedure_prog',
    program_type        => 'STORED_PROCEDURE',
    program_action      => 'DBMS_STATS.gather_schema_stats',
    number_of_arguments => 1,
    enabled             => FALSE,
    comments            => 'Program to gather SCOTT''s statistics using a stored procedure.');

  DBMS_SCHEDULER.define_program_argument (
    program_name      => 'test_stored_procedure_prog',
    argument_name     => 'ownname',
    argument_position => 1,
    argument_type     => 'VARCHAR2',
    default_value     => 'SCOTT');

  DBMS_SCHEDULER.enable (name => 'test_stored_procedure_prog');
END;
/

PL/SQL procedure successfully completed.

SELECT owner, program_name, enabled FROM ALL_scheduler_programs;

OWNER                          PROGRAM_NAME                   ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG_PROG                 TRUE
SYS                            GATHER_STATS_PROG              TRUE
SYS                            TEST_PLSQL_BLOCK_PROG          TRUE
SYS                            TEST_EXECUTABLE_PROG           TRUE
SYS                            TEST_STORED_PROCEDURE_PROG     TRUE



BEGIN
  DBMS_SCHEDULER.drop_program (program_name => 'test_plsql_block_prog');
  DBMS_SCHEDULER.drop_program (program_name => 'test_stored_procedure_prog');
  DBMS_SCHEDULER.drop_program (program_name => 'test_executable_prog');
END;
/


SELECT owner, program_name, enabled FROM dba_scheduler_programs;

OWNER                          PROGRAM_NAME                   ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG_PROG                 TRUE
SYS                            GATHER_STATS_PROG              TRUE


BEGIN
  DBMS_SCHEDULER.create_schedule (
    schedule_name   => 'test_hourly_schedule',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    comments        => 'Repeats hourly, on the hour, for ever.');
END;
/


SELECT owner, schedule_name FROM dba_scheduler_schedules;

OWNER                          SCHEDULE_NAME
------------------------------ ------------------------------
SYS                            DAILY_PURGE_SCHEDULE
SYS                            TEST_HOURLY_SCHEDULE


BEGIN
  DBMS_SCHEDULER.drop_schedule (schedule_name => 'TEST_HOURLY_SCHEDULE');
END;
/


SELECT owner, schedule_name FROM dba_scheduler_schedules;

OWNER                          SCHEDULE_NAME
------------------------------ ------------------------------
SYS                            DAILY_PURGE_SCHEDULE


BEGIN
  -- Job defined entirely by the CREATE JOB procedure.
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');

  -- Job defined by an existing program and schedule.
  DBMS_SCHEDULER.create_job (
    job_name      => 'test_prog_sched_job_definition',
    program_name  => 'test_plsql_block_prog',
    schedule_name => 'test_hourly_schedule',
    enabled       => TRUE,
    comments      => 'Job defined by an existing program and schedule.');

  -- Job defined by existing program and inline schedule.
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_prog_job_definition',
    program_name    => 'test_plsql_block_prog',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined by existing program and inline schedule.');

  -- Job defined by existing schedule and inline program.
  DBMS_SCHEDULER.create_job (
     job_name      => 'test_sched_job_definition',
     schedule_name => 'test_hourly_schedule',
     job_type      => 'PLSQL_BLOCK',
     job_action    => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
     enabled       => TRUE,
     comments      => 'Job defined by existing schedule and inline program.');
END;
/


SELECT owner, job_name, enabled FROM dba_scheduler_jobs;

OWNER                          JOB_NAME                       ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG                      TRUE
SYS                            GATHER_STATS_JOB               TRUE
SYS                            TEST_FULL_JOB_DEFINITION       TRUE
SYS                            TEST_PROG_SCHED_JOB_DEFINITION TRUE
SYS                            TEST_PROG_JOB_DEFINITION       TRUE
SYS                            TEST_SCHED_JOB_DEFINITION      TRUE


BEGIN
  -- Run job synchronously.
  DBMS_SCHEDULER.run_job (job_name            => 'test_full_job_definition',
                          use_current_session => FALSE);

  -- Stop jobs.
  DBMS_SCHEDULER.stop_job (job_name => 'test_full_job_definition, test_prog_sched_job_definition');
END;
/

BEGIN
  DBMS_SCHEDULER.drop_job (job_name => 'test_full_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_prog_sched_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_prog_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_sched_job_definition');
END;
/

SELECT owner, job_name, enabled FROM dba_scheduler_jobs;

OWNER                          JOB_NAME                       ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG                      TRUE
SYS                            GATHER_STATS_JOB               TRUE



@?/rdbms/admin/utlmail.sql
@?/rdbms/admin/prvtmail.plb

ALTER SYSTEM SET SMTP_OUT_SERVER='smtp.server.com' SCOPE=SPFILE

-------------------------------------------------------

UTL_MAIL.SEND (
   sender      IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients  IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc          IN    VARCHAR2 CHARACTER SET ANY_CS 
								   DEFAULT NULL,
   bcc         IN    VARCHAR2 CHARACTER SET ANY_CS 
                       DEFAULT NULL,
   subject     IN    VARCHAR2 CHARACTER SET ANY_CS 
                       DEFAULT NULL,
   message     IN    VARCHAR2 CHARACTER SET ANY_CS,
   mime_type   IN    VARCHAR2 
                       DEFAULT 'text/plain; charset=us-ascii',
   priority    IN    PLS_INTEGER DEFAULT NULL);


BEGIN
 UTL_MAIL.SEND('otn@oracle.com','user@oracle.com',
   message => 'For latest downloads visit OTN',
   subject => 'OTN Newsletter');
END;

-------------------------------------------------------

UTL_MAIL.SEND_ATTACH_RAW (
   sender           IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients       IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc               IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   bcc              IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   subject          IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   message          IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   mime_type        IN    VARCHAR2 DEFAULT CHARACTER SET ANY_CS
                            DEFAULT 'text/plain; charset=us-ascii',
   priority         IN    PLS_INTEGER DEFAULT 3,
   attachment       IN    RAW,
   att_inline       IN    BOOLEAN DEFAULT TRUE,
   att_mime_type    IN    VARCHAR2 CHARACTER SET ANY_CS 
                            DEFAULT 'text/plain; charset=us-ascii',
   att_filename     IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL);


CREATE OR REPLACE PROCEDURE send_mail_logo IS
BEGIN
  UTL_MAIL.SEND_ATTACH_RAW(
    sender => 'me@oracle.com',
    recipients => 'you@somewhere.net',
    message =>
      '<HTML><BODY>See attachment</BODY></HTML>',
    subject => 'Oracle Logo',
    mime_type => 'text/html'
    attachment => get_image('oracle.gif'),
    att_inline => true,
    att_mime_type => 'image/gif',
    att_filename => 'oralogo.gif');
END;
/


UTL_SMTP

-------------------------------------------------------

UTL_MAIL.SEND_ATTACH_VARCHAR2 (
   sender            IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients        IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc                IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   bcc               IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   subject           IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   message           IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   mime_type         IN    VARCHAR2 CHARACTER SET ANY_CS 
                             DEFAULT 'text/plain; charset=us-ascii',
   priority          IN    PLS_INTEGER DEFAULT 3,
   attachment        IN    VARCHAR2 CHARACTER SET ANY_CS, 
   att_inline        IN    BOOLEAN DEFAULT TRUE,
   att_mime_type     IN    VARCHAR2 CHARACTER SET ANY_CS 
                             DEFAULT 'text/plain; charset=us-ascii',
   att_filename      IN    VARCHAR2CHARACTER SET ANY_CS DEFAULT NULL);



CREATE OR REPLACE PROCEDURE send_mail_file IS
BEGIN
  UTL_MAIL.SEND_ATTACH_VARCHAR2(
    sender => 'me@oracle.com',
    recipients => 'you@somewhere.net',
    message =>
      '<HTML><BODY>See attachment</BODY></HTML>',
    subject => 'Oracle Notes',
    mime_type => 'text/html'
    attachment => get_file('notes.txt'),
    att_inline => false,
    att_mime_type => 'text/plain',
    att_filename => 'notes.txt');
END;
/



-------------------------------------------------------

CREATE OR REPLACE PROCEDURE sal_status(
  p_dir IN VARCHAR2, p_filename IN VARCHAR2) IS
  f_file UTL_FILE.FILE_TYPE;
  CURSOR cur_emp IS SELECT last_name, salary, department_id
    FROM employees ORDER BY department_id;
  v_newdeptno employees.department_id%TYPE;
  v_olddeptno employees.department_id%TYPE := 0;
BEGIN
  f_file:= UTL_FILE.FOPEN (p_dir, p_filename, 'W');
  UTL_FILE.PUT_LINE(f_file,'REPORT: GENERATED ON ' || SYSDATE);
  UTL_FILE.NEW_LINE (f_file);
FOR emp_rec IN cur_emp LOOP
    IF emp_rec.department_id <> v_olddeptno THEN
      UTL_FILE.PUT_LINE (f_file, 
       'DEPARTMENT: ' || emp_rec.department_id);
		 UTL_FILE.NEW_LINE (f_file);
    END IF;
    UTL_FILE.PUT_LINE (f_file,
       '  EMPLOYEE: ' || emp_rec.last_name || ' earns: ' || emp_rec.salary);
    v_olddeptno := emp_rec.department_id;
    UTL_FILE.NEW_LINE (f_file);
  END LOOP;
  UTL_FILE.PUT_LINE(f_file,'*** END OF REPORT ***');
  UTL_FILE.FCLOSE (f_file);
EXCEPTION
 WHEN UTL_FILE.INVALID_FILEHANDLE THEN
  RAISE_APPLICATION_ERROR(-20001,'Invalid File.');
 WHEN UTL_FILE.WRITE_ERROR THEN
  RAISE_APPLICATION_ERROR (-20002, 'Unable to write to file');
END sal_status;
/


BEGIN
sal_status('DIR','empreport.txt');
END;


create directory DIR AS '/home/oracle/Desktop/DIR'

GRANT READ,WRITE ON DIRECTORY DIR TO HR

CREATE TABLE countries_ext (
  country_code      VARCHAR2(5),
  country_name      VARCHAR2(50),
  country_language  VARCHAR2(50)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY DIR
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    FIELDS TERMINATED BY ','
    MISSING FIELD VALUES ARE NULL
    (
      country_code      CHAR(5),
      country_name      CHAR(50),
      country_language  CHAR(50)
    )
  )
  LOCATION ('Countries1.txt')
)
PARALLEL 5
REJECT LIMIT UNLIMITED;

SELECT * FROM countries_ext

UPDATE countries_ext
SET country_name='turks'



dynamic sql

DML - insert update delete merge select

ddl - create alter drop rename truncate
dcl - grant revoke

create procedure p_truncatetable(v_emps varchar2) is
v_stmt varchar2(50);
begin
v_stmt:= 'truncate table ' ||v_emps;
execute immediate v_stmt;
end;

begin
p_truncatetable('emps');
end;

insert into emps
select * from employees

select * from emps



create or replace procedure p_createtable(v_tablename varchar2,
                               v_columnsname varchar2) 
AUTHID CURRENT_USER is
v_stmt varchar2(200);
begin
v_stmt:= 'create table ' || v_tablename || '(' || v_columnsname ||')';
execute immediate v_stmt;
end;

begin
p_createtable('DENEME','a number primary key,b date not null');
end;

select * from deneme


alter user hr identified by hr

select * from employees where employee_id=100;
select * from employees where employee_id=101;
select * from employees where employee_id=102;
select * FROM employees where employee_id=102;

select * from v$sql where sql_text like 
'%select * from employees where employee_id%'

select * from employees where employee_id=:1;


DECLARE -- declaration
begin -- EXECUTABLE

EXCEPTION

end;


begin
null;
end;

select hire_date from employees where employee_id=200

DECLARE
V_HDATE DATE;
begin
select hire_date INTO V_HDATE 
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE(V_HDATE);
end;

DECLARE
V_HDATE DATE;
begin
select hire_date INTO V_HDATE 
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE);
end;

SET SERVEROUTPUT ON

DECLARE
V_HDATE DATE;
v_lname varchar2(20);
begin
select hire_date,last_name INTO V_HDATE,v_lname
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE||' Soyadı: '||v_lname);
end;


DECLARE
V_HDATE employees.hire_date%type;
v_lname employees.last_name%type;
v_name v_lname%type;
v_sal number(4,2);
v_sals v_sal%type;
begin
select hire_date,last_name INTO V_HDATE,v_lname
from employees where employee_id=200;
DBMS_OUTPUT.PUT_LINE('Tarih: '||V_HDATE||' Soyadı: '||v_lname);
end;



select avg(avg_row_len) from dba_tables -- 30.22
select * from v$parameter where name like '%block%'
select avg(avg_row_len) from dba_tables 
where table_name='EMPLOYEES'

db_block_size	                8192
db_file_multiblock_read_count	82

select (8192/29)*82 from dual

desc standard


VARIABLE

SCALAR - number,date,varchar2 - tek tip  tek alan verisi

user defined type -
composite(array)
            record - tek satır çok tip
            collection - çok satır tek tip
            collection of records - çok satır çok tip
            
cursor

declare
v_fname employees.first_name%type;
begin
select first_name into v_fname 
from employees
where last_name='King';
end;

declare
v_fname employees.first_name%type;
begin
select first_name into v_fname 
from employees
where last_name='king';
end;


declare
first_name employees.first_name%type;
v_empid employees.employee_id%type;
begin
select first_name into first_name 
from employees
where last_name='Abel';
select employee_id into v_empid
from employees 
where first_name=first_name;
end;


declare
v_city varchar2(20) := 'Atlanta';
begin
DBMS_OUTPUT.PUT_LINE(v_city);
v_city := 'Batlanta';
DBMS_OUTPUT.PUT_LINE(v_city);
end;

DECLARE
v_deptno NUMBER(2) NOT NULL := 10;
begin
v_deptno:=20;
end;


DECLARE
	  v_hiredate		DATE;		
	  v_location		VARCHAR2(13) := 'Atlanta';
      v_deptno			NUMBER(2) NOT NULL := 10;
	  c_comm			CONSTANT NUMBER := 1400;
begin
c_comm:=20;
end;


DECLARE
  v_myName  VARCHAR2(20);
BEGIN
  DBMS_OUTPUT.PUT_LINE('My name is: '||v_myName );
  v_myName  := 'John';
  DBMS_OUTPUT.PUT_LINE('My name is: '||v_myName );
END;
/


DECLARE
 v_myName VARCHAR2(20):= 'John';
BEGIN
 v_myName := 'Steven';
 DBMS_OUTPUT.PUT_LINE('My name is: '|| v_myName);
END; 
/


declare
v_today date := sysdate;
v_tomorrow v_today%type := v_today +1;
begin
dbms_output.put_line(v_today);
dbms_output.put_line(v_tomorrow);
end;

select sysdate
from dual

v_date_of_joining DATE:= '02-Feb-2000';
v_date_of_joining DATE:= 'February 02,2000';
v_date_of_joining DATE:= TO_DATE('February 02,2000','Month DD, YYYY');



DECLARE
 v_outer_variable VARCHAR2(20):='GLOBAL VARIABLE';
BEGIN
  DECLARE
   v_inner_variable VARCHAR2(20):='INNER VARIABLE';
   v_outer_variable VARCHAR2(25):='INNER GLOBAL VARIABLE';
  BEGIN
   DBMS_OUTPUT.PUT_LINE(v_inner_variable);
   DBMS_OUTPUT.PUT_LINE(v_outer_variable);
  END;
 DBMS_OUTPUT.PUT_LINE(v_outer_variable); 
END;




DECLARE
 v_father_name VARCHAR2(20):='Patrick';
 v_date_of_birth DATE:='20-Apr-1972';
BEGIN
  DECLARE
   v_child_name VARCHAR2(20):='Mike';
   v_date_of_birth DATE:='12-Dec-2002';
  BEGIN
   DBMS_OUTPUT.PUT_LINE('Father''s Name: '||v_father_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
   DBMS_OUTPUT.PUT_LINE('Child''s Name: '||v_child_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
  END; 
END;
/




BEGIN <<outer>>
DECLARE
 v_father_name VARCHAR2(20):='Patrick';
 v_date_of_birth DATE:='20-Apr-1972';
BEGIN
  DECLARE
   v_child_name VARCHAR2(20):='Mike';
   v_date_of_birth DATE:='12-Dec-2002';
  BEGIN
   DBMS_OUTPUT.PUT_LINE('Father''s Name: '||v_father_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '
                        ||outer.v_date_of_birth);
   DBMS_OUTPUT.PUT_LINE('Child''s Name: '||v_child_name);
   DBMS_OUTPUT.PUT_LINE('Date of Birth: '||v_date_of_birth);
  END;
END;
END outer;



BEGIN <<outer>>
DECLARE
  v_sal      NUMBER(7,2) := 60000;
  v_comm     NUMBER(7,2) := v_sal * 0.20;
  v_message  VARCHAR2(255) := ' eligible for commission';
BEGIN 
  DECLARE
    	v_sal	    NUMBER(7,2) := 50000;
    	v_comm 	    NUMBER(7,2) := 0;
    	v_total_comp  NUMBER(7,2) := v_sal + v_comm;
        v_message  VARCHAR2(255) :='FOR COMM';
  BEGIN 
    	 v_message := 'CLERK not'||v_message;
    	outer.v_comm := v_sal * 0.30; 
        --DBMS_OUTPUT.PUT_LINE(v_message);
        --DBMS_OUTPUT.PUT_LINE(v_comm);
        --DBMS_OUTPUT.PUT_LINE(OUTER.v_comm);
        DBMS_OUTPUT.PUT_LINE(v_total_comp);
  END;
 v_message := 'SALESMAN'||v_message;
 DBMS_OUTPUT.PUT_LINE(v_message);
END;
END outer;
/

declare
v_lname employees.last_name%type;
begin
select last_name into v_lname from employees where employee_id=&idgir;

if v_lname is null then DBMS_OUTPUT.PUT_LINE('Soyadı Yok');
elsif v_lname='King' then DBMS_OUTPUT.PUT_LINE('Kingsin');
elsif v_lname<>'King' then DBMS_OUTPUT.PUT_LINE('King Değilsin');
else DBMS_OUTPUT.PUT_LINE(v_lname);
end if;
end;



0-15  
15-25
25-35
35-45
>45


declare
v_yas number := &yasgir;
begin
if v_yas<15 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Küçük');
elsif v_yas<25 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Genç');
elsif v_yas<35 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Genç Üstü');
elsif v_yas<45 then DBMS_OUTPUT.PUT_LINE(v_yas ||' Orta');
else                DBMS_OUTPUT.PUT_LINE(v_yas ||' Orta Üstü');
end if;
end;

set verify off

update employees set salary=1
where employee_id=500;

begin
update employees set salary=1 where employee_id=500;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
commit;
update employees set salary=1 where employee_id=101;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
rollback;
end;



begin
update employees set salary=1 where employee_id=100;
commit;
if sql%rowcount=0 then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
end;

begin
update employees set salary=1 where employee_id=101;
commit;
if sql%found then DBMS_OUTPUT.PUT_LINE('Kayıt güncellenemedi');
else DBMS_OUTPUT.PUT_LINE(sql%rowcount || ' kayıt güncellendi');
end if;
end;

begin
update employees set salary=salary*1.1 where department_id=50;
if sql%rowcount>10 then commit;
else rollback;
end if;
end;

select salary from employees where department_id=50;

8000
8200
7900

8800
9020
8690

update employees emp set salary=(
select salary from employees
as of timestamp sysdate-5/1440
where department_id=50 and employee_id=emp.employee_id)
where department_id=50

commit

create table emp as select * from employees

drop table emp purge

%>20 delete

insert /*+ append nologging parallel */

select /*+ parallel(32) */ 

insert into emp select * from emp

commit

select department_id,count(*)
from emp
group by department_id

call dbms_stats.gather_table_stats('HR','EMP');

DELETE FROM EMP WHERE EMPLOYEE_ID>105

SELECT * FROM ALL_TABLES WHERE TABLE_NAME='EMP'

ALTER TABLE EMP ENABLE ROW MOVEMENT
ALTER TABLE EMP SHRINK SPACE

create table tablo(a number) tablespace tbs pctfree 0

select * from all_tab_modifications


DECLARE
   v_grade  CHAR(1) := UPPER('&grade');
   v_appraisal VARCHAR2(20);
BEGIN
    v_appraisal := CASE 
         WHEN v_grade  = 'A' THEN 'Excellent'
         WHEN v_grade  IN ('B','C') THEN 'Good'          
         ELSE 'No such grade'   
     END;
   DBMS_OUTPUT.PUT_LINE ('Grade: '|| v_grade  ||
                  ' Appraisal ' || v_appraisal);
END;
/

DECLARE
   v_grade  CHAR(1) := UPPER('&grade');
   v_appraisal VARCHAR2(20);
BEGIN
    v_appraisal := CASE v_grade
         WHEN 'A' THEN 'Excellent'
         WHEN 'B' THEN 'Good'          
         WHEN 'C' THEN 'GoodY'          
         ELSE 'No such grade'   
     END;
   DBMS_OUTPUT.PUT_LINE ('Grade: '|| v_grade  ||
                  ' Appraisal ' || v_appraisal);
END;
/


DECLARE
   v_deptid NUMBER;
   v_deptname VARCHAR2(20);
   v_emps NUMBER;
   v_mngid NUMBER:= &MGRID;   
BEGIN
  CASE  v_mngid
   WHEN  108 THEN 
    SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=108;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
   WHEN  200 THEN 
   SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=200;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
 END CASE;
DBMS_OUTPUT.PUT_LINE ('You are working in the '|| v_deptname||
' department. There are '||v_emps ||' employees in this 
department');
END;
/


DECLARE
   v_deptid NUMBER;
   v_deptname VARCHAR2(20);
   v_emps NUMBER;
   v_mngid NUMBER:= &MGRID;   
BEGIN
      SELECT department_id, department_name 
     INTO v_deptid, v_deptname FROM departments 
     WHERE manager_id=v_mngid;
    SELECT count(*) INTO v_emps FROM employees 
     WHERE department_id=v_deptid;
DBMS_OUTPUT.PUT_LINE ('You are working in the '|| v_deptname||
' department. There are '||v_emps ||' employees in this 
department');
END;
/


LOOP

BASIC LOOP
WHILE LOOP
FOR LOOP



DECLARE
V_I NUMBER :=0;
BEGIN
LOOP
V_I := V_I +1;
DBMS_OUTPUT.PUT_LINE(V_I);
EXIT WHEN V_I=10;
END LOOP;
END;

DECLARE
V_I NUMBER :=0;
BEGIN
WHILE (V_I<10) LOOP
V_I := V_I +1;
DBMS_OUTPUT.PUT_LINE(V_I);
END LOOP;
END;


BEGIN
FOR V_I IN 1..10 LOOP
V_I := V_I+1;
DBMS_OUTPUT.PUT_LINE(V_I);
END LOOP;
END;



BEGIN
FOR V_COUNTER IN 1..10 LOOP
IF V_COUNTER NOT IN(6,8) 
THEN DBMS_OUTPUT.PUT_LINE(V_COUNTER);
END IF;
END LOOP;
END;

BEGIN
FOR V_COUNTER IN 1..10 LOOP
IF V_COUNTER  IN(6,8) THEN NULL;
ELSE DBMS_OUTPUT.PUT_LINE(V_COUNTER);
END IF;
END LOOP;
END;


DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_counter		  NUMBER(2) := 1;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
    v_counter := v_counter + 1;
    EXIT WHEN v_counter > 3;
  END LOOP;
DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/

SELECT MAX(location_id)  FROM locations WHERE country_id = 'CA';

SELECT * FROM locations

DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_counter		  NUMBER(2) := 1;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  WHILE (v_counter<=3) LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
    v_counter := v_counter + 1;
  END LOOP;
DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/

DECLARE
  v_countryid    locations.country_id%TYPE := 'CA';
  v_loc_id       locations.location_id%TYPE;
  v_new_city     locations.city%TYPE := 'Montreal';
BEGIN
  SELECT MAX(location_id) INTO v_loc_id FROM locations
  WHERE country_id = v_countryid;
  FOR v_counter IN 1..3 LOOP
    INSERT INTO locations(location_id, city, country_id)   
    VALUES((v_loc_id + v_counter), v_new_city, v_countryid);
  END LOOP;
--DBMS_OUTPUT.PUT_LINE(v_counter-1||' rows added.');
END;
/


declare
v_fname employees.first_name%type;
v_lname employees.last_name%type;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for v_counter in v_min..v_max loop
select first_name,last_name into v_fname,v_lname
from employees where employee_id=v_counter;
dbms_output.put_line(v_fname || ' ' || v_lname);
end loop;
end;


10000

32*500 = 16000




select count(*) from dict



DECLARE
  v_total SIMPLE_INTEGER := 0;
BEGIN
  FOR i IN 1..10 LOOP
    v_total := v_total + i;
    DBMS_OUTPUT.PUT_LINE
     ('Total is: '|| v_total);
    CONTINUE WHEN i > 5;
    v_total := v_total + i; 
    DBMS_OUTPUT.PUT_LINE
     ('Out of Loop Total is:
      '|| v_total);    
  END LOOP;
END;
/


DECLARE 
 v_total NUMBER := 0;
BEGIN
 <<BeforeTopLoop>>
 FOR i IN 1..5 LOOP
   v_total := v_total + 1;
   DBMS_OUTPUT.PUT_LINE 
     ('v_total(in BeforeTopLoop): ' || v_total);
    <<BeforeTopLoop>>
   FOR j IN 1..5 LOOP
     CONTINUE BeforeTopLoop WHEN i + j > 5;
     v_total := v_total + 1;
		DBMS_OUTPUT.PUT_LINE('v_total(in the inner loop): ' || v_total);
   END LOOP;
 END LOOP BeforeTopLoop;
END;


1Z0-071 SQL EXPERT
1Z0-144 OCA
1Z0-148 DEVELOPER OCP 

OCE
OCP
OCM

record - tek satır çok tip
collection - çok satır tek tip
collection of record - array - çok satır çok tip


declare
v_hdate employees.hire_date%type;
begin
select hire_date into v_hdate from employees
where employee_id=100;
dbms_output.put_line(v_hdate);
end;

declare
type rec is record(v_hdate employees.hire_date%type,
                   v_lname employees.last_name%type);
v_rec rec;
begin
select hire_date,last_name into v_rec from employees
where employee_id=100;
v_rec.v_lname:='Kings';
dbms_output.put_line(v_rec.v_hdate || ' ' ||v_rec.v_lname);
end;

declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for i in v_min..v_max loop
select salary into v_rec(i) from employees where employee_id=i;
dbms_output.put_line(v_rec(i));
end loop;
end;



declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
v_min number;
v_max number;
begin
select min(employee_id),max(employee_id) into v_min,v_max
from employees;
for i in v_min..v_max loop
select salary into v_rec(i) from employees where employee_id=i;
end loop;
for j in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(j));
end loop;
end;

declare
type rec is table of employees.salary%type index by pls_integer;
v_rec rec;
begin
select salary bulk collect into v_rec from employees;
for j in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(j));
end loop;
end;


declare
type rec1 is record
(v_fname employees.first_name%type,
 v_lname employees.last_name%type,
 v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select first_name,last_name,salary bulk collect into v_rec 
from employees;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line(v_rec(i).v_fname || ' ' || v_Rec(i).v_lname
|| ' ' || v_rec(i).v_sal);
end loop;
end;

alter table employees add(stars varchar2(30))


select * from employees

declare
type rec1 is record(v_empid employees.employee_id%type,
                   v_sal employees.salary%type,
                   v_stars employees.stars%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,salary,rpad('*',round(salary/1000),'*')
bulk collect into v_rec from employees for update;
for i in v_rec.first..v_rec.last loop
update employees set stars=v_rec(i).v_stars 
where employee_id=v_rec(i).v_empid;
end loop;
commit;
end;


declare
type rec1 is record(v_empid employees.employee_id%type,
                   v_sal employees.salary%type,
                   v_stars employees.stars%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,salary,stars bulk collect into v_rec 
from employees;
for i in v_rec.first..v_rec.last loop
v_rec(i).v_stars:=rpad('*',round(v_rec(i).v_sal/1000),'*');
update employees set stars=v_rec(i).v_stars 
where employee_id=v_rec(i).v_empid;
end loop;
commit;
end;



select * from employees


declare
type rec1 is table of employees.employee_id%type index by pls_integer;
v_rec1 rec1;
type rec2 is record(v_fname employees.first_name%type,
                    v_lname employees.last_name%type);
type rec3 is table of rec2 index by pls_integer;
v_rec2 rec3;
begin
select employee_id bulk collect into v_rec1 from employees;
for i in v_rec1.first..v_rec1.last loop
select first_name,last_name into v_rec2(i) from employees
where employee_id=v_rec1(i);
dbms_output.put_line(v_rec2(i).v_fname || ' ' ||v_rec2(i).v_lname);
end loop;
end;


declare
v_rec employees%rowtype;
begin
select * into v_rec from employees where employee_id=200;
dbms_output.put_line(v_rec.first_name|| ' '||v_rec.last_name);
end;





declare
cursor cur is 
select * from employees;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;




begin
for rec in (select * from employees) loop
dbms_output.put_line(rec.salary);
end loop;
end;



Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

Forall i in 1..MyArr.Count
save exceptions
insert into ForAll_test_Table values MyArr(i);
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
End;
/


set timing on

create table ForAll_Test_Table(a varchar2(20),b number)

--bulk işlemler için for kullanmamalı.

Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

For i in 1..MyArr.Count loop
insert into ForAll_test_Table values MyArr(i);
end loop;
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
End;
/

--bulk işlemler için forall hızlı
Declare
Type MyArrType is Table Of ForAll_Test_Table%RowType;
MyArr     MyArrType;
StartTime Timestamp;
EndTime   Timestamp;
Begin
StartTime := Systimestamp;
Select 'TEST DATA', 1000.123
Bulk Collect Into MyArr
From   Dual
Connect by Level < 1000001; 

Forall i in 1..MyArr.Count
save exceptions
insert into ForAll_test_Table values MyArr(i);
Commit;

EndTime := Systimestamp;
DBMS_Output.put_line(EndTime - StartTime);
EXCEPTION
    WHEN ex_dml_errors THEN
      l_error_count := SQL%BULK_EXCEPTIONS.count;
      DBMS_OUTPUT.put_line('Number of failures: ' || l_error_count);
      FOR i IN 1 .. l_error_count LOOP
        DBMS_OUTPUT.put_line('Error: ' || i || 
          ' Array Index: ' || SQL%BULK_EXCEPTIONS(i).error_index ||
          ' Message: ' || SQLERRM(-SQL%BULK_EXCEPTIONS(i).ERROR_CODE));
      END LOOP;
End;
/

CURSOR private memory area

DECLARE
OPEN
FETCH
CLOSE

declare
cursor cur is 
select * from employees;
v_rec cur%rowtype;
begin
open cur;
loop
fetch cur into v_Rec;
dbms_output.put_line(v_rec.last_name);
exit when cur%notfound;
end loop;
close cur;
end;

set serveroutput on


-- basic cursor
declare
cursor cur is 
select * from employees;
--v_rec cur%rowtype;
begin
--open cur;
for v_rec in cur loop
--fetch cur into v_Rec;
dbms_output.put_line(v_rec.last_name);
--exit when cur%notfound;
end loop;
--close cur;
end;



declare
cursor cur is 
select * from employees;
begin
for v_rec in cur loop
dbms_output.put_line(v_rec.last_name);
end loop;
end;

--for loop (kısa hali)
begin
for v_rec in (select * from employees) loop
dbms_output.put_line(v_rec.last_name);
end loop;
end;

-- top n salary kötü yöntem
declare
cursor cur is
select salary from employees order by salary desc;
v_topkac number := &topkac;
begin
for rec in cur loop
if cur%rowcount<=v_topkac then dbms_output.put_line(rec.salary);
end if;
end loop;
end;


--elemeden sonra 5 kayıt cursorda, fetch first &rowsayısı rows only;
declare
cursor cur is
select salary from employees order by salary desc
fetch first &rowsayısı rows only;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;

--elemeden sonra 5 kayıt cursorda , rownum kullanarak
declare
cursor cur is
select salary from (select salary from employees order by salary desc)
where rownum<=&sayıkac;
begin
for rec in cur loop
dbms_output.put_line(rec.salary);
end loop;
end;

 

declare
cursor cur is 
select first_name,salary,manager_id from employees;
begin
for rec in cur loop
if rec.salary>5000 and rec.manager_id in (101,202) then 
dbms_output.put_line(rec.first_name || ' raise for a salary' );
else dbms_output.put_line(rec.first_name || ' not raise for a salary' );
end if;
end loop;
end;

Empidnin Zamdan Önceki Maaşı(deptid):
Empidnin Zamdan Sonraki Maaşı(deptid):


create table emps as select * from employees


declare
cursor cur is 
select employee_id,department_id,salary,
salary+(salary*department_id/100) sals,last_name from employees;
begin
for rec in cur loop
dbms_output.put_line(rec.employee_id ||' Önceki Maaşı: '||
rec.salary||'('||rec.department_id||')');
dbms_output.put_line(rec.employee_id ||' Sonraki Maaşı: '||
rec.sals||'('||rec.department_id||')');
update emps set salary=rec.sals
where employee_id=rec.employee_id;
end loop;
end;




declare 
type rec1 is record (v_empid employees.employee_id%type,
                     v_sal employees.salary%type,
                     v_depid employees.department_id%type);
type rec2 is table of rec1 index by pls_integer; 
v_coll rec2;
v_coll2 rec2;

type rec3 is table of employees.employee_id%type index by pls_integer;
v_counter rec3;

begin
select employee_id,salary,department_id bulk collect into v_coll from employees;
select employee_id,salary,department_id bulk collect into v_coll2 from emps for update;

for i in v_coll.first..v_coll.last loop
dbms_output.put_line(v_coll(i).v_empid|| 'nin zamdan önceki maaşı ('|| v_coll(i).v_depid || ')' || v_coll(i).v_sal);
v_coll(i).v_sal := v_coll(i).v_sal + (v_coll(i).v_sal/100 * v_coll(i).v_depid);
update emps set salary = v_coll(i).v_sal
where employee_id = v_coll(i).v_empid;
--commit
end loop;
select employee_id,salary,department_id bulk collect into v_coll2 from emps;
for j in v_coll2.first..v_coll2.last loop
dbms_output.put_line(v_coll2(j).v_empid|| 'nin zamdan sonraki maaşı ('|| v_coll2(j).v_depid || ')' || v_coll2(j).v_sal);
end loop;
end;

--parametrik cursor
declare
cursor cur(v_deptid number) is
select * from employees where department_id=v_deptid;
begin
for rec in cur(&deptidgir) loop
dbms_output.put_line(rec.last_name);
end loop;
end;


declare
cursor cur(v_deptid number) is
select * from employees where department_id=v_deptid;
begin
for rec in cur(30) loop
update emps set salary=rec.salary+(rec.salary*30/100)
where employee_id=rec.employee_id;
end loop;
end;


EXCEPTION
----------
PREDEFINED EXCEPTION
USER DEFINED EXCEPTION
RAISE EXCEPTION
RAISE_APPLICATION_ERROR EXCEPTION


DECLARE
V_LNAME EMPLOYEES.LAST_NAME%TYPE;
BEGIN
SELECT LAST_NAME INTO V_LNAME FROM EMPLOYEES
WHERE EMPLOYEE_ID=99;
--UPDATE
EXCEPTION
WHEN NO_DATA_FOUND THEN dbms_output.put_line('KAYIT YOK');
END;


DECLARE
V_LNAME EMPLOYEES.LAST_NAME%TYPE;
BEGIN
SELECT LAST_NAME INTO V_LNAME FROM EMPLOYEES
WHERE LAST_NAME='King';
--UPDATE
EXCEPTION
--WHEN NO_DATA_FOUND THEN dbms_output.put_line('KAYIT YOK');
--WHEN TOO_MANY_ROWS THEN dbms_output.put_line('KAYIT ÇOK');
WHEN OTHERS THEN dbms_output.put_line(SQLERRM);
                 dbms_output.put_line(SQLCODE);
END;

--RAISE EXCEPTION;

DECLARE
HATA EXCEPTION;
BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE HATA;
END IF;
EXCEPTION 
WHEN HATA THEN dbms_output.put_line('kayıt güncellenemedi!.');
END;

BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE_APPLICATION_ERROR(-20001,'HATA');
END IF;
END;

-- RAISE_APPLICATION_ERROR EXCEPTION
DECLARE
HATA EXCEPTION;
BEGIN
UPDATE EMPLOYEES SET SALARY=1 WHERE EMPLOYEE_ID=99;
IF SQL%NOTFOUND THEN RAISE HATA;
END IF;
EXCEPTION 
WHEN HATA THEN RAISE_APPLICATION_ERROR(-20001,'HATA');
END;


--USER DEFINED EXCEPTION
DECLARE
V_CHILD EXCEPTION;
PRAGMA EXCEPTION_INIT(V_CHILD,-2292);
BEGIN
DELETE FROM EMPLOYEES;
EXCEPTION
WHEN V_CHILD THEN dbms_output.put_line('ÇOCUKLARI VAR');
END;


STORED OBJECTS
--------------

PROCEDURE 
FUNCTIONS
PACKAGE 
TRIGGER



create or replace procedure p_zam is
begin
update employees set salary=salary*1.1;
commit;
end;

begin
p_zam;
end;

call p_zam();

execute p_zam;

exec p_zam;


create or replace procedure p_zam_deptid
(v_deptid departments.department_id%type) is
begin 
update employees set salary=salary*1.1
where department_id=v_deptid;
commit;
end;

declare
v_deptid departments.department_id%type:=&deptidgir;
begin
p_zam_deptid(v_deptid);
end;

create or replace procedure p_zam_dept_once_sonra
(v_deptid departments.department_id%type) is
type rec1 is record(v_empid employees.employee_id%type,
                   v_deptid employees.department_id%type,
                   v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Önceki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
v_rec(i).v_sal:=v_rec(i).v_sal*1.1;
end loop;
forall update employees set salary=v_rec(i).v_sal 
where department_id=v_rec(i).v_deptid;
commit;
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Sonraki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
end loop;
end;

declare
v_deptid departments.department_id%type:=&deptidgir;
begin
P_ZAM_DEPT_ONCE_SONRA(v_deptid);
end;


select salary from employees




create or replace procedure p_zam_dept_oran_once_sonra
(v_deptid departments.department_id%type,
 v_oran number) is
type rec1 is record(v_empid employees.employee_id%type,
                   v_deptid employees.department_id%type,
                   v_sal employees.salary%type);
type rec2 is table of rec1 index by pls_integer;
v_rec rec2;
begin
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Önceki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
v_rec(i).v_sal:=v_rec(i).v_sal+(v_rec(i).v_sal*v_oran/100);
end loop;
forall update employees set salary=v_rec(i).v_sal 
where department_id=v_rec(i).v_deptid;
commit;
select employee_id,department_id,salary bulk collect into v_rec
from employees where department_id=v_deptid;
for i in v_rec.first..v_rec.last loop
dbms_output.put_line
('Sonraki '||v_rec(i).v_empid || ' ' ||v_rec(i).v_sal);
end loop;
end;


begin
p_zam_dept_oran_once_sonra(20,-90);
end;

set serveroutput on

MODE 
IN
OUT
IN OUT

create or replace procedure p_zam_deptid_oran
(v_deptid IN departments.department_id%type,
 v_oran IN number) is
begin 
update employees set salary=salary+(salary*v_oran/100)
where department_id=v_deptid;
commit;
end;

CREATE OR REPLACE PROCEDURE P_OUT_SAL
(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,
 V_SAL OUT EMPLOYEES.SALARY%TYPE) IS
 BEGIN
 SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
 END;
 
 DECLARE
 V_SALS EMPLOYEES.SALARY%TYPE;
 BEGIN
 P_OUT_SAL(200,V_SALS);
 DBMS_OUTPUT.PUT_LINE(V_SALS);
 END;
 
CREATE OR REPLACE PROCEDURE YAZ(A VARCHAR2) IS
BEGIN
DBMS_OUTPUT.PUT_LINE(A);
END;


BEGIN
YAZ('DASDSA');
END;

CREATE OR REPLACE PROCEDURE P_FORMAT_CARD 
(V_KART IN OUT VARCHAR2) IS
BEGIN
V_KART:=SUBSTR(V_KART,1,4) || ' ' ||SUBSTR(V_KART,5,4) || ' '
||SUBSTR(V_KART,9,4) || ' '||SUBSTR(V_KART,13); 
END;

DECLARE
V_KARD VARCHAR2(25):='1234567898765432';
BEGIN
P_FORMAT_CARD(V_KARD);
YAZ(V_KARD);
END;

SET SERVEROUTPUT ON

FUNCTION


CREATE OR REPLACE FUNCTION F_SAL
(V_EMPID EMPLOYEES.EMPLOYEE_ID%TYPE) 
RETURN EMPLOYEES.SALARY%TYPE IS
V_SAL EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES
WHERE EMPLOYEE_ID=V_EMPID;
RETURN V_SAL;
END;

DECLARE
V_SALS EMPLOYEES.SALARY%TYPE;
BEGIN
V_SALS:=F_SAL(120);
YAZ(V_SALS);
END;


BEGIN
YAZ(F_SAL(120));
END;

CALL YAZ(F_SAL(120));

EXECUTE YAZ(F_SAL(120));

EXEC YAZ(F_SAL(120));


SELECT F_SAL(150) FROM DUAL

SELECT F_SAL(EMPLOYEE_ID) FROM EMPLOYEES


PACKAGE
forward declaration
overloading

PKG SPEC -  procedure + function + global varibale definition
PKG BODY -  code


CREATE OR REPLACE PACKAGE PKG_EMP IS
PROCEDURE P_ZAM(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,V_SAL OUT EMPLOYEES.SALARY%TYPE);
FUNCTION F_SAL(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE) RETURN EMPLOYEES.SALARY%TYPE;
V_DEG NUMBER :=100;
END;

CREATE OR REPLACE PACKAGE BODY PKG_EMP IS
PROCEDURE P_ZAM(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE,V_SAL OUT EMPLOYEES.SALARY%TYPE) IS
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
END P_ZAM;
FUNCTION F_SAL(V_EMPID IN EMPLOYEES.EMPLOYEE_ID%TYPE) RETURN EMPLOYEES.SALARY%TYPE IS
V_SAL EMPLOYEES.SALARY%TYPE;
BEGIN
SELECT SALARY INTO V_SAL FROM EMPLOYEES WHERE EMPLOYEE_ID=V_EMPID;
RETURN V_SAL;
END F_SAL;
END PKG_EMP;


Oracle Database 12c: Performance Management and Tuning 
Oracle Database 12c: Advanced PL/SQL


declare
v_sals employees.salary%type;
begin
PKG_EMP.P_ZAM(105,v_sals);
yaz(v_sals);
yaz(pkg_emp.F_SAL(105));
end;


PKG_EMP_ALL
-----------
PROCEDURE PKG_DEPT_INS(V_DEPTID,V_DEPTNAME) MNG 100  LOCATION 1800
PROCEDURE PKG_DEPT_UPD(V_DEPTID,V_newDEPTNAME);
                                            -- şu departman güncellendi
                                            -- exception kayıt güncellenemedi
PROCEDURE PKG_DEPT_DEL(V_DEPTID); -- şu departman silindi
                                  -- exception kayıt bulunamadı
FUNCTION  PKG_DEPT_SEL(V_DEPTID) return deptname
                                  -- exception kayıt bulunamadı

SELECT * FROM DEPARTMENTS

CREATE OR REPLACE PACKAGE PKG_EMP_ALL IS
PROCEDURE PKG_DEPT_INS(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_DEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE,
		       V_MNGID  DEPARTMENTS.MANAGER_ID%TYPE DEFAULT 100,
		       V_LOCID DEPARTMENTS.LOCATION_ID%TYPE DEFAULT 1800);
PROCEDURE PKG_DEPT_UPD(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_NEWDEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE);
PROCEDURE PKG_DEPT_DEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE);
FUNCTION  PKG_DEPT_SEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) 
          RETURN DEPARTMENTS.DEPARTMENT_NAME%TYPE;
END;


create or replace PACKAGE BODY PKG_EMP_ALL IS
PROCEDURE PKG_DEPT_INS(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_DEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE,
		       V_MNGID  DEPARTMENTS.MANAGER_ID%TYPE DEFAULT 100,
		       V_LOCID DEPARTMENTS.LOCATION_ID%TYPE DEFAULT 1800) IS
BEGIN
INSERT INTO DEPARTMENTS VALUES(V_DEPTID,V_DEPTNAME,V_MNGID,V_LOCID);
COMMIT;
YAZ(V_DEPTID || ' no.lı departman eklendi.');
EXCEPTION
WHEN OTHERS THEN YAZ(SQLERRM);
END PKG_DEPT_INS;

PROCEDURE PKG_DEPT_UPD(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE,
 		       V_NEWDEPTNAME DEPARTMENTS.DEPARTMENT_NAME%TYPE) is
v_deptname DEPARTMENTS.DEPARTMENT_NAME%TYPE;
begin
select department_name into v_deptname from departments where department_id=V_DEPTID for update;
update departments set department_name=V_NEWDEPTNAME where department_id=V_DEPTID;
if sql%rowcount<>0 then 
yaz(V_NEWDEPTNAME || ' departmanı güncellendi.');
else
yaz(V_DEPTID || ' departmanı bulunamadı.');
end if;
commit;
exception 
when no_data_found then yaz(V_DEPTID || ' departmanı bulunamadı.');
WHEN OTHERS THEN YAZ(SQLERRM);
end PKG_DEPT_UPD;

PROCEDURE PKG_DEPT_DEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) is
begin
delete from departments where department_id=V_DEPTID;
if sql%rowcount<>0 then 
yaz(V_DEPTID || ' departmanı silindi.');
else
yaz(V_DEPTID || ' departmanı bulunamadı.');
end if;
commit;
exception 
WHEN OTHERS THEN YAZ(SQLERRM);
end PKG_DEPT_DEL;

FUNCTION  PKG_DEPT_SEL(V_DEPTID DEPARTMENTS.DEPARTMENT_ID%TYPE) 
RETURN DEPARTMENTS.DEPARTMENT_NAME%TYPE is
v_deptname DEPARTMENTS.DEPARTMENT_NAME%TYPE;
begin
select department_name into v_deptname from departments where department_id=V_DEPTID;
yaz(V_DEPTNAME || ' departmanı bulundu.');
return v_Deptname;
exception 
when no_data_found then yaz(V_DEPTID || ' departmanı bulunamadı.');
return  NULL;
WHEN OTHERS THEN YAZ(SQLERRM);
return v_Deptname;
end PKG_DEPT_SEL;

END PKG_EMP_ALL;


begin
yaz(PKG_EMP_ALL.PKG_DEPT_SEL(4000));
PKG_EMP_ALL.PKG_DEPT_INS(V_DEPTID=>4000,V_DEPTNAME=>'Dept 4000');
PKG_EMP_ALL.PKG_DEPT_UPD(4000,'D4000');
PKG_EMP_ALL.PKG_DEPT_DEL(4000);
yaz(PKG_EMP_ALL.PKG_DEPT_SEL(4000));
end;

SELECT * FROM DEPARTMENTS

CREATE OR REPLACE PACKAGE emp_pkg is
type emp_table_type is table of employees%rowtype index by pls_integer;
procedure get_employees(p_emps out emp_table_type);
end emp_pkg;

CREATE OR REPLACE PACKAGE BODY emp_pkg is
procedure get_employees(p_emps out emp_table_type) IS
i number:=0;
BEGIN
FOR v_rec in (select * from employees) loop
p_emps(i):=v_rec;
i:=i+1;
end loop;
END get_employees;
end emp_pkg;

declare
v_emps emp_pkg.emp_table_type;
begin
emp_pkg.get_employees(v_emps);
for i in v_emps.first..v_emps.last loop
yaz(v_emps(i).hire_date || ' ' || v_emps(i).salary);
end loop;
end;


create OR REPLACE procedure add_job(v_jobid jobs.job_id%type,
                         v_jobtitle jobs.job_title%type) is
begin
insert into jobs(job_id,job_title) values(v_jobid,v_jobtitle);
EXCEPTION
WHEN OTHERS THEN YAZ(SQLERRM);
end;

create OR REPLACE procedure add_job(v_jobid jobs.job_id%type,
                         v_jobtitle jobs.job_title%type) is
begin
insert into jobs(job_id,job_title) values(v_jobid,v_jobtitle);
EXCEPTION
WHEN OTHERS THEN RAISE_APPLICATION_ERROR(-20005,'HATA');
end;

create OR REPLACE procedure p_jobsadd is
begin
add_job('IT','ITCI');
add_job('DP2','DPCI2');
add_job('SR2','SRCI2');
end;


CALL p_jobsadd();


select * from jobs

DESC DBMS_SCHEDULER

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN my_job_proc(''CREATE_PROGRAM (BLOCK)''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name      => 'test_prog_sched_job_definition',
    program_name  => 'test_plsql_block_prog',
    schedule_name => 'test_hourly_schedule',
    enabled       => TRUE,
    comments      => 'Job defined by an existing program and schedule.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_prog_job_definition',
    program_name    => 'test_plsql_block_prog',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined by existing program and inline schedule.');
END;
/

BEGIN
  DBMS_SCHEDULER.create_job (
     job_name      => 'test_sched_job_definition',
     schedule_name => 'test_hourly_schedule',
     job_type      => 'PLSQL_BLOCK',
     job_action    => 'BEGIN my_job_proc(''CREATE_PROGRAM (BLOCK)''); END;',
     enabled       => TRUE,
     comments      => 'Job defined by existing schedule and inline program.');
END;
/


BEGIN
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN my_job_procedure; END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0; bysecond=0;',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');
END;
/


BEGIN
  DBMS_SCHEDULER.create_program (
    program_name   => 'test_plsql_block_prog',
    program_type   => 'PLSQL_BLOCK',
    program_action => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
    enabled        => TRUE,
    comments       => 'Program to gather SCOTT''s statistics using a PL/SQL block.');

  -- Shell Script.
  DBMS_SCHEDULER.create_program (
    program_name        => 'test_executable_prog',
    program_type        => 'EXECUTABLE',
    program_action      => '/u01/app/oracle/dba/gather_scott_stats.sh',
    number_of_arguments => 0,
    enabled             => TRUE,
    comments            => 'Program to gather SCOTT''s statistics us a shell script.');


  DBMS_SCHEDULER.create_program (
    program_name        => 'test_stored_procedure_prog',
    program_type        => 'STORED_PROCEDURE',
    program_action      => 'DBMS_STATS.gather_schema_stats',
    number_of_arguments => 1,
    enabled             => FALSE,
    comments            => 'Program to gather SCOTT''s statistics using a stored procedure.');

  DBMS_SCHEDULER.define_program_argument (
    program_name      => 'test_stored_procedure_prog',
    argument_name     => 'ownname',
    argument_position => 1,
    argument_type     => 'VARCHAR2',
    default_value     => 'SCOTT');

  DBMS_SCHEDULER.enable (name => 'test_stored_procedure_prog');
END;
/

PL/SQL procedure successfully completed.

SELECT owner, program_name, enabled FROM ALL_scheduler_programs;

OWNER                          PROGRAM_NAME                   ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG_PROG                 TRUE
SYS                            GATHER_STATS_PROG              TRUE
SYS                            TEST_PLSQL_BLOCK_PROG          TRUE
SYS                            TEST_EXECUTABLE_PROG           TRUE
SYS                            TEST_STORED_PROCEDURE_PROG     TRUE



BEGIN
  DBMS_SCHEDULER.drop_program (program_name => 'test_plsql_block_prog');
  DBMS_SCHEDULER.drop_program (program_name => 'test_stored_procedure_prog');
  DBMS_SCHEDULER.drop_program (program_name => 'test_executable_prog');
END;
/


SELECT owner, program_name, enabled FROM dba_scheduler_programs;

OWNER                          PROGRAM_NAME                   ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG_PROG                 TRUE
SYS                            GATHER_STATS_PROG              TRUE


BEGIN
  DBMS_SCHEDULER.create_schedule (
    schedule_name   => 'test_hourly_schedule',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    comments        => 'Repeats hourly, on the hour, for ever.');
END;
/


SELECT owner, schedule_name FROM dba_scheduler_schedules;

OWNER                          SCHEDULE_NAME
------------------------------ ------------------------------
SYS                            DAILY_PURGE_SCHEDULE
SYS                            TEST_HOURLY_SCHEDULE


BEGIN
  DBMS_SCHEDULER.drop_schedule (schedule_name => 'TEST_HOURLY_SCHEDULE');
END;
/


SELECT owner, schedule_name FROM dba_scheduler_schedules;

OWNER                          SCHEDULE_NAME
------------------------------ ------------------------------
SYS                            DAILY_PURGE_SCHEDULE


BEGIN
  -- Job defined entirely by the CREATE JOB procedure.
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_full_job_definition',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined entirely by the CREATE JOB procedure.');

  -- Job defined by an existing program and schedule.
  DBMS_SCHEDULER.create_job (
    job_name      => 'test_prog_sched_job_definition',
    program_name  => 'test_plsql_block_prog',
    schedule_name => 'test_hourly_schedule',
    enabled       => TRUE,
    comments      => 'Job defined by an existing program and schedule.');

  -- Job defined by existing program and inline schedule.
  DBMS_SCHEDULER.create_job (
    job_name        => 'test_prog_job_definition',
    program_name    => 'test_plsql_block_prog',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'freq=hourly; byminute=0',
    end_date        => NULL,
    enabled         => TRUE,
    comments        => 'Job defined by existing program and inline schedule.');

  -- Job defined by existing schedule and inline program.
  DBMS_SCHEDULER.create_job (
     job_name      => 'test_sched_job_definition',
     schedule_name => 'test_hourly_schedule',
     job_type      => 'PLSQL_BLOCK',
     job_action    => 'BEGIN DBMS_STATS.gather_schema_stats(''SCOTT''); END;',
     enabled       => TRUE,
     comments      => 'Job defined by existing schedule and inline program.');
END;
/


SELECT owner, job_name, enabled FROM dba_scheduler_jobs;

OWNER                          JOB_NAME                       ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG                      TRUE
SYS                            GATHER_STATS_JOB               TRUE
SYS                            TEST_FULL_JOB_DEFINITION       TRUE
SYS                            TEST_PROG_SCHED_JOB_DEFINITION TRUE
SYS                            TEST_PROG_JOB_DEFINITION       TRUE
SYS                            TEST_SCHED_JOB_DEFINITION      TRUE


BEGIN
  -- Run job synchronously.
  DBMS_SCHEDULER.run_job (job_name            => 'test_full_job_definition',
                          use_current_session => FALSE);

  -- Stop jobs.
  DBMS_SCHEDULER.stop_job (job_name => 'test_full_job_definition, test_prog_sched_job_definition');
END;
/

BEGIN
  DBMS_SCHEDULER.drop_job (job_name => 'test_full_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_prog_sched_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_prog_job_definition');
  DBMS_SCHEDULER.drop_job (job_name => 'test_sched_job_definition');
END;
/

SELECT owner, job_name, enabled FROM dba_scheduler_jobs;

OWNER                          JOB_NAME                       ENABL
------------------------------ ------------------------------ -----
SYS                            PURGE_LOG                      TRUE
SYS                            GATHER_STATS_JOB               TRUE



@?/rdbms/admin/utlmail.sql
@?/rdbms/admin/prvtmail.plb

ALTER SYSTEM SET SMTP_OUT_SERVER='smtp.server.com' SCOPE=SPFILE

-------------------------------------------------------

UTL_MAIL.SEND (
   sender      IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients  IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc          IN    VARCHAR2 CHARACTER SET ANY_CS 
								   DEFAULT NULL,
   bcc         IN    VARCHAR2 CHARACTER SET ANY_CS 
                       DEFAULT NULL,
   subject     IN    VARCHAR2 CHARACTER SET ANY_CS 
                       DEFAULT NULL,
   message     IN    VARCHAR2 CHARACTER SET ANY_CS,
   mime_type   IN    VARCHAR2 
                       DEFAULT 'text/plain; charset=us-ascii',
   priority    IN    PLS_INTEGER DEFAULT NULL);


BEGIN
 UTL_MAIL.SEND('otn@oracle.com','user@oracle.com',
   message => 'For latest downloads visit OTN',
   subject => 'OTN Newsletter');
END;

-------------------------------------------------------

UTL_MAIL.SEND_ATTACH_RAW (
   sender           IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients       IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc               IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   bcc              IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   subject          IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   message          IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   mime_type        IN    VARCHAR2 DEFAULT CHARACTER SET ANY_CS
                            DEFAULT 'text/plain; charset=us-ascii',
   priority         IN    PLS_INTEGER DEFAULT 3,
   attachment       IN    RAW,
   att_inline       IN    BOOLEAN DEFAULT TRUE,
   att_mime_type    IN    VARCHAR2 CHARACTER SET ANY_CS 
                            DEFAULT 'text/plain; charset=us-ascii',
   att_filename     IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL);


CREATE OR REPLACE PROCEDURE send_mail_logo IS
BEGIN
  UTL_MAIL.SEND_ATTACH_RAW(
    sender => 'me@oracle.com',
    recipients => 'you@somewhere.net',
    message =>
      '<HTML><BODY>See attachment</BODY></HTML>',
    subject => 'Oracle Logo',
    mime_type => 'text/html'
    attachment => get_image('oracle.gif'),
    att_inline => true,
    att_mime_type => 'image/gif',
    att_filename => 'oralogo.gif');
END;
/


UTL_SMTP

-------------------------------------------------------

UTL_MAIL.SEND_ATTACH_VARCHAR2 (
   sender            IN    VARCHAR2 CHARACTER SET ANY_CS,
   recipients        IN    VARCHAR2 CHARACTER SET ANY_CS,
   cc                IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   bcc               IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   subject           IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   message           IN    VARCHAR2 CHARACTER SET ANY_CS DEFAULT NULL,
   mime_type         IN    VARCHAR2 CHARACTER SET ANY_CS 
                             DEFAULT 'text/plain; charset=us-ascii',
   priority          IN    PLS_INTEGER DEFAULT 3,
   attachment        IN    VARCHAR2 CHARACTER SET ANY_CS, 
   att_inline        IN    BOOLEAN DEFAULT TRUE,
   att_mime_type     IN    VARCHAR2 CHARACTER SET ANY_CS 
                             DEFAULT 'text/plain; charset=us-ascii',
   att_filename      IN    VARCHAR2CHARACTER SET ANY_CS DEFAULT NULL);



CREATE OR REPLACE PROCEDURE send_mail_file IS
BEGIN
  UTL_MAIL.SEND_ATTACH_VARCHAR2(
    sender => 'me@oracle.com',
    recipients => 'you@somewhere.net',
    message =>
      '<HTML><BODY>See attachment</BODY></HTML>',
    subject => 'Oracle Notes',
    mime_type => 'text/html'
    attachment => get_file('notes.txt'),
    att_inline => false,
    att_mime_type => 'text/plain',
    att_filename => 'notes.txt');
END;
/



-------------------------------------------------------

CREATE OR REPLACE PROCEDURE sal_status(
  p_dir IN VARCHAR2, p_filename IN VARCHAR2) IS
  f_file UTL_FILE.FILE_TYPE;
  CURSOR cur_emp IS SELECT last_name, salary, department_id
    FROM employees ORDER BY department_id;
  v_newdeptno employees.department_id%TYPE;
  v_olddeptno employees.department_id%TYPE := 0;
BEGIN
  f_file:= UTL_FILE.FOPEN (p_dir, p_filename, 'W');
  UTL_FILE.PUT_LINE(f_file,'REPORT: GENERATED ON ' || SYSDATE);
  UTL_FILE.NEW_LINE (f_file);
FOR emp_rec IN cur_emp LOOP
    IF emp_rec.department_id <> v_olddeptno THEN
      UTL_FILE.PUT_LINE (f_file, 
       'DEPARTMENT: ' || emp_rec.department_id);
		 UTL_FILE.NEW_LINE (f_file);
    END IF;
    UTL_FILE.PUT_LINE (f_file,
       '  EMPLOYEE: ' || emp_rec.last_name || ' earns: ' || emp_rec.salary);
    v_olddeptno := emp_rec.department_id;
    UTL_FILE.NEW_LINE (f_file);
  END LOOP;
  UTL_FILE.PUT_LINE(f_file,'*** END OF REPORT ***');
  UTL_FILE.FCLOSE (f_file);
EXCEPTION
 WHEN UTL_FILE.INVALID_FILEHANDLE THEN
  RAISE_APPLICATION_ERROR(-20001,'Invalid File.');
 WHEN UTL_FILE.WRITE_ERROR THEN
  RAISE_APPLICATION_ERROR (-20002, 'Unable to write to file');
END sal_status;
/


BEGIN
sal_status('DIR','empreport.txt');
END;


create directory DIR AS '/home/oracle/Desktop/DIR'

GRANT READ,WRITE ON DIRECTORY DIR TO HR

CREATE TABLE countries_ext (
  country_code      VARCHAR2(5),
  country_name      VARCHAR2(50),
  country_language  VARCHAR2(50)
)
ORGANIZATION EXTERNAL (
  TYPE ORACLE_LOADER
  DEFAULT DIRECTORY DIR
  ACCESS PARAMETERS (
    RECORDS DELIMITED BY NEWLINE
    FIELDS TERMINATED BY ','
    MISSING FIELD VALUES ARE NULL
    (
      country_code      CHAR(5),
      country_name      CHAR(50),
      country_language  CHAR(50)
    )
  )
  LOCATION ('Countries1.txt')
)
PARALLEL 5
REJECT LIMIT UNLIMITED;

SELECT * FROM countries_ext

UPDATE countries_ext
SET country_name='turks'



dynamic sql

DML - insert update delete merge select

ddl - create alter drop rename truncate
dcl - grant revoke

create procedure p_truncatetable(v_emps varchar2) is
v_stmt varchar2(50);
begin
v_stmt:= 'truncate table ' ||v_emps;
execute immediate v_stmt;
end;

begin
p_truncatetable('emps');
end;

insert into emps
select * from employees

select * from emps



create or replace procedure p_createtable(v_tablename varchar2,
                               v_columnsname varchar2) 
AUTHID CURRENT_USER is
v_stmt varchar2(200);
begin
v_stmt:= 'create table ' || v_tablename || '(' || v_columnsname ||')';
execute immediate v_stmt;
end;

begin
p_createtable('DENEME','a number primary key,b date not null');
end;

select * from deneme


alter user hr identified by hr

create or replace procedure p_passw
(p_username varchar2,p_newpassw varchar2) is
v_stmt varchar2(200);
begin
v_stmt:='alter user ' ||p_username||' identified by ' ||p_newpassw;
execute immediate v_stmt;
end;

grant execute on p_passw to hr;

begin
sys.p_passw('HR','hr');
end;

begin
sys.p_passw('sys','hr');
end;

drop procedure p_passw

create or replace procedure p_passw
(p_username varchar2,p_newpassw varchar2) 
AUTHID CURRENT_USER
is
v_stmt varchar2(200);
begin
v_stmt:='alter user ' ||p_username||' identified by ' ||p_newpassw;
execute immediate v_stmt;
end;

grant execute on p_passw to hr;

begin
sysTEM.p_passw('HR','hr');
end;

begin
sys.p_passw('sys','hr');
end;

drop procedure p_passw

create or replace procedure p_passw
(p_username varchar2,p_newpassw varchar2) 
AUTHID CURRENT_USER
is
v_stmt varchar2(200);
begin
v_stmt:='alter user ' ||p_username||' identified by ' ||p_newpassw;
execute immediate v_stmt;
end;



CREATE OR REPLACE FUNCTION get_emp( p_emp_id VARCHAR2 )
RETURN employees%ROWTYPE IS
  v_stmt VARCHAR2(200);
  v_emprec employees%ROWTYPE;
BEGIN
  v_stmt := 'SELECT * FROM employees WHERE employee_id = :p_emp_id';
  EXECUTE IMMEDIATE DBMS_ASSERT(v_stmt) INTO v_emprec USING p_emp_id ;
  RETURN v_emprec;
END;
/

DECLARE
  v_emprec employees%ROWTYPE := get_emp('100' ||' UNION  SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID=200');
BEGIN
  DBMS_OUTPUT.PUT_LINE('Emp: '|| v_emprec.last_name);
END;
/

SELECT * FROM employees WHERE employee_id = 100 
UNION  
SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID=200




CREATE OR REPLACE FUNCTION annual_sal( p_emp_id NUMBER)
RETURN NUMBER IS
  v_plsql varchar2(200) :=
    'DECLARE 
     rec_emp employees%ROWTYPE; 
     BEGIN 
     rec_emp := get_emp(:empid);  
     :res := rec_emp.salary  * 12;   
     END;';
  v_result NUMBER;
BEGIN
 EXECUTE IMMEDIATE v_plsql
         USING IN p_emp_id, OUT v_result;
  RETURN v_result;
END; 
/
EXECUTE DBMS_OUTPUT.PUT_LINE(annual_sal(100))



create or replace PROCEDURE P_DENEME(V_A NUMBER) is
     TYPE EmpCurTyp IS REF CURSOR;
     TYPE NumList IS TABLE OF NUMBER;
     TYPE NameList IS TABLE OF VARCHAR2(25);
     emp_cv EmpCurTyp;
     empids NumList;
     enames NameList;
     sals   NumList;
  BEGIN
     IF V_A=1 THEN   
     OPEN emp_cv FOR 'SELECT employee_id, last_name FROM employees';
     FETCH emp_cv BULK COLLECT INTO empids, enames;
     CLOSE emp_cv;
     DBMS_OUTPUT.PUT_LINE(empids.count); 
     ELSE
     OPEN emp_cv FOR 'SELECT employee_id, last_name 
     FROM employees WHERE DEPARTMENT_ID=20';
     FETCH emp_cv BULK COLLECT INTO empids, enames;
     CLOSE emp_cv;
     DBMS_OUTPUT.PUT_LINE(empids.count);
     end if;
     END;
     
     call P_DENEME(0)
     
     
     
     
CREATE OR REPLACE TRIGGER secure_emp
BEFORE UPDATE ON DEPARTMENTS 
  BEGIN
   IF (TO_CHAR(SYSDATE,'DY') IN ('SAT','SUN')) OR
      (TO_CHAR(SYSDATE,'HH24:MI') BETWEEN '08:00' AND '18:00') THEN
   RAISE_APPLICATION_ERROR(-20500, 'You may update'
     ||' into DEPARTMENTS table only during ' 
     ||' normal business hours.');
   END IF;
  END;
  
  UPDATE DEPARTMENTS SET DEPARTMENT_NAME='DSDA'
  DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID=2999
  
  
  CREATE OR REPLACE TRIGGER secure_emp 
  BEFORE INSERT OR UPDATE OR DELETE ON employees 
  BEGIN
    IF (TO_CHAR(SYSDATE,'DY') IN ('SAT','SUN')) OR
       (TO_CHAR(SYSDATE,'HH24') 
        NOT BETWEEN '08' AND '18') THEN
      IF DELETING THEN RAISE_APPLICATION_ERROR(
        -20502,'You may delete from EMPLOYEES table'||
        'only during normal business hours.');
      ELSIF INSERTING  THEN RAISE_APPLICATION_ERROR(
        -20500,'You may insert into EMPLOYEES table'|| 
        'only during normal business hours.');
      ELSIF UPDATING  ('SALARY') THEN
        RAISE_APPLICATION_ERROR(-20503, 'You may '||
        'update SALARY only normal during business hours.');
      ELSE RAISE_APPLICATION_ERROR(-20504,'You may'||
        ' update EMPLOYEES table only during'||
        ' normal business hours.');
      END IF;
    END IF;
  END;
  
  
CREATE OR REPLACE TRIGGER restrict_salary
BEFORE INSERT OR UPDATE OF salary ON employees
FOR EACH ROW
BEGIN
  IF NOT (:NEW.job_id IN ('AD_PRES', 'AD_VP'))
     AND :NEW.salary > 15000 THEN
    RAISE_APPLICATION_ERROR (-20202,
      'Employee cannot earn more than $15,000.');
  END IF;
END;


UPDATE employees
SET salary = 15500
WHERE first_name='Janette' and last_name = 'King';

select * from employees where last_name = 'King';

CREATE TABLE audit_emp (
  user_name     VARCHAR2(30),
  time_stamp    date,
  id            NUMBER(6),
  old_last_name VARCHAR2(25),
  new_last_name VARCHAR2(25),
  old_title     VARCHAR2(10),
  new_title     VARCHAR2(10),
  old_salary    NUMBER(8,2),
  new_salary    NUMBER(8,2) )
/

CREATE OR REPLACE TRIGGER audit_emp_values
AFTER DELETE OR INSERT OR UPDATE ON employees
FOR EACH ROW
BEGIN
  INSERT INTO audit_emp(user_name, time_stamp, id,
    old_last_name, new_last_name, old_title,
    new_title, old_salary, new_salary)
  VALUES (USER, SYSDATE, :OLD.employee_id,
    :OLD.last_name, :NEW.last_name, :OLD.job_id,
    :NEW.job_id, :OLD.salary, :NEW.salary);
END;
/

select USER, SYSDATE from dual

select * from audit_emp


INSERT INTO employees (employee_id, last_name, job_id, salary, email, hire_date)
VALUES (999, 'Temp emp', 'SA_REP', 6000, 'TEMPEMP', TRUNC(SYSDATE))
/
UPDATE employees
 SET salary = 7000, last_name = 'Smith'
 WHERE employee_id = 999
/

alter table "HR"."EMPLOYEES" disable all triggers

create or replace procedure p_den is
begin
update employees set salary=salary*1.1;
commit;
p_zam;
end;

create or replace procedure p_zam is
pragma AUTONOMOUS_TRANSACTION 
begin
update employees set salary=salary*1.1;
commit;
end;

SELECT * FROM DICT WHERE TABLE_NAME LIKE '%PRIVS%'

SELECT * FROM USER_ROLE_PRIVS
SELECT * FROM USER_COL_PRIVS

alter trigger "HR"."AUDIT_EMP_VALUES" disable

SELECT trigger_type, trigger_body
FROM user_triggers
WHERE trigger_name = 'SECURE_EMP';

CREATE OR REPLACE TRIGGER check_salary
  FOR INSERT OR UPDATE OF salary, job_id
  ON employees
  WHEN (NEW.job_id <> 'AD_PRES')
  COMPOUND TRIGGER

  TYPE salaries_t            IS TABLE OF employees.salary%TYPE;
  min_salaries               salaries_t;
  max_salaries               salaries_t;

  TYPE department_ids_t       IS TABLE OF employees.department_id%TYPE;
  department_ids              department_ids_t;

  TYPE department_salaries_t  IS TABLE OF employees.salary%TYPE
                                INDEX BY VARCHAR2(80);
  department_min_salaries     department_salaries_t;
  department_max_salaries     department_salaries_t;
BEFORE STATEMENT IS
  BEGIN
    SELECT MIN(salary), MAX(salary), NVL(department_id, -1)
     BULK COLLECT INTO  min_Salaries, max_salaries, department_ids
    FROM    employees
    GROUP BY department_id;
    FOR j IN 1..department_ids.COUNT() LOOP
      department_min_salaries(department_ids(j)) := min_salaries(j);
      department_max_salaries(department_ids(j)) := max_salaries(j);
    END LOOP;
END BEFORE STATEMENT;
AFTER EACH ROW IS
  BEGIN
    IF :NEW.salary < department_min_salaries(:NEW.department_id)
      OR :NEW.salary > department_max_salaries(:NEW.department_id) THEN
      RAISE_APPLICATION_ERROR(-20505,'New Salary is out of acceptable   
                                      range');
    END IF;
  END AFTER EACH ROW;
END check_salary;


RESULT CACHE

CREATE FUNCTION F_FUNC
IS
RESULT_CACHE
sELECT DEPARTMENT_ID,COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID

insert into emps select * from employees
select * from emps where employee_id=102


SELECT * FROM V$PARAMETER WHERE NAME LIKE '%result%'

select * from v$result_cache_statistics

begin
dbms_result_cache.flush();
end;

begin
dbms_result_cache.memory_report();
end;


set serveroutput on



select * from dict where table_name like 'V$RESULT%'
SELECT * FROM V$RESULT_CACHE_OBJECTS


sELECT /*+ result_cache */ DEPARTMENT_ID,COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID

alter table employees storage(buffer_pool keep)



GRANT DEBUG ANY PROCEDURE TO hr;
GRANT DEBUG CONNECT SESSION TO hr;

select * from user_sys_privs;

BEGIN
 DBMS_NETWORK_ACL_ADMIN.APPEND_HOST_ACE
 (
 host => '127.0.0.1',
 lower_port => null,
 upper_port => null,
 ace => xs$ace_type(privilege_list => xs$name_list('jdwp'),
 principal_name => 'hr',
 principal_type => xs_acl.ptype_db)
 );
END;

select * from jobs

begin
add_job('SR5','SRCI2');
end;

select * from v$session where username='HR'

262	24772

BEGIN
DBMS_MONITOR.SESSION_TRACE_ENABLE(SESSION_ID=>'262',
SERIAL_NUM=>'24772');
END;

DESC DBMS_MONITOR

BEGIN
DBMS_MONITOR.SESSION_TRACE_DISABLE(SESSION_ID=>'262',
SERIAL_NUM=>'24772');
END;


select * from all_plsql_object_settings
where name='ADD_JOB'

alter proceDURE ADD_JOB COMPILE PLSQL_CODE_TYPE=NATIVE

ALTER SYSTEM SET PLSQL_CODE_TYPE=NATIVE
ALTER SESSION SET PLSQL_CODE_TYPE=NATIVE


alter proceDURE ADD_JOB COMPILE PLSQL_OPTIMIZE_LEVEL 2 3 INLINING


DECLARE
  l_loops  NUMBER := 1000000000;
  l_start  NUMBER;
  l_return NUMBER;

  FUNCTION add_numbers (p_1 IN NUMBER,
                        p_2 IN NUMBER)
    RETURN NUMBER AS
  BEGIN
    RETURN p_1 + p_2;
  END add_numbers;

BEGIN
  l_start := DBMS_UTILITY.get_time;

  FOR i IN 1 .. l_loops LOOP
    PRAGMA INLINE (add_numbers, 'YES');
    l_return := add_numbers(1, i);
  END LOOP;

  DBMS_OUTPUT.put_line('Elapsed Time: ' || (DBMS_UTILITY.get_time - l_start) || ' hsecs');
END;

set serveroutput on
