/*
Navicat Oracle Data Transfer
Oracle Client Version : 10.2.0.5.0

Source Server         : 本地Oracle
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : SCOTT

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2017-03-23 16:49:56
*/


-- ----------------------------
-- Table structure for EMP
-- ----------------------------
DROP TABLE "SCOTT"."EMP";
CREATE TABLE "SCOTT"."EMP" (
"EMPNO" NUMBER(4) NOT NULL ,
"ENAME" VARCHAR2(10 BYTE) NULL ,
"JOB" VARCHAR2(9 BYTE) NULL ,
"MGR" NUMBER(4) NULL ,
"HIREDATE" DATE NULL ,
"SAL" NUMBER(7,2) NULL ,
"COMM" NUMBER(7,2) NULL ,
"DEPTNO" NUMBER(2) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of EMP
-- ----------------------------
INSERT INTO "SCOTT"."EMP" VALUES ('7369', 'SMITH', 'CLERK', '7902', TO_DATE('1980-12-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '800', null, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7499', 'ALLEN', 'SALESMAN', '7698', TO_DATE('1981-02-20 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1600', '300', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7521', 'WARD', 'SALESMAN', '7698', TO_DATE('1981-02-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1250', '500', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7566', 'JONES', 'MANAGER', '7839', TO_DATE('1981-04-02 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2975', null, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7654', 'MARTIN', 'SALESMAN', '7698', TO_DATE('1981-09-28 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1250', '1400', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7698', 'BLAKE', 'MANAGER', '7839', TO_DATE('1981-05-01 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2850', null, '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7782', 'CLARK', 'MANAGER', '7839', TO_DATE('1981-06-09 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '2450', null, '10');
INSERT INTO "SCOTT"."EMP" VALUES ('7788', 'SCOTT', 'ANALYST', '7566', TO_DATE('1987-04-19 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '3000', null, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7839', 'KING', 'PRESIDENT', null, TO_DATE('1981-11-17 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '5000', null, '10');
INSERT INTO "SCOTT"."EMP" VALUES ('7844', 'TURNER', 'SALESMAN', '7698', TO_DATE('1981-09-08 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1500', '0', '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7876', 'ADAMS', 'CLERK', '7788', TO_DATE('1987-05-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1100', null, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7900', 'JAMES', 'CLERK', '7698', TO_DATE('1981-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '950', null, '30');
INSERT INTO "SCOTT"."EMP" VALUES ('7902', 'FORD', 'ANALYST', '7566', TO_DATE('1981-12-03 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '3000', null, '20');
INSERT INTO "SCOTT"."EMP" VALUES ('7934', 'MILLER', 'CLERK', '7782', TO_DATE('1982-01-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS'), '1300', null, '10');

-- ----------------------------
-- Indexes structure for table EMP
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table EMP
-- ----------------------------
ALTER TABLE "SCOTT"."EMP" ADD PRIMARY KEY ("EMPNO");

-- ----------------------------
-- Foreign Key structure for table "SCOTT"."EMP"
-- ----------------------------
ALTER TABLE "SCOTT"."EMP" ADD FOREIGN KEY ("DEPTNO") REFERENCES "SCOTT"."DEPT" ("DEPTNO");
