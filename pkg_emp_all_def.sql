create or replace package pmk_emp_all is
    procedure pkg_dept_ins(v_deptid departments.department_id%type,
        v_deptname departments.department_name%type);

    procedure pkg_dept_upd(v_deptid departments.department_id%type,
        v_deptname departments.department_name%type);

    procedure pkg_dept_del(v_deptid departments.department_id%type);

    function pkg_dept_sel(v_deptid departments.department_id%type)
        return departments.department_name%type;
end;

