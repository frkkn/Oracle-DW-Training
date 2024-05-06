DECLARE --değişken tanımlama

begin --begin ve end executable kısmı

EXCEPTION -- exception handling

end;


--begin end arasında birşey execute etmesi gerekir
begin 
null;
end;

select hire_date from employees where employee_id = 200;

--begin end sadece select çalıştıramaz. select edilen değer ile bir 
--işlem yapılmasını bekliyor
begin
select hire_date from employees where employee_id = 200;
end;

SET SERVEROUTPUT ON; -- her sessionda bir kez yazılır
--script output'ta çıktıyı verir.

declare
V_HDATE DATE;
begin 
select hire_date into V_HDATE
from employees where employee_id = 200;
DBMS_OUTPUT.PUT_LINE('Tarih : ' || V_HDATE);
end;

declare
V_HDATE DATE;
V_LNAME VARCHAR2(50);
begin 
select hire_date,last_name into V_HDATE,V_LNAME
from employees where employee_id = 200;
DBMS_OUTPUT.PUT_LINE(V_LNAME || ' ' || V_HDATE);
end;

declare
V_HDATE DATE;
V_LNAME EMPLOYEES.LAST_NAME%type; -- bu şekilde yazıldığında varchar2(20) yazmak yerine o kolonun tipini alır.
begin 
select hire_date,last_name into V_HDATE,V_LNAME
from employees where employee_id = 200;
DBMS_OUTPUT.PUT_LINE(V_HDATE || '-' || V_LNAME);
end;

declare
V_HDATE DATE;
V_LNAME EMPLOYEES.LAST_NAME%type; -- bu şekilde yazıldığında varchar2(20) yazmak yerine o kolonun tipini alır.
v_name v_lname%type; --daha önce tanımlanan bir değişkenin tipinde de olabilir
v_sal number(3,2);
v_sals v_sal%type;
begin 
select hire_date,last_name 
into V_HDATE,V_LNAME
from employees where employee_id = 200;
DBMS_OUTPUT.PUT_LINE(V_HDATE || ' ' || V_LNAME);
end;

--------------------------------
--ort commit size'ın hesaplanması
select avg(avg_row_len) from dba_tables; --30.22
select * from v$parameter where name like '%block%';
select avg(avg_row_len) from dba_tables where table_name = 'EMPLOYEES'; -- 69
--db_block_size                     8192
--db_file_multiblock_read_count     82 --bir I/O'da 82 block update edilebiliyor.

select (8192/69)*82 from dual; -- 22228 ortalama commit size

--8192/30.22 bir bloğa kaç satır sığar
--(8192/30.22)*82 
--bir bloğa sığabilecek satır sayısı x bir seferde okunup yazılabilecek blok sayısı

--8192/30.22)*69 = 9735 ör EMPLOYEES tablosu için

--------------------------------------

/*
variable : scalar ve composite

->scalar : number,date,varchar2 gibi değişkenler. 

->composite (user defined type) : record ve collection olarak ikiye ayrılır
  ->record : tek satır çok tip
  ->collection : çok satır tek tip

collection of records : çok satır çok tip

cursor : tip sayılmaz. user defined types kullanmadan işlem yapabilmeyi sağlar.
yazımı kolay kullanımı yavaştır, UDT'nin yazımı zor kullanımı hızlıdır.

iyi kod için cursor yerine udt kullanmak daha iyidir. ufak datalarda cursor 
kullanılabilir.

*/

declare
    v_fname employees.first_name%type;
    v_empid employees.employee_id%type;
    c_katsayi constant number := 0;
    v_depid number(2) not null := 0;
    v_flag boolean := true;
    v_other_name varchar2(10);
    v_date_for_join date := to_date('february 2, 2020', 'mm dd, yyyy');
    v_count_loop binary_integer := 0;
    v_orderdate date := sysdate + 7;
    v_today date := sysdate;
    v_tomorrow v_today%type := v_today + 1;
    
begin
    select first_name into v_fname
    from employees
    where last_name = 'Kochhar';
    
    select employee_id into v_empid
    from employees
    where first_name = v_fname;
    
    dbms_output.put_line(v_empid);
    
    dbms_output.put_line('dept id: ' || V_DEPID);
    v_depid := 1;
    dbms_output.put_line('new dept id: ' || V_DEPID);
    
    dbms_output.put_line('');
    dbms_output.put_line('other name: ' || V_OTHER_NAME);
    v_other_name := 'Faruk';
    dbms_output.put_line('other name: ' || V_OTHER_NAME);
    
    dbms_output.put_line(v_orderdate);
    
    dbms_output.put_line('');
    dbms_output.put_line('bugün:' || (v_today+1));
    dbms_output.put_line(v_today + 1 || ' bugün');
    dbms_output.put_line(v_tomorrow+2);
    dbms_output.put_line(sysdate+2);
    
    dbms_output.put_line(V_DATE_FOR_JOIN);
end;



declare 
    v_variable simple_integer := 1;
    
begin
    declare
        v_inner_variable simple_integer := v_variable * 5;
        
    begin
        dbms_output.put_line(v_inner_variable);
        dbms_output.put_line(v_variable);
        
    end;
    
end;

--------------------------------------------

begin <<ilk>>
declare 
    v_variable number := 1;
    
begin
    declare
        v_inner_variable number := ilk.v_variable * 5;
        v_variable number := 5;    
        
    begin
        dbms_output.put_line(v_inner_variable);
        dbms_output.put_line(v_variable);
        
        dbms_output.put_line(v_variable);
        
        ilk.v_variable := 55;
    end;
    
    dbms_output.put_line(v_variable);
end; 
end ilk;

-----------------------------------
declare
    v_deger number(2);
    v_deger2 number(2);
    
begin
    select &no1, &no2 into v_deger,v_deger2 from dual;
    
    if v_deger2 is null then 
        v_deger2 := 0;
    end if;
    
    v_deger := v_deger2 * v_deger;
        
    if v_deger is null then
        dbms_output.put_line('v_deger null');
    elsif v_deger = 5 then
        dbms_output.put_line('v_deger 5');
    elsif v_deger = 1 or v_deger = 2 then
        dbms_output.put_line('v_deger 1 veya 2');
    elsif v_deger != 6 then
        dbms_output.put_line('v_deger 6 değil');        
    elsif v_deger <> 7 then
        dbms_output.put_line('v_deger >= 15');
    elsif v_deger >= 15 then
        dbms_output.put_line('v_deger >= 15');
    elsif v_deger between 15 and 20 then
        dbms_output.put_line('v_deger >= 15');        
    else
        dbms_output.put_line('v_deger < 15');
    end if;

end;

--------------------------------------

declare
    v_empid EMPLOYEES.EMPLOYEE_ID%type;
    v_sal EMPLOYEES.SALARY%type;
    v_msg varchar2(50);
begin
    v_empid := 100;
    
    select salary 
    into v_sal 
    from employees 
    where employee_id = v_empid;
    
    dbms_output.put_line('maaş: ' || v_sal);

    update employees 
    set salary = 100 
    where employee_id = v_empid;
    
    if sql%rowcount = 0 then
        dbms_output.put_line('kayıt güncellenemedi');
    else
        dbms_output.put_line(sql%rowcount || ' kayıt güncellendi.');
        
        select salary 
        into v_sal 
        from employees 
        where employee_id = v_empid;
        
        dbms_output.put_line('maaş: ' || v_sal);
        
        rollback;
        dbms_output.put_line('rollback');
    end if;
    
    select salary 
    into v_sal 
    from employees 
    where employee_id = v_empid;
    
    dbms_output.put_line('maaş: ' || v_sal);
    
    if sql%found = True then
        v_msg := 'bulundu';
    else
        v_msg := 'bulunamadı';
    end if;
    
    dbms_output.put_line(v_msg);
    
end;

-------------------------------------

declare
    v_fname employees.first_name%type;
    v_empid employees.employee_id%type;
    c_katsayi constant number := 0;
    v_depid number(2) not null := 0;
    v_flag boolean := true;
    v_other_name varchar2(10);
    
    v_count_loop binary_integer := 0;
    v_orderdate date := sysdate + 7;
    v_today date := sysdate;
    v_tomorrow v_today%type := v_today + 1;
    
begin
    select first_name into v_fname
    from employees
    where last_name = 'Kochhar';
    
    select employee_id into v_empid
    from employees
    where first_name = v_fname;
    
    dbms_output.put_line(v_empid);
    
    dbms_output.put_line('dept id: ' || V_DEPID);
    v_depid := 1;
    dbms_output.put_line('new dept id: ' || V_DEPID);
    
    dbms_output.put_line('');
    dbms_output.put_line('other name: ' || V_OTHER_NAME);
    v_other_name := 'Faruk';
    dbms_output.put_line('other name: ' || V_OTHER_NAME);
    
    dbms_output.put_line(v_orderdate);
    
    dbms_output.put_line('');
    dbms_output.put_line('bugün:' || (v_today+1));
    dbms_output.put_line(v_today + 1 || ' bugün');
    dbms_output.put_line(v_tomorrow+2);
    dbms_output.put_line(sysdate+2);
end;

-------------------------------------

/*
pctfree 10 demek bir tablo oluşturduğunda her zaman yüzde 10 bir alan boş
bırakır. insert/update için kullanılır.
create table ... values (...) pctfree 10;
şeklinde yazılır
*/



-------------------------------------

/*

true  or null -> true
false or null -> null
null  or null -> null

true  and null -> null
false and null -> false
null  and null -> null

*/

-------------------------

declare
    v_age number := 40;
begin
    case v_age
    when 10 then
        dbms_output.put_line('yaş 10');
    when 12 then
        dbms_output.put_line('yaş 12');
    when 13 then
        dbms_output.put_line('yaş 13');
    else
        dbms_output.put_line('yaş ' || v_age);
    end case;
    
    case
    when v_age < 10 then 
        dbms_output.put_line('yaş 10dan küçük');
    when v_age = 10 then
        dbms_output.put_line('yaş 10');
    else
        dbms_output.put_line('yaş 10dan buyuk');
    end case;
    
end;

----------------------

declare
    v_i number := 0;

begin
    loop 
        v_i := v_i + 1;
        dbms_output.put_line(v_i);
    exit when v_i = 10;
    end loop;
    
end;

---------------------------

declare
    v_i number := 0;

begin
    loop 
        v_i := v_i + 1;
        dbms_output.put_line(v_i);
    exit when v_i = 10;
    end loop;
    
    v_i:=0;
    
    while v_i <= 10 loop
        v_i := v_i + 1;
        dbms_output.put_line(v_i);
    end loop;
    
    for v_i in 1..10 loop
        if v_i in (6,8) then
            continue;
        end if;
        dbms_output.put_line(v_i);
    end loop;
    
    for v_i in 1..10 loop
        if v_i in (6,8) then
            null;
        else
            dbms_output.put_line(v_i);
        end if;
    end loop;
    
    for v_i in 1..10 loop
        if v_i not in (6,8) then
            dbms_output.put_line(v_i);
        end if;
    end loop;
    
    for v_i in 1..10 loop
        continue when v_i in (6,8);
        dbms_output.put_line(v_i);
    end loop;
    
end;

---------------------------


/*
https://docs.oracle.com/database/121/ARPLS/toc.htm
https://docs.oracle.com/database/121/LNPLS/toc.htm
*/

----------------------------

declare
    v_loc LOCATIONS.CITY%type;
    v_name EMPLOYEES.FIRST_NAME%type;
    v_max number;
    v_min number;
begin
    select max(employee_id), min(employee_id) into v_max, v_min from employees;

    while v_max > v_min loop
        v_max := v_max - 1;
        select e.first_name into v_name from 
        employees e
        where e.employee_id = v_max;
        continue when v_name is null;
        dbms_output.put_line(v_name || ' ' || v_loc);
    end loop;    
end;

----------------------------------

declare
    v_loc LOCATIONS.CITY%type;
    v_name EMPLOYEES.FIRST_NAME%type;
    v_max number;
    v_min number;
    v_i2 number := 0;
begin
    select max(employee_id), min(employee_id) into v_max, v_min from employees;

    for v_i in v_min..v_max loop
        v_i2 := v_i;
        select l.city, e.first_name into v_loc, v_name from 
        employees e ,departments d,locations l
        where e.employee_id = d.department_id
        and d.location_id = l.location_id
        and e.employee_id = v_i;
        continue when v_name is null;
        dbms_output.put_line(v_name || ' ' || v_loc);
    end loop;    
    
exception when no_data_found then
    dbms_output.put_line('hata alındı: ' || v_i2);
    
end;

----------------------

select * from dict;


-------------------------
/*
gratisexam.com
*/

---------------------

declare
    type rec is record(v_hdate EMPLOYEES.HIRE_DATE%type,
                        v_lname EMPLOYEES.LAST_NAME%type);
                        
    v_rec rec;
    
begin
    
    select hire_date, last_name
    into v_rec
    from employees 
    where employee_id = 100;
    
    dbms_output.put_line(v_rec.v_lname || ' ' || v_rec.v_hdate);
    
end;

---------------------------------

declare
    type rec is record (fname EMPLOYEES.FIRST_NAME%type, 
                        lname EMPLOYEES.last_name%type, 
                        sal EMPLOYEES.salary%type);                   
    type cor is table of rec index by pls_integer;
    
    v_cor cor;
    
begin
   
    select first_name,last_name,salary
    bulk collect into v_cor
    from employees ;
    
    for i in v_cor.first..v_cor.last loop
        dbms_output.put_line(v_cor(i).fname || ' ' || 
                             v_cor(i).lname || ' ' || 
                             v_cor(i).sal);
    end loop;
    
end;

----------------------------------

declare
    type rec is record (fname EMPLOYEES.FIRST_NAME%type, 
                        lname EMPLOYEES.last_name%type, 
                        sal EMPLOYEES.salary%type);                   
    type cor is table of rec index by pls_integer;
    
    v_cor cor;
    
begin
    select first_name,last_name,salary
    bulk collect into v_cor
    from employees ;
    
    for i in v_cor.first..v_cor.last loop
        dbms_output.put_line(v_cor(i).fname || ' ' || 
                             v_cor(i).lname || ' ' || 
                             v_cor(i).sal);
    end loop;
    
end;

----------------------------
declare
    type rec is record (empid employees.employee_id%type,
                        fname employees.first_name%type, 
                        lname employees.last_name%type, 
                        sal   employees.salary%type,
                        stars employees.stars%type);                   
    type cor is table of rec index by pls_integer;
    
    v_cor cor;
    
begin
    select employee_id,first_name,last_name,salary,stars
    bulk collect into v_cor
    from employees ;
    
    for i in v_cor.first..v_cor.last loop
        v_cor(i).stars := rpad('*',round(v_cor(i).sal/1000)-1, '*');
    end loop;
    
    for i in v_cor.first..v_cor.last loop
        update employees 
        set stars = v_cor(i).stars 
        where employee_id = v_cor(i).empid;
        commit;
    end loop;
    
    select employee_id,first_name,last_name,salary,0
    bulk collect into v_cor
    from employees ;
    
    select employee_id,first_name,last_name,salary,stars
    bulk collect into v_cor
    from employees ;
    
    for i in v_cor.first..v_cor.last loop
        dbms_output.put_line(v_cor(i).fname || ' ' ||
                             v_cor(i).lname || ' ' ||
                             v_cor(i).stars );
    end loop;
end;

---------------------------

declare
    type t_number is table of number index by pls_integer;
    type rec is record (empid employees.employee_id%type,
                        fname employees.first_name%type, 
                        lname employees.last_name%type, 
                        sal   employees.salary%type,
                        stars employees.stars%type);        
    type cor is table of rec index by pls_integer;
    type cor2 is table of cor index by pls_integer;
    
    type v_emp is record (emplys employees%rowtype);
    type emp is table of v_emp index by pls_integer;
    t_emp emp;
    
    v_number t_number;
    v_cor cor;
    v_cor2 cor2;
    
begin
    for i in 1..100 loop
        v_number(i) := i;
    end loop;
    
    for i in 1..100 loop
        dbms_output.put_line(v_number(i));
    end loop;

    select employee_id,first_name,last_name,salary,stars
    bulk collect into v_cor
    from employees ;
    
    v_cor2(1) := v_cor;
    
    select employee_id,first_name,last_name,salary,stars
    bulk collect into v_cor
    from employees where employee_id > 110;
    
    v_cor2(2) := v_cor;
    
    for i in v_cor.first..v_cor.last loop
        v_cor(i).stars := rpad('*',round(v_cor(i).sal/1000)-1, '*');
    end loop;
    
    for i in v_cor2.first..v_cor2.last loop
        for j in v_cor2(i).first..v_cor2(i).last loop
            dbms_output.put_line('i: ' || i || ', j: ' || j);
            dbms_output.put_line(v_cor2(i)(j).fname || ' ' || v_cor2(i)(j).lname);
        end loop;
    end loop;
    
    for i in v_cor.first..v_cor.last loop
        update employees 
        set stars = v_cor(i).stars 
        where employee_id = v_cor(i).empid;
        commit;
    end loop;
    
    select employee_id,first_name,last_name,salary,0
    bulk collect into v_cor
    from employees ;
    
    select employee_id,first_name,last_name,salary,stars
    bulk collect into v_cor
    from employees ;
    
    for i in v_cor.first..v_cor.last loop
        dbms_output.put_line(v_cor(i).fname || ' ' ||
                             v_cor(i).lname || ' ' ||
                             v_cor(i).stars );
    end loop;
    
    for i in v_cor loop
        dbms_output.put_line(i.fname);
    end loop;
    
end;

------------------------------------------

declare
    type tbl_emp is table of testtable%rowtype;
    tbl1 tbl_emp;
    
    startts timestamp;
    endts   timestamp;
    
begin
    startts := systimestamp;
    
    select 'test data', 1000.123
    bulk collect into tbl1
    from dual 
    connect by level < 1000001;
    
    forall i in 1..tbl1.count 
    save exceptions
    insert into testtable values tbl1(i);
    commit;
    
    endts := systimestamp;
    
    DBMS_OUTPUT.PUT_LINE(endts - startts);
end;

-----------------------------------------

declare
    cursor cur is
        select * from employees;
    
    v_rec cur%rowtype;
    
begin
    --cursor select'teki bütün datayı memory'e  taşır
    open cur; --open denildiğinde ilk kayıt point ediliyor
    
    --memory'deki kaydı v_rec'e atar
    fetch cur into v_rec;
    dbms_output.put_line(v_rec.first_name);
    
    loop
        fetch cur into v_rec;
        dbms_output.put_line(v_rec.first_name);
    exit when cur%notfound;
    end loop;
    
    close cur;
    
    
    --for ile cursor open,close,fetch demeye gerek kalmadan
    --verileri satır satır çeker. bitince cursor kapanır
    for v_rec in cur loop
        dbms_output.put_line(v_rec.first_name);
    end loop;
    
    
    --farklı bir cursor
    for v_rec in (select * from employees) loop
        dbms_output.put_line(v_rec.first_name);
    end loop;
    
end;

-------------------------------

declare
    cursor cur is
        select * from 
        (select first_name, salary,
        rank() over (order by salary desc) as rn
        from employees 
        order by salary desc) a 
        where rn <= &rn;
        
    v_rec cur%rowtype;

begin
    
    for i in cur loop
        dbms_output.put_line(cur%rowcount || ' ' || i.first_name || ' ' || i.salary);
    end loop;

end;

-------------------------------

declare
    cursor cur is
        select * from 
        (select first_name, salary,
        rank() over (order by salary desc) as rn
        from employees 
        order by salary desc) a 
        where rn <= &rn;
        
    v_rec cur%rowtype;

begin
    for i in cur loop
        dbms_output.put_line(cur%rowcount || ' ' || i.first_name || ' ' || i.salary);
    end loop;

end;

--------------------------------

declare
    type emptbl is table of emps%rowtype index by pls_integer;
    tbl1 emptbl;
    
    temp_sal employees.salary%type;
begin

    execute immediate 'truncate table emps';
    insert into emps select * from employees; 
    commit;

    select  *
    bulk collect into tbl1
    from emps;
    
    for i in 1..tbl1.count loop
        temp_sal := tbl1(i).salary;
        tbl1(i).salary := tbl1(i).salary * (1 + tbl1(i).department_id/100);
        dbms_output.put_line(tbl1(i).first_name || ', eski maaş: ' || temp_sal || ', yeni maaş: ' || tbl1(i).salary);
    end loop;
    
    forall i in 1..tbl1.count
    update emps set salary = tbl1(i).salary where employee_id = tbl1(i).employee_id;
    commit;
end;

----------------------------------

/*
exceptions
predefined exception
user defined exception
raise exception
raise_application_error exception

*/

declare
    v_lname employees.last_name%type not null := ' ';
    v_empid employees.employee_id%type;
    
begin
    v_empid := 99;
    
    select salary
    into v_lname 
    from employees;
    --where employee_id = 99;
    
    dbms_output.put_line(sqlcode);
    
exception
    when no_data_found then
        dbms_output.put_line('kayıt yok id: ' || v_empid);
    when too_many_rows then
        dbms_output.put_line('kayıt birden çok');
    when others then
        dbms_output.put_line(sqlerrm);
        
end;

----------------------

declare
    hata exception;

begin
    update employees set salary=1 where employee_id = 00;
    
    if sql%notfound then 
        raise hata;
    end if;
        
exception
    when hata then 
        dbms_output.put_line('hata alındı.');
        dbms_output.put_line('sqlcode: ' || sqlcode);
        dbms_output.put_line(sqlerrm);
    
end;

----------------------------

begin
    update employees set salary=1 where employee_id = 00;
    
    if sql%notfound then raise_application_error(-20001, 'HATA');
    end if;        

end;

----------------------------

declare
    v_child exception;
    pragma exception_init(v_child, -2292);

begin
    delete from employees;
    
exception
    when v_child then dbms_output.put_line('çocukları var');

end;

----------------------------

declare
    v_child exception;
    pragma exception_init(v_child, -2292);
    
begin
    delete from employees;
    
exception
    when v_child then dbms_output.put_line('çocukları var');
    
end;

---------------------------

-----------------------------

/*
stored objects

procedure
function
package
trigger

*/

create procedure p_zam is

begin

    update emps set salary = salary * 1.1;
    commit;

end;

begin
p_zam;
end;

call p_zam();
execute p_zam;
exec p_zam;

------------------------------

create or replace procedure p_zam (v_deptid in EMPLOYEES.DEPARTMENT_ID%type,
    v_oran in number,
    v_count out number)
is
    type emptbl is table of emps%rowtype index by pls_integer;
    type eski_maas is table of EMPS.SALARY%type index by pls_integer;
    
    tbl_esk emptbl;
    eski_maaslar eski_maas;
    v_deptname DEPARTMENTS.DEPARTMENT_NAME%type;

begin

    select * bulk collect into tbl_esk from emps where department_id = v_deptid;
    select count(*) into v_count from emps where department_id = v_deptid;
    
    for i in 1..tbl_esk.count loop
        eski_maaslar(i) := tbl_esk(i).salary;
        tbl_esk(i).salary := tbl_esk(i).salary * v_oran;
    end loop;
    
    forall i in 1..tbl_esk.count
    update emps set salary = tbl_esk(i).salary where employee_id = tbl_esk(i).employee_id;
    commit;

    select distinct department_name into v_deptname from departments where department_id = v_deptid;
    
    dbms_output.put_line('Department: ' || v_deptname);
    for i in 1..tbl_esk.count loop
        dbms_output.put_line(tbl_esk(i).employee_id 
                             || ' ' 
                             || tbl_esk(i).first_name 
                             || ', eski maaş: ' 
                             || eski_maaslar(i)
                             || ', yeni maaş ' 
                             || tbl_esk(i).salary);
    end loop;
end;



declare
    v_count number;
begin
    p_zam(90,1.1,v_count);
    
    dbms_output.put_line('updated records: ' || v_count);
end;


----------------------------------

/*
parametre modları
in --defaulttur. yazılmasa da vardır.
out
in out

*/

create or replace procedure p_format_card
(v_kart in out varchar2) is
begin
    v_kart := substr(v_kart,1,4) 
              || ' ' ||
              substr(v_kart,5,4) 
              || ' ' ||
              substr(v_kart,9,4) 
              || ' ' ||
              substr(v_kart,13);
end;

declare
    v_kart varchar(30) := '1234567891231234';
begin
    P_FORMAT_CARD(v_kart);
    dbms_output.put_line(v_kart);
end;      
              
----------------------------

create or replace function f_sal
(v_empid employees.employee_id%type)
return employees.salary%type is
    v_sal employees.salary%type;
    
begin
    select salary into v_sal from employees where employee_id = v_empid;
    
    return v_sal;
    
end;

---------------------------------

/*
package iki kısımdan oluşur
->specification
->body

forward declaration
overloading

spec -> proc, func, global vars definition
body -> kodun yazıldığı kısım

*/

-------------------------------

/*

dynamic sql
ddl -> create alter drop rename truncate
dcl -> grant revoke

*/