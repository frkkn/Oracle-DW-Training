create or replace package body pkg_emp is
    
    v_global_degisken number := 0;
    procedure print_global;
    
    procedure p_zam(v_empid employees.employee_id%type, 
        v_sal out employees.salary%type) is 
    begin
    
        
        update employees
        set salary = salary * 1.1
        where employee_id = v_empid;
        commit;
        
        select salary into v_sal
        from employees
        where employee_id = v_empid;
    
        print_global;
        
    end p_zam;
    
    
    function f_sal(v_empid employees.employee_id%type)  
        return employees.salary%type is 
        
        v_sal employees.salary%type;
        
    begin 
        select salary into v_sal
        from employees
        where employee_id = v_empid;
        
        return v_sal;
        
        print_global;
    
    end f_sal;
    
    
    procedure print_global is
    begin
        dbms_output.put_line(v_global_degisken);
        v_global_degisken := v_global_degisken + 1;
    end print_global;
    
end;
