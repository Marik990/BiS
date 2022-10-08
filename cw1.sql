--------------------------------------------------------
--  File created - sobota-paŸdziernika-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table COUNTRIES
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."COUNTRIES" 
   (	"COUNTRY_ID" NUMBER(*,0), 
	"COUNTRY_NAME" VARCHAR2(255 BYTE), 
	"REGION_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DEPARTMENTS
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."DEPARTMENTS" 
   (	"DEPARTMENT_ID" NUMBER(*,0), 
	"DEPARTMENT_NAME" VARCHAR2(255 BYTE), 
	"MANAGER_ID" NUMBER(*,0), 
	"LOCATION_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EMPLOYEES
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."EMPLOYEES" 
   (	"EMPLOYEE_ID" NUMBER(*,0), 
	"FIRST_NAME" VARCHAR2(255 BYTE), 
	"LAST_NAME" VARCHAR2(255 BYTE), 
	"EMAIL" VARCHAR2(255 BYTE), 
	"PHONE_NUMBER" VARCHAR2(255 BYTE), 
	"HIRE_DATE" DATE, 
	"SALARY" VARCHAR2(255 BYTE), 
	"COMMISSION_PCT" VARCHAR2(255 BYTE), 
	"JOB_ID" NUMBER(*,0), 
	"MANAGER_ID" NUMBER(*,0), 
	"DEPARTMENT_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOB_HISTORY
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."JOB_HISTORY" 
   (	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"EMPLOYEE_ID" NUMBER(*,0), 
	"JOB_ID" NUMBER(*,0), 
	"DEPARTMENT_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table JOBS
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."JOBS" 
   (	"JOB_ID" NUMBER(*,0), 
	"JOB_TITLE" VARCHAR2(255 BYTE), 
	"MIN_SALARY" NUMBER(10,2), 
	"MAX_SALARY" NUMBER(10,2)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOCATIONS
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."LOCATIONS" 
   (	"LOCATION_ID" NUMBER(*,0), 
	"STREET_ADDRESS" VARCHAR2(255 BYTE), 
	"POSTAL_CODE" VARCHAR2(255 BYTE), 
	"CITY" VARCHAR2(255 BYTE), 
	"STATE_PROVINCE" VARCHAR2(255 BYTE), 
	"COUNTRY_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table REGIONS
--------------------------------------------------------

  CREATE TABLE "JABLONSKIM"."REGIONS" 
   (	"REGION_ID" NUMBER(*,0), 
	"REGION_NAME" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into JABLONSKIM.COUNTRIES
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.DEPARTMENTS
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.EMPLOYEES
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.JOB_HISTORY
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.JOBS
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.LOCATIONS
SET DEFINE OFF;
REM INSERTING into JABLONSKIM.REGIONS
SET DEFINE OFF;
--------------------------------------------------------
--  Constraints for Table REGIONS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."REGIONS" MODIFY ("REGION_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."REGIONS" ADD PRIMARY KEY ("REGION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."COUNTRIES" MODIFY ("COUNTRY_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."COUNTRIES" ADD PRIMARY KEY ("COUNTRY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."DEPARTMENTS" MODIFY ("DEPARTMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."DEPARTMENTS" ADD PRIMARY KEY ("DEPARTMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."EMPLOYEES" MODIFY ("EMPLOYEE_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."EMPLOYEES" ADD PRIMARY KEY ("EMPLOYEE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."LOCATIONS" MODIFY ("LOCATION_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."LOCATIONS" ADD PRIMARY KEY ("LOCATION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOBS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."JOBS" MODIFY ("JOB_ID" NOT NULL ENABLE);
  ALTER TABLE "JABLONSKIM"."JOBS" ADD CONSTRAINT "CHK_JOB" CHECK (max_salary - min_salary >= 2000) ENABLE;
  ALTER TABLE "JABLONSKIM"."JOBS" ADD PRIMARY KEY ("JOB_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COUNTRIES
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."COUNTRIES" ADD CONSTRAINT "FK_REGIONSCOUNTRIES" FOREIGN KEY ("REGION_ID")
	  REFERENCES "JABLONSKIM"."REGIONS" ("REGION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DEPARTMENTS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."DEPARTMENTS" ADD CONSTRAINT "FK_LOCATIONDEPARTMENTS" FOREIGN KEY ("LOCATION_ID")
	  REFERENCES "JABLONSKIM"."LOCATIONS" ("LOCATION_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEES
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."EMPLOYEES" ADD CONSTRAINT "FK_MANAGER" FOREIGN KEY ("MANAGER_ID")
	  REFERENCES "JABLONSKIM"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "JABLONSKIM"."EMPLOYEES" ADD CONSTRAINT "FK_JOBS_EMPLOYEES" FOREIGN KEY ("JOB_ID")
	  REFERENCES "JABLONSKIM"."JOBS" ("JOB_ID") ENABLE;
  ALTER TABLE "JABLONSKIM"."EMPLOYEES" ADD CONSTRAINT "FK_DEPARTMENTS_EMPLOYEES" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "JABLONSKIM"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JOB_HISTORY
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."JOB_HISTORY" ADD CONSTRAINT "FK_EMPLOYEEJOBHISTORY" FOREIGN KEY ("EMPLOYEE_ID")
	  REFERENCES "JABLONSKIM"."EMPLOYEES" ("EMPLOYEE_ID") ENABLE;
  ALTER TABLE "JABLONSKIM"."JOB_HISTORY" ADD CONSTRAINT "FK_JOBSJOBHISTORY" FOREIGN KEY ("JOB_ID")
	  REFERENCES "JABLONSKIM"."JOBS" ("JOB_ID") ENABLE;
  ALTER TABLE "JABLONSKIM"."JOB_HISTORY" ADD CONSTRAINT "FK_DEPARTMENTSJOBHISTORY" FOREIGN KEY ("DEPARTMENT_ID")
	  REFERENCES "JABLONSKIM"."DEPARTMENTS" ("DEPARTMENT_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOCATIONS
--------------------------------------------------------

  ALTER TABLE "JABLONSKIM"."LOCATIONS" ADD CONSTRAINT "FK_COUNTRIESLOCATIONS" FOREIGN KEY ("COUNTRY_ID")
	  REFERENCES "JABLONSKIM"."COUNTRIES" ("COUNTRY_ID") ENABLE;
