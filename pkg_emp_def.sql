create or replace package pkg_emp is
    procedure p_zam(v_empid employees.employee_id%type, 
        v_sal out employees.salary%type);
    function f_sal(v_empid employees.employee_id%type)  
        return employees.salary%type;
    
    v_deg number := 100; --global değişken, bu paketteki func ve proc bu 
                         --değişkeni olduğu gibi kullanabilir

end;

