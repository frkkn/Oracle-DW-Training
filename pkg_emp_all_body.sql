create or replace package body pmk_emp_all is

    procedure pkg_dept_ins(v_deptid departments.department_id%type,
        v_deptname departments.department_name%type) is
    begin 
        insert into DEPARTMENTS
           values (v_deptid, v_deptname, null, null);

        DBMS_OUTPUT.PUT_LINE('insert yapıldı.');
    end pkg_dept_ins;


    procedure pkg_dept_upd(v_deptid departments.department_id%type,
        v_deptname departments.department_name%type) is
    begin
        update departments
        set department_name = v_deptname
        where department_id = v_deptid;

        DBMS_OUTPUT.PUT_LINE('update yapıldı.');
    end pkg_dept_upd;


    procedure pkg_dept_del(v_deptid departments.department_id%type) is
    begin
        delete from departments
        where department_id = v_deptid;

        DBMS_OUTPUT.PUT_LINE('delete yapıldı.');
    end pkg_dept_del;


    function pkg_dept_sel(v_deptid departments.department_id%type)
        return departments.department_name%type is

        v_deptname departments.department_name%type;
    begin
        select department_name
        into v_deptname
        from departments
        where department_id = v_deptid;

        return v_deptname;

    end pkg_dept_sel;
end;

