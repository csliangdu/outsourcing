prompt PL/SQL Developer import file
prompt Created on 2014��11��8�� by CYY
set feedback off
set define off
prompt Disabling triggers for SYS_AUTHORITIES...
alter table SYS_AUTHORITIES disable all triggers;
prompt Disabling triggers for SYS_ENTERPRISE...
alter table SYS_ENTERPRISE disable all triggers;
prompt Disabling triggers for SYS_MENU...
alter table SYS_MENU disable all triggers;
prompt Disabling triggers for SYS_NOTICE...
alter table SYS_NOTICE disable all triggers;
prompt Disabling triggers for SYS_PARAM...
alter table SYS_PARAM disable all triggers;
prompt Disabling triggers for SYS_RESOURCEINFO...
alter table SYS_RESOURCEINFO disable all triggers;
prompt Disabling triggers for SYS_ROLE...
alter table SYS_ROLE disable all triggers;
prompt Disabling triggers for SYS_ROLE_TO_AUTHORITIES...
alter table SYS_ROLE_TO_AUTHORITIES disable all triggers;
prompt Disabling triggers for SYS_ROLE_TO_MENU...
alter table SYS_ROLE_TO_MENU disable all triggers;
prompt Disabling triggers for SYS_USER...
alter table SYS_USER disable all triggers;
prompt Deleting SYS_USER...
delete from SYS_USER;
commit;
prompt Deleting SYS_ROLE_TO_MENU...
delete from SYS_ROLE_TO_MENU;
commit;
prompt Deleting SYS_ROLE_TO_AUTHORITIES...
delete from SYS_ROLE_TO_AUTHORITIES;
commit;
prompt Deleting SYS_ROLE...
delete from SYS_ROLE;
commit;
prompt Deleting SYS_RESOURCEINFO...
delete from SYS_RESOURCEINFO;
commit;
prompt Deleting SYS_PARAM...
delete from SYS_PARAM;
commit;
prompt Deleting SYS_NOTICE...
delete from SYS_NOTICE;
commit;
prompt Deleting SYS_MENU...
delete from SYS_MENU;
commit;
prompt Deleting SYS_ENTERPRISE...
delete from SYS_ENTERPRISE;
commit;
prompt Deleting SYS_AUTHORITIES...
delete from SYS_AUTHORITIES;
commit;
prompt Loading SYS_AUTHORITIES...
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (1, '����', 0, 'main');
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (2, 'p3p', 0, 'main');
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (3, 'gag', 0, 'main');
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (4, '����3', 0, 'main');
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (5, '����5', 0, 'main');
insert into SYS_AUTHORITIES (id, name, enabled, module)
values (6, '����6', 0, 'main');
commit;
prompt 6 records loaded
prompt Loading SYS_ENTERPRISE...
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (18, '���Թ�˾7', '���Թ�˾71', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (14, '���Թ�˾3', '���Թ�˾3', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (16, '���Թ�˾5', '���Թ�˾5', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (12, '���Թ�˾1', '���Թ�˾1', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (13, '���Թ�˾2', '���Թ�˾2', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (15, '���Թ�˾4', '���Թ�˾4', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (17, '���Թ�˾6', '���Թ�˾6', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (21, '111', '111', '18758084122', 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (1, '���Ի���', '���Ե�ַ', '�绰', 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (4, '������ҵ', '���Ե�ַ', '88888888', 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (5, '���Թ�˾2', '���Թ�˾2', null, 0);
insert into SYS_ENTERPRISE (id, name, address, phonecall, enabled)
values (6, '12', '12', '12', 0);
commit;
prompt 12 records loaded
prompt Loading SYS_MENU...
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (1, 'ϵͳ����', null, 'sysConfig', null, null, '0', 0, null);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (3, '�û��б�', 'home', 'userInfo', 'userInfo.jspa', null, '0', 1, 2);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (4, '��������', 'home', 'param', 'param.jspa', null, '0', 1, 3);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (5, '��ɫ�б�', 'home', 'role', 'role.jspa', null, '0', 1, 4);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (10, '��̹���', 'staffAdmin', 'staff', null, null, '0', 0, null);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (11, '�����', 'staffAdmin', 'activities', 'activities.jspa', null, '0', 10, 1);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (12, '��ѵ����', 'staffAdmin', 'train', 'train.jspa', null, '0', 10, 2);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (20, '���̹���', null, 'workflow', null, null, '0', 0, null);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (21, '�����ְ����', 'workflow', 'induction', 'induction.jspa', null, '0', 20, 1);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (22, '�����Ƹ����', 'workflow', 'recruitment', 'recruitment.jspa', null, '0', 20, 2);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (2, '��ҵ�б�', 'home', 'enterprise', 'enterprise.jspa', null, '0', 1, 1);
insert into SYS_MENU (id, name, namespace, action, url, i18n_key, enabled, parentid, reorder)
values (30, 'ϵͳ����', 'home', 'notice', 'notice.jspa', null, '0', 1, 5);
commit;
prompt 12 records loaded
prompt Loading SYS_NOTICE...
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (3, '����3', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '����3' || chr(9) || '' || chr(9) || '' || chr(13) || '' || chr(10) || '' || chr(9) || '' || chr(9) || '11' || chr(9) || '2' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(13) || '' || chr(10) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (4, '����4', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '����4' || chr(9) || '' || chr(9) || '' || chr(9) || '', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (6, '����6', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '����6' || chr(9) || '' || chr(9) || '', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (1, '����112', 'asdaddddddddddddd', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (2, '����2', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '����2' || chr(9) || '' || chr(9) || '' || chr(9) || '', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYS_NOTICE (id, title, content, userid, createdate, updatedate, enabled)
values (5, '����5', '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '' || chr(9) || '����4' || chr(9) || '' || chr(9) || '', 1, to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 1);
commit;
prompt 6 records loaded
prompt Loading SYS_PARAM...
insert into SYS_PARAM (id, emailservice, emailform, emailusername, emailpassword, emailisauth, emailurlpassword)
values (1, 'smtp.163.com', 'noreplay101@163.com', 'noreplay101', '123qwe!@#', '0', null);
commit;
prompt 1 records loaded
prompt Loading SYS_RESOURCEINFO...
insert into SYS_RESOURCEINFO (id, name, value, type, createtime, updatetime, enabled)
values (1, '��', '1', 'sex', to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYS_RESOURCEINFO (id, name, value, type, createtime, updatetime, enabled)
values (2, 'Ů', '2', 'sex', to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYS_RESOURCEINFO (id, name, value, type, createtime, updatetime, enabled)
values (3, '��ר', '1', 'education', to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
insert into SYS_RESOURCEINFO (id, name, value, type, createtime, updatetime, enabled)
values (4, 'δ֪', '0', 'sex', to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:52', 'dd-mm-yyyy hh24:mi:ss'), 0);
commit;
prompt 4 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (17, '���Խ�ɫ1', '���Խ�ɫ2', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (14, '����1', '����111', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (15, '����2', 'xinzeng2', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (18, '���Խ�ɫ3', '���Խ�ɫ3', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (1, '��������Ա', '��������Ա', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (2, '��ɫ2', '��ɫ21', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (3, '��ɫ3', '��ɫ3', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (4, '��ɫ4', '��ɫ4', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (5, '��ɫ5', '��ɫ5', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (6, '��ɫ6', '��ɫ6', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (7, '��ɫ7', '��ɫ7', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (8, '��ɫ8', '��ɫ8', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (9, '��ɫ9', '��ɫ9', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (10, '��ɫ10', '��ɫ10', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (11, '��ɫ11', '��ɫ11', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (12, '��ɫ12', '��ɫ12', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (13, '��ɫ13', '��ɫ13', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into SYS_ROLE (id, name, describe, createtime, updatetime)
values (16, '����3', '333', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 18 records loaded
prompt Loading SYS_ROLE_TO_AUTHORITIES...
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (2, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (2, 5);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (10, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (10, 2);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (1, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (1, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (14, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (14, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (15, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (4, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (4, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (15, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (17, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (17, 5);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (18, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (18, 4);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (16, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (3, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (13, 1);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (13, 2);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (13, 3);
insert into SYS_ROLE_TO_AUTHORITIES (role_id, authorities_id)
values (7, 1);
commit;
prompt 22 records loaded
prompt Loading SYS_ROLE_TO_MENU...
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 13);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (11, 13);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (12, 13);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 7);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 7);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 7);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (1, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (3, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (4, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (5, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (2, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (30, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (11, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (12, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 1);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 15);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 15);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 17);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 4);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 15);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (11, 17);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (12, 17);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 18);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (11, 18);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (12, 18);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 3);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 3);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 3);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 16);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 16);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 16);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (10, 2);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (11, 2);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (12, 2);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 10);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 10);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 10);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (20, 14);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (21, 14);
insert into SYS_ROLE_TO_MENU (menu_id, role_id)
values (22, 14);
commit;
prompt 43 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (12, 'taozhaoping', '$2a$12$LxMWBqkFI8O2Exem2ozwcepcVq7BrGMM63QTNRDCrdkH9aMS6/6gi', '����ƽ', '0', null, 1, 18, 'taozhaoping@gmail.com', to_date('16-07-2014', 'dd-mm-yyyy'), '1', '112111', '1112312', '18758084122', to_date('24-07-2014', 'dd-mm-yyyy'), '1', '1', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (1, 'admin', '$2a$12$pZ0sTnONlgDsKGBuNSOmM..x3rdRJx69PrqDNrUNX0bSQXX6BODeW', '��������Ա', '0', '0', 1, 1, 'taozhaoping@gmail.com', to_date('21-11-2014', 'dd-mm-yyyy'), '1', '0577-67587398', '2229243612', '18758084122', to_date('01-07-2014', 'dd-mm-yyyy'), '�㽭��ѧ�����רҵ', '1', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), 'E0wJwd0m2BhuaTzrKB0q+A==');
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (17, 'sdfs', '$2a$12$pZ0sTnONlgDsKGBuNSOmM..x3rdRJx69PrqDNrUNX0bSQXX6BODeW', 'sdf', '0', null, 17, 18, 'sdfs@gmail.com', to_date('10-07-2014', 'dd-mm-yyyy'), '0', '33322', null, '18758084122', to_date('03-07-2014', 'dd-mm-yyyy'), null, '0', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (19, '1111', '$2a$12$bSs0znNT8OhRtpNf.4sa2etibrjlCBjdW0nLmHHBWlpynOZz0cGIO', '11113333', '1', null, 17, 18, '2222', null, '0', '1111122', '3333', '22222', null, null, '0', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (15, 'caiyingying', '$2a$12$pZ0sTnONlgDsKGBuNSOmM..x3rdRJx69PrqDNrUNX0bSQXX6BODeW', 'sd', '1', null, 17, 18, 'caiyingying@gmail.com', to_date('10-07-2014', 'dd-mm-yyyy'), '0', null, null, '18758087122', to_date('03-07-2014', 'dd-mm-yyyy'), null, '0', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (16, 'caca', '$2a$12$pZ0sTnONlgDsKGBuNSOmM..x3rdRJx69PrqDNrUNX0bSQXX6BODeW', '1122', '0', null, 17, 18, '1wq@gmail.com', null, '0', '33', null, '18758084122', null, null, '0', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), null);
insert into SYS_USER (id, loginname, userpassword, name, enabled, usertype, role_id, enterprise_id, email, age, sex, phone, qq, mobile_number, entrytime, address, education_background, createtime, updatetime, nonce)
values (18, 'cyy', '$2a$12$pZ0sTnONlgDsKGBuNSOmM..x3rdRJx69PrqDNrUNX0bSQXX6BODeW', '��ӭӭ', '0', null, 1, 18, 'caiyingying234@163.com', to_date('17-07-2014', 'dd-mm-yyyy'), '1', '01088888888', '88888888', '18888888888', to_date('17-07-2014', 'dd-mm-yyyy'), 'aaaa', '0', to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-11-2014 19:20:53', 'dd-mm-yyyy hh24:mi:ss'), 'gVBQhKmwm8mDIxmmlXWJMw==');
commit;
prompt 7 records loaded
prompt Enabling triggers for SYS_AUTHORITIES...
alter table SYS_AUTHORITIES enable all triggers;
prompt Enabling triggers for SYS_ENTERPRISE...
alter table SYS_ENTERPRISE enable all triggers;
prompt Enabling triggers for SYS_MENU...
alter table SYS_MENU enable all triggers;
prompt Enabling triggers for SYS_NOTICE...
alter table SYS_NOTICE enable all triggers;
prompt Enabling triggers for SYS_PARAM...
alter table SYS_PARAM enable all triggers;
prompt Enabling triggers for SYS_RESOURCEINFO...
alter table SYS_RESOURCEINFO enable all triggers;
prompt Enabling triggers for SYS_ROLE...
alter table SYS_ROLE enable all triggers;
prompt Enabling triggers for SYS_ROLE_TO_AUTHORITIES...
alter table SYS_ROLE_TO_AUTHORITIES enable all triggers;
prompt Enabling triggers for SYS_ROLE_TO_MENU...
alter table SYS_ROLE_TO_MENU enable all triggers;
prompt Enabling triggers for SYS_USER...
alter table SYS_USER enable all triggers;
set feedback on
set define on
prompt Done.
