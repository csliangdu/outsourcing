
drop table t_Activities cascade constraints;
drop table t_ActivitiesUser cascade constraints;
drop table t_Certificates cascade constraints;
drop table t_Express cascade constraints;
drop table t_FileInfo cascade constraints;
drop table t_FinancialAffairs cascade constraints;
drop table t_Flight cascade constraints;
drop table t_Hotel cascade constraints;
drop table t_PhysicalExamination cascade constraints;
drop table T_Personnel cascade constraints;
drop table T_Personnel_Record cascade constraints;
drop table t_TechnologicalProcess cascade constraints;
drop table t_TrainCourse cascade constraints;
drop table t_trainingOfPersonnel cascade constraints;

drop sequence SEQUENCE_t_Activities;
drop sequence SEQUENCE_t_ActivitiesUser;
drop sequence SEQUENCE_t_Certificates;
drop sequence SEQUENCE_t_Express;
drop sequence SEQUENCE_t_FileInfo;
drop sequence SEQUENCE_t_FinancialAffairs;
drop sequence SEQUENCE_t_Flight;
drop sequence SEQUENCE_t_Hotel;
drop sequence SEQUENCE_t_PhysicalExamination;
drop sequence SEQUENCE_T_Personnel;
drop sequence SEQUENCE_T_Personnel_Record;
drop sequence SEQUENCE_t_TechnologicalProcess;
drop sequence SEQUENCE_t_TrainCourse;
drop sequence SEQUENCE_t_trainingOfPersonnel;


/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2014/8/12 8:46:12                            */
/*==============================================================*/

/*==============================================================*/
/* Table: "Activities"                                          */
/* Table: ���Ϣ��                                          */
/*==============================================================*/
create table t_Activities 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(20),  --�����
   "Description"        VARCHAR(50),  --�����
   "ScheduleDate"       DATE,         --Ԥ��ʱ��
   "setTime"            VARCHAR(10),  --����ʱ��
   "setPlace"           VARCHAR(20),  --���ϵص�
   "ScheduleTime"       VARCHAR(10),  --Ԥ�ƻʱ��
   "userid"             NUMBER,       --������
   "Telephone"          VARCHAR(15),  --�����˵绰
   "createDate"         VARCHAR(20),  --����ʱ��
   "updateDate"         VARCHAR(20),  --�޸�ʱ��
   constraint PK_ACTIVITIES primary key ("id")
);

/*==============================================================*/
/* Table: "ActivitiesUser"                                      */
/* Table: ���Ա��                                      */
/*==============================================================*/
create table t_ActivitiesUser 
(
   "id"                 NUMBER,
   "ActivitiesId"       NUMBER,  --���Ϣid
   "Userid"             NUMBER   --��Աid
);

/*==============================================================*/
/* Table: "Certificates"                                        */
/* Table: ֤����Ϣ                                              */
/*==============================================================*/
create table t_Certificates 
(
   "id"                 NUMBER               not null,
   "workflowId"                 VARCHAR(10),  --���̽ڵ�
   "name"               VARCHAR(30),          --֤������
   "handleDate"         DATE,                 --��������
   "ReceiveDate"        DATE,                 --��ȡ����
   "ValidStartDate"     DATE,                 --֤����Ч��ʼ����
   "ValidEndDate"       DATE,                 --֤����Ч��������
   "type"               VARCHAR(3),           --����
   "createDate"         VARCHAR(20),          --����ʱ��
   "updateDate"         VARCHAR(20),          --�޸�ʱ��
   "status"                   VARCHAR(2),     --״̬
   "TechnologicalProcessID" NUMBER,
   constraint PK_CERTIFICATES primary key ("id")
);

/*==============================================================*/
/* Table: "Express"                                             */
/* �����Ϣ                                                     */
/*==============================================================*/
create table t_Express 
(
   "id"                 NUMBER               not null,
   "ExpressNumber"      VARCHAR(30),      --��ݺ�
   "Company"            VARCHAR(30),      --��ݹ�˾
   "Telephone"          VARCHAR(15),      --��˾�绰
   "DeliverGoodsDate"   DATE,             --��������
   "ArriveDate"         DATE,             --Ԥ�Ƶ�������
   "TechnologicalProcessID" NUMBER,       --��Աid
   constraint PK_EXPRESS primary key ("id")
);

/*==============================================================*/
/* Table: FileInfo                                            */
/* Table: �ļ���Ϣ                                            */
/*==============================================================*/
create table t_FileInfo 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(30),        --�ļ���
   "nameType"           VARCHAR(10),        --�ļ�����
   TYPE                 VARCHAR(20),        --����
   "Descr"              VARCHAR(100),       --����
   "createDate"         VARCHAR(30),        --����ʱ��
   "updateDate"         VARCHAR(30),        --�޸�ʱ��
   "state"              VARCHAR(2),         --״̬
   "TechnologicalProcessID" NUMBER,
   constraint PK_FILEINFO primary key ("id")
);

/*==============================================================*/
/* Table: "FinancialAffairs"                                    */
/* Table: ������Ϣ                                        */
/*==============================================================*/
create table t_FinancialAffairs 
(
   "id"                 NUMBER               not null,
   "contractType"       VARCHAR(20),        --��ͬ����
   ��˾�绰����               VARCHAR(20),  --��˾�绰����
   ���ʿ�����                VARCHAR(20),   --���ʿ�����
   ���ʿ�����                VARCHAR(30),   --���ʿ�����
   ����                   NUMBER,           --����
   ��ͬ��ʼ����               DATE,         --��ͬ��ʼ����
   ��ͬ��������               DATE,         --��ͬ�������� 
   "TypeOfVisa"         VARCHAR(10),        --ǩ֤����
   "TypeOfVisaDate"     DATE,               --ǩ֤������
   "SigningContractDate" DATE,              --��ͬ��ʽǩ������
   "CopyToStaff"        VARCHAR(1),         --��ͬ�����Ƿ�����
   "TechnologicalProcessID" NUMBER,         --��ԱID
   constraint PK_FINANCIALAFFAIRS primary key ("id")
);

/*==============================================================*/
/* Table: "Flight"                                              */
/* ������Ϣ                                                     */
/*==============================================================*/
create table t_Flight 
(
   "id"                 NUMBER               not null,
   "TechnologicalProcessID" NUMBER,            --��ԱID
   "FlightNumber"       VARCHAR(20),           --�����
   "startDate"          DATE,                  --���ʱ��
   "endDate"            DATE,                  --����ʱ��
   "Place"              VARCHAR(30),           --�������
   "airportPeopleId"    NUMBER,                --�ӻ���
   constraint PK_FLIGHT primary key ("id")
);

/*==============================================================*/
/* Table: "Hotel"                                               */
/* Table: "�Ƶ���Ϣ"                                            */
/*==============================================================*/
create table t_Hotel 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(20), --�Ƶ�����
   "Address"            VARCHAR(50), --�Ƶ��ַ
   "Telephone"          VARCHAR(15), --�Ƶ�绰
   "RoomNumber"         VARCHAR(10), --�����
   "RoomType"           VARCHAR(2),  --��������
   "ScheduleDate"       DATE,        --Ԥ��ʱ��
   "ScheduleDay"        VARCHAR(2),  --Ԥ������
   "CheckInDate"        DATE,        --��סʱ��
   "CheckInDay"         VARCHAR(2),  --��ס����
   "Price"              VARCHAR(5),  --�۸�
   "createDate"         VARCHAR(20), --����ʱ��
   "updateDate"         VARCHAR(20), --�޸�ʱ��
   "TechnologicalProcessID" NUMBER,  --��ԱID
   constraint PK_HOTEL primary key ("id")
);

/*==============================================================*/
/* Table: "PhysicalExamination"                                 */
/* Table: �����Ϣ                                 */
/*==============================================================*/
create table t_PhysicalExamination 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(20), --���ҽԺ
   "Address"            VARCHAR(30), --����ַ
   "Telephone"          VARCHAR(20), --ҽԺ�绰
   "Remarks"            VARCHAR(50), --ҽԺ��ע
   "type"               VARCHAR(2),  --����
   "ScheduleDate"       DATE,        --Ԥ��ʱ��
   "ReceiveDate"        DATE,        --������ȡ���� 
   "TechnologicalProcessID" NUMBER,  --��ԱID
   constraint PK_PHYSICALEXAMINATION primary key ("id")
);

/*==============================================================*/
/* Table: "T_Personnel"                                         */
/* Table: ��Ա��ʽ��                                            */
/*==============================================================*/
create table T_Personnel 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(25), --����
   "EnglishName"        VARCHAR(25), --Ӣ����
   "Nationality"        VARCHAR(20), --����
   "YearBirth"          VARCHAR(6),  --�������
   "Birthday"           DATE,        --����
   "State"              VARCHAR(2),  --״̬
   "PassportDate"       DATE,        --��������
   "visaType"           VARCHAR(1),  --ǩ֤����
   "visaDate"           DATE,        --ǩ֤����
   "contractType"       VARCHAR(1),  --��ͬ����
   "contractStartDate"  DATE,        --��ͬǩ������
   "InsuranceEndDate"   DATE,        --���յ����� 
   "school"             VARCHAR(50), --����ѧУ
   "intentionSchool"    VARCHAR(50), --����ѧУ
   "schoolFeedback"     VARCHAR(100),--ѧУ����
   "createTime"         DATE,        --��������
   "updateTime"         DATE,        --�޸�����
   "mail"               VARCHAR(25), --��������
   constraint PK_T_PERSONNEL primary key ("id")
);

/*==============================================================*/
/* Table: "T_Personnel_Record"                                  */
/* Table: ��¼��                                                */
/*==============================================================*/
create table T_Personnel_Record 
(
   "id"                 NUMBER,
   "PersonnelType"      VARCHAR(1),  --����
   "appointmentDate"    DATE,        --ԤԼʱ��
   "Content"            VARCHAR(500),--��¼����
   "createTime"         DATE,        --����ʱ��
   "PersonnelID"        NUMBER       --��ԱID
);

/*==============================================================*/
/* Table: "TechnologicalProcess"                                */
/*==============================================================*/
create table t_TechnologicalProcess 
(
   "id"                 NUMBER               not null,
   "name"               VARCHAR(25),         --����
   "englishName"        VARCHAR(25),         --Ӣ����
   "Nationality"        VARCHAR(20),         --����
   "yearBirth"          VARCHAR(6),          --�������
   "Birthday"           DATE,                --����
   "state"              VARCHAR(2),          --״̬
   "mail"               VARCHAR(25),         --�����ʼ�
   "createTime"         VARCHAR(20),         --��������
   "updateTime"         VARCHAR(20),         --�޸�����
   "workUserId"         NUMBER,              --���̷�����
   "contractType"       VARCHAR(2),          --��ͬ����
   "PassportNo"         VARCHAR(30),         --���պ�
   "PassportNoDate"     VARCHAR(20),         --������Ч��
   "contractDate"       VARCHAR(20),         --��ͬ��Ч��
   "currentLocation"    VARCHAR(20),         --Ŀǰ���ڵ�
   "workflowId"         VARCHAR(64),         --��ˮ��
   "res1"               VARCHAR(50),         --��չ�ֶ�
   "res2"               VARCHAR(50),         --
   "res3"               VARCHAR(50),         --
   "res4"               VARCHAR(50),         --
   "res5"               VARCHAR(50),         --
   "res6"               VARCHAR(50),         --
   constraint PK_TECHNOLOGICALPROCESS primary key ("id")
);

/*==============================================================*/
/* Table: "TrainCourse"                                         */
/* ��ѵ�γ���Ϣ                                                 */
/*==============================================================*/
create table t_TrainCourse 
(
   "id"                 NUMBER               not null,
   "TrainType"          VARCHAR(2),  --��ѵ���
   "ScheduleDate"       DATE,        --Ԥ��ʱ��
   "Address"            VARCHAR(20), --��ַ
   "CourseDate"         VARCHAR(2),  --�γ�ʱ��
   "Description"        VARCHAR(50), --�γ�����
   "name"               VARCHAR(20), --�γ�����
   "userId"             NUMBER,      --�γ̽�ʦ
   "createDate"         VARCHAR(20), --����ʱ��
   "updateDate"         VARCHAR(20), --�޸�ʱ��
   constraint PK_TRAINCOURSE primary key ("id")
);

/*==============================================================*/
/* Table: "trainingOfPersonnel"                                 */
/* ��ѵ��Ա��Ϣ��                                               */
/*==============================================================*/
create table t_trainingOfPersonnel 
(
   "id"                 NUMBER               not null,
   "TrainCourseId"      NUMBER,     --��ѵ�γ�id
   "TechnologicalProcessId" NUMBER, --��ѵ��Աid
   constraint PK_TRAININGOFPERSONNEL primary key ("id")
);

/* ����������  ��ʼ                                               */
/* 
alter table t_ActivitiesUser
   add constraint FK_ACTIVITI_REFERENCE_TECHNOLO foreign key ("Userid")
      references t_TechnologicalProcess ("id");

alter table t_ActivitiesUser
   add constraint FK_ACTIVITI_REFERENCE_ACTIVITI foreign key ("ActivitiesId")
      references t_Activities ("id");

alter table t_Certificates
   add constraint FK_CERTIFIC_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_Express
   add constraint FK_EXPRESS_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_FileInfo
   add constraint FK_FILEINFO_REFERENCE_TECHNOLO foreign key ("id")
      references t_TechnologicalProcess ("id");

alter table t_FinancialAffairs
   add constraint FK_FINANCIA_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_Flight
   add constraint FK_FLIGHT_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_Hotel
   add constraint FK_HOTEL_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_PhysicalExamination
   add constraint FK_PHYSICAL_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessID")
      references t_TechnologicalProcess ("id");

alter table t_trainingOfPersonnel
   add constraint FK_TRAINING_REFERENCE_TRAINCOU foreign key ("TrainCourseId")
      references t_TrainCourse ("id");

alter table t_trainingOfPersonnel
   add constraint FK_TRAINING_REFERENCE_TECHNOLO foreign key ("TechnologicalProcessId")
      references t_TechnologicalProcess ("id");
	   */
/* ����������  ����                                               */

/* �� ����                                               */

create sequence SEQUENCE_t_ActivitiesUser
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_ActivitiesUser
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_Certificates
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_Express
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_FileInfo
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_FinancialAffairs
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_Flight
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_Hotel
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_PhysicalExamination
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_T_Personnel
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_T_Personnel_Record
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_TechnologicalProcess
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_TrainCourse
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;

create sequence SEQUENCE_t_trainingOfPersonnel
start with 1
 maxvalue 999999999
 minvalue 1
 cache 10
order;
