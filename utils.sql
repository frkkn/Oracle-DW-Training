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

SELECT owner, program_name, enabled FROM dba_scheduler_programs;

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


CREATE OR REPLACE PROCEDURE sal_status(
  p_dir IN VARCHAR2, p_filename IN VARCHAR2) IS
  f_file UTL_FILE.FILE_TYPE;
  CURSOR cur_emp IS SELECT last_name, salary, department_id
    FROM employees ORDER BY department_id;
  v_newdeptno employees.department_id%TYPE;
  v_olddeptno employees.department_id%TYPE := 0;
BEGIN
  f_file:= UTL_FILE.FOPEN (p_dir, p_filename, 'W');
  UTL_FILE.PUT_LINE(f_file,
   'REPORT: GENERATED ON ' || SYSDATE);
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

/

