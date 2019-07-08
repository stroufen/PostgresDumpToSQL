
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.17
-- Dumped by pg_dump version 9.4.17
-- Started on 2019-06-28 10:01:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 24 (class 2615 OID 824501)
-- Name: harmonydata; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA harmonydata;


ALTER SCHEMA harmonydata OWNER TO postgres;

--
-- TOC entry 1576 (class 1247 OID 824801)
-- Name: type_800xa_alm_inh_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_800xa_alm_inh_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	alm_inh_tag_guid uuid,
	alm_inh_tag character varying(64)
);


ALTER TYPE harmonydata.type_800xa_alm_inh_ch OWNER TO postgres;

--
-- TOC entry 2934 (class 1247 OID 1704011)
-- Name: type_800xa_tag_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_800xa_tag_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	tag_desc character varying(128),
	tag_type_ndx smallint,
	tag_type character varying(16),
	exchange_indicator character varying(1),
	project_flag smallint,
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	loop smallint,
	node smallint,
	module smallint,
	block integer,
	cld_guid uuid,
	cld_name character varying(255),
	cld_obj_id integer,
	cld_obj_subindex integer,
	fc_num smallint,
	eng_units_ndx smallint,
	eng_units_desc character varying(255),
	value_zero real,
	span real,
	high_alm real,
	low_alm real,
	sp_value_zero real,
	sp_span real,
	sp_eng_units_ndx smallint,
	sp_eng_units_desc character varying(255),
	dev_alm_point real,
	alm_state_ndx smallint,
	cfc_super_tag xml,
	co_eng_units_ndx smallint,
	co_eng_units_desc character varying(255),
	co_num_dec_pl smallint,
	co_span real,
	co_value_zero real,
	num_dec_places smallint,
	sp_num_dec_pl smallint,
	pid_blk integer,
	alm_inh_tag character varying(64),
	alm_inh_tag_guid uuid,
	alm_inh_tag_atom character varying(64),
	alm_inh_state_id smallint,
	alm_inh_state character varying(2),
	zero_state_ndx smallint,
	zero_state_desc character varying(255),
	one_state_ndx smallint,
	one_state_desc character varying(255),
	two_state_ndx smallint,
	two_state_desc character varying(255),
	three_state_ndx smallint,
	three_state_desc character varying(255),
	feedbk10_state_ndx smallint,
	feedbk10_state_desc character varying(255),
	feedbk11_state_ndx smallint,
	feedbk11_state_desc character varying(255),
	feedbk20_state_ndx smallint,
	feedbk20_state_desc character varying(255),
	feedbk21_state_ndx smallint,
	feedbk21_state_desc character varying(255),
	feedbk30_state_ndx smallint,
	feedbk30_state_desc character varying(255),
	feedbk31_state_ndx smallint,
	feedbk31_state_desc character varying(255),
	feedbk40_state_ndx smallint,
	feedbk40_state_desc character varying(255),
	feedbk41_state_ndx smallint,
	feedbk41_state_desc character varying(255),
	permv10_state_ndx smallint,
	permv10_state_desc character varying(255),
	permv11_state_ndx smallint,
	permv11_state_desc character varying(255),
	permv20_state_ndx smallint,
	permv20_state_desc character varying(255),
	permv21_state_ndx smallint,
	permv21_state_desc character varying(255),
	txt_set smallint,
	ctrl_enbl character varying(1),
	txt_str_lnth smallint,
	handshaking character varying(1),
	fast_rpt_max_time real,
	slow_rpt_max_time real,
	area_guid uuid,
	area_name character varying(32),
	equipment_guid uuid,
	equipment_name character varying(32),
	unit_guid uuid,
	unit_name character varying(32),
	security_group_guid uuid,
	security_group_name character varying(32),
	user_text character varying(64),
	user_index character varying(38),
	alm_ack_trnsm character varying(1),
	alm_sil_trnsm character varying(1),
	alm_ack_bcast character varying(1),
	ack_req_alm character varying(1),
	ack_req_bad_qual character varying(1),
	ack_req_com_err character varying(1),
	ack_req_high_alm character varying(1),
	ack_req_high_devi_alm character varying(1),
	ack_req_high_rate_chg_alm character varying(1),
	ack_req_high2_alm character varying(1),
	ack_req_high3_alm character varying(1),
	ack_req_low_alm character varying(1),
	ack_req_low_devi_alm character varying(1),
	ack_req_low_rate_chg_alm character varying(1),
	ack_req_low2_alm character varying(1),
	ack_req_low3_alm character varying(1),
	ack_req_mod_err character varying(1),
	ack_req_offline character varying(1),
	ack_req_out character varying(1),
	ack_req_state_chg character varying(1),
	ack_req_sys_err character varying(1),
	ack_req_sys_fault character varying(1),
	ack_req_usr_def_fault character varying(1),
	ack_req_usr_def_msg character varying(1),
	alm_comnt_sys_fault_ndx integer,
	alm_comnt_sys_fault character varying(255),
	alm_comnt_usr_def_fault_ndx integer,
	alm_comnt_usr_def_fault character varying(255),
	alm_comnt_usr_def_msg_ndx integer,
	alm_comnt_usr_def_msg character varying(255),
	alm_comnt_alm_ndx integer,
	alm_comnt_alm character varying(255),
	alm_comnt_rtn_norm_ndx integer,
	alm_comnt_rtn_norm character varying(255),
	alm_comnt_high_alm_ndx integer,
	alm_comnt_high_alm character varying(255),
	alm_comnt_low_alm_ndx integer,
	alm_comnt_low_alm character varying(255),
	alm_comnt_high2_alm_ndx integer,
	alm_comnt_high2_alm character varying(255),
	alm_comnt_low2_alm_ndx integer,
	alm_comnt_low2_alm character varying(255),
	alm_comnt_high3_alm_ndx integer,
	alm_comnt_high3_alm character varying(255),
	alm_comnt_low3_alm_ndx integer,
	alm_comnt_low3_alm character varying(255),
	alm_comnt_high_devi_alm_ndx integer,
	alm_comnt_high_devi_alm character varying(255),
	alm_comnt_low_devi_alm_ndx integer,
	alm_comnt_low_devi_alm character varying(255),
	alm_comnt_high_rate_chg_alm_ndx integer,
	alm_comnt_high_rate_chg_alm character varying(255),
	alm_comnt_low_rate_chg_alm_ndx integer,
	alm_comnt_low_rate_chg_alm character varying(255),
	alm_comnt_alm_rtn_ndx integer,
	alm_comnt_alm_rtn character varying(255),
	alm_comnt_bad_qual_ndx integer,
	alm_comnt_bad_qual character varying(255),
	alm_comnt_com_err_ndx integer,
	alm_comnt_com_err character varying(255),
	alm_comnt_com_err_rtn_ndx integer,
	alm_comnt_com_err_rtn character varying(255),
	alm_comnt_high_alm_rtn_ndx integer,
	alm_comnt_high_alm_rtn character varying(255),
	alm_comnt_high_devi_alm_rtn_ndx integer,
	alm_comnt_high_devi_alm_rtn character varying(255),
	alm_comnt_high_rate_chg_alm_rtn_ndx integer,
	alm_comnt_high_rate_chg_alm_rtn character varying(255),
	alm_comnt_high2_alm_rtn_ndx integer,
	alm_comnt_high2_alm_rtn character varying(255),
	alm_comnt_high3_alm_rtn_ndx integer,
	alm_comnt_high3_alm_rtn character varying(255),
	alm_comnt_low_alm_rtn_ndx integer,
	alm_comnt_low_alm_rtn character varying(255),
	alm_comnt_low_devi_alm_rtn_ndx integer,
	alm_comnt_low_devi_alm_rtn character varying(255),
	alm_comnt_low_rate_chg_alm_rtn_ndx integer,
	alm_comnt_low_rate_chg_alm_rtn character varying(255),
	alm_comnt_low2_alm_rtn_ndx integer,
	alm_comnt_low2_alm_rtn character varying(255),
	alm_comnt_low3_alm_rtn_ndx integer,
	alm_comnt_low3_alm_rtn character varying(255),
	alm_comnt_mod_err_ndx integer,
	alm_comnt_mod_err character varying(255),
	alm_comnt_mod_err_rtn_ndx integer,
	alm_comnt_mod_err_rtn character varying(255),
	alm_comnt_offline_ndx integer,
	alm_comnt_offline character varying(255),
	alm_comnt_offline_rtn_ndx integer,
	alm_comnt_offline_rtn character varying(255),
	alm_comnt_out_ndx integer,
	alm_comnt_out character varying(255),
	alm_comnt_out_rtn_ndx integer,
	alm_comnt_out_rtn character varying(255),
	alm_comnt_state_chg_rtn_ndx integer,
	alm_comnt_state_chg_rtn character varying(255),
	alm_comnt_state_chg_ndx integer,
	alm_comnt_state_chg character varying(255),
	alm_comnt_sys_err_ndx integer,
	alm_comnt_sys_err character varying(255),
	alm_comnt_sys_err_rtn_ndx integer,
	alm_comnt_sys_err_rtn character varying(255),
	alm_comnt_sys_fault_rtn_ndx integer,
	alm_comnt_sys_fault_rtn character varying(255),
	alm_comnt_usr_def_fault_rtn_ndx integer,
	alm_comnt_usr_def_fault_rtn character varying(255),
	alm_comnt_usr_def_msg_rtn_ndx integer,
	alm_comnt_usr_def_msg_rtn character varying(255),
	alm_en_alm character varying(1),
	alm_en_bad_qual character varying(1),
	alm_en_com_err character varying(1),
	alm_en_high_alm character varying(1),
	alm_en_high_devi_alm character varying(1),
	alm_en_high_rate_chg_alm character varying(1),
	alm_en_high2_alm character varying(1),
	alm_en_high3_alm character varying(1),
	alm_en_low_alm character varying(1),
	alm_en_low_devi_alm character varying(1),
	alm_en_low_rate_chg_alm character varying(1),
	alm_en_low2_alm character varying(1),
	alm_en_low3_alm character varying(1),
	alm_en_mod_err character varying(1),
	alm_en_offline character varying(1),
	alm_en_out character varying(1),
	alm_en_state_chg character varying(1),
	alm_en_sys_err character varying(1),
	alm_en_sys_fault character varying(1),
	alm_en_usr_def_fault character varying(1),
	alm_en_usr_def_msg character varying(1),
	alm_prty_alm smallint,
	alm_prty_rtn_norm smallint,
	alm_prty_badqual smallint,
	alm_prty_high_alm smallint,
	alm_prty_low_alm smallint,
	alm_prty_high2_alm smallint,
	alm_prty_low2_alm smallint,
	alm_prty_high3_alm smallint,
	alm_prty_low3_alm smallint,
	alm_prty_high_devi_alm smallint,
	alm_prty_low_devi_alm smallint,
	alm_prty_high_rate_chg_alm smallint,
	alm_prty_low_rate_chg_alm smallint,
	alm_prty_sys_fault smallint,
	alm_prty_usr_def_fault smallint,
	alm_prty_usr_def_msg smallint,
	alm_prty_alm_rtn smallint,
	alm_prty_com_err smallint,
	alm_prty_com_err_rtn smallint,
	alm_prty_high_alm_rtn smallint,
	alm_prty_high_devi_alm_rtn smallint,
	alm_prty_high_rate_chg_alm_rtn smallint,
	alm_prty_high2_alm_rtn smallint,
	alm_prty_high3_alm_rtn smallint,
	alm_prty_low_alm_rtn smallint,
	alm_prty_low_devi_alm_rtn smallint,
	alm_prty_low_rate_chg_alm_rtn smallint,
	alm_prty_low2_alm_rtn smallint,
	alm_prty_low3_alm_rtn smallint,
	alm_prty_mod_err smallint,
	alm_prty_mod_err_rtn smallint,
	alm_prty_offline smallint,
	alm_prty_offline_rtn smallint,
	alm_prty_out smallint,
	alm_prty_out_rtn smallint,
	alm_prty_state_chg smallint,
	alm_prty_state_chg_rtn smallint,
	alm_prty_sys_err smallint,
	alm_prty_sys_err_rtn smallint,
	alm_prty_sys_fault_rtn smallint,
	alm_prty_usr_def_fault_rtn smallint,
	alm_prty_usr_def_msg_rtn smallint,
	enable_alm character varying(1),
	enable_bad_qual character varying(1),
	enable_com_err character varying(1),
	enable_high_alm character varying(1),
	enable_high_devi_alm character varying(1),
	enable_high_rate_chg_alm character varying(1),
	enable_high2_alm character varying(1),
	enable_high3_alm character varying(1),
	enable_low_alm character varying(1),
	enable_low_devi_alm character varying(1),
	enable_low_rate_chg_alm character varying(1),
	enable_low2_alm character varying(1),
	enable_low3_alm character varying(1),
	enable_mod_err character varying(1),
	enable_offline character varying(1),
	enable_out character varying(1),
	enable_state_chg character varying(1),
	enable_sys_err character varying(1),
	enable_sys_fault character varying(1),
	enable_usr_def_fault character varying(1),
	enable_usr_def_msg character varying(1),
	one_state_state_chg_ndx smallint,
	one_state_state_chg character varying(255),
	zero_state_state_chg_ndx smallint,
	zero_state_state_chg character varying(255),
	one_state_alm_ndx smallint,
	one_state_alm_desc character varying(255),
	one_state_bad_qual_ndx smallint,
	one_state_bad_qual_desc character varying(255),
	one_state_com_err_ndx smallint,
	one_state_com_err_desc character varying(255),
	one_state_high_alm_ndx smallint,
	one_state_high_alm_desc character varying(255),
	one_state_high_devi_alm_ndx smallint,
	one_state_high_devi_alm_desc character varying(255),
	one_state_high_rate_chg_alm_ndx smallint,
	one_state_high_rate_chg_alm_desc character varying(255),
	one_state_high2_alm_ndx smallint,
	one_state_high2_alm_desc character varying(255),
	one_state_high3_alm_ndx smallint,
	one_state_high3_alm_desc character varying(255),
	one_state_low_alm_ndx smallint,
	one_state_low_alm_desc character varying(255),
	one_state_low_devi_alm_ndx smallint,
	one_state_low_devi_alm_desc character varying(255),
	one_state_low_rate_chg_alm_ndx smallint,
	one_state_low_rate_chg_alm_desc character varying(255),
	one_state_low2_alm_ndx smallint,
	one_state_low2_alm_desc character varying(255),
	one_state_low3_alm_ndx smallint,
	one_state_low3_alm_desc character varying(255),
	one_state_mod_err_ndx smallint,
	one_state_mod_err_desc character varying(255),
	one_state_offline_ndx smallint,
	one_state_offline_desc character varying(255),
	one_state_sys_err_ndx smallint,
	one_state_sys_err_desc character varying(255),
	one_state_sys_fault_ndx smallint,
	one_state_sys_fault_desc character varying(255),
	one_state_usr_def_fault_ndx smallint,
	one_state_usr_def_fault_desc character varying(255),
	one_state_usr_def_msg_ndx smallint,
	one_state_usr_def_msg_desc character varying(255),
	zero_state_alm_ndx smallint,
	zero_state_alm_desc character varying(255),
	zero_state_bad_qual_ndx smallint,
	zero_state_bad_qual_desc character varying(255),
	zero_state_com_err_ndx smallint,
	zero_state_com_err_desc character varying(255),
	zero_state_high_alm_ndx smallint,
	zero_state_high_alm_desc character varying(255),
	zero_state_high_devi_alm_ndx smallint,
	zero_state_high_devi_alm_desc character varying(255),
	zero_state_high_rate_chg_alm_ndx smallint,
	zero_state_high_rate_chg_alm_desc character varying(255),
	zero_state_high2_alm_ndx smallint,
	zero_state_high2_alm_desc character varying(255),
	zero_state_high3_alm_ndx smallint,
	zero_state_high3_alm_desc character varying(255),
	zero_state_low_alm_ndx smallint,
	zero_state_low_alm_desc character varying(255),
	zero_state_low_devi_alm_ndx smallint,
	zero_state_low_devi_alm_desc character varying(255),
	zero_state_low_rate_chg_alm_ndx smallint,
	zero_state_low_rate_chg_alm_desc character varying(255),
	zero_state_low2_alm_ndx smallint,
	zero_state_low2_alm_desc character varying(255),
	zero_state_low3_alm_ndx smallint,
	zero_state_low3_alm_desc character varying(255),
	zero_state_mod_err_ndx smallint,
	zero_state_mod_err_desc character varying(255),
	zero_state_offline_ndx smallint,
	zero_state_offline_desc character varying(255),
	zero_state_sys_err_ndx smallint,
	zero_state_sys_err_desc character varying(255),
	zero_state_sys_fault_ndx smallint,
	zero_state_sys_fault_desc character varying(255),
	zero_state_usr_def_fault_ndx smallint,
	zero_state_usr_def_fault_desc character varying(255),
	zero_state_usr_def_msg_ndx smallint,
	zero_state_usr_def_msg_desc character varying(255),
	server_id uuid
);


ALTER TYPE harmonydata.type_800xa_tag_ch OWNER TO postgres;

--
-- TOC entry 1585 (class 1247 OID 824810)
-- Name: type_eud_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_eud_ch AS (
	eud_guid uuid,
	eud_ndx smallint,
	eng_units_desc character varying(255),
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	lang_id smallint,
	server_type_id uuid
);


ALTER TYPE harmonydata.type_eud_ch OWNER TO postgres;

--
-- TOC entry 1588 (class 1247 OID 824813)
-- Name: type_tag_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_tag_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	tag_desc character varying(128),
	tag_type_ndx smallint,
	tag_type character varying(16),
	exchange_indicator character varying(1),
	project_flag smallint,
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	loop smallint,
	node smallint,
	module smallint,
	block integer,
	cld_guid uuid,
	cld_name character varying(255),
	cld_obj_id integer,
	cld_obj_subindex integer,
	fc_num smallint,
	eng_units_ndx smallint,
	eng_units_desc character varying(255),
	value_zero real,
	span real,
	high_alm real,
	low_alm real,
	sp_value_zero real,
	sp_span real,
	sp_eng_units_ndx smallint,
	sp_eng_units_desc character varying(255),
	dev_alm_point real,
	alm_state_ndx smallint,
	cfc_super_tag xml
);


ALTER TYPE harmonydata.type_tag_ch OWNER TO postgres;

--
-- TOC entry 1065 (class 1255 OID 824822)
-- Name: DB MAINT Remove Orphan Irefs(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."DB MAINT Remove Orphan Irefs"() RETURNS void
    LANGUAGE sql
    AS $$
    DELETE
    FROM harmonydata.xr_iref
    WHERE NOT EXISTS (SELECT * FROM harmonydata.xr_base WHERE xr_base.xrefguid=xr_iref.irefguid);
$$;


ALTER FUNCTION harmonydata."DB MAINT Remove Orphan Irefs"() OWNER TO postgres;

--
-- TOC entry 1066 (class 1255 OID 824823)
-- Name: DB MAINT Remove Orphan Orefs(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."DB MAINT Remove Orphan Orefs"() RETURNS void
    LANGUAGE sql
    AS $$
    DELETE
    FROM harmonydata.xr_oref
    WHERE NOT EXISTS (SELECT * FROM harmonydata.xr_base WHERE xr_base.xrefguid=xr_oref.orefguid);
$$;


ALTER FUNCTION harmonydata."DB MAINT Remove Orphan Orefs"() OWNER TO postgres;

--
-- TOC entry 1067 (class 1255 OID 824824)
-- Name: Delete A Console(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Console"(containerid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.pj_console
    WHERE pj_console.containerid= $1;
$_$;


ALTER FUNCTION harmonydata."Delete A Console"(containerid_p integer) OWNER TO postgres;

--
-- TOC entry 1068 (class 1255 OID 824825)
-- Name: Delete A Container(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Container"(containerid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_container
    WHERE ex_container.containerid=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A Container"(containerid_p integer) OWNER TO postgres;

--
-- TOC entry 1069 (class 1255 OID 824826)
-- Name: Delete A ControlLogic Template(character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A ControlLogic Template"(name_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_controllogictemplate
    WHERE ex_controllogictemplate.name=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A ControlLogic Template"(name_p character) OWNER TO postgres;

--
-- TOC entry 1070 (class 1255 OID 824827)
-- Name: Delete A ControlLogic in Module(integer, integer, character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A ControlLogic in Module"(containerid_p integer, module_p integer, name_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.pj_controllogic
    WHERE pj_controllogic.module=$2 AND pj_controllogic.pcucontainerid =$1 AND pj_controllogic.name=$3;
$_$;


ALTER FUNCTION harmonydata."Delete A ControlLogic in Module"(containerid_p integer, module_p integer, name_p character) OWNER TO postgres;

--
-- TOC entry 1071 (class 1255 OID 824828)
-- Name: Delete A Firmware File(character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Firmware File"(filename_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_allfirmwarefiles
    WHERE ex_allfirmwarefiles.filename=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A Firmware File"(filename_p character) OWNER TO postgres;

--
-- TOC entry 1072 (class 1255 OID 824829)
-- Name: Delete A FunctionCodeDefinition(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A FunctionCodeDefinition"(number_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_functioncodedefinition
    WHERE ex_functioncodedefinition.fcnumber=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A FunctionCodeDefinition"(number_p integer) OWNER TO postgres;

--
-- TOC entry 1073 (class 1255 OID 824830)
-- Name: Delete A INFI90Console Definition(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A INFI90Console Definition"(softwarerevision_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_infi90consoledefinition
    WHERE softwarerevision =$1;
$_$;


ALTER FUNCTION harmonydata."Delete A INFI90Console Definition"(softwarerevision_p integer) OWNER TO postgres;

--
-- TOC entry 1074 (class 1255 OID 824831)
-- Name: Delete A Link To UserDocument(integer, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Link To UserDocument"(id_p integer, parentid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_userdocumenttocontainer
    WHERE ex_userdocumenttocontainer.id=$1 AND ex_userdocumenttocontainer.parentid=$2;
$_$;


ALTER FUNCTION harmonydata."Delete A Link To UserDocument"(id_p integer, parentid_p integer) OWNER TO postgres;

--
-- TOC entry 1075 (class 1255 OID 824832)
-- Name: Delete A Macro(character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Macro"(name_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_macro
    WHERE ex_macro.name=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A Macro"(name_p character) OWNER TO postgres;

--
-- TOC entry 1076 (class 1255 OID 824833)
-- Name: Delete A Revision(uuid, character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A Revision"(parentguid_p uuid, name_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.pj_revision
    WHERE pj_revision.parentguid=$1 AND pj_revision.name=$2;
$_$;


ALTER FUNCTION harmonydata."Delete A Revision"(parentguid_p uuid, name_p character) OWNER TO postgres;

--
-- TOC entry 1077 (class 1255 OID 824834)
-- Name: Delete A SymbolDefinition(character, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A SymbolDefinition"(name_p character, type_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_symbol
    WHERE ex_symbol.name=$1 AND ex_symbol.type=$2;
$_$;


ALTER FUNCTION harmonydata."Delete A SymbolDefinition"(name_p character, type_p integer) OWNER TO postgres;

--
-- TOC entry 1078 (class 1255 OID 824835)
-- Name: Delete A UserDocument(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete A UserDocument"(linktableid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_userdocument
    WHERE ex_userdocument.linktableid=$1;
$_$;


ALTER FUNCTION harmonydata."Delete A UserDocument"(linktableid_p integer) OWNER TO postgres;

--
-- TOC entry 1079 (class 1255 OID 824836)
-- Name: Delete ObjectToFolder(uuid, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Delete ObjectToFolder"(objectguid_p uuid, parentid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.ex_objecttofolder
    WHERE ex_objecttofolder.objectguid=$1 AND ex_objecttofolder.parentid=$2;
$_$;


ALTER FUNCTION harmonydata."Delete ObjectToFolder"(objectguid_p uuid, parentid_p integer) OWNER TO postgres;

--
-- TOC entry 1080 (class 1255 OID 824837)
-- Name: EV Get Event Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."EV Get Event Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata.ev_eventbase;
$$;


ALTER FUNCTION harmonydata."EV Get Event Count"() OWNER TO postgres;

--
-- TOC entry 1081 (class 1255 OID 824838)
-- Name: FD Delete A Hart(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."FD Delete A Hart"(objectguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.fd_hartdevice
    WHERE fd_hartdevice.objectguid=$1;
$_$;


ALTER FUNCTION harmonydata."FD Delete A Hart"(objectguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1082 (class 1255 OID 824839)
-- Name: FD Delete A Master(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."FD Delete A Master"(objectguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.fd_master
    WHERE fd_master.objectguid=$1;
$_$;


ALTER FUNCTION harmonydata."FD Delete A Master"(objectguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1083 (class 1255 OID 824840)
-- Name: FD Delete A Module(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."FD Delete A Module"(objectguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.fd_module
    WHERE fd_module.objectguid=$1;
$_$;


ALTER FUNCTION harmonydata."FD Delete A Module"(objectguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1084 (class 1255 OID 824841)
-- Name: FD Delete A Slave(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."FD Delete A Slave"(objectguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    DELETE
    FROM harmonydata.fd_slave
    WHERE fd_slave.objectguid=$1;
$_$;


ALTER FUNCTION harmonydata."FD Delete A Slave"(objectguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1085 (class 1255 OID 824842)
-- Name: FD Get All CLDs in Master(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."FD Get All CLDs in Master"(masterguid_p uuid) RETURNS TABLE(module integer, name character varying, objectguid uuid, filename character varying, revision character varying, revisiontimestamp timestamp without time zone, description character varying, linkstatus integer, templateguid uuid, templatename character varying, templatetimestamp timestamp without time zone, templaterevision character varying, logicalorder integer, pcucontainerid integer, securitydescriptor bytea, invalid boolean, linkstate boolean, lockstate boolean, linkstatemodified boolean, allowlink boolean, documents bytea, properties bytea)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT pj_controllogic.*
    FROM harmonydata.pj_controllogic
    WHERE EXISTS
    (
        SELECT fd_master.objectguid
        FROM harmonydata.fd_master
        WHERE fd_master.objectguid=$1 AND fd_master.controllogicguid=pj_controllogic.objectguid
    )
    OR EXISTS
    (
        SELECT fd_slave.objectguid
        FROM harmonydata.fd_slave
        WHERE fd_slave.masterguid=$1 AND fd_slave.controllogicguid=pj_controllogic.objectguid
    )
    OR EXISTS
    (
        SELECT fd_module.objectguid
        FROM harmonydata.fd_module, harmonydata.fd_slave
        WHERE fd_slave.masterguid=$1 AND fd_module.slaveguid=fd_slave.objectguid AND fd_module.controllogicguid=pj_controllogic.objectguid
    );
$_$;


ALTER FUNCTION harmonydata."FD Get All CLDs in Master"(masterguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1086 (class 1255 OID 824843)
-- Name: Get Non-SEM01 PCUs in Loop(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Get Non-SEM01 PCUs in Loop"(loop_p integer) RETURNS TABLE(loop integer, node integer, containerid integer, objectguid uuid, name character varying, securitydescriptor bytea, pcutype smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT pj_node.loop,pj_node.node,pj_node.containerid,pj_node.objectguid,pj_pcu.name,pj_pcu.securitydescriptor,pj_pcu.pcutype
    FROM harmonydata.pj_node,harmonydata.pj_pcu
    WHERE pj_node.loop=$1 AND pj_node.containerid=pj_pcu.containerid
    AND NOT EXISTS
    (
        SELECT * FROM harmonydata.pj_module
        WHERE pj_module.pcucontainerid=pj_pcu.containerid AND pj_module.type='SEM01'
    );
$_$;


ALTER FUNCTION harmonydata."Get Non-SEM01 PCUs in Loop"(loop_p integer) OWNER TO postgres;

--
-- TOC entry 1087 (class 1255 OID 824844)
-- Name: Get SEM01 PCUs in Loop(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Get SEM01 PCUs in Loop"(loop_p integer) RETURNS TABLE(loop integer, node integer, containerid integer, objectguid uuid, name character varying, securitydescriptor bytea, pcutype smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT pj_node.loop,pj_node.node,pj_node.containerid,pj_node.objectguid,pj_pcu.name,pj_pcu.securitydescriptor,pj_pcu.pcutype
    FROM harmonydata.pj_node,harmonydata.pj_pcu
    WHERE pj_node.containerid=pj_pcu.containerid AND pj_node.loop=$1
    AND EXISTS
    (
        SELECT * FROM harmonydata.pj_module
        WHERE pj_module.pcucontainerid=pj_pcu.containerid AND pj_module.type='SEM01'
    );
$_$;


ALTER FUNCTION harmonydata."Get SEM01 PCUs in Loop"(loop_p integer) OWNER TO postgres;

--
-- TOC entry 1088 (class 1255 OID 824845)
-- Name: Insert ObjectToFolder(uuid, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Insert ObjectToFolder"(objectguid_p uuid, parentid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    INSERT INTO harmonydata.ex_objecttofolder ( objectguid,parentid )
    SELECT $1,$2;
$_$;


ALTER FUNCTION harmonydata."Insert ObjectToFolder"(objectguid_p uuid, parentid_p integer) OWNER TO postgres;

--
-- TOC entry 1089 (class 1255 OID 824846)
-- Name: Insert UserDocumentToContainer(integer, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Insert UserDocumentToContainer"(id_p integer, parentid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    INSERT INTO harmonydata.ex_userdocumenttocontainer ( id,parentid )
    SELECT $1,$2;
$_$;


ALTER FUNCTION harmonydata."Insert UserDocumentToContainer"(id_p integer, parentid_p integer) OWNER TO postgres;

--
-- TOC entry 1090 (class 1255 OID 824847)
-- Name: PJ Get CLD Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."PJ Get CLD Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata."DB INT Get All CLD Names";
$$;


ALTER FUNCTION harmonydata."PJ Get CLD Count"() OWNER TO postgres;

--
-- TOC entry 1091 (class 1255 OID 824848)
-- Name: Rename FunctionCodeDefinition(character, integer, character, character); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Rename FunctionCodeDefinition"(name_p character, number_p integer, fcbfileforclif_p character, dtfileforclif_p character) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.ex_functioncodedefinition SET name=$1,fcbfileforclif=$3,dtfileforclif=$4
    WHERE ex_functioncodedefinition.fcnumber=$2;
$_$;


ALTER FUNCTION harmonydata."Rename FunctionCodeDefinition"(name_p character, number_p integer, fcbfileforclif_p character, dtfileforclif_p character) OWNER TO postgres;

--
-- TOC entry 1092 (class 1255 OID 824849)
-- Name: Rename UserDocument(character, character, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Rename UserDocument"(name_p character, fullname_p character, linktableid_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.ex_userdocument SET name=$1,fullname=$2
    WHERE ex_userdocument.linktableid=$3;
$_$;


ALTER FUNCTION harmonydata."Rename UserDocument"(name_p character, fullname_p character, linktableid_p integer) OWNER TO postgres;

--
-- TOC entry 1093 (class 1255 OID 824850)
-- Name: TD Get Global Tag Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD Get Global Tag Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata."TD Get All Tags (Global)" WHERE exchangeindicator='P' AND markedtodelete='N';
$$;


ALTER FUNCTION harmonydata."TD Get Global Tag Count"() OWNER TO postgres;

--
-- TOC entry 1094 (class 1255 OID 824851)
-- Name: TD Get Tag Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD Get Tag Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata.td_base WHERE exchangeindicator='P' AND markedtodelete='N';
$$;


ALTER FUNCTION harmonydata."TD Get Tag Count"() OWNER TO postgres;

--
-- TOC entry 1095 (class 1255 OID 824852)
-- Name: TD Get Tag GUID from Tag Name(text); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD Get Tag GUID from Tag Name"(tagname_p text) RETURNS SETOF uuid
    LANGUAGE sql IMMUTABLE
    AS $_$
SELECT tagguid
FROM harmonydata.td_base
WHERE td_base.tagname=$1;
$_$;


ALTER FUNCTION harmonydata."TD Get Tag GUID from Tag Name"(tagname_p text) OWNER TO postgres;

--
-- TOC entry 1096 (class 1255 OID 824853)
-- Name: TD Get Tag Name from Tag GUID(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD Get Tag Name from Tag GUID"(tagguid_p uuid) RETURNS SETOF text
    LANGUAGE sql IMMUTABLE
    AS $_$
SELECT tagname
FROM harmonydata.td_base
WHERE td_base.tagguid=$1;
$_$;


ALTER FUNCTION harmonydata."TD Get Tag Name from Tag GUID"(tagguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1097 (class 1255 OID 824854)
-- Name: TD INT Delete Tag List References from PJ_INFI90Console(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Delete Tag List References from PJ_INFI90Console"(taglistguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.pj_infi90console SET taglist=NULL
    WHERE pj_infi90console.taglist=$1;
$_$;


ALTER FUNCTION harmonydata."TD INT Delete Tag List References from PJ_INFI90Console"(taglistguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1098 (class 1255 OID 824855)
-- Name: TD INT Get Export Fields By Struc Type(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Export Fields By Struc Type"(expstructype_p integer) RETURNS TABLE(exportfieldndx smallint, fieldname character varying, fieldtype character varying, fieldwidth smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT domain_exportfields.exportfieldndx,domain_externalfieldinfo.fieldname,domain_externalfieldinfo.fieldtype,domain_externalfieldinfo.fieldwidth
    FROM harmonydata.domain_exportstructuretype JOIN (harmonydata.domain_exportfields JOIN harmonydata.domain_externalfieldinfo ON domain_exportfields.exportfieldndx=domain_externalfieldinfo.fieldndx) ON domain_exportstructuretype.exportstructuretypendx=domain_exportfields.exportstructuretypendx
    WHERE domain_exportstructuretype.exportstructuretypendx=$1
    ORDER BY domain_exportfields.fieldorderspecifier NULLS FIRST;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Export Fields By Struc Type"(expstructype_p integer) OWNER TO postgres;

--
-- TOC entry 1099 (class 1255 OID 824856)
-- Name: TD INT Get Import Fields By Data Type(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Import Fields By Data Type"(impstructype_p integer) RETURNS TABLE(importfieldname character varying, fieldndx smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT domain_fieldinfo.atomname AS importfieldname,domain_fieldinfo.fieldndx
    FROM harmonydata.domain_fieldinfo
    WHERE domain_fieldinfo.apidatatypendx=$1 AND domain_fieldinfo.importable='Y'
    ORDER BY domain_fieldinfo.atomname NULLS FIRST;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Import Fields By Data Type"(impstructype_p integer) OWNER TO postgres;

--
-- TOC entry 1063 (class 1255 OID 824857)
-- Name: TD INT Get Import Fields By Data Type (Maestro)(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Import Fields By Data Type (Maestro)"(impstructype_p integer) RETURNS TABLE(importfieldname character varying, fieldndx smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT domain_fieldinfo.importexportname AS importfieldname,domain_fieldinfo.fieldndx
    FROM harmonydata.domain_fieldinfo
    WHERE domain_fieldinfo.importexportname IS NOT NULL AND domain_fieldinfo.apidatatypendx=$1 AND domain_fieldinfo.importable='Y'
    ORDER BY domain_fieldinfo.importexportname NULLS FIRST;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Import Fields By Data Type (Maestro)"(impstructype_p integer) OWNER TO postgres;

--
-- TOC entry 1100 (class 1255 OID 824858)
-- Name: TD INT Get Import Fields By Import Type(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Import Fields By Import Type"(impstructype_p integer) RETURNS TABLE(importfieldname character varying, fieldndx smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT domain_externalfieldinfo.fieldname AS importfieldname,domain_importfields.fieldndx
    FROM harmonydata.domain_importfields JOIN harmonydata.domain_externalfieldinfo ON domain_importfields.importfieldndx=domain_externalfieldinfo.fieldndx
    WHERE domain_importfields.importstructuretypendx=$1
    ORDER BY domain_externalfieldinfo.fieldname NULLS FIRST;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Import Fields By Import Type"(impstructype_p integer) OWNER TO postgres;

--
-- TOC entry 1101 (class 1255 OID 824859)
-- Name: TD INT Get Import Schema By Struc Type(integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Import Schema By Struc Type"(expstructype_p integer) RETURNS TABLE(exportfieldndx smallint, fieldname character varying, fieldtype character varying, fieldwidth smallint, apifieldtypendx smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT domain_exportfields.exportfieldndx,domain_externalfieldinfo.fieldname,domain_externalfieldinfo.fieldtype,domain_externalfieldinfo.fieldwidth,domain_fieldinfo.apifieldtypendx
    FROM harmonydata.domain_fieldinfo RIGHT JOIN (harmonydata.domain_exportstructuretype JOIN (harmonydata.domain_exportfields JOIN harmonydata.domain_externalfieldinfo ON domain_exportfields.exportfieldndx=domain_externalfieldinfo.fieldndx) ON domain_exportstructuretype.exportstructuretypendx=domain_exportfields.exportstructuretypendx) ON domain_fieldinfo.fieldndx=domain_exportfields.fieldndx
    WHERE domain_exportstructuretype.exportstructuretypendx=$1
    ORDER BY domain_exportfields.fieldorderspecifier NULLS FIRST;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Import Schema By Struc Type"(expstructype_p integer) OWNER TO postgres;

--
-- TOC entry 1102 (class 1255 OID 824860)
-- Name: TD INT Get Max Tag Index in Taglist(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Get Max Tag Index in Taglist"(taglistguid_p uuid) RETURNS TABLE(tagndx integer)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT Max(tagndx) AS maxndx
    FROM harmonydata.td_console
    WHERE td_console.taglistguid=$1;
$_$;


ALTER FUNCTION harmonydata."TD INT Get Max Tag Index in Taglist"(taglistguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1103 (class 1255 OID 824861)
-- Name: TD INT Remove All H&L Var Inhib Tag Refs(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Remove All H&L Var Inhib Tag Refs"() RETURNS void
    LANGUAGE sql
    AS $$
    UPDATE harmonydata."TD Get All Tags (Global)" SET highvaralmtagguid=NULL,lowvaralmtagguid=NULL
    WHERE (((harmonydata."TD Get All Tags (Global)".tagtype)='DAANALG') AND ((harmonydata."TD Get All Tags (Global)".highvaralmtagguid) IS NOT NULL)) OR (((harmonydata."TD Get All Tags (Global)".tagtype)='DAANALG') AND ((harmonydata."TD Get All Tags (Global)".lowvaralmtagguid) IS NOT NULL));
$$;


ALTER FUNCTION harmonydata."TD INT Remove All H&L Var Inhib Tag Refs"() OWNER TO postgres;

--
-- TOC entry 1104 (class 1255 OID 824862)
-- Name: TD INT Remove All Inhib Tag Refs(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD INT Remove All Inhib Tag Refs"() RETURNS void
    LANGUAGE sql
    AS $$
    UPDATE harmonydata."TD Get All Tags (Global)" SET alminhtagguid=NULL
    WHERE harmonydata."TD Get All Tags (Global)".alminhtagguid IS NOT NULL;
$$;


ALTER FUNCTION harmonydata."TD INT Remove All Inhib Tag Refs"() OWNER TO postgres;

--
-- TOC entry 1105 (class 1255 OID 824863)
-- Name: TD_fn Get Base Tag By Name(character varying, character varying); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TD_fn Get Base Tag By Name"(tagname_p character varying, exchangeindicator_p character varying) RETURNS TABLE(creattimestamp timestamp without time zone)
    LANGUAGE sql IMMUTABLE ROWS 1
    AS $$
    SELECT creattimestamp
    FROM harmonydata.td_base 
    WHERE tagname = tagname_p AND exchangeindicator = exchangeIndicator_p;
$$;


ALTER FUNCTION harmonydata."TD_fn Get Base Tag By Name"(tagname_p character varying, exchangeindicator_p character varying) OWNER TO postgres;

--
-- TOC entry 1106 (class 1255 OID 824864)
-- Name: TR INT Delete Trend List References from PJ_INFI90Console(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TR INT Delete Trend List References from PJ_INFI90Console"(trendlistguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.pj_infi90console SET trendlist=NULL
    WHERE pj_infi90console.trendlist=$1;
$_$;


ALTER FUNCTION harmonydata."TR INT Delete Trend List References from PJ_INFI90Console"(trendlistguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1107 (class 1255 OID 824865)
-- Name: TR INT Get Max Trend Index in Trendlist(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."TR INT Get Max Trend Index in Trendlist"(trendlistguid_p uuid) RETURNS TABLE(trendndx smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT Max(trendndx) AS maxndx
    FROM harmonydata.tr_base
    WHERE tr_base.trendlistguid=$1;
$_$;


ALTER FUNCTION harmonydata."TR INT Get Max Trend Index in Trendlist"(trendlistguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1108 (class 1255 OID 824866)
-- Name: Update Template GUID For CLDs Linked To CLT(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."Update Template GUID For CLDs Linked To CLT"(templateguid_p uuid) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.pj_controllogic SET templateguid=NULL
    WHERE pj_controllogic.templateguid=$1;
$_$;


ALTER FUNCTION harmonydata."Update Template GUID For CLDs Linked To CLT"(templateguid_p uuid) OWNER TO postgres;

--
-- TOC entry 1109 (class 1255 OID 824867)
-- Name: XR Delete All Xrefs that Point to a Non-Existent Document(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Delete All Xrefs that Point to a Non-Existent Document"() RETURNS void
    LANGUAGE sql
    AS $$
    DELETE
    FROM harmonydata.xr_base
    WHERE NOT EXISTS 
    (
        SELECT * FROM harmonydata.pj_controllogic
        WHERE xr_base.cldguid=pj_controllogic.objectguid
    )
    AND NOT EXISTS
    (
        SELECT * FROM harmonydata.ex_controllogictemplate
        WHERE xr_base.cldguid=ex_controllogictemplate.objectguid
    )
    AND NOT EXISTS
    (
        SELECT * FROM harmonydata.ex_macro
        WHERE xr_base.cldguid=ex_macro.objectguid);
$$;


ALTER FUNCTION harmonydata."XR Delete All Xrefs that Point to a Non-Existent Document"() OWNER TO postgres;

--
-- TOC entry 1110 (class 1255 OID 824868)
-- Name: XR Get Iref Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Get Iref Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata."XR Get All Irefs" WHERE exchangeindicator='P' AND markedtodelete='N';
$$;


ALTER FUNCTION harmonydata."XR Get Iref Count"() OWNER TO postgres;

--
-- TOC entry 1111 (class 1255 OID 824869)
-- Name: XR Get Oref Count(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Get Oref Count"() RETURNS SETOF integer
    LANGUAGE sql IMMUTABLE
    AS $$
SELECT COUNT(*)::integer
FROM harmonydata."XR Get All Orefs" WHERE exchangeindicator='P' AND markedtodelete='N';
$$;


ALTER FUNCTION harmonydata."XR Get Oref Count"() OWNER TO postgres;

--
-- TOC entry 1112 (class 1255 OID 824870)
-- Name: XR Get Orefs and Related Orefs in Module(integer, integer, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Get Orefs and Related Orefs in Module"(loop_p integer, node_p integer, module_p integer) RETURNS TABLE(orefguid uuid, enabled character varying, status integer, exchangeindicator character varying, internalexternal character varying, gentagformatondx integer, gentagnameo character varying, gentagdesco character varying, xrefname character varying, xrefdesc character varying, xreftype smallint, loop integer, loopname character varying, node integer, nodename character varying, module integer, modulename character varying, cldname character varying, cldguid uuid, xrefobjid integer, srcblock integer, srcblockobjid integer, srcblockoutnum smallint, srcblockfc smallint, fcname character varying, moduleid character varying, cldorder integer, sheetnum integer, sheetid integer, signaltype smallint, xrefscope smallint, markedtodelete character varying, updatetimestamp timestamp without time zone, creattimestamp timestamp without time zone, moduletype character varying, firmwarerev character varying, projectflag smallint, inputnum smallint, controllerguid uuid, globalflag smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT * FROM harmonydata."XR Get All Orefs" WHERE loop=$1 AND node=$2 AND module=$3
    UNION
    SELECT oref.* FROM harmonydata."XR Get All Irefs" AS iref JOIN harmonydata."XR Get All Orefs" AS oref  
        ON iref.xrefdesc=oref.xrefdesc  WHERE (iref.loop=$1 AND iref.node=$2 AND iref.module=$3)
                                       OR (oref.loop=$1 AND oref.node=$2 AND oref.module=$3 AND oref.xrefscope=2);
$_$;


ALTER FUNCTION harmonydata."XR Get Orefs and Related Orefs in Module"(loop_p integer, node_p integer, module_p integer) OWNER TO postgres;

--
-- TOC entry 1114 (class 1255 OID 824871)
-- Name: XR Get Related Orefs in CLD(uuid); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Get Related Orefs in CLD"(cld_p uuid) RETURNS TABLE(orefguid uuid, enabled character varying, status integer, exchangeindicator character varying, internalexternal character varying, gentagformatondx integer, gentagnameo character varying, gentagdesco character varying, xrefname character varying, xrefdesc character varying, xreftype smallint, loop integer, loopname character varying, node integer, nodename character varying, module integer, modulename character varying, cldname character varying, cldguid uuid, xrefobjid integer, srcblock integer, srcblockobjid integer, srcblockoutnum smallint, srcblockfc smallint, fcname character varying, moduleid character varying, cldorder integer, sheetnum integer, sheetid integer, signaltype smallint, xrefscope smallint, markedtodelete character varying, updatetimestamp timestamp without time zone, creattimestamp timestamp without time zone, moduletype character varying, firmwarerev character varying, projectflag smallint, inputnum smallint, controllerguid uuid, globalflag smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT oref.* FROM harmonydata."XR Get All Irefs" AS iref JOIN harmonydata."XR Get All Orefs" AS oref  
        ON iref.xrefdesc=oref.xrefdesc  WHERE (iref.cldguid=$1)
                                       AND ((oref.loop=iref.loop AND oref.node=iref.node AND oref.module=iref.module) OR oref.xrefscope=3);
$_$;


ALTER FUNCTION harmonydata."XR Get Related Orefs in CLD"(cld_p uuid) OWNER TO postgres;

--
-- TOC entry 1115 (class 1255 OID 824872)
-- Name: XR Get Related Orefs in Module(integer, integer, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Get Related Orefs in Module"(loop_p integer, node_p integer, module_p integer) RETURNS TABLE(orefguid uuid, enabled character varying, status integer, exchangeindicator character varying, internalexternal character varying, gentagformatondx integer, gentagnameo character varying, gentagdesco character varying, xrefname character varying, xrefdesc character varying, xreftype smallint, loop integer, loopname character varying, node integer, nodename character varying, module integer, modulename character varying, cldname character varying, cldguid uuid, xrefobjid integer, srcblock integer, srcblockobjid integer, srcblockoutnum smallint, srcblockfc smallint, fcname character varying, moduleid character varying, cldorder integer, sheetnum integer, sheetid integer, signaltype smallint, xrefscope smallint, markedtodelete character varying, updatetimestamp timestamp without time zone, creattimestamp timestamp without time zone, moduletype character varying, firmwarerev character varying, projectflag smallint, inputnum smallint, controllerguid uuid, globalflag smallint)
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT DISTINCT oref.* FROM harmonydata."XR Get All Irefs" AS iref JOIN harmonydata."XR Get All Orefs" AS oref  
        ON iref.xrefdesc=oref.xrefdesc  WHERE (iref.loop=$1 AND iref.node=$2 AND iref.module=$3)
                                       OR (oref.loop=$1 AND oref.node=$2 AND oref.module=$3 AND oref.xrefscope=2);
$_$;


ALTER FUNCTION harmonydata."XR Get Related Orefs in Module"(loop_p integer, node_p integer, module_p integer) OWNER TO postgres;

--
-- TOC entry 1116 (class 1255 OID 824873)
-- Name: XR Update Sheet Number(uuid, integer, integer); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."XR Update Sheet Number"(cldguid_p uuid, sheetid_p integer, sheetnum_p integer) RETURNS void
    LANGUAGE sql
    AS $_$
    UPDATE harmonydata.xr_base SET sheetnum=$3
    WHERE xr_base.cldguid=$1 AND xr_base.sheetid=$2;
$_$;


ALTER FUNCTION harmonydata."XR Update Sheet Number"(cldguid_p uuid, sheetid_p integer, sheetnum_p integer) OWNER TO postgres;

--
-- TOC entry 1117 (class 1255 OID 824874)
-- Name: downgrade107(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade107() RETURNS void
    LANGUAGE sql
    AS $$
DROP VIEW harmonydata."TD Get All TagTypes For PGP";
DELETE FROM  harmonydata.domain_projectrevision WHERE dbrevisionndx IN (101,102,103,104,105,106,107);
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=100 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.ud_fieldlist
WHERE objectguid='6865b413-b88f-44b4-ae82-66f5784030cd';
DELETE FROM harmonydata.ud_view
WHERE objectguid='ad080eec-488a-488e-805d-b2a08b77fe6b';
UPDATE harmonydata.pj_projectheader SET context=31;
DELETE FROM harmonydata.ex_symbol
WHERE objectguid IN ('a80db2bc-6a61-4277-a7c1-0094c75ca1ea','a8ef5ba2-b474-4e28-9e2d-453709c9ff18');
DELETE FROM harmonydata.ex_objecttofolder
WHERE parentid=229 AND objectguid IN ('a80db2bc-6a61-4277-a7c1-0094c75ca1ea','a8ef5ba2-b474-4e28-9e2d-453709c9ff18');
DELETE FROM harmonydata.ex_infi90consoledefinition
WHERE softwarerevision IN (340,341);
UPDATE harmonydata.ex_infi90consoledefinition SET bdefault=true WHERE softwarerevision=321;
DELETE FROM harmonydata.ex_functioncodedefinition
WHERE fcnumber IN (48,67);
DELETE FROM harmonydata.ex_folder WHERE containerid=233;
INSERT INTO harmonydata.ex_folder (containerid, parentid, name, bsystem, visible, securitydescriptor, objectguid) VALUES
(233,-4,E'Legacy Borders',true,true,null,'a0c7e3ee-c019-11d1-8be6-00609755d2e4');
$$;


ALTER FUNCTION harmonydata.downgrade107() OWNER TO postgres;

--
-- TOC entry 1118 (class 1255 OID 824875)
-- Name: downgrade602(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade602() RETURNS void
    LANGUAGE sql
    AS $$
DROP FUNCTION harmonydata."FD Get All CLDs in Master"(uuid);
DROP FUNCTION harmonydata."FD Delete A Slave"(uuid);
DROP FUNCTION harmonydata."FD Delete A Master"(uuid);
DROP VIEW harmonydata."PJ Get a CLD by ObjectGUID";
DROP VIEW harmonydata."Get A Module By ObjectGUID";
DROP VIEW harmonydata."FD Get All Slaves in Master";
DROP VIEW harmonydata."FD Get All Masters in Module";
ALTER TABLE harmonydata.fd_master DROP CONSTRAINT fd_master_controllogicguid_pj_controllogic;
ALTER TABLE harmonydata.fd_slave DROP CONSTRAINT fd_slave_masterguid_fd_master;
ALTER TABLE harmonydata.pj_pcu DROP CONSTRAINT pj_pcu_pcutype_check;
ALTER TABLE harmonydata.pj_pcu ADD CHECK (pcutype IN (0,1,2));
DROP TABLE harmonydata.fd_slave;
DROP TABLE harmonydata.fd_master;
ALTER TABLE harmonydata.ex_harmony_firmware DROP CONSTRAINT ex_harmony_firmware_type_check;
ALTER TABLE harmonydata.ex_harmony_firmware ADD CHECK (type IN ('HarmonyIO','IOR800'));
DELETE FROM  harmonydata.domain_projectrevision WHERE dbrevisionndx IN (108,600,601,602);
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=107 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1052 OR tablendx=1053;
$$;


ALTER FUNCTION harmonydata.downgrade602() OWNER TO postgres;

--
-- TOC entry 1119 (class 1255 OID 824876)
-- Name: downgrade607(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade607() RETURNS void
    LANGUAGE plpgsql
    AS $_$
BEGIN
DROP VIEW harmonydata."Get FunctionCodeDefinition By Number";
DROP VIEW harmonydata."EX Get Min ContainerID in Container";
DROP VIEW harmonydata."TD Get All TagTypes for BCS Q1";
CREATE OR REPLACE VIEW harmonydata."TD Get All TagTypes for BCS Q1" AS
 SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype
  WHERE domain_bcstagtype.bcsdesc NOT IN ('ANALOG ENH/IN','ANALOG ENH/OUT','DIGITAL ENH/IN','DIGITAL ENH/OUT','CLIF','DADIG','TEXTSTR','DANG');
DROP VIEW harmonydata."TD Get All TagTypes for BCS R1";
CREATE OR REPLACE VIEW harmonydata."TD Get All TagTypes for BCS R1" AS
 SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype
  WHERE domain_bcstagtype.bcsdesc NOT IN ('ANALOG ENH/IN','ANALOG ENH/OUT','DIGITAL ENH/IN','DIGITAL ENH/OUT','CLIF','DADIG','TEXTSTR');
DROP VIEW harmonydata."TD Get All TagTypes for BCS T1";
CREATE OR REPLACE VIEW harmonydata."TD Get All TagTypes for BCS T1" AS
 SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype
  WHERE domain_bcstagtype.bcsdesc NOT IN ('ANALOG ENH/IN','ANALOG ENH/OUT','DIGITAL ENH/IN','DIGITAL ENH/OUT','CLIF');
DROP VIEW harmonydata."TD Get All TagTypes for BCS V1";
CREATE OR REPLACE VIEW harmonydata."TD Get All TagTypes for BCS V1" AS
 SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype,
    harmonydata.ex_exchangeheader
  WHERE domain_bcstagtype.bcsdesc::text <> ALL (ARRAY['ANALOG ENH/IN'::character varying,'ANALOG ENH/OUT'::character varying,'DIGITAL ENH/IN'::character varying,'DIGITAL ENH/OUT'::character varying]::text[]);
DROP VIEW harmonydata."TD Get All TagTypes for BCS X1";
CREATE OR REPLACE VIEW harmonydata."TD Get All TagTypes for BCS X1" AS
 SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype;
DROP INDEX harmonydata.ex_functioncodedefinition_number;
DROP VIEW harmonydata."Get A FunctionCodeDefinition";
DROP VIEW harmonydata."Get FunctionCodeDefinitions";
ALTER TABLE harmonydata.ex_functioncodedefinition DROP COLUMN cfbdefined;
ALTER TABLE harmonydata.ex_functioncodedefinition DROP COLUMN overriddenByCFB;
CREATE OR REPLACE VIEW harmonydata."Get A FunctionCodeDefinition" AS
 SELECT ex_functioncodedefinition.fcnumber,
    ex_functioncodedefinition.name,
    ex_functioncodedefinition.description,
    ex_functioncodedefinition.bsystem,
    ex_functioncodedefinition.objectguid,
    ex_functioncodedefinition.securitydescriptor,
    ex_functioncodedefinition.fcbfileforclif,
    ex_functioncodedefinition.dtfileforclif,
    ex_functioncodedefinition.xrefscope
   FROM harmonydata.ex_functioncodedefinition;
CREATE OR REPLACE VIEW harmonydata."Get FunctionCodeDefinitions" AS
 SELECT ex_functioncodedefinition.fcnumber,
    ex_functioncodedefinition.name,
    ex_functioncodedefinition.description,
    ex_functioncodedefinition.bsystem,
    ex_functioncodedefinition.objectguid,
    ex_functioncodedefinition.securitydescriptor,
    ex_functioncodedefinition.fcbfileforclif,
    ex_functioncodedefinition.dtfileforclif,
    ex_functioncodedefinition.xrefscope
   FROM harmonydata.ex_functioncodedefinition;
DROP VIEW harmonydata."Get The Exchange";
ALTER TABLE harmonydata.ex_exchangeheader DROP COLUMN cfbinstalled;
CREATE OR REPLACE VIEW harmonydata."Get The Exchange" AS
 SELECT ex_exchangeheader.versionnumber,
    ex_exchangeheader.securitydescriptor,
    ex_exchangeheader.recordnumber,
    ex_exchangeheader.objectguid
   FROM harmonydata.ex_exchangeheader
  WHERE ex_exchangeheader.recordnumber=1;  
DROP FUNCTION harmonydata."FD Delete A Module"(uuid);
DROP FUNCTION harmonydata."FD Get All CLDs in Master"(uuid);
DROP VIEW IF EXISTS harmonydata."FD Get All Modules in Slave";
DROP VIEW IF EXISTS harmonydata."FD Get All Slaves in Master";
DROP VIEW IF EXISTS harmonydata."FD Get All Masters in Module";
ALTER TABLE harmonydata.fd_module DROP CONSTRAINT fd_module_controllogicguid_pj_controllogic;
ALTER TABLE harmonydata.fd_module DROP CONSTRAINT fd_module_slaveguid_fd_slave;
ALTER TABLE harmonydata.fd_master DROP CONSTRAINT fd_master_controllogicguid_pj_controllogic;
ALTER TABLE harmonydata.fd_slave DROP CONSTRAINT fd_slave_controllogicguid_pj_controllogic;
ALTER TABLE harmonydata.fd_slave DROP CONSTRAINT fd_slave_masterguid_fd_master;
DROP TABLE harmonydata.fd_module;
DROP TABLE harmonydata.fd_master;
CREATE TABLE harmonydata.fd_master
(
  objectguid uuid NOT NULL,
  name character varying(32),
  devicetype integer DEFAULT 0,
  moduleguid uuid,
  controllogicguid uuid,
  dcloobjectid integer DEFAULT 0,
  blockno integer DEFAULT 0,
  cfobjectid character varying(255),
  CONSTRAINT fd_master_pkey PRIMARY KEY (objectguid)
);
ALTER TABLE harmonydata.fd_master OWNER TO postgres;
COMMENT ON COLUMN harmonydata.fd_master.objectguid IS 'The globally unique identifier for this field device.';
COMMENT ON COLUMN harmonydata.fd_master.name IS 'User-defined name of the field device.';
COMMENT ON COLUMN harmonydata.fd_master.devicetype IS 'Foreign key to "Domain FD_DeviceType" (specifies PDP/HAI/HAO/etc).';
COMMENT ON COLUMN harmonydata.fd_master.moduleguid IS 'GUID of the containing Module (Controller).';
COMMENT ON COLUMN harmonydata.fd_master.controllogicguid IS 'Foreign key to "PJ_ControlLogic" that contains the control logic representing this slave device.';
COMMENT ON COLUMN harmonydata.fd_master.dcloobjectid IS 'The DCLO Object ID of the function code entity that represents  this device in the CLD.';
COMMENT ON COLUMN harmonydata.fd_master.blockno IS 'Block number to be used for FC 227 (PDP), or FC 221 (HA"I|O").';
COMMENT ON COLUMN harmonydata.fd_master.cfobjectid IS 'The object ID provided by Composer Field that represents this device.';
CREATE INDEX fd_master_blockno ON harmonydata.fd_master USING btree (blockno);
CREATE INDEX fd_master_cfobjectid ON harmonydata.fd_master USING btree (cfobjectid);
CREATE INDEX fd_master_controllogicguid ON harmonydata.fd_master USING btree (controllogicguid);
CREATE INDEX fd_master_moduleguid ON harmonydata.fd_master USING btree (moduleguid);
CREATE INDEX fd_master_objectguid ON harmonydata.fd_master USING btree (objectguid);
CREATE OR REPLACE VIEW harmonydata."FD Get All Masters in Module" AS
 SELECT fd_master.objectguid,
    fd_master.name,
    fd_master.devicetype,
    fd_master.moduleguid,
    fd_master.controllogicguid,
    fd_master.dcloobjectid,
    fd_master.blockno,
    fd_master.cfobjectid
   FROM harmonydata.fd_master
  ORDER BY fd_master.blockno NULLS FIRST;
ALTER TABLE harmonydata.fd_master
  ADD CONSTRAINT fd_master_controllogicguid_pj_controllogic FOREIGN KEY (controllogicguid)
      REFERENCES harmonydata.pj_controllogic (objectguid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
COMMENT ON CONSTRAINT fd_master_controllogicguid_pj_controllogic ON harmonydata.fd_master IS 'PJ_ControlLogicFD_Master';  
DROP TABLE harmonydata.fd_slave;
CREATE TABLE harmonydata.fd_slave
(
  objectguid uuid NOT NULL,
  name character varying(32),
  masterguid uuid NOT NULL,
  controllogicguid uuid,
  dcloobjectid integer DEFAULT 0,
  cfobjectid character varying(255),
  CONSTRAINT fd_slave_pkey PRIMARY KEY (objectguid)
);
ALTER TABLE harmonydata.fd_slave OWNER TO postgres;
COMMENT ON COLUMN harmonydata.fd_slave.objectguid IS 'The globally unique identifier for this slave field device.';
COMMENT ON COLUMN harmonydata.fd_slave.name IS 'User-defined name of the slave field device.';
COMMENT ON COLUMN harmonydata.fd_slave.masterguid IS 'Foreign key to "FD_Master" to reference parent master device.';
COMMENT ON COLUMN harmonydata.fd_slave.controllogicguid IS 'Foreign key to "PJ_ControlLogic" that contains the control logic representing this slave device.';
COMMENT ON COLUMN harmonydata.fd_slave.dcloobjectid IS 'The DCLO Object ID of the function code entity that represents  this device in the CLD.';
COMMENT ON COLUMN harmonydata.fd_slave.cfobjectid IS 'The object ID provided by Composer Field that represents this device.';
CREATE INDEX fd_slave_cfobjectid ON harmonydata.fd_slave USING btree (cfobjectid);
CREATE INDEX fd_slave_controllogicguid ON harmonydata.fd_slave USING btree (controllogicguid);
CREATE INDEX fd_slave_masterguid ON harmonydata.fd_slave USING btree (masterguid);
CREATE INDEX fd_slave_objectguid ON harmonydata.fd_slave USING btree (objectguid);
ALTER TABLE harmonydata.fd_slave
  ADD CONSTRAINT fd_slave_masterguid_fd_master FOREIGN KEY (masterguid)
      REFERENCES harmonydata.fd_master (objectguid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;
COMMENT ON CONSTRAINT fd_slave_masterguid_fd_master ON harmonydata.fd_slave IS 'FD_MasterFD_Slave';
ALTER TABLE harmonydata.fd_slave
  ADD CONSTRAINT fd_slave_controllogicguid_pj_controllogic FOREIGN KEY (controllogicguid)
      REFERENCES harmonydata.pj_controllogic (objectguid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION;
COMMENT ON CONSTRAINT fd_slave_controllogicguid_pj_controllogic ON harmonydata.fd_slave IS 'PJ_ControlLogicFD_Slave';
CREATE OR REPLACE VIEW harmonydata."FD Get All Slaves in Master" AS
 SELECT fd_slave.objectguid,
    fd_slave.name,
    fd_slave.masterguid,
    fd_slave.controllogicguid,
    fd_slave.dcloobjectid,
    fd_slave.cfobjectid
   FROM harmonydata.fd_slave;   
CREATE OR REPLACE FUNCTION harmonydata."FD Get All CLDs in Master" (masterguid_p uuid)
  RETURNS TABLE (module integer,name character varying,objectguid uuid,filename character varying,revision character varying,revisiontimestamp timestamp without time zone,description character varying,linkstatus integer,templateguid uuid,templatename character varying,templatetimestamp timestamp without time zone,templaterevision character varying,logicalorder integer,pcucontainerid integer,securitydescriptor bytea,invalid boolean,linkstate boolean,lockstate boolean,linkstatemodified boolean,allowlink boolean,documents bytea,properties bytea) AS
$BODY$
    SELECT pj_controllogic.*
    FROM harmonydata.pj_controllogic
    WHERE EXISTS
    (
        SELECT fd_master.objectguid
        FROM harmonydata.fd_master
        WHERE fd_master.objectguid=$1 AND fd_master.controllogicguid=pj_controllogic.objectguid
    )
    OR EXISTS
    (
        SELECT fd_slave.objectguid
        FROM harmonydata.fd_slave
        WHERE fd_slave.masterguid=$1 AND fd_slave.controllogicguid=pj_controllogic.objectguid
    );
$BODY$
  LANGUAGE sql IMMUTABLE;
ALTER FUNCTION harmonydata."FD Get All CLDs in Master" (masterguid_p uuid) OWNER TO postgres;
INSERT INTO harmonydata.ex_functioncodedefinition (fcnumber,name,description,bsystem,objectguid,securitydescriptor,fcbfileforclif,dtfileforclif,xrefscope) VALUES
(1047,E'AI/ASM',E'ANALOG INPUT (TERMINATION UNIT-TAI)',true,'3d2afc9b-581c-11d0-9f2a-000000000000',null,null,null,3),
(1070,E'ASO/L',E'ANALOG INPUT - EXCEPT REP AND ALARM',true,'3d2afcaf-581c-11d0-9f2a-000000000000',null,null,null,3),
(1127,E'GCMMAP',E'PLANT LOOP GATEWAY NODE MAP',true,'3d2afce8-581c-11d0-9f2a-000000000000',null,null,null,2),
(1130,E'EX/GCM',E'PLANT LOOP GATEWAY EXECUTIVE',true,'3d2afceb-581c-11d0-9f2a-000000000000',null,null,null,2),
(1131,E'GPDEF',E'PLANT LOOP GATEWAY POINT DEFINITION',true,'3d2afcec-581c-11d0-9f2a-000000000000',null,null,null,2),
(1175,E'EX/CSC',E'EXECUTIVE (CSC)',true,'3d2afd18-581c-11d0-9f2a-000000000000',null,null,null,2),
(1176,E'M/A-CSC',E'SEQUENCE STATION',true,'3d2afd19-581c-11d0-9f2a-000000000000',null,null,null,2),
(1180,E'CBCI/O',E'BATCH INPUT/OUTPUT',true,'3d2afd1d-581c-11d0-9f2a-000000000000',null,null,null,2),
(1181,E'M/ACBC',E'BATCH STATION (CBC)',true,'3d2afd1e-581c-11d0-9f2a-000000000000',null,null,null,2),
(1183,E'EXECCBC',E'BATCH EXECUTIVE (CBC)',true,'3d2afd20-581c-11d0-9f2a-000000000000',null,null,null,2);
DELETE FROM harmonydata.ex_objecttofolder WHERE parentid=-9 OR parentid=-8;
INSERT INTO harmonydata.ex_objecttofolder (parentid,objectguid) VALUES
(232,'23e54bb0-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bb1-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bb2-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bb3-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bb4-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bc3-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bc5-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bd7-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bd9-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bda-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bdb-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bdc-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bdd-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bde-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bed-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bee-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bef-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54bfe-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c10-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c12-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c13-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c14-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c15-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c24-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c25-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c26-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c29-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c3e-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c3f-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c40-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c4b-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c4d-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c4e-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c5e-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c5f-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c61-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c62-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c63-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c72-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c84-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c85-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c88-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c89-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c8c-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54c9a-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca1-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca2-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca3-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca7-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca8-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ca9-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54caa-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cab-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cb8-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cb9-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cbc-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cbe-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54ccb-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cda-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cdb-a0ef-11d1-8be0-00609755d2e4'),
(232,'23e54cdc-a0ef-11d1-8be0-00609755d2e4'),
(232,'d780bde7-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdea-921f-11d3-bda0-00c04f680e37'),
(232,'d780bded-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdf0-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdf6-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdf9-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdfc-921f-11d3-bda0-00c04f680e37'),
(232,'d780bdff-921f-11d3-bda0-00c04f680e37'),
(232,'d780be0e-921f-11d3-bda0-00c04f680e37');
DELETE FROM harmonydata.ex_folder WHERE containerid=-9 OR containerid=-8;
DELETE FROM harmonydata.ex_container WHERE containerid=-9 OR containerid=-8;
DELETE FROM harmonydata.domain_bcstagtype WHERE tagtypendx=19;
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx BETWEEN 603 AND 607;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=602 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1054;
END;
$_$;


ALTER FUNCTION harmonydata.downgrade607() OWNER TO postgres;

--
-- TOC entry 1120 (class 1255 OID 824878)
-- Name: downgrade608(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade608() RETURNS void
    LANGUAGE sql
    AS $$
DROP TABLE harmonydata.pj_splusio;
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx=608 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=607 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1055;
$$;


ALTER FUNCTION harmonydata.downgrade608() OWNER TO postgres;

--
-- TOC entry 1121 (class 1255 OID 824879)
-- Name: downgrade609(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade609() RETURNS void
    LANGUAGE sql
    AS $$
ALTER TABLE harmonydata.pj_pcu DROP CONSTRAINT pj_pcu_pcutype_check;
ALTER TABLE harmonydata.pj_pcu ADD CHECK (pcutype IN (0,1,2,4));
COMMENT ON COLUMN harmonydata.pj_pcu.pcutype IS 'PCU type (0 == Normal "Default", 1 == HAC, 2 == SEM, 4 == HPC)';
ALTER TABLE harmonydata.pj_loop DROP CONSTRAINT pj_loop_looptype_check;
ALTER TABLE harmonydata.pj_loop ALTER COLUMN looptype DROP DEFAULT;
ALTER TABLE harmonydata.pj_loop ADD CHECK (looptype IN ('S','P'));
ALTER TABLE harmonydata.pj_loop ALTER COLUMN looptype SET DEFAULT 'S';
COMMENT ON COLUMN harmonydata.pj_loop.looptype IS 'Loop type - ''S'' for Super Loop or ''P'' for Plant Loop';
ALTER TABLE harmonydata.ex_harmony_firmware ADD CHECK (type IN ('HarmonyIO','IOR800','PDP800','HAI805/HAO805','BLK800'));
DROP TABLE harmonydata.iec_client;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1055;
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx=609 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=608 AND dbrevisionsubndx=1;
$$;


ALTER FUNCTION harmonydata.downgrade609() OWNER TO postgres;

--
-- TOC entry 1122 (class 1255 OID 824880)
-- Name: downgrade610(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade610() RETURNS void
    LANGUAGE sql
    AS $$
DROP VIEW IF EXISTS harmonydata."TD Get All TagTypes for BCS V1" CASCADE;
CREATE VIEW harmonydata."TD Get All TagTypes for BCS V1" AS
SELECT domain_bcstagtype.tagtypendx,
    domain_bcstagtype.bcsdesc,
    domain_bcstagtype.fulldesc,
    domain_bcstagtype.objecttypendx,
    domain_bcstagtype.baseobjecttypendx
   FROM harmonydata.domain_bcstagtype
WHERE harmonydata.domain_bcstagtype.bcsdesc NOT IN ('ANALOG ENH/IN','ANALOG ENH/OUT','DIGITAL ENH/IN','DIGITAL ENH/OUT','CFB');
DROP VIEW IF EXISTS harmonydata."FD Get All Modules in Slave";
ALTER TABLE harmonydata.fd_module DROP COLUMN devicetypestring;
CREATE OR REPLACE VIEW harmonydata."FD Get All Modules in Slave" AS
 SELECT fd_module.objectguid,
    fd_module.name,
    fd_module.address,
    fd_module.slaveguid,
    fd_module.controllogicguid,
    fd_module.cfobjectid,
    fd_module.cfdevicetypeid,
    fd_module.createdtime,
    fd_module.modifiedtime
   FROM harmonydata.fd_module;
ALTER TABLE harmonydata.fd_module DROP CONSTRAINT fd_module_slaveguid_fd_slave;
DROP VIEW IF EXISTS harmonydata."FD Get All Slaves in Master";
ALTER TABLE harmonydata.fd_slave DROP COLUMN devicetypestring;
CREATE OR REPLACE VIEW harmonydata."FD Get All Slaves in Master" AS
 SELECT fd_slave.objectguid,
    fd_slave.name,
    fd_slave.address,
    fd_slave.masterguid,
    fd_slave.controllogicguid,
    fd_slave.dcloobjectid,
    fd_slave.cfobjectid,
    fd_slave.cfdevicetypeid,
    fd_slave.createdtime,
    fd_slave.modifiedtime
   FROM harmonydata.fd_slave;
ALTER TABLE harmonydata.fd_module
  ADD CONSTRAINT fd_module_slaveguid_fd_slave FOREIGN KEY (slaveguid)
      REFERENCES harmonydata.fd_slave (objectguid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;
COMMENT ON CONSTRAINT fd_module_slaveguid_fd_slave ON harmonydata.fd_module IS 'FD_SlaveFD_Module';
ALTER TABLE harmonydata.fd_slave DROP CONSTRAINT fd_slave_masterguid_fd_master;
DROP VIEW harmonydata."FD Get All Masters in Module";
ALTER TABLE harmonydata.fd_master DROP COLUMN devicetypestring;
CREATE OR REPLACE VIEW harmonydata."FD Get All Masters in Module" AS
 SELECT fd_master.objectguid,
    fd_master.name,
    fd_master.address,
    fd_master.devicetype,
    fd_master.moduleguid,
    fd_master.controllogicguid,
    fd_master.dcloobjectid,
    fd_master.blockno,
    fd_master.cfobjectid,
    fd_master.cfdevicetypeid,
    fd_master.createdtime,
    fd_master.modifiedtime
   FROM harmonydata.fd_master
  ORDER BY fd_master.blockno NULLS FIRST;
ALTER TABLE harmonydata.fd_slave
  ADD CONSTRAINT fd_slave_masterguid_fd_master FOREIGN KEY (masterguid)
      REFERENCES harmonydata.fd_master (objectguid) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE;
COMMENT ON CONSTRAINT fd_slave_masterguid_fd_master ON harmonydata.fd_slave IS 'FD_MasterFD_Slave';
DROP VIEW harmonydata."TD Get All Alarm Comments";
ALTER TABLE harmonydata.td_alarmcomment
  DROP COLUMN langid,
  DROP COLUMN servertypeid;
CREATE OR REPLACE VIEW harmonydata."TD Get All Alarm Comments" AS
 SELECT DISTINCT td_alarmcomment.almcomntguid,
    td_alarmcomment.almcomntndx,
    td_alarmcomment.almcomnt,
    td_alarmcomment.updatetimestamp,
    td_alarmcomment.creattimestamp,
    ltrim(td_alarmcomment.almcomnt::text) AS leftjustifieddesc
   FROM harmonydata.td_alarmcomment
  ORDER BY ltrim(td_alarmcomment.almcomnt::text) NULLS FIRST;
CREATE TRIGGER get_all_alarm_comments_trig
  INSTEAD OF INSERT
  ON harmonydata."TD Get All Alarm Comments"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_alarm_comments();
CREATE TRIGGER get_all_alarm_comments_trig_del
  INSTEAD OF DELETE
  ON harmonydata."TD Get All Alarm Comments"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_alarm_comments();
CREATE TRIGGER get_all_alarm_comments_trig_up
  INSTEAD OF UPDATE
  ON harmonydata."TD Get All Alarm Comments"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_alarm_comments();
DROP VIEW harmonydata."TD Get All EUDs";
ALTER TABLE harmonydata.td_eud
  DROP COLUMN langid,
  DROP COLUMN servertypeid;
CREATE OR REPLACE VIEW harmonydata."TD Get All EUDs" AS
  SELECT DISTINCT td_eud.eudguid,
    td_eud.eudndx,
    td_eud.engunitsdesc,
    td_eud.updatetimestamp,
    td_eud.creattimestamp,
    ltrim(td_eud.engunitsdesc::text) AS leftjustifieddesc
   FROM harmonydata.td_eud
  ORDER BY ltrim(td_eud.engunitsdesc::text) NULLS FIRST;
CREATE TRIGGER get_all_euds_trig
  INSTEAD OF INSERT
  ON harmonydata."TD Get All EUDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_euds();
CREATE TRIGGER get_all_euds_trig_del
  INSTEAD OF DELETE
  ON harmonydata."TD Get All EUDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_euds();
CREATE TRIGGER get_all_euds_trig_up
  INSTEAD OF UPDATE
  ON harmonydata."TD Get All EUDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_euds();
DROP VIEW harmonydata."TD Get All LSDs";
ALTER TABLE harmonydata.td_lsd
  DROP COLUMN langid,
  DROP COLUMN servertypeid;
CREATE OR REPLACE VIEW harmonydata."TD Get All LSDs" AS
 SELECT DISTINCT td_lsd.lsdguid,
    td_lsd.lsdndx,
    td_lsd.logicstatedesc,
    td_lsd.updatetimestamp,
    td_lsd.creattimestamp,
    ltrim(td_lsd.logicstatedesc::text) AS leftjustifieddesc
   FROM harmonydata.td_lsd
  ORDER BY ltrim(td_lsd.logicstatedesc::text) NULLS FIRST;
CREATE TRIGGER get_all_lsds_trig
  INSTEAD OF INSERT
  ON harmonydata."TD Get All LSDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_lsds();
CREATE TRIGGER get_all_lsds_trig_del
  INSTEAD OF DELETE
  ON harmonydata."TD Get All LSDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_lsds();
CREATE TRIGGER get_all_lsds_trig_up
  INSTEAD OF UPDATE
  ON harmonydata."TD Get All LSDs"
  FOR EACH ROW
  EXECUTE PROCEDURE harmonydata.get_all_lsds();
ALTER TABLE harmonydata.pj_pcu ADD CHECK (pcutype IN (0,1,2,4,5));
ALTER TABLE harmonydata.iec_client DROP CONSTRAINT iec_client_pkey;
ALTER TABLE harmonydata.iec_client ADD CONSTRAINT iec_client_objectguid_key UNIQUE (objectguid);
ALTER TABLE harmonydata.pj_turbinemodule DROP CONSTRAINT pj_turbinemodule_controllogicguid_pj_controllogic;
DROP TABLE harmonydata.pj_turbinemodule CASCADE;
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx=610 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=609 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1056;
UPDATE harmonydata.cv_composertablename SET tablename='iec_client' WHERE tablendx=1055;
$$;


ALTER FUNCTION harmonydata.downgrade610() OWNER TO postgres;

--
-- TOC entry 1123 (class 1255 OID 824881)
-- Name: downgrade611(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade611() RETURNS void
    LANGUAGE sql
    AS $$
DROP FUNCTION harmonydata."FD Delete A Hart"(uuid);
DROP VIEW harmonydata."FD Get All Harts in FD Module";
DROP TABLE harmonydata.iec104_device CASCADE;
DROP TABLE harmonydata.fd_hartdevice CASCADE;
DELETE FROM harmonydata.domain_projectrevision WHERE (dbrevisionndx=611 AND dbrevisionsubndx=1) OR (dbrevisionndx=612 AND dbrevisionsubndx=1);
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=610 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1057 OR tablendx=1058;
$$;


ALTER FUNCTION harmonydata.downgrade611() OWNER TO postgres;

--
-- TOC entry 1124 (class 1255 OID 824882)
-- Name: downgrade612(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade612() RETURNS void
    LANGUAGE sql
    AS $$
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=false WHERE dbrevisionndx=612 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=611 AND dbrevisionsubndx=1;
$$;


ALTER FUNCTION harmonydata.downgrade612() OWNER TO postgres;

--
-- TOC entry 1125 (class 1255 OID 824883)
-- Name: downgrade613(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade613() RETURNS void
    LANGUAGE sql
    AS $$
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx=613 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=612 AND dbrevisionsubndx=1;
DELETE FROM harmonydata.cv_composertablename WHERE tablendx=1059 OR tablendx=1060 OR tablendx=1061;
$$;


ALTER FUNCTION harmonydata.downgrade613() OWNER TO postgres;

--
-- TOC entry 1126 (class 1255 OID 824884)
-- Name: downgrade614(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade614() RETURNS void
    LANGUAGE sql
    AS $$
DROP VIEW IF EXISTS harmonydata."Get A ConfigurableFuncCode" CASCADE;
DROP VIEW IF EXISTS harmonydata."Get All ConfigurableFuncCodes" CASCADE;
DROP VIEW IF EXISTS harmonydata."TD Get All TagTypes For PGP" CASCADE;
CREATE VIEW harmonydata."TD Get All TagTypes For PGP" AS
SELECT harmonydata.domain_tagtype.* FROM harmonydata.domain_tagtype
WHERE domain_tagtype.tagtypendx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23);
DROP TABLE harmonydata.dnp3_device CASCADE;
DROP TABLE harmonydata.ex_configurablefunccode CASCADE;
DROP TABLE harmonydata.modbus_device CASCADE;
DROP VIEW harmonydata."Get A Folder";
DROP VIEW harmonydata."Get Folders in Folder";
DROP VIEW harmonydata."Get Folders in Root";
ALTER TABLE harmonydata.ex_folder DROP COLUMN foldertype;
CREATE VIEW harmonydata."Get A Folder" AS SELECT * FROM harmonydata.ex_folder;
CREATE VIEW harmonydata."Get Folders in Folder" AS SELECT * FROM harmonydata.ex_folder;
CREATE VIEW harmonydata."Get Folders in Root" AS SELECT * FROM harmonydata.ex_folder;
DROP VIEW harmonydata."Get A FunctionCodeDefinition";
DROP VIEW harmonydata."Get FunctionCodeDefinition By Number";
DROP VIEW harmonydata."Get FunctionCodeDefinitions";
ALTER TABLE harmonydata.ex_functioncodedefinition DROP CONSTRAINT ex_functioncodedefinition_configurablefunccodeguid_key;
ALTER TABLE harmonydata.ex_functioncodedefinition DROP COLUMN configurablefunccodeguid;
CREATE VIEW harmonydata."Get A FunctionCodeDefinition" AS SELECT * FROM harmonydata.ex_functioncodedefinition;
CREATE VIEW harmonydata."Get FunctionCodeDefinition By Number" AS SELECT * FROM harmonydata.ex_functioncodedefinition;
CREATE VIEW harmonydata."Get FunctionCodeDefinitions" AS SELECT * FROM harmonydata.ex_functioncodedefinition; 
DELETE FROM harmonydata.cv_composertablename WHERE tablendx IN (1059,1060,1061,1062);
DELETE FROM harmonydata.domain_attributes WHERE objectguid='2334a8a4-9976-11d4-8d65-00c04f794774';
DELETE FROM harmonydata.ex_objecttofolder WHERE parentid=-27 OR parentid=-26;
DELETE FROM harmonydata.ex_folder WHERE containerid=-27 OR containerid=-26;
DELETE FROM harmonydata.ex_container WHERE containerid=-27 OR containerid=-26; 
DELETE FROM harmonydata.domain_projectrevision WHERE dbrevisionndx=614 AND dbrevisionsubndx=1;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=613 AND dbrevisionsubndx=1;
$$;


ALTER FUNCTION harmonydata.downgrade614() OWNER TO postgres;

--
-- TOC entry 1127 (class 1255 OID 824885)
-- Name: downgrade700(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.downgrade700() RETURNS void
    LANGUAGE sql
    AS $$
DROP VIEW IF EXISTS harmonydata."Get A ConfigurableFuncCode" CASCADE;
DROP VIEW IF EXISTS harmonydata."Get All ConfigurableFuncCodes" CASCADE;
ALTER TABLE harmonydata.ex_configurablefunccode DROP COLUMN data;
CREATE VIEW harmonydata."Get All ConfigurableFuncCodes" AS SELECT * FROM harmonydata.ex_configurablefunccode;
CREATE VIEW harmonydata."Get A ConfigurableFuncCode" AS SELECT * FROM harmonydata.ex_configurablefunccode;
DELETE FROM  harmonydata.domain_projectrevision WHERE dbrevisionndx=700;
UPDATE harmonydata.domain_projectrevision SET thisprojectrevision=true WHERE dbrevisionndx=614 AND dbrevisionsubndx=1;
$$;


ALTER FUNCTION harmonydata.downgrade700() OWNER TO postgres;

--
-- TOC entry 1128 (class 1255 OID 824886)
-- Name: ds_get_all_mfps(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.ds_get_all_mfps() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    BEGIN
        IF (TG_OP='DELETE') THEN
            DELETE FROM harmonydata.ds_mfp WHERE ds_mfp.mfpguid=old.mfpguid;
            RETURN old;
        ELSIF (TG_OP='UPDATE') THEN
            UPDATE harmonydata.ds_mfp SET
            mfpguid=new.mfpguid,
            mfpmoduleguid=new.mfpmoduleguid,
            semmoduleguid=new.semmoduleguid,
            isassigned=new.isassigned,
            cldguid=new.cldguid,
            cldobjid=new.cldobjid,
            lifecyclendx=new.lifecyclendx,
            updatetimestamp=new.updatetimestamp,
            status=new.status,
            exchangeindicator=new.exchangeindicator,
            markedtodelete=new.markedtodelete
            WHERE ds_mfp.mfpguid=old.mfpguid;
            RETURN new;
        ELSIF (TG_OP='INSERT') THEN
            INSERT INTO harmonydata.ds_mfp (
            mfpguid,
            mfpmoduleguid,
            semmoduleguid,
            isassigned,
            cldguid,
            cldobjid,
            lifecyclendx,
            updatetimestamp,
            creattimestamp,
            status,
            exchangeindicator,
            markedtodelete)
            
            VALUES (
            new.mfpguid,
            new.mfpmoduleguid,
            new.semmoduleguid,
            new.isassigned,
            new.cldguid,
            new.cldobjid,
            new.lifecyclendx,
            new.updatetimestamp,
            new.creattimestamp,
            new.status,
            new.exchangeindicator,
            new.markedtodelete);

            RETURN new;
        END IF;
    END;
$$;


ALTER FUNCTION harmonydata.ds_get_all_mfps() OWNER TO postgres;

--
-- TOC entry 1215 (class 1255 OID 1459589)
-- Name: fn_add_800xa_recs_td_ch(boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_add_800xa_recs_td_ch(p_do_log boolean) RETURNS void
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;

BEGIN
    
    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_add_800xa_recs_td_ch', '');
      
    
    /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_add_800xa_recs_td_ch', ''); 

    /************* auto generate start *************/  

    INSERT INTO harmonydata.td_800xa_base
    (
        tag_guid,
        co_num_dec_pl,
        co_span,
        co_value_zero,
        num_dec_places,
        sp_num_dec_pl,
        pid_blk,
        alm_inh_state_id,
        txt_set,
        ctrl_enbl,
        txt_str_lnth,
        handshaking,
        fast_rpt_max_time,
        slow_rpt_max_time,
        user_text,
        alm_ack_trnsm,
        alm_sil_trnsm,
        alm_ack_bcast,
        ack_req_alm,
        ack_req_bad_qual,
        ack_req_com_err,
        ack_req_high_alm,
        ack_req_high_devi_alm,
        ack_req_high_rate_chg_alm,
        ack_req_high2_alm,
        ack_req_high3_alm,
        ack_req_low_alm,
        ack_req_low_devi_alm,
        ack_req_low_rate_chg_alm,
        ack_req_low2_alm,
        ack_req_low3_alm,
        ack_req_mod_err,
        ack_req_offline,
        ack_req_out,
        ack_req_state_chg,
        ack_req_sys_err,
        ack_req_sys_fault,
        ack_req_usr_def_fault,
        ack_req_usr_def_msg,
        alm_en_alm,
        alm_en_bad_qual,
        alm_en_com_err,
        alm_en_high_alm,
        alm_en_high_devi_alm,
        alm_en_high_rate_chg_alm,
        alm_en_high2_alm,
        alm_en_high3_alm,
        alm_en_low_alm,
        alm_en_low_devi_alm,
        alm_en_low_rate_chg_alm,
        alm_en_low2_alm,
        alm_en_low3_alm,
        alm_en_mod_err,
        alm_en_offline,
        alm_en_out,
        alm_en_state_chg,
        alm_en_sys_err,
        alm_en_sys_fault,
        alm_en_usr_def_fault,
        alm_en_usr_def_msg,
        alm_prty_alm,
        alm_prty_rtn_norm,
        alm_prty_badqual,
        alm_prty_high_alm,
        alm_prty_low_alm,
        alm_prty_high2_alm,
        alm_prty_low2_alm,
        alm_prty_high3_alm,
        alm_prty_low3_alm,
        alm_prty_high_devi_alm,
        alm_prty_low_devi_alm,
        alm_prty_high_rate_chg_alm,
        alm_prty_low_rate_chg_alm,
        alm_prty_sys_fault,
        alm_prty_usr_def_fault,
        alm_prty_usr_def_msg,
        alm_prty_alm_rtn,
        alm_prty_com_err,
        alm_prty_com_err_rtn,
        alm_prty_high_alm_rtn,
        alm_prty_high_devi_alm_rtn,
        alm_prty_high_rate_chg_alm_rtn,
        alm_prty_high2_alm_rtn,
        alm_prty_high3_alm_rtn,
        alm_prty_low_alm_rtn,
        alm_prty_low_devi_alm_rtn,
        alm_prty_low_rate_chg_alm_rtn,
        alm_prty_low2_alm_rtn,
        alm_prty_low3_alm_rtn,
        alm_prty_mod_err,
        alm_prty_mod_err_rtn,
        alm_prty_offline,
        alm_prty_offline_rtn,
        alm_prty_out,
        alm_prty_out_rtn,
        alm_prty_state_chg,
        alm_prty_state_chg_rtn,
        alm_prty_sys_err,
        alm_prty_sys_err_rtn,
        alm_prty_sys_fault_rtn,
        alm_prty_usr_def_fault_rtn,
        alm_prty_usr_def_msg_rtn,
        enable_alm,
        enable_bad_qual,
        enable_com_err,
        enable_high_alm,
        enable_high_devi_alm,
        enable_high_rate_chg_alm,
        enable_high2_alm,
        enable_high3_alm,
        enable_low_alm,
        enable_low_devi_alm,
        enable_low_rate_chg_alm,
        enable_low2_alm,
        enable_low3_alm,
        enable_mod_err,
        enable_offline,
        enable_out,
        enable_state_chg,
        enable_sys_err,
        enable_sys_fault,
        enable_usr_def_fault,
        enable_usr_def_msg,
        server_id
    )
    SELECT
        tag_guid,
        0 AS co_num_dec_pl,
        0 AS co_span,
        0 AS co_value_zero,
        0 AS num_dec_places,
        0 AS sp_num_dec_pl,
        0 AS pid_blk,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 0 ELSE NULL END) AS alm_inh_state_id,
        0 AS txt_set,
        'Y' AS ctrl_enbl,
        1 AS txt_str_lnth,
        'N' AS handshaking,
        4 AS fast_rpt_max_time,
        60 AS slow_rpt_max_time,
        ' ' AS user_text,
        'N' AS alm_ack_trnsm,
        'N' AS alm_sil_trnsm,
        'N' AS alm_ack_bcast,
        'N' AS ack_req_alm,
        'N' AS ack_req_bad_qual,
        'N' AS ack_req_com_err,
        'N' AS ack_req_high_alm,
        'N' AS ack_req_high_devi_alm,
        'N' AS ack_req_high_rate_chg_alm,
        'N' AS ack_req_high2_alm,
        'N' AS ack_req_high3_alm,
        'N' AS ack_req_low_alm,
        'N' AS ack_req_low_devi_alm,
        'N' AS ack_req_low_rate_chg_alm,
        'N' AS ack_req_low2_alm,
        'N' AS ack_req_low3_alm,
        'N' AS ack_req_mod_err,
        'N' AS ack_req_offline,
        'N' AS ack_req_out,
        'N' AS ack_req_state_chg,
        'N' AS ack_req_sys_err,
        'N' AS ack_req_sys_fault,
        'N' AS ack_req_usr_def_fault,
        'N' AS ack_req_usr_def_msg,
        'N' AS alm_en_alm,
        'N' AS alm_en_bad_qual,
        'N' AS alm_en_com_err,
        'N' AS alm_en_high_alm,
        'N' AS alm_en_high_devi_alm,
        'N' AS alm_en_high_rate_chg_alm,
        'N' AS alm_en_high2_alm,
        'N' AS alm_en_high3_alm,
        'N' AS alm_en_low_alm,
        'N' AS alm_en_low_devi_alm,
        'N' AS alm_en_low_rate_chg_alm,
        'N' AS alm_en_low2_alm,
        'N' AS alm_en_low3_alm,
        'N' AS alm_en_mod_err,
        'N' AS alm_en_offline,
        'N' AS alm_en_out,
        'N' AS alm_en_state_chg,
        'N' AS alm_en_sys_err,
        'N' AS alm_en_sys_fault,
        'N' AS alm_en_usr_def_fault,
        'N' AS alm_en_usr_def_msg,
        1 AS alm_prty_alm,
        1 AS alm_prty_rtn_norm,
        1 AS alm_prty_badqual,
        1 AS alm_prty_high_alm,
        1 AS alm_prty_low_alm,
        1 AS alm_prty_high2_alm,
        1 AS alm_prty_low2_alm,
        1 AS alm_prty_high3_alm,
        1 AS alm_prty_low3_alm,
        1 AS alm_prty_high_devi_alm,
        1 AS alm_prty_low_devi_alm,
        1 AS alm_prty_high_rate_chg_alm,
        1 AS alm_prty_low_rate_chg_alm,
        1 AS alm_prty_sys_fault,
        1 AS alm_prty_usr_def_fault,
        1 AS alm_prty_usr_def_msg,
        1 AS alm_prty_alm_rtn,
        1 AS alm_prty_com_err,
        1 AS alm_prty_com_err_rtn,
        1 AS alm_prty_high_alm_rtn,
        1 AS alm_prty_high_devi_alm_rtn,
        1 AS alm_prty_high_rate_chg_alm_rtn,
        1 AS alm_prty_high2_alm_rtn,
        1 AS alm_prty_high3_alm_rtn,
        1 AS alm_prty_low_alm_rtn,
        1 AS alm_prty_low_devi_alm_rtn,
        1 AS alm_prty_low_rate_chg_alm_rtn,
        1 AS alm_prty_low2_alm_rtn,
        1 AS alm_prty_low3_alm_rtn,
        1 AS alm_prty_mod_err,
        1 AS alm_prty_mod_err_rtn,
        1 AS alm_prty_offline,
        1 AS alm_prty_offline_rtn,
        1 AS alm_prty_out,
        1 AS alm_prty_out_rtn,
        1 AS alm_prty_state_chg,
        1 AS alm_prty_state_chg_rtn,
        1 AS alm_prty_sys_err,
        1 AS alm_prty_sys_err_rtn,
        1 AS alm_prty_sys_fault_rtn,
        1 AS alm_prty_usr_def_fault_rtn,
        1 AS alm_prty_usr_def_msg_rtn,
        'N' AS enable_alm,
        'N' AS enable_bad_qual,
        'N' AS enable_com_err,
        'N' AS enable_high_alm,
        'N' AS enable_high_devi_alm,
        'N' AS enable_high_rate_chg_alm,
        'N' AS enable_high2_alm,
        'N' AS enable_high3_alm,
        'N' AS enable_low_alm,
        'N' AS enable_low_devi_alm,
        'N' AS enable_low_rate_chg_alm,
        'N' AS enable_low2_alm,
        'N' AS enable_low3_alm,
        'N' AS enable_mod_err,
        'N' AS enable_offline,
        'N' AS enable_out,
        'N' AS enable_state_chg,
        'N' AS enable_sys_err,
        'N' AS enable_sys_fault,
        'N' AS enable_usr_def_fault,
        'N' AS enable_usr_def_msg,
        '00000000-0000-0000-0000-000000000000'::uuid AS server_id
    FROM __tags_ch_add__
    WHERE tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24);

    INSERT INTO harmonydata.td_800xa_ext1
    (
        tag_guid,
        co_eng_units_ndx,
        feedbk10_state_ndx,
        feedbk11_state_ndx,
        feedbk20_state_ndx,
        feedbk21_state_ndx,
        area_guid,
        equipment_guid,
        alm_comnt_rtn_norm_ndx,
        alm_comnt_high_alm_ndx,
        alm_comnt_high_devi_alm_ndx,
        alm_comnt_bad_qual_ndx,
        alm_comnt_high_alm_rtn_ndx,
        alm_comnt_high_devi_alm_rtn_ndx,
        one_state_bad_qual_ndx,
        one_state_high_alm_ndx,
        one_state_high_devi_alm_ndx,
        zero_state_bad_qual_ndx,
        zero_state_high_alm_ndx,
        zero_state_high_devi_alm_ndx
    )
    SELECT
        tag_guid,
        (CASE WHEN tag_type_ndx IN (4) THEN 0 ELSE NULL END) AS co_eng_units_ndx,
        (CASE WHEN tag_type_ndx IN (3,6,7,9) THEN 0 ELSE NULL END) AS feedbk10_state_ndx,
        (CASE WHEN tag_type_ndx IN (3,6,7,9) THEN 1 ELSE NULL END) AS feedbk11_state_ndx,
        (CASE WHEN tag_type_ndx IN (6,7,9) THEN 0 ELSE NULL END) AS feedbk20_state_ndx,
        (CASE WHEN tag_type_ndx IN (6,7,9) THEN 1 ELSE NULL END) AS feedbk21_state_ndx,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 'bfce1530-9305-11d3-8d31-00c04f794642'::uuid ELSE NULL END) AS area_guid,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 'bfce1531-9305-11d3-8d31-00c04f794642'::uuid ELSE NULL END) AS equipment_guid,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 0 ELSE NULL END) AS alm_comnt_rtn_norm_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS alm_comnt_high_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS alm_comnt_high_devi_alm_ndx,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 0 ELSE NULL END) AS alm_comnt_bad_qual_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS alm_comnt_high_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS alm_comnt_high_devi_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 0 ELSE NULL END) AS one_state_bad_qual_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS one_state_high_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS one_state_high_devi_alm_ndx,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 0 ELSE NULL END) AS zero_state_bad_qual_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS zero_state_high_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS zero_state_high_devi_alm_ndx
    FROM __tags_ch_add__
    WHERE tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24);

    INSERT INTO harmonydata.td_800xa_ext2
    (
        tag_guid,
        zero_state_ndx,
        one_state_ndx,
        unit_guid,
        security_group_guid,
        alm_comnt_low_alm_ndx,
        alm_comnt_low_devi_alm_ndx,
        alm_comnt_low_alm_rtn_ndx,
        alm_comnt_low_devi_alm_rtn_ndx,
        alm_comnt_out_ndx,
        alm_comnt_out_rtn_ndx,
        alm_comnt_state_chg_rtn_ndx,
        alm_comnt_state_chg_ndx,
        one_state_state_chg_ndx,
        zero_state_state_chg_ndx,
        one_state_low_alm_ndx,
        one_state_low_devi_alm_ndx,
        zero_state_low_alm_ndx,
        zero_state_low_devi_alm_ndx
    )
    SELECT
        tag_guid,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,9,11,17,22,23) THEN 0 ELSE NULL END) AS zero_state_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,9,11,17,22,23) THEN 1 ELSE NULL END) AS one_state_ndx,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN 'bfce1532-9305-11d3-8d31-00c04f794642'::uuid ELSE NULL END) AS unit_guid,
        (CASE WHEN tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24) THEN '89765bd2-9305-11d3-8d31-00c04f794642'::uuid ELSE NULL END) AS security_group_guid,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS alm_comnt_low_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS alm_comnt_low_devi_alm_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS alm_comnt_low_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS alm_comnt_low_devi_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,9,11,17,22,23) THEN 0 ELSE NULL END) AS alm_comnt_out_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,9,11,17,22,23) THEN 0 ELSE NULL END) AS alm_comnt_out_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,8,9,11,17,22,23) THEN 0 ELSE NULL END) AS alm_comnt_state_chg_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,8,9,11,17,22,23) THEN 0 ELSE NULL END) AS alm_comnt_state_chg_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,8,9,11,17,22,23) THEN 0 ELSE NULL END) AS one_state_state_chg_ndx,
        (CASE WHEN tag_type_ndx IN (2,3,6,7,8,9,11,17,22,23) THEN 0 ELSE NULL END) AS zero_state_state_chg_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS one_state_low_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS one_state_low_devi_alm_ndx,
        (CASE WHEN tag_type_ndx IN (1,4,10,16,20,21) THEN 0 ELSE NULL END) AS zero_state_low_alm_ndx,
        (CASE WHEN tag_type_ndx IN (4,16) THEN 0 ELSE NULL END) AS zero_state_low_devi_alm_ndx
    FROM __tags_ch_add__
    WHERE tag_type_ndx IN (1,2,3,4,5,6,7,8,9,10,11,14,16,17,18,20,21,22,23,24);

    INSERT INTO harmonydata.td_800xa_ext3
    (
        tag_guid,
        two_state_ndx,
        three_state_ndx,
        feedbk30_state_ndx,
        feedbk31_state_ndx,
        feedbk40_state_ndx,
        feedbk41_state_ndx,
        alm_comnt_alm_ndx,
        alm_comnt_high2_alm_ndx,
        alm_comnt_low2_alm_ndx,
        alm_comnt_high3_alm_ndx,
        alm_comnt_low3_alm_ndx,
        alm_comnt_high_rate_chg_alm_ndx,
        alm_comnt_low_rate_chg_alm_ndx,
        alm_comnt_alm_rtn_ndx,
        alm_comnt_com_err_ndx,
        alm_comnt_com_err_rtn_ndx,
        alm_comnt_high_rate_chg_alm_rtn_ndx,
        alm_comnt_high2_alm_rtn_ndx,
        alm_comnt_high3_alm_rtn_ndx,
        alm_comnt_low_rate_chg_alm_rtn_ndx,
        alm_comnt_low2_alm_rtn_ndx,
        alm_comnt_low3_alm_rtn_ndx,
        one_state_alm_ndx,
        one_state_com_err_ndx,
        one_state_high_rate_chg_alm_ndx,
        one_state_high2_alm_ndx,
        one_state_high3_alm_ndx,
        one_state_low_rate_chg_alm_ndx,
        one_state_low2_alm_ndx,
        one_state_low3_alm_ndx,
        zero_state_alm_ndx,
        zero_state_com_err_ndx,
        zero_state_high_rate_chg_alm_ndx,
        zero_state_high2_alm_ndx,
        zero_state_high3_alm_ndx,
        zero_state_low_rate_chg_alm_ndx,
        zero_state_low2_alm_ndx,
        zero_state_low3_alm_ndx
    )
    SELECT
        tag_guid,
        (CASE WHEN tag_type_ndx IN (7) THEN 0 ELSE NULL END) AS two_state_ndx,
        (CASE WHEN tag_type_ndx IN (7) THEN 0 ELSE NULL END) AS three_state_ndx,
        (CASE WHEN tag_type_ndx IN (7) THEN 0 ELSE NULL END) AS feedbk30_state_ndx,
        (CASE WHEN tag_type_ndx IN (7) THEN 1 ELSE NULL END) AS feedbk31_state_ndx,
        (CASE WHEN tag_type_ndx IN (7) THEN 0 ELSE NULL END) AS feedbk40_state_ndx,
        (CASE WHEN tag_type_ndx IN (7) THEN 1 ELSE NULL END) AS feedbk41_state_ndx,
        (CASE WHEN tag_type_ndx IN (18) THEN 0 ELSE NULL END) AS alm_comnt_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high3_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low3_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (18) THEN 0 ELSE NULL END) AS alm_comnt_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_com_err_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_com_err_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high_rate_chg_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high2_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_high3_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low_rate_chg_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low2_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS alm_comnt_low3_alm_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (18) THEN 0 ELSE NULL END) AS one_state_alm_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS one_state_com_err_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_high_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_high2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_high3_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_low_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_low2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS one_state_low3_alm_ndx,
        (CASE WHEN tag_type_ndx IN (18) THEN 0 ELSE NULL END) AS zero_state_alm_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS zero_state_com_err_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_high_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_high2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_high3_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_low_rate_chg_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_low2_alm_ndx,
        (CASE WHEN tag_type_ndx IN (16) THEN 0 ELSE NULL END) AS zero_state_low3_alm_ndx
    FROM __tags_ch_add__
    WHERE tag_type_ndx IN (7,8,16,18);

    INSERT INTO harmonydata.td_800xa_ext4
    (
        tag_guid,
        permv10_state_ndx,
        permv11_state_ndx,
        permv20_state_ndx,
        permv21_state_ndx,
        alm_comnt_sys_fault_ndx,
        alm_comnt_usr_def_fault_ndx,
        alm_comnt_usr_def_msg_ndx,
        alm_comnt_mod_err_ndx,
        alm_comnt_mod_err_rtn_ndx,
        alm_comnt_offline_ndx,
        alm_comnt_offline_rtn_ndx,
        alm_comnt_sys_err_ndx,
        alm_comnt_sys_err_rtn_ndx,
        alm_comnt_sys_fault_rtn_ndx,
        alm_comnt_usr_def_fault_rtn_ndx,
        alm_comnt_usr_def_msg_rtn_ndx,
        one_state_mod_err_ndx,
        one_state_offline_ndx,
        one_state_sys_err_ndx,
        one_state_sys_fault_ndx,
        one_state_usr_def_fault_ndx,
        one_state_usr_def_msg_ndx,
        zero_state_mod_err_ndx,
        zero_state_offline_ndx,
        zero_state_sys_err_ndx,
        zero_state_sys_fault_ndx,
        zero_state_usr_def_fault_ndx,
        zero_state_usr_def_msg_ndx
    )
    SELECT
        tag_guid,
        (CASE WHEN tag_type_ndx IN (9) THEN 0 ELSE NULL END) AS permv10_state_ndx,
        (CASE WHEN tag_type_ndx IN (9) THEN 1 ELSE NULL END) AS permv11_state_ndx,
        (CASE WHEN tag_type_ndx IN (9) THEN 0 ELSE NULL END) AS permv20_state_ndx,
        (CASE WHEN tag_type_ndx IN (9) THEN 1 ELSE NULL END) AS permv21_state_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_sys_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_usr_def_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_usr_def_msg_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_mod_err_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_mod_err_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_offline_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_offline_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_sys_err_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS alm_comnt_sys_err_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_sys_fault_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_usr_def_fault_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS alm_comnt_usr_def_msg_rtn_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS one_state_mod_err_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS one_state_offline_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS one_state_sys_err_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS one_state_sys_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS one_state_usr_def_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS one_state_usr_def_msg_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS zero_state_mod_err_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS zero_state_offline_ndx,
        (CASE WHEN tag_type_ndx IN (8) THEN 0 ELSE NULL END) AS zero_state_sys_err_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS zero_state_sys_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS zero_state_usr_def_fault_ndx,
        (CASE WHEN tag_type_ndx IN (24) THEN 0 ELSE NULL END) AS zero_state_usr_def_msg_ndx
    FROM __tags_ch_add__
    WHERE tag_type_ndx IN (8,9,24);

    /************* auto generate end *************/ 

    /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_add_800xa_recs_td_ch', 'Add td_800xa records');

    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_add_800xa_recs_td_ch', 'fn_add_800xa_recs_td_ch');

END
$$;


ALTER FUNCTION harmonydata.fn_add_800xa_recs_td_ch(p_do_log boolean) OWNER TO postgres;

--
-- TOC entry 1212 (class 1255 OID 1704019)
-- Name: fn_add_or_update_800xa_tags_ch(harmonydata.type_800xa_tag_ch[], text, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_add_or_update_800xa_tags_ch(p_tags harmonydata.type_800xa_tag_ch[], p_mode text, p_do_update_alm_inh boolean) RETURNS text
    LANGUAGE plpgsql
    AS $$

DECLARE 

    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;
    l_ret_status text;
    l_exclusion_template harmonydata.type_800xa_tag_ch;
        
    l_do_log bool := true;  -- TODO: get value from table or registry

BEGIN

    /*
    l_ret_status := FORMAT('{' || chr(13) || chr(10) ||
                           '    "Status":%s,' || chr(13) || chr(10) ||
                           '    "ErrorMessage":%s,' || chr(13) || chr(10) ||
                           '    "RecordErrors":%s' || chr(13) || chr(10) ||
                           '}', 
                           '"OK"', 
                           '""',
                           'null');
    return l_ret_status;          
    */
    
    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time_fn, 'fn_add_or_update_800xa_tags_ch', '');
    

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_add_or_update_800xa_tags_ch', ''); 

    LOCK TABLE harmonydata.td_ch IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_base IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext1 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext2 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext3 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext4 IN EXCLUSIVE MODE;        
    LOCK TABLE harmonydata.td_eud IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_lsd IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_alarmcomment IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_maestroarea IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_maestroequipment IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_maestrounit IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_maestrosecuritygroup IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.pj_controllogic IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.ex_controllogictemplate IN EXCLUSIVE MODE;

    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_add_or_update_800xa_tags_ch', 'Acquire locks');


    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_add_or_update_800xa_tags_ch', '');
                          
    DROP TABLE IF EXISTS __tags_ch__;

    CREATE TEMP TABLE __tags_ch__ AS
    SELECT
        tag_guid,
        tag_name,
        tag_desc,
        tag_type_ndx,
        tag_type,
        exchange_indicator,
        project_flag,
        create_timestamp,
        update_timestamp,
        loop,
        node,
        module,
        block,
        cld_guid,
        cld_name,
        cld_obj_id,
        cld_obj_subindex,
        fc_num,
        eng_units_ndx,
        eng_units_desc,
        value_zero,
        span,
        high_alm,
        low_alm,
        sp_value_zero,
        sp_span,
        sp_eng_units_ndx,
        sp_eng_units_desc,
        dev_alm_point,
        alm_state_ndx,
        cfc_super_tag
    FROM unnest (p_tags); 


    /************* auto generate start *************/  
    
    DROP TABLE IF EXISTS __tags_800xa_base__;

    CREATE TEMP TABLE __tags_800xa_base__ AS
    SELECT
        tag_guid,
        tag_name,
        co_num_dec_pl,
        co_span,
        co_value_zero,
        num_dec_places,
        sp_num_dec_pl,
        pid_blk,
        alm_inh_tag,
        alm_inh_tag_guid,
        alm_inh_tag_atom,
        alm_inh_state_id,
        alm_inh_state,
        txt_set,
        ctrl_enbl,
        txt_str_lnth,
        handshaking,
        fast_rpt_max_time,
        slow_rpt_max_time,
        user_text,
        user_index,
        alm_ack_trnsm,
        alm_sil_trnsm,
        alm_ack_bcast,
        ack_req_alm,
        ack_req_bad_qual,
        ack_req_com_err,
        ack_req_high_alm,
        ack_req_high_devi_alm,
        ack_req_high_rate_chg_alm,
        ack_req_high2_alm,
        ack_req_high3_alm,
        ack_req_low_alm,
        ack_req_low_devi_alm,
        ack_req_low_rate_chg_alm,
        ack_req_low2_alm,
        ack_req_low3_alm,
        ack_req_mod_err,
        ack_req_offline,
        ack_req_out,
        ack_req_state_chg,
        ack_req_sys_err,
        ack_req_sys_fault,
        ack_req_usr_def_fault,
        ack_req_usr_def_msg,
        alm_en_alm,
        alm_en_bad_qual,
        alm_en_com_err,
        alm_en_high_alm,
        alm_en_high_devi_alm,
        alm_en_high_rate_chg_alm,
        alm_en_high2_alm,
        alm_en_high3_alm,
        alm_en_low_alm,
        alm_en_low_devi_alm,
        alm_en_low_rate_chg_alm,
        alm_en_low2_alm,
        alm_en_low3_alm,
        alm_en_mod_err,
        alm_en_offline,
        alm_en_out,
        alm_en_state_chg,
        alm_en_sys_err,
        alm_en_sys_fault,
        alm_en_usr_def_fault,
        alm_en_usr_def_msg,
        alm_prty_alm,
        alm_prty_rtn_norm,
        alm_prty_badqual,
        alm_prty_high_alm,
        alm_prty_low_alm,
        alm_prty_high2_alm,
        alm_prty_low2_alm,
        alm_prty_high3_alm,
        alm_prty_low3_alm,
        alm_prty_high_devi_alm,
        alm_prty_low_devi_alm,
        alm_prty_high_rate_chg_alm,
        alm_prty_low_rate_chg_alm,
        alm_prty_sys_fault,
        alm_prty_usr_def_fault,
        alm_prty_usr_def_msg,
        alm_prty_alm_rtn,
        alm_prty_com_err,
        alm_prty_com_err_rtn,
        alm_prty_high_alm_rtn,
        alm_prty_high_devi_alm_rtn,
        alm_prty_high_rate_chg_alm_rtn,
        alm_prty_high2_alm_rtn,
        alm_prty_high3_alm_rtn,
        alm_prty_low_alm_rtn,
        alm_prty_low_devi_alm_rtn,
        alm_prty_low_rate_chg_alm_rtn,
        alm_prty_low2_alm_rtn,
        alm_prty_low3_alm_rtn,
        alm_prty_mod_err,
        alm_prty_mod_err_rtn,
        alm_prty_offline,
        alm_prty_offline_rtn,
        alm_prty_out,
        alm_prty_out_rtn,
        alm_prty_state_chg,
        alm_prty_state_chg_rtn,
        alm_prty_sys_err,
        alm_prty_sys_err_rtn,
        alm_prty_sys_fault_rtn,
        alm_prty_usr_def_fault_rtn,
        alm_prty_usr_def_msg_rtn,
        enable_alm,
        enable_bad_qual,
        enable_com_err,
        enable_high_alm,
        enable_high_devi_alm,
        enable_high_rate_chg_alm,
        enable_high2_alm,
        enable_high3_alm,
        enable_low_alm,
        enable_low_devi_alm,
        enable_low_rate_chg_alm,
        enable_low2_alm,
        enable_low3_alm,
        enable_mod_err,
        enable_offline,
        enable_out,
        enable_state_chg,
        enable_sys_err,
        enable_sys_fault,
        enable_usr_def_fault,
        enable_usr_def_msg,
        server_id
    FROM unnest (p_tags);

    DROP TABLE IF EXISTS __tags_800xa_ext1__;

    CREATE TEMP TABLE __tags_800xa_ext1__ AS
    SELECT
        tag_guid,
        tag_name,
        co_eng_units_ndx,
        co_eng_units_desc,
        feedbk10_state_ndx,
        feedbk10_state_desc,
        feedbk11_state_ndx,
        feedbk11_state_desc,
        feedbk20_state_ndx,
        feedbk20_state_desc,
        feedbk21_state_ndx,
        feedbk21_state_desc,
        area_guid,
        area_name,
        equipment_guid,
        equipment_name,
        alm_comnt_rtn_norm_ndx,
        alm_comnt_rtn_norm,
        alm_comnt_high_alm_ndx,
        alm_comnt_high_alm,
        alm_comnt_high_devi_alm_ndx,
        alm_comnt_high_devi_alm,
        alm_comnt_bad_qual_ndx,
        alm_comnt_bad_qual,
        alm_comnt_high_alm_rtn_ndx,
        alm_comnt_high_alm_rtn,
        alm_comnt_high_devi_alm_rtn_ndx,
        alm_comnt_high_devi_alm_rtn,
        one_state_bad_qual_ndx,
        one_state_bad_qual_desc,
        one_state_high_alm_ndx,
        one_state_high_alm_desc,
        one_state_high_devi_alm_ndx,
        one_state_high_devi_alm_desc,
        zero_state_bad_qual_ndx,
        zero_state_bad_qual_desc,
        zero_state_high_alm_ndx,
        zero_state_high_alm_desc,
        zero_state_high_devi_alm_ndx,
        zero_state_high_devi_alm_desc
    FROM unnest (p_tags);

    DROP TABLE IF EXISTS __tags_800xa_ext2__;

    CREATE TEMP TABLE __tags_800xa_ext2__ AS
    SELECT
        tag_guid,
        tag_name,
        zero_state_ndx,
        zero_state_desc,
        one_state_ndx,
        one_state_desc,
        unit_guid,
        unit_name,
        security_group_guid,
        security_group_name,
        alm_comnt_low_alm_ndx,
        alm_comnt_low_alm,
        alm_comnt_low_devi_alm_ndx,
        alm_comnt_low_devi_alm,
        alm_comnt_low_alm_rtn_ndx,
        alm_comnt_low_alm_rtn,
        alm_comnt_low_devi_alm_rtn_ndx,
        alm_comnt_low_devi_alm_rtn,
        alm_comnt_out_ndx,
        alm_comnt_out,
        alm_comnt_out_rtn_ndx,
        alm_comnt_out_rtn,
        alm_comnt_state_chg_rtn_ndx,
        alm_comnt_state_chg_rtn,
        alm_comnt_state_chg_ndx,
        alm_comnt_state_chg,
        one_state_state_chg_ndx,
        one_state_state_chg,
        zero_state_state_chg_ndx,
        zero_state_state_chg,
        one_state_low_alm_ndx,
        one_state_low_alm_desc,
        one_state_low_devi_alm_ndx,
        one_state_low_devi_alm_desc,
        zero_state_low_alm_ndx,
        zero_state_low_alm_desc,
        zero_state_low_devi_alm_ndx,
        zero_state_low_devi_alm_desc
    FROM unnest (p_tags);

    DROP TABLE IF EXISTS __tags_800xa_ext3__;

    CREATE TEMP TABLE __tags_800xa_ext3__ AS
    SELECT
        tag_guid,
        tag_name,
        two_state_ndx,
        two_state_desc,
        three_state_ndx,
        three_state_desc,
        feedbk30_state_ndx,
        feedbk30_state_desc,
        feedbk31_state_ndx,
        feedbk31_state_desc,
        feedbk40_state_ndx,
        feedbk40_state_desc,
        feedbk41_state_ndx,
        feedbk41_state_desc,
        alm_comnt_alm_ndx,
        alm_comnt_alm,
        alm_comnt_high2_alm_ndx,
        alm_comnt_high2_alm,
        alm_comnt_low2_alm_ndx,
        alm_comnt_low2_alm,
        alm_comnt_high3_alm_ndx,
        alm_comnt_high3_alm,
        alm_comnt_low3_alm_ndx,
        alm_comnt_low3_alm,
        alm_comnt_high_rate_chg_alm_ndx,
        alm_comnt_high_rate_chg_alm,
        alm_comnt_low_rate_chg_alm_ndx,
        alm_comnt_low_rate_chg_alm,
        alm_comnt_alm_rtn_ndx,
        alm_comnt_alm_rtn,
        alm_comnt_com_err_ndx,
        alm_comnt_com_err,
        alm_comnt_com_err_rtn_ndx,
        alm_comnt_com_err_rtn,
        alm_comnt_high_rate_chg_alm_rtn_ndx,
        alm_comnt_high_rate_chg_alm_rtn,
        alm_comnt_high2_alm_rtn_ndx,
        alm_comnt_high2_alm_rtn,
        alm_comnt_high3_alm_rtn_ndx,
        alm_comnt_high3_alm_rtn,
        alm_comnt_low_rate_chg_alm_rtn_ndx,
        alm_comnt_low_rate_chg_alm_rtn,
        alm_comnt_low2_alm_rtn_ndx,
        alm_comnt_low2_alm_rtn,
        alm_comnt_low3_alm_rtn_ndx,
        alm_comnt_low3_alm_rtn,
        one_state_alm_ndx,
        one_state_alm_desc,
        one_state_com_err_ndx,
        one_state_com_err_desc,
        one_state_high_rate_chg_alm_ndx,
        one_state_high_rate_chg_alm_desc,
        one_state_high2_alm_ndx,
        one_state_high2_alm_desc,
        one_state_high3_alm_ndx,
        one_state_high3_alm_desc,
        one_state_low_rate_chg_alm_ndx,
        one_state_low_rate_chg_alm_desc,
        one_state_low2_alm_ndx,
        one_state_low2_alm_desc,
        one_state_low3_alm_ndx,
        one_state_low3_alm_desc,
        zero_state_alm_ndx,
        zero_state_alm_desc,
        zero_state_com_err_ndx,
        zero_state_com_err_desc,
        zero_state_high_rate_chg_alm_ndx,
        zero_state_high_rate_chg_alm_desc,
        zero_state_high2_alm_ndx,
        zero_state_high2_alm_desc,
        zero_state_high3_alm_ndx,
        zero_state_high3_alm_desc,
        zero_state_low_rate_chg_alm_ndx,
        zero_state_low_rate_chg_alm_desc,
        zero_state_low2_alm_ndx,
        zero_state_low2_alm_desc,
        zero_state_low3_alm_ndx,
        zero_state_low3_alm_desc
    FROM unnest (p_tags)
    WHERE 
        two_state_ndx IS NOT NULL OR
        three_state_ndx IS NOT NULL OR
        feedbk30_state_ndx IS NOT NULL OR
        feedbk31_state_ndx IS NOT NULL OR
        feedbk40_state_ndx IS NOT NULL OR
        feedbk41_state_ndx IS NOT NULL OR
        alm_comnt_alm_ndx IS NOT NULL OR
        alm_comnt_high2_alm_ndx IS NOT NULL OR
        alm_comnt_low2_alm_ndx IS NOT NULL OR
        alm_comnt_high3_alm_ndx IS NOT NULL OR
        alm_comnt_low3_alm_ndx IS NOT NULL OR
        alm_comnt_high_rate_chg_alm_ndx IS NOT NULL OR
        alm_comnt_low_rate_chg_alm_ndx IS NOT NULL OR
        alm_comnt_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_com_err_ndx IS NOT NULL OR
        alm_comnt_com_err_rtn_ndx IS NOT NULL OR
        alm_comnt_high_rate_chg_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_high2_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_high3_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_low_rate_chg_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_low2_alm_rtn_ndx IS NOT NULL OR
        alm_comnt_low3_alm_rtn_ndx IS NOT NULL OR
        one_state_alm_ndx IS NOT NULL OR
        one_state_com_err_ndx IS NOT NULL OR
        one_state_high_rate_chg_alm_ndx IS NOT NULL OR
        one_state_high2_alm_ndx IS NOT NULL OR
        one_state_high3_alm_ndx IS NOT NULL OR
        one_state_low_rate_chg_alm_ndx IS NOT NULL OR
        one_state_low2_alm_ndx IS NOT NULL OR
        one_state_low3_alm_ndx IS NOT NULL OR
        zero_state_alm_ndx IS NOT NULL OR
        zero_state_com_err_ndx IS NOT NULL OR
        zero_state_high_rate_chg_alm_ndx IS NOT NULL OR
        zero_state_high2_alm_ndx IS NOT NULL OR
        zero_state_high3_alm_ndx IS NOT NULL OR
        zero_state_low_rate_chg_alm_ndx IS NOT NULL OR
        zero_state_low2_alm_ndx IS NOT NULL OR
        zero_state_low3_alm_ndx IS NOT NULL;

    DROP TABLE IF EXISTS __tags_800xa_ext4__;

    CREATE TEMP TABLE __tags_800xa_ext4__ AS
    SELECT
        tag_guid,
        tag_name,
        permv10_state_ndx,
        permv10_state_desc,
        permv11_state_ndx,
        permv11_state_desc,
        permv20_state_ndx,
        permv20_state_desc,
        permv21_state_ndx,
        permv21_state_desc,
        alm_comnt_sys_fault_ndx,
        alm_comnt_sys_fault,
        alm_comnt_usr_def_fault_ndx,
        alm_comnt_usr_def_fault,
        alm_comnt_usr_def_msg_ndx,
        alm_comnt_usr_def_msg,
        alm_comnt_mod_err_ndx,
        alm_comnt_mod_err,
        alm_comnt_mod_err_rtn_ndx,
        alm_comnt_mod_err_rtn,
        alm_comnt_offline_ndx,
        alm_comnt_offline,
        alm_comnt_offline_rtn_ndx,
        alm_comnt_offline_rtn,
        alm_comnt_sys_err_ndx,
        alm_comnt_sys_err,
        alm_comnt_sys_err_rtn_ndx,
        alm_comnt_sys_err_rtn,
        alm_comnt_sys_fault_rtn_ndx,
        alm_comnt_sys_fault_rtn,
        alm_comnt_usr_def_fault_rtn_ndx,
        alm_comnt_usr_def_fault_rtn,
        alm_comnt_usr_def_msg_rtn_ndx,
        alm_comnt_usr_def_msg_rtn,
        one_state_mod_err_ndx,
        one_state_mod_err_desc,
        one_state_offline_ndx,
        one_state_offline_desc,
        one_state_sys_err_ndx,
        one_state_sys_err_desc,
        one_state_sys_fault_ndx,
        one_state_sys_fault_desc,
        one_state_usr_def_fault_ndx,
        one_state_usr_def_fault_desc,
        one_state_usr_def_msg_ndx,
        one_state_usr_def_msg_desc,
        zero_state_mod_err_ndx,
        zero_state_mod_err_desc,
        zero_state_offline_ndx,
        zero_state_offline_desc,
        zero_state_sys_err_ndx,
        zero_state_sys_err_desc,
        zero_state_sys_fault_ndx,
        zero_state_sys_fault_desc,
        zero_state_usr_def_fault_ndx,
        zero_state_usr_def_fault_desc,
        zero_state_usr_def_msg_ndx,
        zero_state_usr_def_msg_desc
    FROM unnest (p_tags)
    WHERE 
        permv10_state_ndx IS NOT NULL OR
        permv11_state_ndx IS NOT NULL OR
        permv20_state_ndx IS NOT NULL OR
        permv21_state_ndx IS NOT NULL OR
        alm_comnt_sys_fault_ndx IS NOT NULL OR
        alm_comnt_usr_def_fault_ndx IS NOT NULL OR
        alm_comnt_usr_def_msg_ndx IS NOT NULL OR
        alm_comnt_mod_err_ndx IS NOT NULL OR
        alm_comnt_mod_err_rtn_ndx IS NOT NULL OR
        alm_comnt_offline_ndx IS NOT NULL OR
        alm_comnt_offline_rtn_ndx IS NOT NULL OR
        alm_comnt_sys_err_ndx IS NOT NULL OR
        alm_comnt_sys_err_rtn_ndx IS NOT NULL OR
        alm_comnt_sys_fault_rtn_ndx IS NOT NULL OR
        alm_comnt_usr_def_fault_rtn_ndx IS NOT NULL OR
        alm_comnt_usr_def_msg_rtn_ndx IS NOT NULL OR
        one_state_mod_err_ndx IS NOT NULL OR
        one_state_offline_ndx IS NOT NULL OR
        one_state_sys_err_ndx IS NOT NULL OR
        one_state_sys_fault_ndx IS NOT NULL OR
        one_state_usr_def_fault_ndx IS NOT NULL OR
        one_state_usr_def_msg_ndx IS NOT NULL OR
        zero_state_mod_err_ndx IS NOT NULL OR
        zero_state_offline_ndx IS NOT NULL OR
        zero_state_sys_err_ndx IS NOT NULL OR
        zero_state_sys_fault_ndx IS NOT NULL OR
        zero_state_usr_def_fault_ndx IS NOT NULL OR
        zero_state_usr_def_msg_ndx IS NOT NULL;
    
    /************* auto generate end *************/  
    
  
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_add_or_update_800xa_tags_ch', 'Create temporary tables');

        
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_add_or_update_800xa_tags_ch', ''); 

    l_exclusion_template = NULL;
    IF (array_length(p_tags, 1) = 1) THEN
        l_exclusion_template := p_tags[1];
    /*
    The following code is being removed because it fails in the case where the first tag has the descriptor field null while subsequent tags have the descriptor field non-null. 
    
    This causes the fn_propagate_text_index_td_ch to skip all propagation of text fields to index fields which is incorrect for the tags that have the descriptor field set.
    
    The way to fix it would be to set each text/index field in the l_exclusion_template to the MAX of all of the tags in the set so that any field being set in any tag would trigger the appropriate 
    propagation code (as well as the appropriate error checks in the fn_find_text_index_errors_td_ch function). This is not worth the effort unless we see use cases where tags are being added/updated
    in groups arranged by tag type.    
    
    ELSE 
        IF (SELECT COUNT(*) FROM (SELECT tag_type_ndx FROM __tags_ch__ GROUP BY tag_type_ndx) AS tag_types) = 1 THEN
            l_exclusion_template := p_tags[1];
        END IF;
    */
    END IF;
    
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_add_or_update_800xa_tags_ch', 'set l_exclusion_template');

    
    l_ret_status := harmonydata.fn_add_or_update_tags_ch(l_do_log, p_mode, true, false, p_do_update_alm_inh, l_exclusion_template);

    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time_fn, 'fn_add_or_update_800xa_tags_ch', 'fn_add_or_update_800xa_tags_ch');


    RETURN l_ret_status;
     
END
$$;


ALTER FUNCTION harmonydata.fn_add_or_update_800xa_tags_ch(p_tags harmonydata.type_800xa_tag_ch[], p_mode text, p_do_update_alm_inh boolean) OWNER TO postgres;

--
-- TOC entry 1208 (class 1255 OID 1442257)
-- Name: fn_add_or_update_splus_tags_ch(harmonydata.type_tag_ch[], text, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_add_or_update_splus_tags_ch(p_tags harmonydata.type_tag_ch[], p_mode text, p_do_add_default_800xa_recs boolean) RETURNS text
    LANGUAGE plpgsql
    AS $$

DECLARE 

    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;
    l_ret_status text;
        
    l_do_log bool := true;  -- TODO: get value from table or registry

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time_fn, 'fn_add_or_update_splus_tags_ch', '');
    

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_add_or_update_splus_tags_ch', ''); 

    LOCK TABLE harmonydata.td_ch IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_eud IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.pj_controllogic IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.ex_controllogictemplate IN EXCLUSIVE MODE;

    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_add_or_update_splus_tags_ch', 'Acquire locks');

   
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_add_or_update_splus_tags_ch', ''); 

    DROP TABLE IF EXISTS __tags_ch__;
    CREATE TEMP TABLE __tags_ch__ AS SELECT * FROM unnest (p_tags);
    
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_add_or_update_splus_tags_ch', 'Create tags temporary table');

 
    l_ret_status = harmonydata.fn_add_or_update_tags_ch(l_do_log, p_mode, false, p_do_add_default_800xa_recs, false, NULL);
    
    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time_fn, 'fn_add_or_update_splus_tags_ch', 'fn_add_or_update_splus_tags_ch');

    RETURN l_ret_status;
     
END
$$;


ALTER FUNCTION harmonydata.fn_add_or_update_splus_tags_ch(p_tags harmonydata.type_tag_ch[], p_mode text, p_do_add_default_800xa_recs boolean) OWNER TO postgres;

--
-- TOC entry 1209 (class 1255 OID 1704012)
-- Name: fn_add_or_update_tags_ch(boolean, text, boolean, boolean, boolean, harmonydata.type_800xa_tag_ch); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_add_or_update_tags_ch(p_do_log boolean, p_mode text, p_is_800xa boolean, p_do_add_default_800xa_recs boolean, p_do_update_alm_inh boolean, p_exclusion_template harmonydata.type_800xa_tag_ch) RETURNS text
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_status text := '"ERROR"';
    l_json_record_errors json := null;
    l_msg_text text;
    l_sqlstate_text text;
    l_tblname_text text;
    l_ex_detail_text text;
    l_ex_hint_text text;
    l_ex_context_text text;
    l_ret_status text;
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;
    l_duplicate_errors bool := false;
    l_cnt integer;
    l_msg text;  -- used for diagnostics

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_add_or_update_tags_ch', '');

    DROP TABLE IF EXISTS __errant_tags__;
    CREATE TEMP TABLE __errant_tags__
    (
        tag_guid uuid, 
        tag_name character varying(64),
        field_name text,
        error_num int,
        error_desc text
    );     

      
    PERFORM harmonydata.fn_propagate_text_index_td_ch(p_do_log, p_is_800xa, p_do_add_default_800xa_recs, p_exclusion_template);


    PERFORM harmonydata.fn_find_text_index_errors_td_ch(p_do_log, p_is_800xa, p_do_add_default_800xa_recs, p_exclusion_template);    


    PERFORM harmonydata.fn_find_set_duplicates_td_ch(p_do_log, p_is_800xa);
            

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_add_or_update_tags_ch', ''); 
    
    DROP TABLE IF EXISTS __tags_ch_add__;
    DROP TABLE IF EXISTS __tags_800xa_base_add__;
    DROP TABLE IF EXISTS __tags_800xa_ext1_add__;
    DROP TABLE IF EXISTS __tags_800xa_ext2_add__;
    DROP TABLE IF EXISTS __tags_800xa_ext3_add__;
    DROP TABLE IF EXISTS __tags_800xa_ext4_add__;
    
    DROP TABLE IF EXISTS __tags_ch_update__; 
    DROP TABLE IF EXISTS __tags_800xa_base_update__;
    DROP TABLE IF EXISTS __tags_800xa_ext1_update__;
    DROP TABLE IF EXISTS __tags_800xa_ext2_update__;
    DROP TABLE IF EXISTS __tags_800xa_ext3_update__;
    DROP TABLE IF EXISTS __tags_800xa_ext4_update__;
           
            
    IF p_mode = 'ADD' THEN
        CREATE TEMP TABLE __tags_ch_update__ AS SELECT __tags_ch__.* FROM __tags_ch__ WHERE 1 = 0;    
        ALTER TABLE __tags_ch__ RENAME TO __tags_ch_add__;
        IF p_is_800xa THEN
            CREATE TEMP TABLE __tags_800xa_base_update__ AS SELECT __tags_800xa_base__.* FROM __tags_800xa_base__ WHERE 1 = 0;    
            CREATE TEMP TABLE __tags_800xa_ext1_update__ AS SELECT __tags_800xa_ext1__.* FROM __tags_800xa_ext1__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext2_update__ AS SELECT __tags_800xa_ext2__.* FROM __tags_800xa_ext2__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext3_update__ AS SELECT __tags_800xa_ext3__.* FROM __tags_800xa_ext3__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext4_update__ AS SELECT __tags_800xa_ext4__.* FROM __tags_800xa_ext4__ WHERE 1 = 0;  	    
            ALTER TABLE __tags_800xa_base__ RENAME TO __tags_800xa_base_add__;
            ALTER TABLE __tags_800xa_ext1__ RENAME TO __tags_800xa_ext1_add__;
            ALTER TABLE __tags_800xa_ext2__ RENAME TO __tags_800xa_ext2_add__;
            ALTER TABLE __tags_800xa_ext3__ RENAME TO __tags_800xa_ext3_add__;
            ALTER TABLE __tags_800xa_ext4__ RENAME TO __tags_800xa_ext4_add__;                                                            
        END IF;
    ELSEIF p_mode = 'UPDATE' THEN
        CREATE TEMP TABLE __tags_ch_add__ AS SELECT __tags_ch__.* FROM __tags_ch__ WHERE 1 = 0;
        ALTER TABLE __tags_ch__ RENAME TO __tags_ch_update__;
        IF p_is_800xa THEN
            CREATE TEMP TABLE __tags_800xa_base_add__ AS SELECT __tags_800xa_base__.* FROM __tags_800xa_base__ WHERE 1 = 0;    
            CREATE TEMP TABLE __tags_800xa_ext1_add__ AS SELECT __tags_800xa_ext1__.* FROM __tags_800xa_ext1__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext2_add__ AS SELECT __tags_800xa_ext2__.* FROM __tags_800xa_ext2__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext3_add__ AS SELECT __tags_800xa_ext3__.* FROM __tags_800xa_ext3__ WHERE 1 = 0;  
            CREATE TEMP TABLE __tags_800xa_ext4_add__ AS SELECT __tags_800xa_ext4__.* FROM __tags_800xa_ext4__ WHERE 1 = 0;  	    
            ALTER TABLE __tags_800xa_base__ RENAME TO __tags_800xa_base_update__;
            ALTER TABLE __tags_800xa_ext1__ RENAME TO __tags_800xa_ext1_update__;
            ALTER TABLE __tags_800xa_ext2__ RENAME TO __tags_800xa_ext2_update__;
            ALTER TABLE __tags_800xa_ext3__ RENAME TO __tags_800xa_ext3_update__;
            ALTER TABLE __tags_800xa_ext4__ RENAME TO __tags_800xa_ext4_update__;                                                            
        END IF;        
    ELSEIF p_mode = 'ADD_UPDATE' THEN   
        CREATE TEMP TABLE __tags_ch_add__ AS SELECT __tags_ch__.* FROM __tags_ch__ LEFT JOIN harmonydata.td_ch ON __tags_ch__.tag_guid = td_ch.tag_guid WHERE td_ch.tag_guid IS NULL;
        CREATE TEMP TABLE __tags_ch_update__ AS SELECT __tags_ch__.* FROM __tags_ch__ INNER JOIN harmonydata.td_ch ON __tags_ch__.tag_guid = td_ch.tag_guid;        
        IF p_is_800xa THEN
            CREATE TEMP TABLE __tags_800xa_base_add__ AS SELECT __tags_800xa_base__.* FROM __tags_800xa_base__ INNER JOIN __tags_ch_add__ ON __tags_800xa_base__.tag_guid = __tags_ch_add__.tag_guid;    
            CREATE TEMP TABLE __tags_800xa_ext1_add__ AS SELECT __tags_800xa_ext1__.* FROM __tags_800xa_ext1__ INNER JOIN __tags_ch_add__ ON __tags_800xa_ext1__.tag_guid = __tags_ch_add__.tag_guid;  
            CREATE TEMP TABLE __tags_800xa_ext2_add__ AS SELECT __tags_800xa_ext2__.* FROM __tags_800xa_ext2__ INNER JOIN __tags_ch_add__ ON __tags_800xa_ext2__.tag_guid = __tags_ch_add__.tag_guid;  
            CREATE TEMP TABLE __tags_800xa_ext3_add__ AS SELECT __tags_800xa_ext3__.* FROM __tags_800xa_ext3__ INNER JOIN __tags_ch_add__ ON __tags_800xa_ext3__.tag_guid = __tags_ch_add__.tag_guid;  
            CREATE TEMP TABLE __tags_800xa_ext4_add__ AS SELECT __tags_800xa_ext4__.* FROM __tags_800xa_ext4__ INNER JOIN __tags_ch_add__ ON __tags_800xa_ext4__.tag_guid = __tags_ch_add__.tag_guid;                   
            CREATE TEMP TABLE __tags_800xa_base_update__ AS SELECT __tags_800xa_base__.* FROM __tags_800xa_base__ INNER JOIN __tags_ch_update__ ON __tags_800xa_base__.tag_guid = __tags_ch_update__.tag_guid;                                                   
            CREATE TEMP TABLE __tags_800xa_ext1_update__ AS SELECT __tags_800xa_ext1__.* FROM __tags_800xa_ext1__ INNER JOIN __tags_ch_update__ ON __tags_800xa_ext1__.tag_guid = __tags_ch_update__.tag_guid;                                           
            CREATE TEMP TABLE __tags_800xa_ext2_update__ AS SELECT __tags_800xa_ext2__.* FROM __tags_800xa_ext2__ INNER JOIN __tags_ch_update__ ON __tags_800xa_ext2__.tag_guid = __tags_ch_update__.tag_guid;                                                            
            CREATE TEMP TABLE __tags_800xa_ext3_update__ AS SELECT __tags_800xa_ext3__.* FROM __tags_800xa_ext3__ INNER JOIN __tags_ch_update__ ON __tags_800xa_ext3__.tag_guid = __tags_ch_update__.tag_guid;                                           
            CREATE TEMP TABLE __tags_800xa_ext4_update__ AS SELECT __tags_800xa_ext4__.* FROM __tags_800xa_ext4__ INNER JOIN __tags_ch_update__ ON __tags_800xa_ext4__.tag_guid = __tags_ch_update__.tag_guid;                                                    	                                                             
        END IF;  				
    END IF;

    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_add_or_update_tags_ch', 'Create add/update temporary tables');

    l_msg = format ('p_mode: %s', p_mode);
    PERFORM harmonydata.fn_dbg_log_activity_message (true, 'fn_add_or_update_tags_ch', l_msg);
        
    IF p_mode = 'ADD' OR p_mode = 'ADD_UPDATE' THEN
    
        l_duplicate_errors := harmonydata.fn_insert_tags_td_ch(p_do_log, p_is_800xa, true);
        
        IF (l_duplicate_errors) THEN
        
            PERFORM harmonydata.fn_find_db_duplicates_td_ch(p_do_log, p_is_800xa, true);

            PERFORM harmonydata.fn_insert_tags_td_ch(p_do_log, p_is_800xa, false);
                      
        END IF; 
    END IF;

    IF p_mode = 'UPDATE' THEN

        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_add_or_update_tags_ch', '');
        INSERT INTO __errant_tags__
        SELECT __tags_ch_update__.tag_guid, __tags_ch_update__.tag_name, 'tag_guid' AS field_name, 10041 AS error_num, 'Specified tag to update not in database' AS error_desc
        FROM   __tags_ch_update__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_update__.tag_guid = td_ch.tag_guid
        WHERE  td_ch.tag_guid IS NULL;    
        GET DIAGNOSTICS l_cnt = ROW_COUNT;                                                                                          
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_add_or_update_tags_ch', FORMAT('Find tags not in db. Found %s rows.', l_cnt));

        PERFORM harmonydata.fn_delete_errant_temp_records_td_ch (p_do_log, false, false, false, true);
 
    END IF;
    
    IF p_mode = 'UPDATE' OR p_mode = 'ADD_UPDATE' THEN

        /*SELECT COUNT(*) FROM __tags_ch_update__ INTO l_cnt;
        l_msg = format ('Count of records in __tags_ch_update__: %s', rec_count);
        PERFORM harmonydata.fn_dbg_log_activity_message (true, 'fn_add_or_update_tags_ch', l_msg);*/
                
        l_duplicate_errors := harmonydata.fn_update_tags_td_ch(p_do_log, p_is_800xa, true);
        
        IF (l_duplicate_errors) THEN
        
            PERFORM harmonydata.fn_find_db_duplicates_td_ch(p_do_log, p_is_800xa, false);    

            PERFORM harmonydata.fn_update_tags_td_ch(p_do_log, p_is_800xa, false);
                      
        END IF; 
    END IF;

    IF (p_is_800xa AND p_do_update_alm_inh) THEN
        PERFORM harmonydata.fn_update_alm_inh_tag_td_ch(p_do_log, p_mode);
    END IF;

    IF (p_mode = 'ADD' AND NOT p_is_800xa AND p_do_add_default_800xa_recs) THEN
        PERFORM harmonydata.fn_add_800xa_recs_td_ch(p_do_log);
    END IF;
    
    SELECT array_to_json(array_agg(sq), true) AS errant_tags
    FROM
    (
        SELECT * 
        FROM __errant_tags__ 
        ORDER BY tag_name, error_num, field_name
    ) AS sq
    INTO l_json_record_errors;

    IF l_json_record_errors IS NULL THEN
        l_status := '"OK"';
    END IF;
    

    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_add_or_update_tags_ch', 'fn_add_or_update_tags_ch');
    
    l_ret_status := FORMAT('{' || chr(13) || chr(10) ||
                           '    "Status":%s,' || chr(13) || chr(10) ||
                           '    "ErrorMessage":%s,' || chr(13) || chr(10) ||
                           '    "RecordErrors":%s' || chr(13) || chr(10) ||
                           '}', 
                           l_status, 
                           CASE WHEN l_json_record_errors IS NULL THEN '""' ELSE '"Errant records found. See Record Errors for details"' END,
                           COALESCE(l_json_record_errors, 'null'));
    RETURN l_ret_status;
    

    EXCEPTION WHEN OTHERS THEN 

        /** exception LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_add_or_update_tags_ch', 'fn_add_or_update_tags_ch exception caught');
        
        GET STACKED DIAGNOSTICS l_msg_text = MESSAGE_TEXT,
                                l_sqlstate_text = RETURNED_SQLSTATE,
                                l_tblname_text = TABLE_NAME,
                                l_ex_detail_text = PG_EXCEPTION_DETAIL,
                                l_ex_hint_text = PG_EXCEPTION_HINT,
                                l_ex_context_text = PG_EXCEPTION_CONTEXT;
        l_ret_status := FORMAT('{' || chr(13) || chr(10) ||
                               '    "Status":%s,' || chr(13) || chr(10) ||
                               E'   "ErrorMessage":"' || 
                               E'       MESSAGE_TEXT: %s' || chr(13) || chr(10) ||
                               E'       SQL_STATE: %s' || chr(13) || chr(10) ||
                               E'       TABLE_NAME: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_DETAIL: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_HINT: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_CONTEXT: %s",' || chr(13) || chr(10) ||
                               '    "RecordErrors":null' || chr(13) || chr(10) ||
                               '}', 
                               l_status, 
                               right(left(to_json(l_msg_text)::text, -1), -1), 
                               right(left(to_json(l_sqlstate_text)::text, -1), -1),
                               right(left(to_json(l_tblname_text)::text, -1), -1),
                               right(left(to_json(l_ex_detail_text)::text, -1), -1),
                               right(left(to_json(l_ex_hint_text)::text, -1), -1),
                               right(left(to_json(l_ex_context_text)::text, -1), -1)
                              );
        RETURN l_ret_status;       

END
$$;


ALTER FUNCTION harmonydata.fn_add_or_update_tags_ch(p_do_log boolean, p_mode text, p_is_800xa boolean, p_do_add_default_800xa_recs boolean, p_do_update_alm_inh boolean, p_exclusion_template harmonydata.type_800xa_tag_ch) OWNER TO postgres;

--
-- TOC entry 1131 (class 1255 OID 824892)
-- Name: fn_dbg_log_activity_message(boolean, text, text); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_dbg_log_activity_message(do_log_messages boolean, function_name text, message text) RETURNS void
    LANGUAGE plpgsql
    AS $$
  
DECLARE 
    message_time timestamp without time zone;

BEGIN
    message_time := clock_timestamp();
    IF do_log_messages THEN
        INSERT INTO harmonydata.dbg_activity_message (function_name, message, message_time, backend_pid)
        VALUES (function_name, message, message_time, pg_backend_pid());                
    END IF;
END

$$;


ALTER FUNCTION harmonydata.fn_dbg_log_activity_message(do_log_messages boolean, function_name text, message text) OWNER TO postgres;

--
-- TOC entry 1207 (class 1255 OID 824893)
-- Name: fn_dbg_log_activity_time(boolean, character, timestamp without time zone, text, text); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_dbg_log_activity_time(do_log_times boolean, start_or_end character, INOUT start_time timestamp without time zone, function_name text, activity text) RETURNS timestamp without time zone
    LANGUAGE plpgsql
    AS $$

DECLARE 
    end_time timestamp without time zone;
    l_msg text;

BEGIN

    IF start_or_end NOT IN ('S', 'E') THEN
        RAISE EXCEPTION 'Invalid start_or_end specification' USING ERRCODE = '50000';
    END IF;

    IF do_log_times THEN
        IF start_or_end = 'S' THEN
            start_time := clock_timestamp();
        ELSE
            end_time := clock_timestamp();

            INSERT INTO harmonydata.dbg_activity_times (function_name, activity, start_time, end_time, elapsed_time, backend_pid)
            VALUES (function_name, activity, start_time, end_time, (EXTRACT(EPOCH FROM (end_time - start_time)) * 1000)::int, pg_backend_pid()); 

            IF (false) THEN
		RAISE WARNING 'Function name: %. Activity: %. Backend pid: %.', function_name, activity, pg_backend_pid();
            END IF;
        END IF;
        
    END IF;
END

$$;


ALTER FUNCTION harmonydata.fn_dbg_log_activity_time(do_log_times boolean, start_or_end character, INOUT start_time timestamp without time zone, function_name text, activity text) OWNER TO postgres;

--
-- TOC entry 1204 (class 1255 OID 824894)
-- Name: fn_delete_errant_temp_records_td_ch(boolean, boolean, boolean, boolean, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_delete_errant_temp_records_td_ch(p_do_log boolean, p_is_800xa boolean, p_delete_errant_main_table_recs boolean, p_delete_errant_add_table_recs boolean, p_delete_errant_update_table_recs boolean) RETURNS void
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;
    l_cnt integer;

BEGIN    

    SET enable_nestloop = off; 

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_delete_errant_temp_records_td_ch', '');    
 
    /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	     
    IF (p_delete_errant_main_table_recs) THEN  
        DELETE FROM __tags_ch__
        USING  __errant_tags__
        WHERE  __tags_ch__.tag_guid = __errant_tags__.tag_guid;     
        GET DIAGNOSTICS l_cnt = ROW_COUNT;
    END IF;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_ch__ temp records. Deleted %s rows.', l_cnt));      

    /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	          
    IF (p_delete_errant_add_table_recs) THEN          
        DELETE FROM __tags_ch_add__
        USING  __errant_tags__
        WHERE  __tags_ch_add__.tag_guid = __errant_tags__.tag_guid;    
        GET DIAGNOSTICS l_cnt = ROW_COUNT;
    END IF;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_ch_add__ temp records. Deleted %s rows.', l_cnt));     

    /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	     
    IF (p_delete_errant_update_table_recs) THEN     
        DELETE FROM __tags_ch_update__
        USING  __errant_tags__
        WHERE  __tags_ch_update__.tag_guid = __errant_tags__.tag_guid;     
        GET DIAGNOSTICS l_cnt = ROW_COUNT;
    END IF;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_ch_update__ temp records. Deleted %s rows.', l_cnt)); 

    IF (p_is_800xa) THEN

        IF (p_delete_errant_main_table_recs) THEN 

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_base__
            USING  __errant_tags__
            WHERE  __tags_800xa_base__.tag_guid = __errant_tags__.tag_guid;        
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_base__ temp records. Deleted %s rows.', l_cnt));

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext1__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext1__.tag_guid = __errant_tags__.tag_guid;         
            GET DIAGNOSTICS l_cnt = ROW_COUNT;   
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext1__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext2__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext2__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext2__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext3__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext3__.tag_guid = __errant_tags__.tag_guid;         
            GET DIAGNOSTICS l_cnt = ROW_COUNT;   
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext3__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext4__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext4__.tag_guid = __errant_tags__.tag_guid;        
            GET DIAGNOSTICS l_cnt = ROW_COUNT;    
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext4__ temp records. Deleted %s rows.', l_cnt));   
          
        END IF;
                
        IF (p_delete_errant_add_table_recs) THEN 
               
            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_base_add__
            USING  __errant_tags__
            WHERE  __tags_800xa_base_add__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_base_add__ temp records. Deleted %s rows.', l_cnt));

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext1_add__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext1_add__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext1_add__ temp records. Deleted %s rows.', l_cnt));

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext2_add__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext2_add__.tag_guid = __errant_tags__.tag_guid;          
            GET DIAGNOSTICS l_cnt = ROW_COUNT;  
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext2_add__ temp records. Deleted %s rows.', l_cnt));

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext3_add__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext3_add__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext3_add__ temp records. Deleted %s rows.', l_cnt));        

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext4_add__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext4_add__.tag_guid = __errant_tags__.tag_guid;           
            GET DIAGNOSTICS l_cnt = ROW_COUNT; 
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext4_add__ temp records. Deleted %s rows.', l_cnt)); 

        END IF;
        
        IF (p_delete_errant_update_table_recs) THEN 
                
            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_base_update__
            USING  __errant_tags__
            WHERE  __tags_800xa_base_update__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_base_update__ temp records. Deleted %s rows.', l_cnt));    

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext1_update__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext1_update__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext1_update__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext2_update__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext2_update__.tag_guid = __errant_tags__.tag_guid;           
            GET DIAGNOSTICS l_cnt = ROW_COUNT; 
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext2_update__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext3_update__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext3_update__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext3_update__ temp records. Deleted %s rows.', l_cnt));  

            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_delete_errant_temp_records_td_ch', '');	                 
            DELETE FROM __tags_800xa_ext4_update__
            USING  __errant_tags__
            WHERE  __tags_800xa_ext4_update__.tag_guid = __errant_tags__.tag_guid;            
            GET DIAGNOSTICS l_cnt = ROW_COUNT;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_delete_errant_temp_records_td_ch', FORMAT('Delete __tags_800xa_ext4_update__ temp records. Deleted %s rows.', l_cnt));   
          
        END IF;                           

    END IF;

    SET enable_nestloop = on; 
    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_delete_errant_temp_records_td_ch', 'fn_delete_errant_temp_records_td_ch');
    
END
$$;


ALTER FUNCTION harmonydata.fn_delete_errant_temp_records_td_ch(p_do_log boolean, p_is_800xa boolean, p_delete_errant_main_table_recs boolean, p_delete_errant_add_table_recs boolean, p_delete_errant_update_table_recs boolean) OWNER TO postgres;

--
-- TOC entry 1132 (class 1255 OID 824895)
-- Name: fn_delete_tags_ch(uuid[], boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_delete_tags_ch(p_tag_guids uuid[], p_do_delete_all boolean) RETURNS text
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_status text := '"ERROR"';
    l_json_record_errors json := null;
    l_msg_text text;
    l_sqlstate_text text;
    l_tblname_text text;
    l_ex_detail_text text;
    l_ex_hint_text text;
    l_ex_context_text text;
    l_ret_status text;
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;
    l_count integer;

    l_do_log bool := true;  -- TODO: get value from table or registry

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time_fn, 'fn_delete_tags_ch', '');
    
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', ''); 
    LOCK TABLE harmonydata.td_ch IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_base IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext1 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext2 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext3 IN EXCLUSIVE MODE;
    LOCK TABLE harmonydata.td_800xa_ext4 IN EXCLUSIVE MODE;        
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Acquire locks');
    
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', ''); 
    DROP TABLE IF EXISTS __errant_tags__;
    CREATE TEMP TABLE __errant_tags__
    (
        tag_guid uuid, 
        tag_name character varying(64),
        field_name text,
        error_num int,
        error_desc text
    );

    DROP TABLE IF EXISTS __tag_guids__;
    CREATE TEMP TABLE __tag_guids__ AS SELECT unnest AS tag_guid FROM unnest(p_tag_guids);    
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Create temporary tables');

    IF (NOT p_do_delete_all) THEN

        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', '');    
        --- mark as errant the tags that are referenced by tags currently in the DB but not in the set of tags to be deleted 
        INSERT INTO __errant_tags__ (tag_guid, tag_name, field_name, error_num, error_desc)
        SELECT DISTINCT t1.tag_guid, td_ch.tag_name, 'tag_guid' AS field_name, 10127 AS error_num, 'Tag cannot be deleted because it is being used as an alarm inhibit tag' AS error_desc
        FROM   harmonydata.td_800xa_base INNER JOIN __tag_guids__ t1 ON td_800xa_base.alm_inh_tag_guid = t1.tag_guid
                                         INNER JOIN harmonydata.td_ch ON t1.tag_guid = td_ch.tag_guid
                                         LEFT JOIN __tag_guids__ t2 ON td_800xa_base.tag_guid = t2.tag_guid
        WHERE  t2.tag_guid IS NULL;
        GET DIAGNOSTICS l_count = ROW_COUNT;
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Find tags from set that are referenced as alarm inhibit tags from DB tags not in set');

        WHILE (l_count > 0) LOOP
        
            /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', '');    
            DELETE
            FROM  __tag_guids__
            USING __errant_tags__
            WHERE __tag_guids__.tag_guid = __errant_tags__.tag_guid;
            /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', format('Delete tags from set that are referenced as alarm inhibit tags. l_count = %s.', l_count));

            -- check the set of tags to be deleted to see if there are references to the just removed tags and if there are remove them and repeat
            INSERT INTO __errant_tags__ (tag_guid, tag_name, field_name, error_num, error_desc)
	    SELECT __tag_guids__.tag_guid, td_ch.tag_name, 'tag_guid' AS field_name, 10127 AS error_num, 'Tag cannot be deleted because it is being used as an alarm inhibit tag' AS error_desc
            FROM   __tag_guids__ INNER JOIN harmonydata.td_ch ON __tag_guids__.tag_guid = td_ch.tag_guid
                                 INNER JOIN harmonydata.td_800xa_base ON __tag_guids__.tag_guid = td_800xa_base.tag_guid
                                 INNER JOIN __errant_tags__ ON td_800xa_base.alm_inh_tag_guid = __errant_tags__.tag_guid; 
            GET DIAGNOSTICS l_count = ROW_COUNT;            

        END LOOP;
       
        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', '');    
        -- note: must delete from tags_800xa_base first because errors occur on alm_inh_tag_guid references from within the set when deleting from td_ch and having the cascading delete the td_800xa_base tags  
        DELETE 
        FROM  harmonydata.td_800xa_base 
        USING __tag_guids__
        WHERE td_800xa_base.tag_guid = __tag_guids__.tag_guid;  
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Delete tags from td_800xa_base');

        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', '');    
        DELETE 
        FROM  harmonydata.td_ch 
        USING __tag_guids__
        WHERE td_ch.tag_guid = __tag_guids__.tag_guid;  
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Delete tags from td_ch');

    ELSE
    
        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (l_do_log, 'S', l_start_time, 'fn_delete_tags_ch', '');
        TRUNCATE harmonydata.td_ch CASCADE;
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time, 'fn_delete_tags_ch', 'Truncate td_ch tags');

    END IF;
    
    SELECT array_to_json(array_agg(sq), true) AS errant_tags
    FROM
    (
        SELECT * 
        FROM __errant_tags__ 
        ORDER BY tag_name
    ) AS sq
    INTO l_json_record_errors;

    IF l_json_record_errors IS NULL THEN
        l_status := '"OK"';
    END IF;
    

    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time_fn, 'fn_delete_tags_ch', 'fn_delete_tags_ch');
    
    l_ret_status := FORMAT('{' || chr(13) || chr(10) ||
                           '    "Status":%s,' || chr(13) || chr(10) ||
                           '    "ErrorMessage":%s,' || chr(13) || chr(10) ||
                           '    "RecordErrors":%s' || chr(13) || chr(10) ||
                           '}', 
                           l_status, 
                           CASE WHEN l_json_record_errors IS NULL THEN '""' ELSE '"Errant records found. See Record Errors for details"' END,
                           COALESCE(l_json_record_errors, 'null'));
    RETURN l_ret_status;
    

    EXCEPTION WHEN OTHERS THEN 

        /** exception LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (l_do_log, 'E', l_start_time_fn, 'fn_delete_tags_ch', 'fn_delete_tags_ch exception caught');
    	
        GET STACKED DIAGNOSTICS l_msg_text = MESSAGE_TEXT,
                                l_sqlstate_text = RETURNED_SQLSTATE,
                                l_tblname_text = TABLE_NAME,
                                l_ex_detail_text = PG_EXCEPTION_DETAIL,
                                l_ex_hint_text = PG_EXCEPTION_HINT,
				l_ex_context_text = PG_EXCEPTION_CONTEXT;
        l_ret_status := FORMAT('{' || chr(13) || chr(10) ||
	                       '    "Status":%s,' || chr(13) || chr(10) ||
                               E'   "ErrorMessage":"' || 
                               E'       MESSAGE_TEXT: %s' || chr(13) || chr(10) ||
                               E'       SQL_STATE: %s' || chr(13) || chr(10) ||
                               E'       TABLE_NAME: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_DETAIL: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_HINT: %s' || chr(13) || chr(10) ||
                               E'       PG_EXCEPTION_CONTEXT: %s",' || chr(13) || chr(10) ||
                               '    "RecordErrors":null' || chr(13) || chr(10) ||
                               '}', 
                               l_status, 
                               right(left(to_json(l_msg_text)::text, -1), -1), 
                               right(left(to_json(l_sqlstate_text)::text, -1), -1),
                               right(left(to_json(l_tblname_text)::text, -1), -1),
                               right(left(to_json(l_ex_detail_text)::text, -1), -1),
                               right(left(to_json(l_ex_hint_text)::text, -1), -1),
                               right(left(to_json(l_ex_context_text)::text, -1), -1)
                              );
	RETURN l_ret_status;       

END
$$;


ALTER FUNCTION harmonydata.fn_delete_tags_ch(p_tag_guids uuid[], p_do_delete_all boolean) OWNER TO postgres;

--
-- TOC entry 1205 (class 1255 OID 824897)
-- Name: fn_find_db_duplicates_td_ch(boolean, boolean, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_find_db_duplicates_td_ch(p_do_log boolean, p_is_800xa boolean, p_do_check_tag_guid boolean) RETURNS void
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_find_db_duplicates_td_ch', '');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_db_duplicates_td_ch', '');
    ALTER TABLE __tags_ch_add__ ADD CONSTRAINT td_ch_add_pkey PRIMARY KEY (tag_guid);
    ALTER TABLE __tags_ch_add__ ADD CONSTRAINT td_ch_add_cld_guid_obj_id_key UNIQUE (cld_guid, cld_obj_id, cld_obj_subindex);
    ALTER TABLE __tags_ch_add__ ADD CONSTRAINT td_ch_add_tag_name_doc_key UNIQUE (tag_name, cld_guid);
    ALTER TABLE __tags_ch_add__ ADD CONSTRAINT td_ch_add_tag_name_key UNIQUE (tag_name, exchange_indicator, project_flag);
    ALTER TABLE __tags_ch_update__ ADD CONSTRAINT td_ch_update_pkey PRIMARY KEY (tag_guid);
    ALTER TABLE __tags_ch_update__ ADD CONSTRAINT td_ch_update_cld_guid_obj_id_key UNIQUE (cld_guid, cld_obj_id, cld_obj_subindex);
    ALTER TABLE __tags_ch_update__ ADD CONSTRAINT td_ch_update_tag_name_doc_key UNIQUE (tag_name, cld_guid);
    ALTER TABLE __tags_ch_update__ ADD CONSTRAINT td_ch_update_tag_name_key UNIQUE (tag_name, exchange_indicator, project_flag);    
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_db_duplicates_td_ch', 'Add unique constraints');    

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_db_duplicates_td_ch', '');
    INSERT INTO __errant_tags__
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch_add__.tag_name, __tags_ch_add__.tag_guid, 'tag_name/exchange_indicator/project_flag' AS field_name, 10001 AS error_num, 'Duplicated (tag_name, exchange_indicator, project_flag) in database' AS error_desc
        FROM   __tags_ch_add__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_add__.tag_name = td_ch.tag_name AND
                                                                    __tags_ch_add__.exchange_indicator = td_ch.exchange_indicator AND
                                                                    __tags_ch_add__.project_flag = td_ch.project_flag
        WHERE  td_ch.tag_name IS NOT NULL
            UNION ALL
        SELECT __tags_ch_update__.tag_name, __tags_ch_update__.tag_guid, 'tag_name/exchange_indicator/project_flag' AS field_name, 10001 AS error_num, 'Duplicated (tag_name, exchange_indicator, project_flag) in database' AS error_desc
        FROM   __tags_ch_update__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_update__.tag_name = td_ch.tag_name AND
                                                                       __tags_ch_update__.exchange_indicator = td_ch.exchange_indicator AND
                                                                       __tags_ch_update__.project_flag = td_ch.project_flag
        WHERE  td_ch.tag_name IS NOT NULL AND __tags_ch_update__.tag_guid != td_ch.tag_guid                                                                    
    ) AS all_duplicated_tags;                             
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_db_duplicates_td_ch', 'Find (tag_name, exchange_indicator, project_flag) duplicate tags');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_db_duplicates_td_ch', '');
    INSERT INTO __errant_tags__        
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch_add__.tag_guid, __tags_ch_add__.tag_name, 'cld_guid/cld_obj_id/cld_obj_subindex' AS field_name, 10011 AS error_num, 'Duplicated (cld_guid, cld_obj_id, cld_obj_subindex) in database' AS error_desc
        FROM   __tags_ch_add__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_add__.cld_guid = td_ch.cld_guid AND
                                                                    __tags_ch_add__.cld_obj_id = td_ch.cld_obj_id AND
                                                                    __tags_ch_add__.cld_obj_subindex = td_ch.cld_obj_subindex
        WHERE  td_ch.cld_guid IS NOT NULL
            UNION ALL
        SELECT __tags_ch_update__.tag_guid, __tags_ch_update__.tag_name, 'cld_guid/cld_obj_id/cld_obj_subindex' AS field_name, 10011 AS error_num, 'Duplicated (cld_guid, cld_obj_id, cld_obj_subindex) in database' AS error_desc
        FROM   __tags_ch_update__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_update__.cld_guid = td_ch.cld_guid AND
                                                                       __tags_ch_update__.cld_obj_id = td_ch.cld_obj_id AND
                                                                       __tags_ch_update__.cld_obj_subindex = td_ch.cld_obj_subindex
        WHERE  td_ch.cld_guid IS NOT NULL AND __tags_ch_update__.tag_guid != td_ch.tag_guid                                                                                                                    
    ) AS all_duplicated_tags;       
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', L_start_time, 'fn_find_db_duplicates_td_ch', 'Find (cld_guid, cld_obj_id, cld_obj_subindex) duplicate tags');
            
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_db_duplicates_td_ch', '');
    INSERT INTO __errant_tags__
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch_add__.tag_name, __tags_ch_add__.tag_guid, 'tag_name/cld_guid' AS field_name, 10021 AS error_num, 'Duplicated (tag_name, cld_guid) in database' AS error_desc
        FROM   __tags_ch_add__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_add__.tag_name = td_ch.tag_name AND
                                                                    __tags_ch_add__.cld_guid = td_ch.cld_guid
        WHERE  td_ch.tag_name IS NOT NULL 
            UNION ALL
        SELECT __tags_ch_update__.tag_name, __tags_ch_update__.tag_guid, 'tag_name/cld_guid' AS field_name, 10021 AS error_num, 'Duplicated (tag_name, cld_guid) in database' AS error_desc
        FROM   __tags_ch_update__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_update__.tag_name = td_ch.tag_name AND
                                                                       __tags_ch_update__.cld_guid = td_ch.cld_guid
        WHERE  td_ch.tag_name IS NOT NULL AND __tags_ch_update__.tag_guid != td_ch.tag_guid             
    ) AS all_duplicated_tags;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_db_duplicates_td_ch', 'Find (tag_name, cld_guid) duplicate tags');             

    IF (p_do_check_tag_guid) THEN
        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_db_duplicates_td_ch', '');
        INSERT INTO __errant_tags__
        SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
        FROM
        (
            SELECT __tags_ch_add__.tag_name, __tags_ch_add__.tag_guid, 'tag_guid' AS field_name, 10031 AS error_num, 'Duplicated tag_guid in database' AS error_desc
            FROM   __tags_ch_add__ LEFT OUTER JOIN harmonydata.td_ch ON __tags_ch_add__.tag_guid = td_ch.tag_guid
            WHERE  td_ch.tag_guid IS NOT NULL 
        ) AS all_duplicated_tags;
         /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_db_duplicates_td_ch', 'Find tag_guid duplicate tags');    
    END IF;

    PERFORM harmonydata.fn_delete_errant_temp_records_td_ch (p_do_log, p_is_800xa, false, true, true);
    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_find_db_duplicates_td_ch', 'fn_find_db_duplicates_td_ch');

END
$$;


ALTER FUNCTION harmonydata.fn_find_db_duplicates_td_ch(p_do_log boolean, p_is_800xa boolean, p_do_check_tag_guid boolean) OWNER TO postgres;

--
-- TOC entry 1133 (class 1255 OID 824898)
-- Name: fn_find_set_duplicates_td_ch(boolean, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_find_set_duplicates_td_ch(p_do_log boolean, p_is_800xa boolean) RETURNS void
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_find_set_duplicates_td_ch', '');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_set_duplicates_td_ch', '');
    WITH duplicates AS
    (
        SELECT tag_name, exchange_indicator, project_flag, count(*) 
        FROM
        (
            SELECT tag_name, exchange_indicator, project_flag
            FROM   __tags_ch__       
        ) AS all_tags
        GROUP BY tag_name, exchange_indicator, project_flag
        HAVING count(*) > 1
    )
    INSERT INTO __errant_tags__
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch__.tag_name, tag_guid, 'tag_name/exchange_indicator/project_flag' AS field_name, 10002 AS error_num, 'Duplicated (tag_name, exchange_indicator, project_flag) in set' AS error_desc
        FROM   __tags_ch__ INNER JOIN duplicates ON __tags_ch__.tag_name = duplicates.tag_name AND
                                                    __tags_ch__.exchange_indicator = duplicates.exchange_indicator AND
                                                    __tags_ch__.project_flag = duplicates.project_flag
    ) AS all_duplicated_tags;                            
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_set_duplicates_td_ch', 'Find (tag_name, exchange_indicator, project_flag) duplicate tags');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_set_duplicates_td_ch', '');
    WITH duplicates AS
    (
        SELECT cld_guid, cld_obj_id, cld_obj_subindex, count(*) 
        FROM
        (
            SELECT cld_guid, cld_obj_id, cld_obj_subindex
            FROM   __tags_ch__
        ) AS all_tags
        GROUP BY cld_guid, cld_obj_id, cld_obj_subindex
        HAVING count(*) > 1
    )
    INSERT INTO __errant_tags__    
    SELECT tag_guid, __tags_ch__.tag_name, 'cld_guid/cld_obj_id/cld_obj_subindex' AS field_name, 10012 AS error_num, 'Duplicated (cld_guid, cld_obj_id, cld_obj_subindex) in set' AS error_desc
    FROM   __tags_ch__ INNER JOIN duplicates ON __tags_ch__.cld_guid = duplicates.cld_guid AND
                                                __tags_ch__.cld_obj_id = duplicates.cld_obj_id AND
                                                __tags_ch__.cld_obj_subindex = duplicates.cld_obj_subindex;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', L_start_time, 'fn_find_set_duplicates_td_ch', 'Find (cld_guid, cld_obj_id, cld_obj_subindex) duplicate tags');
            
    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_set_duplicates_td_ch', '');
    WITH duplicates AS
    (
        SELECT tag_name, cld_guid, count(*) 
        FROM
        (
            SELECT tag_name, cld_guid
            FROM   __tags_ch__
        ) AS all_tags
        GROUP BY tag_name, cld_guid
        HAVING count(*) > 1
    )
    INSERT INTO __errant_tags__
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch__.tag_name, tag_guid, 'tag_name/cld_guid' AS field_name, 10022 AS error_num, 'Duplicated (tag_name, cld_guid) in set' AS error_desc
        FROM   __tags_ch__ INNER JOIN duplicates ON __tags_ch__.tag_name = duplicates.tag_name AND
                                                    __tags_ch__.cld_guid = duplicates.cld_guid
    ) AS all_duplicated_tags;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_set_duplicates_td_ch', 'Find (tag_name, cld_guid) duplicate tags');             

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_set_duplicates_td_ch', '');
    WITH duplicates AS
    (
        SELECT tag_guid, count(*) 
        FROM
        (
            SELECT tag_guid
            FROM   __tags_ch__
        ) AS all_tags
        GROUP BY tag_guid
        HAVING count(*) > 1
    )
    INSERT INTO __errant_tags__
    SELECT all_duplicated_tags.tag_guid, all_duplicated_tags.tag_name, all_duplicated_tags.field_name, all_duplicated_tags.error_num, all_duplicated_tags.error_desc
    FROM
    (
        SELECT __tags_ch__.tag_name, __tags_ch__.tag_guid, 'tag_guid' AS field_name, 10032 AS error_num, 'Duplicated tag_guid in set' AS error_desc
        FROM   __tags_ch__ INNER JOIN duplicates ON __tags_ch__.tag_guid = duplicates.tag_guid
    ) AS all_duplicated_tags;
    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_set_duplicates_td_ch', 'Find tag_guid duplicate tags');    
     
    PERFORM harmonydata.fn_delete_errant_temp_records_td_ch (p_do_log, p_is_800xa, true, false, false);
    
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_find_set_duplicates_td_ch', 'fn_find_set_duplicates_td_ch');

END
$$;


ALTER FUNCTION harmonydata.fn_find_set_duplicates_td_ch(p_do_log boolean, p_is_800xa boolean) OWNER TO postgres;

--
-- TOC entry 1214 (class 1255 OID 1704023)
-- Name: fn_find_text_index_errors_td_ch(boolean, boolean, boolean, harmonydata.type_800xa_tag_ch); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_find_text_index_errors_td_ch(p_do_log boolean, p_is_800xa boolean, p_do_add_default_800xa_recs boolean, p_exclusion_template harmonydata.type_800xa_tag_ch) RETURNS void
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;    
    l_sql text;
    l_startpos int;

BEGIN

    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_find_text_index_errors_td_ch', '');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_text_index_errors_td_ch', ''); 
    SET enable_nestloop = off;   
                        
    INSERT INTO __errant_tags__ (tag_guid, tag_name, field_name, error_num, error_desc)

    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'tag_type' AS field_name, 10101 AS error_num, 'Invalid 800xA tag type' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata."TD Get All TagTypes for Maestro" ON lower(__tags_ch__.tag_type) = lower("TD Get All TagTypes for Maestro".bcsdesc)
    WHERE  (p_is_800xa OR p_do_add_default_800xa_recs) AND __tags_ch__.tag_type IS NOT NULL AND "TD Get All TagTypes for Maestro".bcsdesc IS NULL
        UNION
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'tag_type_ndx' AS field_name, 10102 AS error_num, 'Invalid 800xA tag type index' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata."TD Get All TagTypes for Maestro" ON __tags_ch__.tag_type_ndx = "TD Get All TagTypes for Maestro".tagtypendx
    WHERE  (p_is_800xa OR p_do_add_default_800xa_recs) AND __tags_ch__.tag_type IS NULL AND __tags_ch__.tag_type_ndx IS NOT NULL AND "TD Get All TagTypes for Maestro".tagtypendx IS NULL
        UNION

    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'tag_type' AS field_name, 10103 AS error_num, 'Invalid S+ tag type' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata."TD Get All TagTypes For PGP" ON lower(__tags_ch__.tag_type) = lower("TD Get All TagTypes For PGP".bcsdesc)
    WHERE  NOT (p_is_800xa OR p_do_add_default_800xa_recs) AND __tags_ch__.tag_type IS NOT NULL AND "TD Get All TagTypes For PGP".bcsdesc IS NULL
        UNION
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'tag_type_ndx' AS field_name, 10104 AS error_num, 'Invalid S+ tag type index' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata."TD Get All TagTypes For PGP" ON __tags_ch__.tag_type_ndx = "TD Get All TagTypes For PGP".tagtypendx
    WHERE  NOT (p_is_800xa OR p_do_add_default_800xa_recs) AND __tags_ch__.tag_type IS NULL AND __tags_ch__.tag_type_ndx IS NOT NULL AND "TD Get All TagTypes For PGP".tagtypendx IS NULL
        UNION
     
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'cld_name' AS field_name, 10105 AS error_num, 'Invalid CLD name' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.pj_controllogic ON __tags_ch__.cld_name = pj_controllogic.name
    WHERE  __tags_ch__.cld_name IS NOT NULL AND pj_controllogic.name IS NULL
        UNION
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'cld_guid' AS field_name, 10106 AS error_num, 'Invalid CLD GUID' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.pj_controllogic ON __tags_ch__.cld_guid = pj_controllogic.objectguid
    WHERE  __tags_ch__.cld_name IS NULL AND __tags_ch__.cld_guid IS NOT NULL AND pj_controllogic.objectguid IS NULL
        UNION

    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'fc_num' AS field_name, 10107 AS error_num, 'Invalid FC number' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.ex_functioncodedefinition ON __tags_ch__.fc_num = ex_functioncodedefinition.fcnumber
    WHERE  __tags_ch__.fc_num IS NOT NULL AND ex_functioncodedefinition.fcnumber IS NULL 
        UNION
           
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'eng_units_desc' AS field_name, 10108 AS error_num, 'Invalid engineering units descriptor' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.td_eud ON lower(__tags_ch__.eng_units_desc) = lower(td_eud.engunitsdesc)
    WHERE  __tags_ch__.eng_units_desc IS NOT NULL AND td_eud.engunitsdesc IS NULL
        UNION
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'eng_units_ndx' AS field_name, 10109 AS error_num, 'Invalid engineering units index' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.td_eud ON __tags_ch__.eng_units_ndx = td_eud.eudndx
    WHERE  __tags_ch__.eng_units_desc IS NULL AND __tags_ch__.eng_units_ndx IS NOT NULL AND td_eud.eudndx IS NULL
        UNION

    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'sp_eng_units_desc' AS field_name, 10108 AS error_num, 'Invalid engineering units descriptor' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.td_eud ON lower(__tags_ch__.sp_eng_units_desc) = lower(td_eud.engunitsdesc)
    WHERE  __tags_ch__.sp_eng_units_desc IS NOT NULL AND td_eud.engunitsdesc IS NULL
        UNION
    SELECT __tags_ch__.tag_guid, __tags_ch__.tag_name, 'sp_eng_units_ndx' AS field_name, 10109 AS error_num, 'Invalid engineering units index' AS error_desc
    FROM   __tags_ch__ LEFT OUTER JOIN harmonydata.td_eud ON __tags_ch__.sp_eng_units_ndx = td_eud.eudndx
    WHERE  __tags_ch__.sp_eng_units_desc IS NULL AND __tags_ch__.sp_eng_units_ndx IS NOT NULL AND td_eud.eudndx IS NULL;

    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_text_index_errors_td_ch', 'Find errors in td_ch');

    IF (p_is_800xa) THEN
    
        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_find_text_index_errors_td_ch', ''); 
        l_sql = E'INSERT INTO __errant_tags__ (tag_guid, tag_name, field_name, error_num, error_desc)\n';


        /************* auto generate start *************/ 

        IF p_exclusion_template IS NULL OR p_exclusion_template.co_eng_units_desc IS NOT NULL OR p_exclusion_template.co_eng_units_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''co_eng_units_desc'' AS field_name, 10108 AS error_num, ''Invalid engineering units descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_eud ON lower(__tags_800xa_ext1__.co_eng_units_desc) = lower(td_eud.engunitsdesc)
                WHERE  __tags_800xa_ext1__.co_eng_units_desc IS NOT NULL AND td_eud.engunitsdesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''co_eng_units_ndx'' AS field_name, 10109, ''Invalid engineering units index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_eud ON __tags_800xa_ext1__.co_eng_units_ndx = td_eud.eudndx
                WHERE  __tags_800xa_ext1__.co_eng_units_desc IS NULL AND __tags_800xa_ext1__.co_eng_units_ndx IS NOT NULL AND td_eud.eudndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_inh_tag IS NOT NULL OR p_exclusion_template.alm_inh_tag_guid IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_base__.tag_guid, __tags_800xa_base__.tag_name, ''alm_inh_tag'' AS field_name, 10114 AS error_num, ''Invalid alarm inhibit tag name'' AS error_desc
                FROM   __tags_800xa_base__ LEFT OUTER JOIN
                       (SELECT tag_name FROM harmonydata.td_ch
                           UNION
                        SELECT tag_name FROM __tags_ch__) AS all_tags
                       ON __tags_800xa_base__.alm_inh_tag = all_tags.tag_name
                WHERE  __tags_800xa_base__.alm_inh_tag IS NOT NULL AND all_tags.tag_name IS NULL
                    UNION
                SELECT __tags_800xa_base__.tag_guid, __tags_800xa_base__.tag_name, ''alm_inh_tag_guid'' AS field_name, 10115, ''Invalid alarm inhibit tag guid'' AS error_desc
                FROM   __tags_800xa_base__ LEFT OUTER JOIN 
                       (SELECT tag_guid FROM harmonydata.td_ch
                           UNION
                        SELECT tag_guid FROM __tags_ch__) AS all_tags
                       ON __tags_800xa_base__.alm_inh_tag_guid = all_tags.tag_guid
                WHERE  __tags_800xa_base__.alm_inh_tag IS NULL AND __tags_800xa_base__.alm_inh_tag_guid IS NOT NULL AND all_tags.tag_guid IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_inh_state IS NOT NULL OR p_exclusion_template.alm_inh_state_id IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_base__.tag_guid, __tags_800xa_base__.tag_name, ''alm_inh_state'' AS field_name, 10124 AS error_num, ''Invalid alarm inhibit state'' AS error_desc
                FROM   __tags_800xa_base__ LEFT OUTER JOIN harmonydata.domain_alarminhibitstate ON lower(__tags_800xa_base__.alm_inh_state) = lower(domain_alarminhibitstate.alminhibstate)
                WHERE  __tags_800xa_base__.alm_inh_state IS NOT NULL AND domain_alarminhibitstate.alminhibstate IS NULL
                    UNION
                SELECT __tags_800xa_base__.tag_guid, __tags_800xa_base__.tag_name, ''alm_inh_state_id'' AS field_name, 10125, ''Invalid alarm inhibit state index'' AS error_desc
                FROM   __tags_800xa_base__ LEFT OUTER JOIN harmonydata.domain_alarminhibitstate ON __tags_800xa_base__.alm_inh_state_id = domain_alarminhibitstate.alminhibstatendx
                WHERE  __tags_800xa_base__.alm_inh_state IS NULL AND __tags_800xa_base__.alm_inh_state_id IS NOT NULL AND domain_alarminhibitstate.alminhibstatendx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_desc IS NOT NULL OR p_exclusion_template.zero_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.zero_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.zero_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.zero_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.zero_state_desc IS NULL AND __tags_800xa_ext2__.zero_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_desc IS NOT NULL OR p_exclusion_template.one_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.one_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.one_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.one_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.one_state_desc IS NULL AND __tags_800xa_ext2__.one_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.two_state_desc IS NOT NULL OR p_exclusion_template.two_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''two_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.two_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.two_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''two_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.two_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.two_state_desc IS NULL AND __tags_800xa_ext3__.two_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.three_state_desc IS NOT NULL OR p_exclusion_template.three_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''three_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.three_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.three_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''three_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.three_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.three_state_desc IS NULL AND __tags_800xa_ext3__.three_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk10_state_desc IS NOT NULL OR p_exclusion_template.feedbk10_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk10_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.feedbk10_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.feedbk10_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk10_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.feedbk10_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.feedbk10_state_desc IS NULL AND __tags_800xa_ext1__.feedbk10_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk11_state_desc IS NOT NULL OR p_exclusion_template.feedbk11_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk11_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.feedbk11_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.feedbk11_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk11_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.feedbk11_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.feedbk11_state_desc IS NULL AND __tags_800xa_ext1__.feedbk11_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk20_state_desc IS NOT NULL OR p_exclusion_template.feedbk20_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk20_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.feedbk20_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.feedbk20_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk20_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.feedbk20_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.feedbk20_state_desc IS NULL AND __tags_800xa_ext1__.feedbk20_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk21_state_desc IS NOT NULL OR p_exclusion_template.feedbk21_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk21_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.feedbk21_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.feedbk21_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''feedbk21_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.feedbk21_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.feedbk21_state_desc IS NULL AND __tags_800xa_ext1__.feedbk21_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk30_state_desc IS NOT NULL OR p_exclusion_template.feedbk30_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk30_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.feedbk30_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.feedbk30_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk30_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.feedbk30_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.feedbk30_state_desc IS NULL AND __tags_800xa_ext3__.feedbk30_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk31_state_desc IS NOT NULL OR p_exclusion_template.feedbk31_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk31_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.feedbk31_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.feedbk31_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk31_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.feedbk31_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.feedbk31_state_desc IS NULL AND __tags_800xa_ext3__.feedbk31_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk40_state_desc IS NOT NULL OR p_exclusion_template.feedbk40_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk40_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.feedbk40_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.feedbk40_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk40_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.feedbk40_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.feedbk40_state_desc IS NULL AND __tags_800xa_ext3__.feedbk40_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.feedbk41_state_desc IS NOT NULL OR p_exclusion_template.feedbk41_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk41_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.feedbk41_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.feedbk41_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''feedbk41_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.feedbk41_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.feedbk41_state_desc IS NULL AND __tags_800xa_ext3__.feedbk41_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.permv10_state_desc IS NOT NULL OR p_exclusion_template.permv10_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv10_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.permv10_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.permv10_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv10_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.permv10_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.permv10_state_desc IS NULL AND __tags_800xa_ext4__.permv10_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.permv11_state_desc IS NOT NULL OR p_exclusion_template.permv11_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv11_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.permv11_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.permv11_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv11_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.permv11_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.permv11_state_desc IS NULL AND __tags_800xa_ext4__.permv11_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.permv20_state_desc IS NOT NULL OR p_exclusion_template.permv20_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv20_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.permv20_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.permv20_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv20_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.permv20_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.permv20_state_desc IS NULL AND __tags_800xa_ext4__.permv20_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.permv21_state_desc IS NOT NULL OR p_exclusion_template.permv21_state_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv21_state_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.permv21_state_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.permv21_state_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''permv21_state_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.permv21_state_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.permv21_state_desc IS NULL AND __tags_800xa_ext4__.permv21_state_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.area_name IS NOT NULL OR p_exclusion_template.area_guid IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''area_name'' AS field_name, 10116 AS error_num, ''Invalid 800xA area'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_maestroarea ON lower(__tags_800xa_ext1__.area_name) = lower(td_maestroarea.name)
                WHERE  __tags_800xa_ext1__.area_name IS NOT NULL AND td_maestroarea.name IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''area_guid'' AS field_name, 10117, ''Invalid 800xA area guid'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_maestroarea ON __tags_800xa_ext1__.area_guid = td_maestroarea.objectguid
                WHERE  __tags_800xa_ext1__.area_name IS NULL AND __tags_800xa_ext1__.area_guid IS NOT NULL AND td_maestroarea.objectguid IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.equipment_name IS NOT NULL OR p_exclusion_template.equipment_guid IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''equipment_name'' AS field_name, 10118 AS error_num, ''Invalid 800xA equipment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_maestroequipment ON lower(__tags_800xa_ext1__.equipment_name) = lower(td_maestroequipment.name)
                WHERE  __tags_800xa_ext1__.equipment_name IS NOT NULL AND td_maestroequipment.name IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''equipment_guid'' AS field_name, 10119, ''Invalid 800xA equipment guid'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_maestroequipment ON __tags_800xa_ext1__.equipment_guid = td_maestroequipment.objectguid
                WHERE  __tags_800xa_ext1__.equipment_name IS NULL AND __tags_800xa_ext1__.equipment_guid IS NOT NULL AND td_maestroequipment.objectguid IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.unit_name IS NOT NULL OR p_exclusion_template.unit_guid IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''unit_name'' AS field_name, 10120 AS error_num, ''Invalid 800xA unit'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_maestrounit ON lower(__tags_800xa_ext2__.unit_name) = lower(td_maestrounit.name)
                WHERE  __tags_800xa_ext2__.unit_name IS NOT NULL AND td_maestrounit.name IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''unit_guid'' AS field_name, 10121, ''Invalid 800xA unit guid'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_maestrounit ON __tags_800xa_ext2__.unit_guid = td_maestrounit.objectguid
                WHERE  __tags_800xa_ext2__.unit_name IS NULL AND __tags_800xa_ext2__.unit_guid IS NOT NULL AND td_maestrounit.objectguid IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.security_group_name IS NOT NULL OR p_exclusion_template.security_group_guid IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''security_group_name'' AS field_name, 10122 AS error_num, ''Invalid 800xA security group'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_maestrosecuritygroup ON lower(__tags_800xa_ext2__.security_group_name) = lower(td_maestrosecuritygroup.name)
                WHERE  __tags_800xa_ext2__.security_group_name IS NOT NULL AND td_maestrosecuritygroup.name IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''security_group_guid'' AS field_name, 10123, ''Invalid 800xA security group guid'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_maestrosecuritygroup ON __tags_800xa_ext2__.security_group_guid = td_maestrosecuritygroup.objectguid
                WHERE  __tags_800xa_ext2__.security_group_name IS NULL AND __tags_800xa_ext2__.security_group_guid IS NOT NULL AND td_maestrosecuritygroup.objectguid IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_sys_fault IS NOT NULL OR p_exclusion_template.alm_comnt_sys_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_fault'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_sys_fault) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_fault IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_fault_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_sys_fault_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_fault IS NULL AND __tags_800xa_ext4__.alm_comnt_sys_fault_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_usr_def_fault IS NOT NULL OR p_exclusion_template.alm_comnt_usr_def_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_fault'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_usr_def_fault) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_fault IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_fault_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_usr_def_fault_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_fault IS NULL AND __tags_800xa_ext4__.alm_comnt_usr_def_fault_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_usr_def_msg IS NOT NULL OR p_exclusion_template.alm_comnt_usr_def_msg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_msg'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_usr_def_msg) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_msg IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_msg_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_usr_def_msg_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_msg IS NULL AND __tags_800xa_ext4__.alm_comnt_usr_def_msg_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_alm IS NOT NULL OR p_exclusion_template.alm_comnt_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_rtn_norm IS NOT NULL OR p_exclusion_template.alm_comnt_rtn_norm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_rtn_norm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_rtn_norm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_rtn_norm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_rtn_norm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_rtn_norm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_rtn_norm IS NULL AND __tags_800xa_ext1__.alm_comnt_rtn_norm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_alm IS NOT NULL OR p_exclusion_template.alm_comnt_high_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_high_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_high_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_high_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_high_alm IS NULL AND __tags_800xa_ext1__.alm_comnt_high_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_alm IS NOT NULL OR p_exclusion_template.alm_comnt_low_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_low_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_low_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_low_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_low_alm IS NULL AND __tags_800xa_ext2__.alm_comnt_low_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high2_alm IS NOT NULL OR p_exclusion_template.alm_comnt_high2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high2_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high2_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high2_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high2_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high2_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high2_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_high2_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low2_alm IS NOT NULL OR p_exclusion_template.alm_comnt_low2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low2_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low2_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low2_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low2_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low2_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low2_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_low2_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high3_alm IS NOT NULL OR p_exclusion_template.alm_comnt_high3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high3_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high3_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high3_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high3_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high3_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high3_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_high3_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low3_alm IS NOT NULL OR p_exclusion_template.alm_comnt_low3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low3_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low3_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low3_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low3_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low3_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low3_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_low3_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_devi_alm IS NOT NULL OR p_exclusion_template.alm_comnt_high_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_devi_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_high_devi_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_high_devi_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_devi_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_high_devi_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_high_devi_alm IS NULL AND __tags_800xa_ext1__.alm_comnt_high_devi_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_devi_alm IS NOT NULL OR p_exclusion_template.alm_comnt_low_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_devi_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_low_devi_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_low_devi_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_devi_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_low_devi_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_low_devi_alm IS NULL AND __tags_800xa_ext2__.alm_comnt_low_devi_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_rate_chg_alm IS NOT NULL OR p_exclusion_template.alm_comnt_high_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high_rate_chg_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high_rate_chg_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high_rate_chg_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_rate_chg_alm IS NOT NULL OR p_exclusion_template.alm_comnt_low_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low_rate_chg_alm'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low_rate_chg_alm) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low_rate_chg_alm_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm IS NULL AND __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_bad_qual IS NOT NULL OR p_exclusion_template.alm_comnt_bad_qual_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_bad_qual'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_bad_qual) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_bad_qual IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_bad_qual_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_bad_qual_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_bad_qual IS NULL AND __tags_800xa_ext1__.alm_comnt_bad_qual_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_com_err IS NOT NULL OR p_exclusion_template.alm_comnt_com_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_com_err'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_com_err) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_com_err IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_com_err_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_com_err_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_com_err IS NULL AND __tags_800xa_ext3__.alm_comnt_com_err_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_com_err_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_com_err_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_com_err_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_com_err_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_com_err_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_com_err_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_com_err_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_com_err_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_com_err_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_high_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_high_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_high_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_high_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_high_alm_rtn IS NULL AND __tags_800xa_ext1__.alm_comnt_high_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_devi_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_high_devi_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_devi_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext1__.alm_comnt_high_devi_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext1__.alm_comnt_high_devi_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''alm_comnt_high_devi_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext1__.alm_comnt_high_devi_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext1__.alm_comnt_high_devi_alm_rtn IS NULL AND __tags_800xa_ext1__.alm_comnt_high_devi_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high_rate_chg_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_high_rate_chg_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high_rate_chg_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high_rate_chg_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_high_rate_chg_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high2_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_high2_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high2_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high2_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high2_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high2_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high2_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high2_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_high2_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_high3_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_high3_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high3_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_high3_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_high3_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_high3_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_high3_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_high3_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_high3_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_low_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_low_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_low_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_low_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_low_alm_rtn IS NULL AND __tags_800xa_ext2__.alm_comnt_low_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_devi_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_low_devi_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_devi_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_low_devi_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_low_devi_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_low_devi_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_low_devi_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_low_devi_alm_rtn IS NULL AND __tags_800xa_ext2__.alm_comnt_low_devi_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low_rate_chg_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_low_rate_chg_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low_rate_chg_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low_rate_chg_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_low_rate_chg_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low2_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_low2_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low2_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low2_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low2_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low2_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low2_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low2_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_low2_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_low3_alm_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_low3_alm_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low3_alm_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext3__.alm_comnt_low3_alm_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext3__.alm_comnt_low3_alm_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''alm_comnt_low3_alm_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext3__.alm_comnt_low3_alm_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext3__.alm_comnt_low3_alm_rtn IS NULL AND __tags_800xa_ext3__.alm_comnt_low3_alm_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_mod_err IS NOT NULL OR p_exclusion_template.alm_comnt_mod_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_mod_err'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_mod_err) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_mod_err IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_mod_err_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_mod_err_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_mod_err IS NULL AND __tags_800xa_ext4__.alm_comnt_mod_err_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_mod_err_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_mod_err_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_mod_err_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_mod_err_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_mod_err_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_mod_err_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_mod_err_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_mod_err_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_mod_err_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_offline IS NOT NULL OR p_exclusion_template.alm_comnt_offline_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_offline'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_offline) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_offline IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_offline_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_offline_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_offline IS NULL AND __tags_800xa_ext4__.alm_comnt_offline_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_offline_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_offline_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_offline_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_offline_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_offline_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_offline_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_offline_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_offline_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_offline_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_out IS NOT NULL OR p_exclusion_template.alm_comnt_out_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_out'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_out) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_out IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_out_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_out_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_out IS NULL AND __tags_800xa_ext2__.alm_comnt_out_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_out_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_out_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_out_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_out_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_out_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_out_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_out_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_out_rtn IS NULL AND __tags_800xa_ext2__.alm_comnt_out_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_state_chg_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_state_chg_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_state_chg_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_state_chg_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_state_chg_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_state_chg_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_state_chg_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_state_chg_rtn IS NULL AND __tags_800xa_ext2__.alm_comnt_state_chg_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_state_chg IS NOT NULL OR p_exclusion_template.alm_comnt_state_chg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_state_chg'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext2__.alm_comnt_state_chg) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext2__.alm_comnt_state_chg IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''alm_comnt_state_chg_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext2__.alm_comnt_state_chg_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext2__.alm_comnt_state_chg IS NULL AND __tags_800xa_ext2__.alm_comnt_state_chg_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_sys_err IS NOT NULL OR p_exclusion_template.alm_comnt_sys_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_err'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_sys_err) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_err IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_err_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_sys_err_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_err IS NULL AND __tags_800xa_ext4__.alm_comnt_sys_err_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_sys_err_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_sys_err_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_err_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_sys_err_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_err_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_err_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_sys_err_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_err_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_sys_err_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_sys_fault_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_sys_fault_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_fault_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_sys_fault_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_fault_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_sys_fault_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_sys_fault_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_sys_fault_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_sys_fault_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_usr_def_fault_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_usr_def_fault_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_fault_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_usr_def_fault_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_fault_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_fault_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_usr_def_fault_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_fault_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_usr_def_fault_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.alm_comnt_usr_def_msg_rtn IS NOT NULL OR p_exclusion_template.alm_comnt_usr_def_msg_rtn_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_msg_rtn'' AS field_name, 10112 AS error_num, ''Invalid alarm comment'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON lower(__tags_800xa_ext4__.alm_comnt_usr_def_msg_rtn) = lower(td_alarmcomment.almcomnt)
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_msg_rtn IS NOT NULL AND td_alarmcomment.almcomnt IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''alm_comnt_usr_def_msg_rtn_ndx'' AS field_name, 10113, ''Invalid alarm comment index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_alarmcomment ON __tags_800xa_ext4__.alm_comnt_usr_def_msg_rtn_ndx = td_alarmcomment.almcomntndx
                WHERE  __tags_800xa_ext4__.alm_comnt_usr_def_msg_rtn IS NULL AND __tags_800xa_ext4__.alm_comnt_usr_def_msg_rtn_ndx IS NOT NULL AND td_alarmcomment.almcomntndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_state_chg IS NOT NULL OR p_exclusion_template.one_state_state_chg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_state_chg'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.one_state_state_chg)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.one_state_state_chg IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_state_chg_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.one_state_state_chg_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.one_state_state_chg IS NULL AND __tags_800xa_ext2__.one_state_state_chg_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_state_chg IS NOT NULL OR p_exclusion_template.zero_state_state_chg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_state_chg'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.zero_state_state_chg)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.zero_state_state_chg IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_state_chg_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.zero_state_state_chg_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.zero_state_state_chg IS NULL AND __tags_800xa_ext2__.zero_state_state_chg_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_alm_desc IS NOT NULL OR p_exclusion_template.one_state_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_bad_qual_desc IS NOT NULL OR p_exclusion_template.one_state_bad_qual_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_bad_qual_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.one_state_bad_qual_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.one_state_bad_qual_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_bad_qual_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.one_state_bad_qual_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.one_state_bad_qual_desc IS NULL AND __tags_800xa_ext1__.one_state_bad_qual_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_com_err_desc IS NOT NULL OR p_exclusion_template.one_state_com_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_com_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_com_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_com_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_com_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_com_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_com_err_desc IS NULL AND __tags_800xa_ext3__.one_state_com_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_high_alm_desc IS NOT NULL OR p_exclusion_template.one_state_high_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_high_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.one_state_high_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.one_state_high_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_high_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.one_state_high_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.one_state_high_alm_desc IS NULL AND __tags_800xa_ext1__.one_state_high_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_high_devi_alm_desc IS NOT NULL OR p_exclusion_template.one_state_high_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_high_devi_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.one_state_high_devi_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.one_state_high_devi_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''one_state_high_devi_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.one_state_high_devi_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.one_state_high_devi_alm_desc IS NULL AND __tags_800xa_ext1__.one_state_high_devi_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_high_rate_chg_alm_desc IS NOT NULL OR p_exclusion_template.one_state_high_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high_rate_chg_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_high_rate_chg_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_high_rate_chg_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high_rate_chg_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_high_rate_chg_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_high_rate_chg_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_high_rate_chg_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_high2_alm_desc IS NOT NULL OR p_exclusion_template.one_state_high2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high2_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_high2_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_high2_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high2_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_high2_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_high2_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_high2_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_high3_alm_desc IS NOT NULL OR p_exclusion_template.one_state_high3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high3_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_high3_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_high3_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_high3_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_high3_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_high3_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_high3_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_low_alm_desc IS NOT NULL OR p_exclusion_template.one_state_low_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_low_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.one_state_low_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.one_state_low_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_low_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.one_state_low_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.one_state_low_alm_desc IS NULL AND __tags_800xa_ext2__.one_state_low_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_low_devi_alm_desc IS NOT NULL OR p_exclusion_template.one_state_low_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_low_devi_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.one_state_low_devi_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.one_state_low_devi_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''one_state_low_devi_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.one_state_low_devi_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.one_state_low_devi_alm_desc IS NULL AND __tags_800xa_ext2__.one_state_low_devi_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_low_rate_chg_alm_desc IS NOT NULL OR p_exclusion_template.one_state_low_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low_rate_chg_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_low_rate_chg_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_low_rate_chg_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low_rate_chg_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_low_rate_chg_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_low_rate_chg_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_low_rate_chg_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_low2_alm_desc IS NOT NULL OR p_exclusion_template.one_state_low2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low2_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_low2_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_low2_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low2_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_low2_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_low2_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_low2_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_low3_alm_desc IS NOT NULL OR p_exclusion_template.one_state_low3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low3_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.one_state_low3_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.one_state_low3_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''one_state_low3_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.one_state_low3_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.one_state_low3_alm_desc IS NULL AND __tags_800xa_ext3__.one_state_low3_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_mod_err_desc IS NOT NULL OR p_exclusion_template.one_state_mod_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_mod_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_mod_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_mod_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_mod_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_mod_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_mod_err_desc IS NULL AND __tags_800xa_ext4__.one_state_mod_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_offline_desc IS NOT NULL OR p_exclusion_template.one_state_offline_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_offline_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_offline_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_offline_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_offline_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_offline_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_offline_desc IS NULL AND __tags_800xa_ext4__.one_state_offline_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_sys_err_desc IS NOT NULL OR p_exclusion_template.one_state_sys_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_sys_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_sys_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_sys_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_sys_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_sys_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_sys_err_desc IS NULL AND __tags_800xa_ext4__.one_state_sys_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_sys_fault_desc IS NOT NULL OR p_exclusion_template.one_state_sys_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_sys_fault_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_sys_fault_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_sys_fault_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_sys_fault_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_sys_fault_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_sys_fault_desc IS NULL AND __tags_800xa_ext4__.one_state_sys_fault_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_usr_def_fault_desc IS NOT NULL OR p_exclusion_template.one_state_usr_def_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_usr_def_fault_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_usr_def_fault_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_usr_def_fault_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_usr_def_fault_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_usr_def_fault_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_usr_def_fault_desc IS NULL AND __tags_800xa_ext4__.one_state_usr_def_fault_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.one_state_usr_def_msg_desc IS NOT NULL OR p_exclusion_template.one_state_usr_def_msg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_usr_def_msg_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.one_state_usr_def_msg_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.one_state_usr_def_msg_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''one_state_usr_def_msg_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.one_state_usr_def_msg_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.one_state_usr_def_msg_desc IS NULL AND __tags_800xa_ext4__.one_state_usr_def_msg_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_bad_qual_desc IS NOT NULL OR p_exclusion_template.zero_state_bad_qual_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_bad_qual_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.zero_state_bad_qual_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.zero_state_bad_qual_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_bad_qual_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.zero_state_bad_qual_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.zero_state_bad_qual_desc IS NULL AND __tags_800xa_ext1__.zero_state_bad_qual_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_com_err_desc IS NOT NULL OR p_exclusion_template.zero_state_com_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_com_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_com_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_com_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_com_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_com_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_com_err_desc IS NULL AND __tags_800xa_ext3__.zero_state_com_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_high_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_high_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_high_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.zero_state_high_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.zero_state_high_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_high_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.zero_state_high_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.zero_state_high_alm_desc IS NULL AND __tags_800xa_ext1__.zero_state_high_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_high_devi_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_high_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_high_devi_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext1__.zero_state_high_devi_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext1__.zero_state_high_devi_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext1__.tag_guid, __tags_800xa_ext1__.tag_name, ''zero_state_high_devi_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext1__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext1__.zero_state_high_devi_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext1__.zero_state_high_devi_alm_desc IS NULL AND __tags_800xa_ext1__.zero_state_high_devi_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_high_rate_chg_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_high_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high_rate_chg_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_high_rate_chg_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_high_rate_chg_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high_rate_chg_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_high_rate_chg_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_high_rate_chg_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_high_rate_chg_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_high2_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_high2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high2_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_high2_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_high2_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high2_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_high2_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_high2_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_high2_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_high3_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_high3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high3_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_high3_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_high3_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_high3_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_high3_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_high3_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_high3_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_low_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_low_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_low_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.zero_state_low_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.zero_state_low_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_low_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.zero_state_low_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.zero_state_low_alm_desc IS NULL AND __tags_800xa_ext2__.zero_state_low_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_low_devi_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_low_devi_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_low_devi_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext2__.zero_state_low_devi_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext2__.zero_state_low_devi_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext2__.tag_guid, __tags_800xa_ext2__.tag_name, ''zero_state_low_devi_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext2__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext2__.zero_state_low_devi_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext2__.zero_state_low_devi_alm_desc IS NULL AND __tags_800xa_ext2__.zero_state_low_devi_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_low_rate_chg_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_low_rate_chg_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low_rate_chg_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_low_rate_chg_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_low_rate_chg_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low_rate_chg_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_low_rate_chg_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_low_rate_chg_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_low_rate_chg_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_low2_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_low2_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low2_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_low2_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_low2_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low2_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_low2_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_low2_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_low2_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_low3_alm_desc IS NOT NULL OR p_exclusion_template.zero_state_low3_alm_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low3_alm_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext3__.zero_state_low3_alm_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext3__.zero_state_low3_alm_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext3__.tag_guid, __tags_800xa_ext3__.tag_name, ''zero_state_low3_alm_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext3__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext3__.zero_state_low3_alm_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext3__.zero_state_low3_alm_desc IS NULL AND __tags_800xa_ext3__.zero_state_low3_alm_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_mod_err_desc IS NOT NULL OR p_exclusion_template.zero_state_mod_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_mod_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_mod_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_mod_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_mod_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_mod_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_mod_err_desc IS NULL AND __tags_800xa_ext4__.zero_state_mod_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_offline_desc IS NOT NULL OR p_exclusion_template.zero_state_offline_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_offline_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_offline_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_offline_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_offline_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_offline_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_offline_desc IS NULL AND __tags_800xa_ext4__.zero_state_offline_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_sys_err_desc IS NOT NULL OR p_exclusion_template.zero_state_sys_err_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_sys_err_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_sys_err_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_sys_err_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_sys_err_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_sys_err_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_sys_err_desc IS NULL AND __tags_800xa_ext4__.zero_state_sys_err_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_sys_fault_desc IS NOT NULL OR p_exclusion_template.zero_state_sys_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_sys_fault_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_sys_fault_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_sys_fault_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_sys_fault_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_sys_fault_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_sys_fault_desc IS NULL AND __tags_800xa_ext4__.zero_state_sys_fault_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_usr_def_fault_desc IS NOT NULL OR p_exclusion_template.zero_state_usr_def_fault_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_usr_def_fault_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_usr_def_fault_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_usr_def_fault_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_usr_def_fault_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_usr_def_fault_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_usr_def_fault_desc IS NULL AND __tags_800xa_ext4__.zero_state_usr_def_fault_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        IF p_exclusion_template IS NULL OR p_exclusion_template.zero_state_usr_def_msg_desc IS NOT NULL OR p_exclusion_template.zero_state_usr_def_msg_ndx IS NOT NULL THEN
            l_sql = l_sql || '
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_usr_def_msg_desc'' AS field_name, 10110 AS error_num, ''Invalid logic state descriptor'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON trim(lower(__tags_800xa_ext4__.zero_state_usr_def_msg_desc)) = trim(lower(td_lsd.logicstatedesc))
                WHERE  __tags_800xa_ext4__.zero_state_usr_def_msg_desc IS NOT NULL AND td_lsd.logicstatedesc IS NULL
                    UNION
                SELECT __tags_800xa_ext4__.tag_guid, __tags_800xa_ext4__.tag_name, ''zero_state_usr_def_msg_ndx'' AS field_name, 10111, ''Invalid logic state index'' AS error_desc
                FROM   __tags_800xa_ext4__ LEFT OUTER JOIN harmonydata.td_lsd ON __tags_800xa_ext4__.zero_state_usr_def_msg_ndx = td_lsd.lsdndx
                WHERE  __tags_800xa_ext4__.zero_state_usr_def_msg_desc IS NULL AND __tags_800xa_ext4__.zero_state_usr_def_msg_ndx IS NOT NULL AND td_lsd.lsdndx IS NULL
                    UNION
            ';
        END IF;

        /************* auto generate end *************/    


        IF (strpos(l_sql, 'UNION') > 0) THEN
            l_startpos = strpos(reverse(l_sql),reverse('UNION'));
            l_sql = reverse(concat(left(reverse(l_sql), l_startpos - 1), right(reverse(l_sql), length(l_sql) - l_startpos + 1 - length('UNION'))));
            EXECUTE l_sql;
        END IF;
        
        /** section LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_find_text_index_errors_td_ch', 'Find errors in td_800xA');

    END IF;

    SET enable_nestloop = on;   

    PERFORM harmonydata.fn_delete_errant_temp_records_td_ch (p_do_log, p_is_800xa, true, false, false);
        
    /** function LOG **/ PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time_fn, 'fn_find_text_index_errors_td_ch', 'fn_find_text_index_errors_td_ch');

END
$$;


ALTER FUNCTION harmonydata.fn_find_text_index_errors_td_ch(p_do_log boolean, p_is_800xa boolean, p_do_add_default_800xa_recs boolean, p_exclusion_template harmonydata.type_800xa_tag_ch) OWNER TO postgres;

--
-- TOC entry 1210 (class 1255 OID 1704014)
-- Name: fn_insert_tags_td_ch(boolean, boolean, boolean); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata.fn_insert_tags_td_ch(p_do_log boolean, p_is_800xa boolean, p_catch_duplicate_errors boolean) RETURNS boolean
    LANGUAGE plpgsql
    AS $$

DECLARE 
    l_start_time_fn timestamp without time zone;
    l_start_time timestamp without time zone;

BEGIN
    
    /** function LOG **/ l_start_time_fn := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time_fn, 'fn_insert_tags_td_ch', '');

    /** section LOG **/	l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_insert_tags_td_ch', ''); 
    
    INSERT INTO harmonydata.td_ch
    (
        tag_guid,
        tag_name,
        tag_desc,
        tag_type_ndx,
        exchange_indicator,
        project_flag,
        create_timestamp,
        update_timestamp,
        loop,
        node,
        module,
        block,
        cld_guid,
        cld_obj_id,
        cld_obj_subindex,
        fc_num,
        eng_units_ndx,
        value_zero,
        span,
        high_alm,
        low_alm,
        sp_value_zero,
        sp_span,
        sp_eng_units_ndx,
        dev_alm_point,
        alm_state_ndx,
        cfc_super_tag
    ) 
    SELECT 
        tag_guid,
        tag_name,
        tag_desc,
        tag_type_ndx,
        exchange_indicator,
        project_flag,
        create_timestamp,
        update_timestamp,
        loop,
        node,
        module,
        block,
        cld_guid,
        cld_obj_id,
        cld_obj_subindex,
        fc_num,
        eng_units_ndx,
        value_zero,
        span,
        high_alm,
        low_alm,
        sp_value_zero,
        sp_span,
        sp_eng_units_ndx,
        dev_alm_point,
        alm_state_ndx,        
        cfc_super_tag
    FROM __tags_ch_add__;

    /** section LOG **/	PERFORM harmonydata.fn_dbg_log_activity_time (p_do_log, 'E', l_start_time, 'fn_insert_tags_td_ch', 'INSERT td_ch tags');

      
    IF (p_is_800xa) THEN
    
        /** section LOG **/ l_start_time := harmonydata.fn_dbg_log_activity_time (p_do_log, 'S', l_start_time, 'fn_insert_tags_td_ch', ''); 

        /************* auto generate start *************/  

        INSERT INTO harmonydata.td_800xa_base
        (
            tag_guid,
            co_num_dec_pl,
            co_span,
            co_value_zero,
            num_dec_places,
            sp_num_dec_pl,
            pid_blk,
            alm_inh_tag_guid,
            alm_inh_tag_atom,
            alm_inh_state_id,
            txt_set,
            ctrl_enbl,
            txt_str_lnth,
            handshaking,
            fast_rpt_max_time,
            slow_rpt_max_time,
            user_text,
            user_index,
            alm_ack_trnsm,
            alm_sil_trnsm,
            alm_ack_bcast,
            ack_req_alm,
            ack_req_bad_qual,
            ack_req_com_err,
            ack_req_high_alm,
            ack_req_high_devi_alm,
            ack_req_high_rate_chg_alm,
            ack_req_high2_alm,
            ack_req_high3_alm,
            ack_req_low_alm,
            ack_req_low_devi_alm,
            ack_req_low_rate_chg_alm,
            ack_req_low2_alm,
            ack_req_low3_alm,
            ack_req_mod_err,
            ack_req_offline,
            ack_req_out,
            ack_req_state_chg,
            ack_req_sys_err,
            ack_req_sys_fault,
            ack_req_usr_def_fault,
            ack_req_usr_def_msg,
            alm_en_alm,
            alm_en_bad_qual,
            alm_en_com_err,
            alm_en_high_alm,
            alm_en_high_devi_alm,
            alm_en_high_rate_chg_alm,
            alm_en_high2_alm,
            alm_en_high3_alm,
            alm_en_low_alm,
            alm_en_low_devi_alm,
            alm_en_low_rate_chg_alm,
            alm_en_low2_alm,
            alm_en_low3_alm,
            alm_en_mod_err,
            alm_en_offline,
            alm_en_out,
            alm_en_state_chg,
            alm_en_sys_err,
            alm_en_sys_fault,
            alm_en_usr_def_fault,
            alm_en_usr_def_msg,
            alm_prty_alm,
            alm_prty_rtn_norm,
            alm_prty_badqual,
            alm_prty_high_alm,
            alm_prty_low_alm,
            alm_prty_high2_alm,
            alm_prty_low2_alm,
            alm_prty_high3_alm,
            alm_prty_low3_alm,
            alm_prty_high_devi_alm,
            alm_prty_low_devi_alm,
            alm_prty_high_rate_chg_alm,
            alm_prty_low_rate_chg_alm,
            alm_prty_sys_fault,
            alm_prty_usr_def_fault,
            alm_prty_usr_def_msg,
            alm_prty_alm_rtn,
            alm_prty_com_err,
            alm_prty_com_err_rtn,
            alm_prty_high_alm_rtn,
            alm_prty_high_devi_alm_rtn,
            alm_prty_high_rate_chg_alm_rtn,
            alm_prty_high2_alm_rtn,
            alm_prty_high3_alm_rtn,
            alm_prty_low_alm_rtn,
            alm_prty_low_devi_alm_rtn,
            alm_prty_low_rate_chg_alm_rtn,
            alm_prty_low2_alm_rtn,
            alm_prty_low3_alm_rtn,
            alm_prty_mod_err,
            alm_prty_mod_err_rtn,
            alm_prty_offline,
            alm_prty_offline_rtn,
            alm_prty_out,
            alm_prty_out_rtn,
            alm_prty_state_chg,
            alm_prty_state_chg_rtn,
            alm_prty_sys_err,
            alm_prty_sys_err_rtn,
            alm_prty_sys_fault_rtn,
            alm_prty_usr_def_fault_rtn,
            alm_prty_usr_def_msg_rtn,
            enable_alm,
            enable_bad_qual,
            enable_com_err,
            enable_high_alm,
            enable_high_devi_alm,
            enable_high_rate_chg_alm,
            enable_high2_alm,
            enable_high3_alm,
            enable_low_alm,
            enable_low_devi_alm,
            enable_low_rate_chg_alm,
            enable_low2_alm,
            enable_low3_alm,
            enable_mod_err,
            enable_offline,
            enable_out,
            enable_state_chg,
            enable_sys_err,
            enable_sys_fault,
            enable_usr_def_fault,
            enable_usr_def_msg,
            server_id
        )
        SELECT
            tag_guid,
            co_num_dec_pl,
            co_span,
            co_value_zero,
            num_dec_places,
            sp_num_dec_pl,
            pid_blk,
            NULL AS alm_inh_tag_guid,  -- must defer setting until after all tags are added
            alm_inh_tag_atom,
            alm_inh_state_id,
            txt_set,
            ctrl_enbl,
            txt_str_lnth,
            handshaking,
            fast_rpt_max_time,
            slow_rpt_max_time,
            user_text,
            user_index,
            alm_ack_trnsm,
            alm_sil_trnsm,
            alm_ack_bcast,
            ack_req_alm,
            ack_req_bad_qual,
            ack_req_com_err,
            ack_req_high_alm,
            ack_req_high_devi_alm,
            ack_req_high_rate_chg_alm,
            ack_req_high2_alm,
            ack_req_high3_alm,
            ack_req_low_alm,
            ack_req_low_devi_alm,
            ack_req_low_rate_chg_alm,
            ack_req_low2_alm,
            ack_req_low3_alm,
            ack_req_mod_err,
            ack_req_offline,
            ack_req_out,
            ack_req_state_chg,
            ack_req_sys_err,
            ack_req_sys_fault,
            ack_req_usr_def_fault,
            ack_req_usr_def_msg,
            alm_en_alm,
            alm_en_bad_qual,
            alm_en_com_err,
            alm_en_high_alm,
            alm_en_high_devi_alm,
            alm_en_high_rate_chg_alm,
            alm_en_high2_alm,
            alm_en_high3_alm,
            alm_en_low_alm,
            alm_en_low_devi_alm,
            alm_en_low_rate_chg_alm,
            alm_en_low2_alm,
            alm_en_low3_alm,
            alm_en_mod_err,
            alm_en_offline,
            alm_en_out,
            alm_en_state_chg,
            alm_en_sys_err,
            alm_en_sys_fault,
            alm_en_usr_def_fault,
            alm_en_usr_def_msg,
            alm_prty_alm,
            alm_prty_rtn_norm,
            alm_prty_badqual,
            alm_prty_high_alm,
            alm_prty_low_alm,
            alm_prty_high2_alm,
            alm_prty_low2_alm,
            alm_prty_high3_alm,
            alm_prty_low3_alm,
            alm_prty_high_devi_alm,
            alm_prty_low_devi_alm,
            alm_prty_high_rate_chg_alm,
            alm_prty_low_rate_chg_alm,
            alm_prty_sys_fault,
            alm_prty_usr_def_fault,
            alm_prty_usr_def_msg,
            alm_prty_alm_rtn,
            alm_prty_com_err,
            alm_prty_com_err_rtn,
            alm_prty_high_alm_rtn,
            alm_prty_high_devi_alm_rtn,
            alm_prty_high_rate_chg_alm_rtn,
            alm_prty_high2_alm_rtn,
            alm_prty_high3_alm_rtn,
            alm_prty_low_alm_rtn,
            alm_prty_low_devi_alm_rtn,
            alm_prty_low_rate_chg_alm_rtn,
            alm_prty_low2_alm_rtn,
            alm_prty_low3_alm_rtn,
            alm_prty_mod_err,
            alm_prty_mod_err_rtn,
            alm_prty_offline,
            alm_prty_offline_rtn,
            alm_prty_out,
            alm_prty_out_rtn,
            alm_prty_state_chg,
            alm_prty_state_chg_rtn,
            alm_prty_sys_err,
            alm_prty_sys_err_rtn,
            alm_prty_sys_fault_rtn,
            alm_prty_usr_def_fault_rtn,
            alm_prty_usr_def_msg_rtn,
            enable_alm,
            enable_bad_qual,
            enable_com_err,
            enable_high_alm,
            enable_high_devi_alm,
            enable_high_rate_chg_alm,
            enable_high2_alm,
            enable_high3_alm,
            enable_low_alm,
            enable_low_devi_alm,
            enable_low_rate_chg_alm,
            enable_low2_alm,
            enable_low3_alm,
            enable_mod_err,
            enable_offline,
            enable_out,
            enable_state_chg,
            enable_sys_err,
            enable_sys_fault,
            enable_usr_def_fault,
            enable_usr_def_msg,
            server_id
        FROM __tags_800xa_base_add__;

        INSERT INTO harmonydata.td_800xa_ext1
        (
            tag_guid,
            co_eng_units_ndx,
            feedbk10_state_ndx,
            feedbk11_state_ndx,
            feedbk20_state_ndx,
            feedbk21_state_ndx,
            area_guid,
            equipment_guid,
            alm_comnt_rtn_norm_ndx,
            alm_comnt_high_alm_ndx,
            alm_comnt_high_devi_alm_ndx,
            alm_comnt_bad_qual_ndx,
            alm_comnt_high_alm_rtn_ndx,
            alm_comnt_high_devi_alm_rtn_ndx,
            one_state_bad_qual_ndx,
            one_state_high_alm_ndx,
            one_state_high_devi_alm_ndx,
            zero_state_bad_qual_ndx,
            zero_state_high_alm_ndx,
            zero_state_high_devi_alm_ndx
        )
        SELECT
            tag_guid,
            co_eng_units_ndx,
            feedbk10_state_ndx,
            feedbk11_state_ndx,
            feedbk20_state_ndx,
            feedbk21_state_ndx,
            area_guid,
            equipment_guid,
            alm_comnt_rtn_norm_ndx,
            alm_comnt_high_alm_ndx,
            alm_comnt_high_devi_alm_ndx,

  alm_comnt_low_rate_chg_alm_ndx integer,
    alm_comnt_alm_rtn_ndx integer,
    alm_comnt_com_err_ndx integer,
    alm_comnt_com_err_rtn_ndx integer,
    alm_comnt_high_rate_chg_alm_rtn_ndx integer,
    alm_comnt_high2_alm_rtn_ndx integer,
    alm_comnt_high3_alm_rtn_ndx integer,
    alm_comnt_low_rate_chg_alm_rtn_ndx integer,
    alm_comnt_low2_alm_rtn_ndx integer,
    alm_comnt_low3_alm_rtn_ndx integer,
    one_state_alm_ndx smallint,
    one_state_com_err_ndx smallint,
    one_state_high_rate_chg_alm_ndx smallint,
    one_state_high2_alm_ndx smallint,
    one_state_high3_alm_ndx smallint,
    one_state_low_rate_chg_alm_ndx smallint,
    one_state_low2_alm_ndx smallint,
    one_state_low3_alm_ndx smallint,
    zero_state_alm_ndx smallint,
    zero_state_com_err_ndx smallint,
    zero_state_high_rate_chg_alm_ndx smallint,
    zero_state_high2_alm_ndx smallint,
    zero_state_high3_alm_ndx smallint,
    zero_state_low_rate_chg_alm_ndx smallint,
    zero_state_low2_alm_ndx smallint,
    zero_state_low3_alm_ndx smallint
)
WITH (autovacuum_enabled='true');


ALTER TABLE harmonydata.td_800xa_ext3 OWNER TO postgres;

--
-- TOC entry 885 (class 1259 OID 1703744)
-- Name: td_800xa_ext4; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.td_800xa_ext4 (
    tag_guid uuid NOT NULL,
    permv10_state_ndx smallint,
    permv11_state_ndx smallint,
    permv20_state_ndx smallint,
    permv21_state_ndx smallint,
    alm_comnt_sys_fault_ndx integer,
    alm_comnt_usr_def_fault_ndx integer,
    alm_comnt_usr_def_msg_ndx integer,
    alm_comnt_mod_err_ndx integer,
    alm_comnt_mod_err_rtn_ndx integer,
    alm_comnt_offline_ndx integer,
    alm_comnt_offline_rtn_ndx integer,
    alm_comnt_sys_err_ndx integer,
    alm_comnt_sys_err_rtn_ndx integer,
    alm_comnt_sys_fault_rtn_ndx integer,
    alm_comnt_usr_def_fault_rtn_ndx integer,
    alm_comnt_usr_def_msg_rtn_ndx integer,
    one_state_mod_err_ndx smallint,
    one_state_offline_ndx smallint,
    one_state_sys_err_ndx smallint,
    one_state_sys_fault_ndx smallint,
    one_state_usr_def_fault_ndx smallint,
    one_state_usr_def_msg_ndx smallint,
    zero_state_mod_err_ndx smallint,
    zero_state_offline_ndx smallint,
    zero_state_sys_err_ndx smallint,
    zero_state_sys_fault_ndx smallint,
    zero_state_usr_def_fault_ndx smallint,
    zero_state_usr_def_msg_ndx smallint
)
WITH (autovacuum_enabled='true');


ALTER TABLE harmonydata.td_800xa_ext4 OWNER TO postgres;

--
-- TOC entry 712 (class 1259 OID 827609)
-- Name: td_ch; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.td_ch (
    tag_guid uuid NOT NULL,
    tag_name character varying(64) NOT NULL,
    tag_desc character varying(128),
    tag_type_ndx smallint NOT NULL,
    exchange_indicator character varying(1) DEFAULT 'P'::character varying NOT NULL,
    project_flag smallint,
    update_timestamp timestamp without time zone DEFAULT now() NOT NULL,
    create_timestamp timestamp without time zone DEFAULT now() NOT NULL,
    loop smallint DEFAULT 0 NOT NULL,
    node smallint DEFAULT 0 NOT NULL,
    module smallint DEFAULT 0 NOT NULL,
    block integer DEFAULT 0 NOT NULL,
    cld_guid uuid,
    cld_obj_id integer,
    cld_obj_subindex integer DEFAULT 0,
    fc_num smallint,
    eng_units_ndx smallint DEFAULT 0,
    value_zero real DEFAULT 0.0,
    span real DEFAULT 100.0,
    high_alm real DEFAULT 0.0,
    low_alm real DEFAULT 0.0,
    sp_value_zero real DEFAULT 0.0,
    sp_span real DEFAULT 0.0,
    sp_eng_units_ndx smallint DEFAULT 0,
    dev_alm_point real DEFAULT 0.0,
    alm_state_ndx smallint DEFAULT 2 NOT NULL,
    cfc_super_tag xml,
    CONSTRAINT td_ch_alm_state_ndx_check CHECK (((alm_state_ndx >= 0) AND (alm_state_ndx <= 2))),
    CONSTRAINT td_ch_block_check CHECK (((block >= 0) AND (block <= 31998))),
    CONSTRAINT td_ch_exchange_indicator_check CHECK (((exchange_indicator)::text = ANY (ARRAY[('E'::character varying)::text, ('P'::character varying)::text]))),
    CONSTRAINT td_ch_loop_check CHECK (((loop >= 0) AND (loop <= 250))),
    CONSTRAINT td_ch_module_check CHECK (((module >= 0) AND (module <= 31))),
    CONSTRAINT td_ch_node_check CHECK (((node >= 0) AND (node <= 250))),
    CONSTRAINT td_ch_project_flag_check CHECK ((project_flag = 1))
)
WITH (autovacuum_enabled='true');


ALTER TABLE harmonydata.td_ch OWNER TO postgres;

--
-- TOC entry 8952 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.tag_guid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.tag_guid IS 'Globally unique tag identifier (unique across jobs)';


--
-- TOC entry 8953 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.tag_name; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.tag_name IS 'Tag name (unique within a job) (Candidate key)';


--
-- TOC entry 8954 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.tag_desc; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.tag_desc IS 'Tag descriptor';


--
-- TOC entry 8955 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.tag_type_ndx; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.tag_type_ndx IS 'Type of tag (index into one of the domain_xxx_tag_type tables)';


--
-- TOC entry 8956 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.exchange_indicator; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.exchange_indicator IS 'Specifies whether this tag is on the exchange or in a project';


--
-- TOC entry 8957 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.project_flag; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.project_flag IS 'Flag used to enforce uniqueness in project but not on exchange (NULL for exchange items, 1 for project items)';


--
-- TOC entry 8958 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.update_timestamp; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.update_timestamp IS 'Time of last modification';


--
-- TOC entry 8959 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.create_timestamp; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.create_timestamp IS 'Date and Time Tag was created';


--
-- TOC entry 8960 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.loop; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.loop IS 'Loop (0 if Plant Loop, 1-250 if Superloop)';


--
-- TOC entry 8961 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.node; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.node IS 'Node (0-63 if Plant Loop, 0-250 if Superloop)';


--
-- TOC entry 8962 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.module; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.module IS 'Module';


--
-- TOC entry 8963 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.block; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.block IS 'Block';


--
-- TOC entry 8964 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.cld_guid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.cld_guid IS 'GUID of CLD where associated XR block is defined';


--
-- TOC entry 8965 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.cld_obj_id; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.cld_obj_id IS 'CLD Object ID of associated XR block';


--
-- TOC entry 8966 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.cld_obj_subindex; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.cld_obj_subindex IS 'XR Index for Multiple XR CFCs. Not used with "regular" function codes.';


--
-- TOC entry 8967 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.fc_num; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.fc_num IS 'FC number';


--
-- TOC entry 8968 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.eng_units_ndx; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.eng_units_ndx IS 'Engineering units (index into EUD)';


--
-- TOC entry 8969 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.value_zero; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.value_zero IS 'Value of zero point';


--
-- TOC entry 8970 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.span; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.span IS 'Span of possible values';


--
-- TOC entry 8971 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.high_alm; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.high_alm IS 'High alarm value';


--
-- TOC entry 8972 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.low_alm; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.low_alm IS 'Low alarm value';


--
-- TOC entry 8973 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.sp_value_zero; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.sp_value_zero IS 'Value of zero point for setpoint';


--
-- TOC entry 8974 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.sp_span; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.sp_span IS 'Span of possible values for setpoint';


--
-- TOC entry 8975 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.sp_eng_units_ndx; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.sp_eng_units_ndx IS 'Engineering units for setpoint (index into EUD)';


--
-- TOC entry 8976 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.dev_alm_point; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.dev_alm_point IS 'PV-SP deviation alarm point';


--
-- TOC entry 8977 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.alm_state_ndx; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.alm_state_ndx IS 'alarm state index (0 = Zero, 1 = One, 2 = no alarm)';


--
-- TOC entry 8978 (class 0 OID 0)
-- Dependencies: 712
-- Name: COLUMN td_ch.cfc_super_tag; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_ch.cfc_super_tag IS 'XML containing super tag definition';


--
-- TOC entry 713 (class 1259 OID 827640)
-- Name: td_lsd_unlogged; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE UNLOGGED TABLE harmonydata.td_lsd_unlogged (
    lsdguid uuid,
    lsdndx smallint,
    logicstatedesc character varying(255),
    updatetimestamp timestamp without time zone,
    creattimestamp timestamp without time zone,
    langid smallint,
    servertypeid uuid
);


ALTER TABLE harmonydata.td_lsd_unlogged OWNER TO postgres;

--
-- TOC entry 714 (class 1259 OID 827643)
-- Name: td_userfield; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.td_userfield (
    tagguid uuid NOT NULL,
    userfieldtext character varying(50),
    userfieldnumber integer DEFAULT 0
);


ALTER TABLE harmonydata.td_userfield OWNER TO postgres;

--
-- TOC entry 8979 (class 0 OID 0)
-- Dependencies: 714
-- Name: COLUMN td_userfield.tagguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_userfield.tagguid IS 'Globally unique tag identifier (unique across jobs)';


--
-- TOC entry 8980 (class 0 OID 0)
-- Dependencies: 714
-- Name: COLUMN td_userfield.userfieldtext; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_userfield.userfieldtext IS 'A sample text user field';


--
-- TOC entry 8981 (class 0 OID 0)
-- Dependencies: 714
-- Name: COLUMN td_userfield.userfieldnumber; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_userfield.userfieldnumber IS 'A sample numerical user field';


--
-- TOC entry 715 (class 1259 OID 827647)
-- Name: td_whereused; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.td_whereused (
    tagguid uuid NOT NULL,
    usedbyguid uuid NOT NULL,
    usagecount integer DEFAULT 0
);


ALTER TABLE harmonydata.td_whereused OWNER TO postgres;

--
-- TOC entry 8982 (class 0 OID 0)
-- Dependencies: 715
-- Name: COLUMN td_whereused.tagguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_whereused.tagguid IS 'Globally unique tag identifier (unique across jobs)';


--
-- TOC entry 8983 (class 0 OID 0)
-- Dependencies: 715
-- Name: COLUMN td_whereused.usedbyguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_whereused.usedbyguid IS 'GUID of data source that is using this tag';


--
-- TOC entry 8984 (class 0 OID 0)
-- Dependencies: 715
-- Name: COLUMN td_whereused.usagecount; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.td_whereused.usagecount IS 'Number of references to this tag by the data source';


--
-- TOC entry 716 (class 1259 OID 827651)
-- Name: tr_bcsfast; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.tr_bcsfast (
    trendguid uuid NOT NULL,
    trendlistguid uuid NOT NULL
);


ALTER TABLE harmonydata.tr_bcsfast OWNER TO postgres;

--
-- TOC entry 8985 (class 0 OID 0)
-- Dependencies: 716
-- Name: COLUMN tr_bcsfast.trendguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.tr_bcsfast.trendguid IS 'Globally unique trend identifier (unique across jobs)';


--
-- TOC entry 8986 (class 0 OID 0)
-- Dependencies: 716
-- Name: COLUMN tr_bcsfast.trendlistguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.tr_bcsfast.trendlistguid IS 'Trend list GUID';


--
-- TOC entry 717 (class 1259 OID 827654)
-- Name: tr_bcsnormal; Type: TABLE; Schema: harmonydata; Owner: postgres; Tablespace: 
--

CREATE TABLE harmonydata.tr_bcsnormal (
    trendguid uuid NOT NULL,
    trendlistguid uuid NOT NULL
);


ALTER TABLE harmonydata.tr_bcsnormal OWNER TO postgres;

--
-- TOC entry 8987 (class 0 OID 0)
-- Dependencies: 717
-- Name: COLUMN tr_bcsnormal.trendguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.tr_bcsnormal.trendguid IS 'Globally unique trend identifier (unique across jobs)';


--
-- TOC entry 8988 (class 0 OID 0)
-- Dependencies: 717
-- Name: COLUMN tr_bcsnormal.trendlistguid; Type: COMMENT; Schema: harmonydata; Owner: postgres
--

COMMENT ON COLUMN harmonydata.tr_bcsnormal.trendlistguid IS 'Trend list GUID';


--
-- TOC entry 886 (class 1259 OID 1704003)
-- Name: vw_all_800xa_tags_ch; Type: VIEW; Schema: harmonydata; Owner: postgres
--

CREATE VIEW harmonydata.vw_all_800xa_tags_ch AS
 SELECT td_ch.tag_guid,
    td_ch.tag_name,
    td_ch.tag_desc,
    td_ch.tag_type_ndx,
    domain_bcstagtype.bcsdesc AS tag_type,
    td_ch.exchange_indicator,
    td_ch.project_flag,
    td_ch.create_timestamp,
    td_ch.update_timestamp,
    td_ch.loop,
    td_ch.node,
    td_ch.module,
    td_ch.block,
    td_ch.cld_guid,
    pj_controllogic.name AS cld_name,
    td_ch.cld_obj_id,
    td_ch.cld_obj_subindex,
    td_ch.fc_num,
    td_ch.eng_units_ndx,
    td_eud_eng_units.engunitsdesc AS eng_units_desc,
    td_ch.value_zero,
    td_ch.span,
    td_ch.high_alm,
    td_ch.low_alm,
    td_ch.sp_value_zero,
    td_ch.sp_span,
    td_ch.sp_eng_units_ndx,
    td_eud_sp_eng_units.engunitsdesc AS sp_eng_units_desc,
    td_ch.dev_alm_point,
    td_ch.alm_state_ndx,
    td_ch.cfc_super_tag,
    td_800xa_ext1.co_eng_units_ndx,
    td_eud_co_eng_units.engunitsdesc AS co_eng_units_desc,
    td_800xa_base.co_num_dec_pl,
    td_800xa_base.co_span,
    td_800xa_base.co_value_zero,
    td_800xa_base.num_dec_places,
    td_800xa_base.sp_num_dec_pl,
    td_800xa_base.pid_blk,
    td_ch_alm_tag.tag_name AS alm_inh_tag,
    td_800xa_base.alm_inh_tag_guid,
    td_800xa_base.alm_inh_tag_atom,
    td_800xa_base.alm_inh_state_id,
    domain_alarminhibitstate.alminhibstate AS alm_inh_state,
    td_800xa_ext2.zero_state_ndx,
    td_lsd_zero_state.logicstatedesc AS zero_state_desc,
    td_800xa_ext2.one_state_ndx,
    td_lsd_one_state.logicstatedesc AS one_state_desc,
    td_800xa_ext3.two_state_ndx,
    td_lsd_two_state.logicstatedesc AS two_state_desc,
    td_800xa_ext3.three_state_ndx,
    td_lsd_three_state.logicstatedesc AS three_state_desc,
    td_800xa_ext1.feedbk10_state_ndx,
    td_lsd_feedbk10_state.logicstatedesc AS feedbk10_state_desc,
    td_800xa_ext1.feedbk11_state_ndx,
    td_lsd_feedbk11_state.logicstatedesc AS feedbk11_state_desc,
    td_800xa_ext1.feedbk20_state_ndx,
    td_lsd_feedbk20_state.logicstatedesc AS feedbk20_state_desc,
    td_800xa_ext1.feedbk21_state_ndx,
    td_lsd_feedbk21_state.logicstatedesc AS feedbk21_state_desc,
    td_800xa_ext3.feedbk30_state_ndx,
    td_lsd_feedbk30_state.logicstatedesc AS feedbk30_state_desc,
    td_800xa_ext3.feedbk31_state_ndx,
    td_lsd_feedbk31_state.logicstatedesc AS feedbk31_state_desc,
    td_800xa_ext3.feedbk40_state_ndx,
    td_lsd_feedbk40_state.logicstatedesc AS feedbk40_state_desc,
    td_800xa_ext3.feedbk41_state_ndx,
    td_lsd_feedbk41_state.logicstatedesc AS feedbk41_state_desc,
    td_800xa_ext4.permv10_state_ndx,
    td_lsd_permv10_state.logicstatedesc AS permv10_state_desc,
    td_800xa_ext4.permv11_state_ndx,
    td_lsd_permv11_state.logicstatedesc AS permv11_state_desc,
    td_800xa_ext4.permv20_state_ndx,
    td_lsd_permv20_state.logicstatedesc AS permv20_state_desc,
    td_800xa_ext4.permv21_state_ndx,
    td_lsd_permv21_state.logicstatedesc AS permv21_state_desc,
    td_800xa_base.txt_set,
    td_800xa_base.ctrl_enbl,
    td_800xa_base.txt_str_lnth,
    td_800xa_base.handshaking,
    td_800xa_base.fast_rpt_max_time,
    td_800xa_base.slow_rpt_max_time,
    td_800xa_ext1.area_guid,
    td_maestroarea_area_name.name AS area_name,
    td_800xa_ext1.equipment_guid,
    td_maestroequipment_equipment_name.name AS equipment_name,
    td_800xa_ext2.unit_guid,
    td_maestrounit_unit_name.name AS unit_name,
    td_800xa_ext2.security_group_guid,
    td_maestrosecuritygroup_security_group_name.name AS security_group_name,
    td_800xa_base.user_text,
    td_800xa_base.user_index,
    td_800xa_base.alm_ack_trnsm,
    td_800xa_base.alm_sil_trnsm,
    td_800xa_base.alm_ack_bcast,
    td_800xa_base.ack_req_alm,
    td_800xa_base.ack_req_bad_qual,
    td_800xa_base.ack_req_com_err,
    td_800xa_base.ack_req_high_alm,
    td_800xa_base.ack_req_high_devi_alm,
    td_800xa_base.ack_req_high_rate_chg_alm,
    td_800xa_base.ack_req_high2_alm,
    td_800xa_base.ack_req_high3_alm,
    td_800xa_base.ack_req_low_alm,
    td_800xa_base.ack_req_low_devi_alm,
    td_800xa_base.ack_req_low_rate_chg_alm,
    td_800xa_base.ack_req_low2_alm,
    td_800xa_base.ack_req_low3_alm,
    td_800xa_base.ack_req_mod_err,
    td_800xa_base.ack_req_offline,
    td_800xa_base.ack_req_out,
    td_800xa_base.ack_req_state_chg,
    td_800xa_base.ack_req_sys_err,
    td_800xa_base.ack_req_sys_fault,
    td_800xa_base.ack_req_usr_def_fault,
    td_800xa_base.ack_req_usr_def_msg,
    td_800xa_ext4.alm_comnt_sys_fault_ndx,
    td_alarmcomment_alm_comnt_sys_fault.almcomnt AS alm_comnt_sys_fault,
    td_800xa_ext4.alm_comnt_usr_def_fault_ndx,
    td_alarmcomment_alm_comnt_usr_def_fault.almcomnt AS alm_comnt_usr_def_fault,
    td_800xa_ext4.alm_comnt_usr_def_msg_ndx,
    td_alarmcomment_alm_comnt_usr_def_msg.almcomnt AS alm_comnt_usr_def_msg,
    td_800xa_ext3.alm_comnt_alm_ndx,
    td_alarmcomment_alm_comnt_alm.almcomnt AS alm_comnt_alm,
    td_800xa_ext1.alm_comnt_rtn_norm_ndx,
    td_alarmcomment_alm_comnt_rtn_norm.almcomnt AS alm_comnt_rtn_norm,
    td_800xa_ext1.alm_comnt_high_alm_ndx,
    td_alarmcomment_alm_comnt_high_alm.almcomnt AS alm_comnt_high_alm,
    td_800xa_ext2.alm_comnt_low_alm_ndx,
    td_alarmcomment_alm_comnt_low_alm.almcomnt AS alm_comnt_low_alm,
    td_800xa_ext3.alm_comnt_high2_alm_ndx,
    td_alarmcomment_alm_comnt_high2_alm.almcomnt AS alm_comnt_high2_alm,
    td_800xa_ext3.alm_comnt_low2_alm_ndx,
    td_alarmcomment_alm_comnt_low2_alm.almcomnt AS alm_comnt_low2_alm,
    td_800xa_ext3.alm_comnt_high3_alm_ndx,
    td_alarmcomment_alm_comnt_high3_alm.almcomnt AS alm_comnt_high3_alm,
    td_800xa_ext3.alm_comnt_low3_alm_ndx,
    td_alarmcomment_alm_comnt_low3_alm.almcomnt AS alm_comnt_low3_alm,
    td_800xa_ext1.alm_comnt_high_devi_alm_ndx,
    td_alarmcomment_alm_comnt_high_devi_alm.almcomnt AS alm_comnt_high_devi_alm,
    td_800xa_ext2.alm_comnt_low_devi_alm_ndx,
    td_alarmcomment_alm_comnt_low_devi_alm.almcomnt AS alm_comnt_low_devi_alm,
    td_800xa_ext3.alm_comnt_high_rate_chg_alm_ndx,
    td_alarmcomment_alm_comnt_high_rate_chg_alm.almcomnt AS alm_comnt_high_rate_chg_alm,
    td_800xa_ext3.alm_comnt_low_rate_chg_alm_ndx,
    td_alarmcomment_alm_comnt_low_rate_chg_alm.almcomnt AS alm_comnt_low_rate_chg_alm,
    td_800xa_ext3.alm_comnt_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_alm_rtn.almcomnt AS alm_comnt_alm_rtn,
    td_800xa_ext1.alm_comnt_bad_qual_ndx,
    td_alarmcomment_alm_comnt_bad_qual.almcomnt AS alm_comnt_bad_qual,
    td_800xa_ext3.alm_comnt_com_err_ndx,
    td_alarmcomment_alm_comnt_com_err.almcomnt AS alm_comnt_com_err,
    td_800xa_ext3.alm_comnt_com_err_rtn_ndx,
    td_alarmcomment_alm_comnt_com_err_rtn.almcomnt AS alm_comnt_com_err_rtn,
    td_800xa_ext1.alm_comnt_high_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_alm_rtn.almcomnt AS alm_comnt_high_alm_rtn,
    td_800xa_ext1.alm_comnt_high_devi_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_devi_alm_rtn.almcomnt AS alm_comnt_high_devi_alm_rtn,
    td_800xa_ext3.alm_comnt_high_rate_chg_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn.almcomnt AS alm_comnt_high_rate_chg_alm_rtn,
    td_800xa_ext3.alm_comnt_high2_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high2_alm_rtn.almcomnt AS alm_comnt_high2_alm_rtn,
    td_800xa_ext3.alm_comnt_high3_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high3_alm_rtn.almcomnt AS alm_comnt_high3_alm_rtn,
    td_800xa_ext2.alm_comnt_low_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_alm_rtn.almcomnt AS alm_comnt_low_alm_rtn,
    td_800xa_ext2.alm_comnt_low_devi_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_devi_alm_rtn.almcomnt AS alm_comnt_low_devi_alm_rtn,
    td_800xa_ext3.alm_comnt_low_rate_chg_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn.almcomnt AS alm_comnt_low_rate_chg_alm_rtn,
    td_800xa_ext3.alm_comnt_low2_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low2_alm_rtn.almcomnt AS alm_comnt_low2_alm_rtn,
    td_800xa_ext3.alm_comnt_low3_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low3_alm_rtn.almcomnt AS alm_comnt_low3_alm_rtn,
    td_800xa_ext4.alm_comnt_mod_err_ndx,
    td_alarmcomment_alm_comnt_mod_err.almcomnt AS alm_comnt_mod_err,
    td_800xa_ext4.alm_comnt_mod_err_rtn_ndx,
    td_alarmcomment_alm_comnt_mod_err_rtn.almcomnt AS alm_comnt_mod_err_rtn,
    td_800xa_ext4.alm_comnt_offline_ndx,
    td_alarmcomment_alm_comnt_offline.almcomnt AS alm_comnt_offline,
    td_800xa_ext4.alm_comnt_offline_rtn_ndx,
    td_alarmcomment_alm_comnt_offline_rtn.almcomnt AS alm_comnt_offline_rtn,
    td_800xa_ext2.alm_comnt_out_ndx,
    td_alarmcomment_alm_comnt_out.almcomnt AS alm_comnt_out,
    td_800xa_ext2.alm_comnt_out_rtn_ndx,
    td_alarmcomment_alm_comnt_out_rtn.almcomnt AS alm_comnt_out_rtn,
    td_800xa_ext2.alm_comnt_state_chg_rtn_ndx,
    td_alarmcomment_alm_comnt_state_chg_rtn.almcomnt AS alm_comnt_state_chg_rtn,
    td_800xa_ext2.alm_comnt_state_chg_ndx,
    td_alarmcomment_alm_comnt_state_chg.almcomnt AS alm_comnt_state_chg,
    td_800xa_ext4.alm_comnt_sys_err_ndx,
    td_alarmcomment_alm_comnt_sys_err.almcomnt AS alm_comnt_sys_err,
    td_800xa_ext4.alm_comnt_sys_err_rtn_ndx,
    td_alarmcomment_alm_comnt_sys_err_rtn.almcomnt AS alm_comnt_sys_err_rtn,
    td_800xa_ext4.alm_comnt_sys_fault_rtn_ndx,
    td_alarmcomment_alm_comnt_sys_fault_rtn.almcomnt AS alm_comnt_sys_fault_rtn,
    td_800xa_ext4.alm_comnt_usr_def_fault_rtn_ndx,
    td_alarmcomment_alm_comnt_usr_def_fault_rtn.almcomnt AS alm_comnt_usr_def_fault_rtn,
    td_800xa_ext4.alm_comnt_usr_def_msg_rtn_ndx,
    td_alarmcomment_alm_comnt_usr_def_msg_rtn.almcomnt AS alm_comnt_usr_def_msg_rtn,
    td_800xa_base.alm_en_alm,
    td_800xa_base.alm_en_bad_qual,
    td_800xa_base.alm_en_com_err,
    td_800xa_base.alm_en_high_alm,
    td_800xa_base.alm_en_high_devi_alm,
    td_800xa_base.alm_en_high_rate_chg_alm,
    td_800xa_base.alm_en_high2_alm,
    td_800xa_base.alm_en_high3_alm,
    td_800xa_base.alm_en_low_alm,
    td_800xa_base.alm_en_low_devi_alm,
    td_800xa_base.alm_en_low_rate_chg_alm,
    td_800xa_base.alm_en_low2_alm,
    td_800xa_base.alm_en_low3_alm,
    td_800xa_base.alm_en_mod_err,
    td_800xa_base.alm_en_offline,
    td_800xa_base.alm_en_out,
    td_800xa_base.alm_en_state_chg,
    td_800xa_base.alm_en_sys_err,
    td_800xa_base.alm_en_sys_fault,
    td_800xa_base.alm_en_usr_def_fault,
    td_800xa_base.alm_en_usr_def_msg,
    td_800xa_base.alm_prty_alm,
    td_800xa_base.alm_prty_rtn_norm,
    td_800xa_base.alm_prty_badqual,
    td_800xa_base.alm_prty_high_alm,
    td_800xa_base.alm_prty_low_alm,
    td_800xa_base.alm_prty_high2_alm,
    td_800xa_base.alm_prty_low2_alm,
    td_800xa_base.alm_prty_high3_alm,
    td_800xa_base.alm_prty_low3_alm,
    td_800xa_base.alm_prty_high_devi_alm,
    td_800xa_base.alm_prty_low_devi_alm,
    td_800xa_base.alm_prty_high_rate_chg_alm,
    td_800xa_base.alm_prty_low_rate_chg_alm,
    td_800xa_base.alm_prty_sys_fault,
    td_800xa_base.alm_prty_usr_def_fault,
    td_800xa_base.alm_prty_usr_def_msg,
    td_800xa_base.alm_prty_alm_rtn,
    td_800xa_base.alm_prty_com_err,
    td_800xa_base.alm_prty_com_err_rtn,
    td_800xa_base.alm_prty_high_alm_rtn,
    td_800xa_base.alm_prty_high_devi_alm_rtn,
    td_800xa_base.alm_prty_high_rate_chg_alm_rtn,
    td_800xa_base.alm_prty_high2_alm_rtn,
    td_800xa_base.alm_prty_high3_alm_rtn,
    td_800xa_base.alm_prty_low_alm_rtn,
    td_800xa_base.alm_prty_low_devi_alm_rtn,
    td_800xa_base.alm_prty_low_rate_chg_alm_rtn,
    td_800xa_base.alm_prty_low2_alm_rtn,
    td_800xa_base.alm_prty_low3_alm_rtn,
    td_800xa_base.alm_prty_mod_err,
    td_800xa_base.alm_prty_mod_err_rtn,
    td_800xa_base.alm_prty_offline,
    td_800xa_base.alm_prty_offline_rtn,
    td_800xa_base.alm_prty_out,
    td_800xa_base.alm_prty_out_rtn,
    td_800xa_base.alm_prty_state_chg,
    td_800xa_base.alm_prty_state_chg_rtn,
    td_800xa_base.alm_prty_sys_err,
    td_800xa_base.alm_prty_sys_err_rtn,
    td_800xa_base.alm_prty_sys_fault_rtn,
    td_800xa_base.alm_prty_usr_def_fault_rtn,
    td_800xa_base.alm_prty_usr_def_msg_rtn,
    td_800xa_base.enable_alm,
    td_800xa_base.enable_bad_qual,
    td_800xa_base.enable_com_err,
    td_800xa_base.enable_high_alm,
    td_800xa_base.enable_high_devi_alm,
    td_800xa_base.enable_high_rate_chg_alm,
    td_800xa_base.enable_high2_alm,
    td_800xa_base.enable_high3_alm,
    td_800xa_base.enable_low_alm,
    td_800xa_base.enable_low_devi_alm,
    td_800xa_base.enable_low_rate_chg_alm,
    td_800xa_base.enable_low2_alm,
    td_800xa_base.enable_low3_alm,
    td_800xa_base.enable_mod_err,
    td_800xa_base.enable_offline,
    td_800xa_base.enable_out,
    td_800xa_base.enable_state_chg,
    td_800xa_base.enable_sys_err,
    td_800xa_base.enable_sys_fault,
    td_800xa_base.enable_usr_def_fault,
    td_800xa_base.enable_usr_def_msg,
    td_800xa_ext2.one_state_state_chg_ndx,
    td_lsd_one_state_state_chg.logicstatedesc AS one_state_state_chg,
    td_800xa_ext2.zero_state_state_chg_ndx,
    td_lsd_zero_state_state_chg.logicstatedesc AS zero_state_state_chg,
    td_800xa_ext3.one_state_alm_ndx,
    td_lsd_one_state_alm.logicstatedesc AS one_state_alm_desc,
    td_800xa_ext1.one_state_bad_qual_ndx,
    td_lsd_one_state_bad_qual.logicstatedesc AS one_state_bad_qual_desc,
    td_800xa_ext3.one_state_com_err_ndx,
    td_lsd_one_state_com_err.logicstatedesc AS one_state_com_err_desc,
    td_800xa_ext1.one_state_high_alm_ndx,
    td_lsd_one_state_high_alm.logicstatedesc AS one_state_high_alm_desc,
    td_800xa_ext1.one_state_high_devi_alm_ndx,
    td_lsd_one_state_high_devi_alm.logicstatedesc AS one_state_high_devi_alm_desc,
    td_800xa_ext3.one_state_high_rate_chg_alm_ndx,
    td_lsd_one_state_high_rate_chg_alm.logicstatedesc AS one_state_high_rate_chg_alm_desc,
    td_800xa_ext3.one_state_high2_alm_ndx,
    td_lsd_one_state_high2_alm.logicstatedesc AS one_state_high2_alm_desc,
    td_800xa_ext3.one_state_high3_alm_ndx,
    td_lsd_one_state_high3_alm.logicstatedesc AS one_state_high3_alm_desc,
    td_800xa_ext2.one_state_low_alm_ndx,
    td_lsd_one_state_low_alm.logicstatedesc AS one_state_low_alm_desc,
    td_800xa_ext2.one_state_low_devi_alm_ndx,
    td_lsd_one_state_low_devi_alm.logicstatedesc AS one_state_low_devi_alm_desc,
    td_800xa_ext3.one_state_low_rate_chg_alm_ndx,
    td_lsd_one_state_low_rate_chg_alm.logicstatedesc AS one_state_low_rate_chg_alm_desc,
    td_800xa_ext3.one_state_low2_alm_ndx,
    td_lsd_one_state_low2_alm.logicstatedesc AS one_state_low2_alm_desc,
    td_800xa_ext3.one_state_low3_alm_ndx,
    td_lsd_one_state_low3_alm.logicstatedesc AS one_state_low3_alm_desc,
    td_800xa_ext4.one_state_mod_err_ndx,
    td_lsd_one_state_mod_err.logicstatedesc AS one_state_mod_err_desc,
    td_800xa_ext4.one_state_offline_ndx,
    td_lsd_one_state_offline.logicstatedesc AS one_state_offline_desc,
    td_800xa_ext4.one_state_sys_err_ndx,
    td_lsd_one_state_sys_err.logicstatedesc AS one_state_sys_err_desc,
    td_800xa_ext4.one_state_sys_fault_ndx,
    td_lsd_one_state_sys_fault.logicstatedesc AS one_state_sys_fault_desc,
    td_800xa_ext4.one_state_usr_def_fault_ndx,
    td_lsd_one_state_usr_def_fault.logicstatedesc AS one_state_usr_def_fault_desc,
    td_800xa_ext4.one_state_usr_def_msg_ndx,
    td_lsd_one_state_usr_def_msg.logicstatedesc AS one_state_usr_def_msg_desc,
    td_800xa_ext3.zero_state_alm_ndx,
    td_lsd_zero_state_alm.logicstatedesc AS zero_state_alm_desc,
    td_800xa_ext1.zero_state_bad_qual_ndx,
    td_lsd_zero_state_bad_qual.logicstatedesc AS zero_state_bad_qual_desc,
    td_800xa_ext3.zero_state_com_err_ndx,
    td_lsd_zero_state_com_err.logicstatedesc AS zero_state_com_err_desc,
    td_800xa_ext1.zero_state_high_alm_ndx,
    td_lsd_zero_state_high_alm.logicstatedesc AS zero_state_high_alm_desc,
    td_800xa_ext1.zero_state_high_devi_alm_ndx,
    td_lsd_zero_state_high_devi_alm.logicstatedesc AS zero_state_high_devi_alm_desc,
    td_800xa_ext3.zero_state_high_rate_chg_alm_ndx,
    td_lsd_zero_state_high_rate_chg_alm.logicstatedesc AS zero_state_high_rate_chg_alm_desc,
    td_800xa_ext3.zero_state_high2_alm_ndx,
    td_lsd_zero_state_high2_alm.logicstatedesc AS zero_state_high2_alm_desc,
    td_800xa_ext3.zero_state_high3_alm_ndx,
    td_lsd_zero_state_high3_alm.logicstatedesc AS zero_state_high3_alm_desc,
    td_800xa_ext2.zero_state_low_alm_ndx,
    td_lsd_zero_state_low_alm.logicstatedesc AS zero_state_low_alm_desc,
    td_800xa_ext2.zero_state_low_devi_alm_ndx,
    td_lsd_zero_state_low_devi_alm.logicstatedesc AS zero_state_low_devi_alm_desc,
    td_800xa_ext3.zero_state_low_rate_chg_alm_ndx,
    td_lsd_zero_state_low_rate_chg_alm.logicstatedesc AS zero_state_low_rate_chg_alm_desc,
    td_800xa_ext3.zero_state_low2_alm_ndx,
    td_lsd_zero_state_low2_alm.logicstatedesc AS zero_state_low2_alm_desc,
    td_800xa_ext3.zero_state_low3_alm_ndx,
    td_lsd_zero_state_low3_alm.logicstatedesc AS zero_state_low3_alm_desc,
    td_800xa_ext4.zero_state_mod_err_ndx,
    td_lsd_zero_state_mod_err.logicstatedesc AS zero_state_mod_err_desc,
    td_800xa_ext4.zero_state_offline_ndx,
    td_lsd_zero_state_offline.logicstatedesc AS zero_state_offline_desc,
    td_800xa_ext4.zero_state_sys_err_ndx,
    td_lsd_zero_state_sys_err.logicstatedesc AS zero_state_sys_err_desc,
    td_800xa_ext4.zero_state_sys_fault_ndx,
    td_lsd_zero_state_sys_fault.logicstatedesc AS zero_state_sys_fault_desc,
    td_800xa_ext4.zero_state_usr_def_fault_ndx,
    td_lsd_zero_state_usr_def_fault.logicstatedesc AS zero_state_usr_def_fault_desc,
    td_800xa_ext4.zero_state_usr_def_msg_ndx,
    td_lsd_zero_state_usr_def_msg.logicstatedesc AS zero_state_usr_def_msg_desc,
    td_800xa_base.server_id
   FROM ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((harmonydata.td_ch
     JOIN harmonydata.td_800xa_base ON ((td_ch.tag_guid = td_800xa_base.tag_guid)))
     LEFT JOIN harmonydata.td_800xa_ext1 ON ((td_800xa_base.tag_guid = td_800xa_ext1.tag_guid)))
     LEFT JOIN harmonydata.td_800xa_ext2 ON ((td_800xa_base.tag_guid = td_800xa_ext2.tag_guid)))
     LEFT JOIN harmonydata.td_800xa_ext3 ON ((td_800xa_base.tag_guid = td_800xa_ext3.tag_guid)))
     LEFT JOIN harmonydata.td_800xa_ext4 ON ((td_800xa_base.tag_guid = td_800xa_ext4.tag_guid)))
     LEFT JOIN harmonydata.domain_bcstagtype ON ((td_ch.tag_type_ndx = domain_bcstagtype.tagtypendx)))
     LEFT JOIN harmonydata.pj_controllogic ON ((td_ch.cld_guid = pj_controllogic.objectguid)))
     LEFT JOIN harmonydata.td_eud td_eud_eng_units ON ((td_ch.eng_units_ndx = td_eud_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_eud td_eud_sp_eng_units ON ((td_ch.sp_eng_units_ndx = td_eud_sp_eng_units.eudndx)))
     LEFT JOIN harmonydata.domain_alarminhibitstate ON ((td_800xa_base.alm_inh_state_id = domain_alarminhibitstate.alminhibstatendx)))
     LEFT JOIN harmonydata.td_ch td_ch_alm_tag ON ((td_800xa_base.alm_inh_tag_guid = td_ch_alm_tag.tag_guid)))
     LEFT JOIN harmonydata.td_eud td_eud_co_eng_units ON ((td_800xa_ext1.co_eng_units_ndx = td_eud_co_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state ON ((td_800xa_ext2.zero_state_ndx = td_lsd_zero_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state ON ((td_800xa_ext2.one_state_ndx = td_lsd_one_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_two_state ON ((td_800xa_ext3.two_state_ndx = td_lsd_two_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_three_state ON ((td_800xa_ext3.three_state_ndx = td_lsd_three_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk10_state ON ((td_800xa_ext1.feedbk10_state_ndx = td_lsd_feedbk10_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk11_state ON ((td_800xa_ext1.feedbk11_state_ndx = td_lsd_feedbk11_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk20_state ON ((td_800xa_ext1.feedbk20_state_ndx = td_lsd_feedbk20_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk21_state ON ((td_800xa_ext1.feedbk21_state_ndx = td_lsd_feedbk21_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk30_state ON ((td_800xa_ext3.feedbk30_state_ndx = td_lsd_feedbk30_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk31_state ON ((td_800xa_ext3.feedbk31_state_ndx = td_lsd_feedbk31_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk40_state ON ((td_800xa_ext3.feedbk40_state_ndx = td_lsd_feedbk40_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk41_state ON ((td_800xa_ext3.feedbk41_state_ndx = td_lsd_feedbk41_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv10_state ON ((td_800xa_ext4.permv10_state_ndx = td_lsd_permv10_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv11_state ON ((td_800xa_ext4.permv11_state_ndx = td_lsd_permv11_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv20_state ON ((td_800xa_ext4.permv20_state_ndx = td_lsd_permv20_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv21_state ON ((td_800xa_ext4.permv21_state_ndx = td_lsd_permv21_state.lsdndx)))
     LEFT JOIN harmonydata.td_maestroarea td_maestroarea_area_name ON ((td_800xa_ext1.area_guid = td_maestroarea_area_name.objectguid)))
     LEFT JOIN harmonydata.td_maestroequipment td_maestroequipment_equipment_name ON ((td_800xa_ext1.equipment_guid = td_maestroequipment_equipment_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrounit td_maestrounit_unit_name ON ((td_800xa_ext2.unit_guid = td_maestrounit_unit_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrosecuritygroup td_maestrosecuritygroup_security_group_name ON ((td_800xa_ext2.security_group_guid = td_maestrosecuritygroup_security_group_name.objectguid)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_fault ON ((td_800xa_ext4.alm_comnt_sys_fault_ndx = td_alarmcomment_alm_comnt_sys_fault.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_fault ON ((td_800xa_ext4.alm_comnt_usr_def_fault_ndx = td_alarmcomment_alm_comnt_usr_def_fault.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_msg ON ((td_800xa_ext4.alm_comnt_usr_def_msg_ndx = td_alarmcomment_alm_comnt_usr_def_msg.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_alm ON ((td_800xa_ext3.alm_comnt_alm_ndx = td_alarmcomment_alm_comnt_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_rtn_norm ON ((td_800xa_ext1.alm_comnt_rtn_norm_ndx = td_alarmcomment_alm_comnt_rtn_norm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_alm ON ((td_800xa_ext1.alm_comnt_high_alm_ndx = td_alarmcomment_alm_comnt_high_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_alm ON ((td_800xa_ext2.alm_comnt_low_alm_ndx = td_alarmcomment_alm_comnt_low_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high2_alm ON ((td_800xa_ext3.alm_comnt_high2_alm_ndx = td_alarmcomment_alm_comnt_high2_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low2_alm ON ((td_800xa_ext3.alm_comnt_low2_alm_ndx = td_alarmcomment_alm_comnt_low2_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high3_alm ON ((td_800xa_ext3.alm_comnt_high3_alm_ndx = td_alarmcomment_alm_comnt_high3_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low3_alm ON ((td_800xa_ext3.alm_comnt_low3_alm_ndx = td_alarmcomment_alm_comnt_low3_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_devi_alm ON ((td_800xa_ext1.alm_comnt_high_devi_alm_ndx = td_alarmcomment_alm_comnt_high_devi_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_devi_alm ON ((td_800xa_ext2.alm_comnt_low_devi_alm_ndx = td_alarmcomment_alm_comnt_low_devi_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_rate_chg_alm ON ((td_800xa_ext3.alm_comnt_high_rate_chg_alm_ndx = td_alarmcomment_alm_comnt_high_rate_chg_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_rate_chg_alm ON ((td_800xa_ext3.alm_comnt_low_rate_chg_alm_ndx = td_alarmcomment_alm_comnt_low_rate_chg_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_alm_rtn ON ((td_800xa_ext3.alm_comnt_alm_rtn_ndx = td_alarmcomment_alm_comnt_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_bad_qual ON ((td_800xa_ext1.alm_comnt_bad_qual_ndx = td_alarmcomment_alm_comnt_bad_qual.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_com_err ON ((td_800xa_ext3.alm_comnt_com_err_ndx = td_alarmcomment_alm_comnt_com_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_com_err_rtn ON ((td_800xa_ext3.alm_comnt_com_err_rtn_ndx = td_alarmcomment_alm_comnt_com_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_alm_rtn ON ((td_800xa_ext1.alm_comnt_high_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_devi_alm_rtn ON ((td_800xa_ext1.alm_comnt_high_devi_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_devi_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn ON ((td_800xa_ext3.alm_comnt_high_rate_chg_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high2_alm_rtn ON ((td_800xa_ext3.alm_comnt_high2_alm_rtn_ndx = td_alarmcomment_alm_comnt_high2_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high3_alm_rtn ON ((td_800xa_ext3.alm_comnt_high3_alm_rtn_ndx = td_alarmcomment_alm_comnt_high3_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_alm_rtn ON ((td_800xa_ext2.alm_comnt_low_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_devi_alm_rtn ON ((td_800xa_ext2.alm_comnt_low_devi_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_devi_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn ON ((td_800xa_ext3.alm_comnt_low_rate_chg_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low2_alm_rtn ON ((td_800xa_ext3.alm_comnt_low2_alm_rtn_ndx = td_alarmcomment_alm_comnt_low2_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low3_alm_rtn ON ((td_800xa_ext3.alm_comnt_low3_alm_rtn_ndx = td_alarmcomment_alm_comnt_low3_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_mod_err ON ((td_800xa_ext4.alm_comnt_mod_err_ndx = td_alarmcomment_alm_comnt_mod_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_mod_err_rtn ON ((td_800xa_ext4.alm_comnt_mod_err_rtn_ndx = td_alarmcomment_alm_comnt_mod_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_offline ON ((td_800xa_ext4.alm_comnt_offline_ndx = td_alarmcomment_alm_comnt_offline.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_offline_rtn ON ((td_800xa_ext4.alm_comnt_offline_rtn_ndx = td_alarmcomment_alm_comnt_offline_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_out ON ((td_800xa_ext2.alm_comnt_out_ndx = td_alarmcomment_alm_comnt_out.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_out_rtn ON ((td_800xa_ext2.alm_comnt_out_rtn_ndx = td_alarmcomment_alm_comnt_out_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_state_chg_rtn ON ((td_800xa_ext2.alm_comnt_state_chg_rtn_ndx = td_alarmcomment_alm_comnt_state_chg_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_state_chg ON ((td_800xa_ext2.alm_comnt_state_chg_ndx = td_alarmcomment_alm_comnt_state_chg.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_err ON ((td_800xa_ext4.alm_comnt_sys_err_ndx = td_alarmcomment_alm_comnt_sys_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_err_rtn ON ((td_800xa_ext4.alm_comnt_sys_err_rtn_ndx = td_alarmcomment_alm_comnt_sys_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_fault_rtn ON ((td_800xa_ext4.alm_comnt_sys_fault_rtn_ndx = td_alarmcomment_alm_comnt_sys_fault_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_fault_rtn ON ((td_800xa_ext4.alm_comnt_usr_def_fault_rtn_ndx = td_alarmcomment_alm_comnt_usr_def_fault_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_msg_rtn ON ((td_800xa_ext4.alm_comnt_usr_def_msg_rtn_ndx = td_alarmcomment_alm_comnt_usr_def_msg_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_state_chg ON ((td_800xa_ext2.one_state_state_chg_ndx = td_lsd_one_state_state_chg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_state_chg ON ((td_800xa_ext2.zero_state_state_chg_ndx = td_lsd_zero_state_state_chg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_alm ON ((td_800xa_ext3.one_state_alm_ndx = td_lsd_one_state_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_bad_qual ON ((td_800xa_ext1.one_state_bad_qual_ndx = td_lsd_one_state_bad_qual.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_com_err ON ((td_800xa_ext3.one_state_com_err_ndx = td_lsd_one_state_com_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_alm ON ((td_800xa_ext1.one_state_high_alm_ndx = td_lsd_one_state_high_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_devi_alm ON ((td_800xa_ext1.one_state_high_devi_alm_ndx = td_lsd_one_state_high_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_rate_chg_alm ON ((td_800xa_ext3.one_state_high_rate_chg_alm_ndx = td_lsd_one_state_high_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high2_alm ON ((td_800xa_ext3.one_state_high2_alm_ndx = td_lsd_one_state_high2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high3_alm ON ((td_800xa_ext3.one_state_high3_alm_ndx = td_lsd_one_state_high3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_alm ON ((td_800xa_ext2.one_state_low_alm_ndx = td_lsd_one_state_low_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_devi_alm ON ((td_800xa_ext2.one_state_low_devi_alm_ndx = td_lsd_one_state_low_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_rate_chg_alm ON ((td_800xa_ext3.one_state_low_rate_chg_alm_ndx = td_lsd_one_state_low_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low2_alm ON ((td_800xa_ext3.one_state_low2_alm_ndx = td_lsd_one_state_low2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low3_alm ON ((td_800xa_ext3.one_state_low3_alm_ndx = td_lsd_one_state_low3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_mod_err ON ((td_800xa_ext4.one_state_mod_err_ndx = td_lsd_one_state_mod_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_offline ON ((td_800xa_ext4.one_state_offline_ndx = td_lsd_one_state_offline.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_sys_err ON ((td_800xa_ext4.one_state_sys_err_ndx = td_lsd_one_state_sys_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_sys_fault ON ((td_800xa_ext4.one_state_sys_fault_ndx = td_lsd_one_state_sys_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_usr_def_fault ON ((td_800xa_ext4.one_state_usr_def_fault_ndx = td_lsd_one_state_usr_def_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_usr_def_msg ON ((td_800xa_ext4.one_state_usr_def_msg_ndx = td_lsd_one_state_usr_def_msg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_alm ON ((td_800xa_ext3.zero_state_alm_ndx = td_lsd_zero_state_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_bad_qual ON ((td_800xa_ext1.zero_state_bad_qual_ndx = td_lsd_zero_state_bad_qual.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_com_err ON ((td_800xa_ext3.zero_state_com_err_ndx = td_lsd_zero_state_com_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_alm ON ((td_800xa_ext1.zero_state_high_alm_ndx = td_lsd_zero_state_high_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_devi_alm ON ((td_800xa_ext1.zero_state_high_devi_alm_ndx = td_lsd_zero_state_high_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_rate_chg_alm ON ((td_800xa_ext3.zero_state_high_rate_chg_alm_ndx = td_lsd_zero_state_high_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high2_alm ON ((td_800xa_ext3.zero_state_high2_alm_ndx = td_lsd_zero_state_high2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high3_alm ON ((td_800xa_ext3.zero_state_high3_alm_ndx = td_lsd_zero_state_high3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_alm ON ((td_800xa_ext2.zero_state_low_alm_ndx = td_lsd_zero_state_low_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_devi_alm ON ((td_800xa_ext2.zero_state_low_devi_alm_ndx = td_lsd_zero_state_low_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_rate_chg_alm ON ((td_800xa_ext3.zero_state_low_rate_chg_alm_ndx = td_lsd_zero_state_low_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low2_alm ON ((td_800xa_ext3.zero_state_low2_alm_ndx = td_lsd_zero_state_low2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low3_alm ON ((td_800xa_ext3.zero_state_low3_alm_ndx = td_lsd_zero_state_low3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_mod_err ON ((td_800xa_ext4.zero_state_mod_err_ndx = td_lsd_zero_state_mod_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_offline ON ((td_800xa_ext4.zero_state_offline_ndx = td_lsd_zero_state_offline.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_sys_err ON ((td_800xa_ext4.zero_state_sys_err_ndx = td_lsd_zero_state_sys_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_sys_fault ON ((td_800xa_ext4.zero_state_sys_fault_ndx = td_lsd_zero_state_sys_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_usr_def_fault ON ((td_800xa_ext4.zero_state_usr_def_fault_ndx = td_lsd_zero_state_usr_def_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_usr_def_msg ON ((td_800xa_ext4.zero_state_usr_def_msg_ndx = td_lsd_zero_state_usr_def_msg.lsdndx)));


ALTER TABLE harmonydata.vw_all_800xa_tags_ch OWNER TO postgres;

--
-- TOC entry 718 (class 1259 OID 827662)
-- Name: vw_all_800xa_tags_ch2; Type: VIEW; Schema: harmonydata; Owner: postgres
--

CREATE VIEW harmonydata.vw_all_800xa_tags_ch2 AS
 SELECT td_ch.tag_guid,
    td_ch.tag_name,
    td_ch.tag_desc,
    td_ch.tag_type_ndx,
    domain_bcstagtype.bcsdesc AS tag_type,
    td_ch.exchange_indicator,
    td_ch.project_flag,
    td_ch.create_timestamp,
    td_ch.update_timestamp,
    td_ch.loop,
    td_ch.node,
    td_ch.module,
    td_ch.block,
    td_ch.cld_guid,
    pj_controllogic.name AS cld_name,
    td_ch.cld_obj_id,
    td_ch.cld_obj_subindex,
    td_ch.fc_num,
    td_ch.eng_units_ndx,
    td_eud_eng_units.engunitsdesc AS eng_units_desc,
    td_ch.value_zero,
    td_ch.span,
    td_ch.high_alm,
    td_ch.low_alm,
    td_ch.sp_value_zero,
    td_ch.sp_span,
    td_ch.sp_eng_units_ndx,
    td_eud_sp_eng_units.engunitsdesc AS sp_eng_units_desc,
    td_ch.dev_alm_point,
    td_ch.alm_state_ndx,
    td_ch.cfc_super_tag,
    td_800xa.co_eng_units_ndx,
    td_eud_co_eng_units.engunitsdesc AS co_eng_units_desc,
    td_800xa.co_num_dec_pl,
    td_800xa.co_span,
    td_800xa.co_value_zero,
    td_800xa.num_dec_places,
    td_800xa.sp_num_dec_pl,
    td_800xa.pid_blk,
    td_ch_alm_inh_tag.tag_name AS alm_inh_tag,
    td_800xa.alm_inh_tag_guid,
    td_800xa.alm_inh_tag_atom,
    td_800xa.alm_inh_state_id,
    domain_alarminhibitstate_alm_inh_state.alminhibstate AS alm_inh_state,
    td_800xa.txt_set,
    td_800xa.ctrl_enbl,
    td_800xa.txt_str_lnth,
    td_800xa.handshaking,
    td_800xa.fast_rpt_max_time,
    td_800xa.slow_rpt_max_time,
    td_800xa.area_guid,
    td_maestroarea_area_name.name AS area_name,
    td_800xa.equipment_guid,
    td_maestroequipment_equipment_name.name AS equipment_name,
    td_800xa.unit_guid,
    td_maestrounit_unit_name.name AS unit_name,
    td_800xa.security_group_guid,
    td_maestrosecuritygroup_security_group_name.name AS security_group_name,
    td_800xa.user_text,
    td_800xa.user_index,
    td_800xa.alm_ack_trnsm,
    td_800xa.alm_sil_trnsm,
    td_800xa.alm_ack_bcast,
    td_800xa.ack_req_alm,
    td_800xa.ack_req_bad_qual,
    td_800xa.ack_req_com_err,
    td_800xa.ack_req_high_alm,
    td_800xa.ack_req_high_devi_alm,
    td_800xa.ack_req_high_rate_chg_alm,
    td_800xa.ack_req_high2_alm,
    td_800xa.ack_req_high3_alm,
    td_800xa.ack_req_low_alm,
    td_800xa.ack_req_low_devi_alm,
    td_800xa.ack_req_low_rate_chg_alm,
    td_800xa.ack_req_low2_alm,
    td_800xa.ack_req_low3_alm,
    td_800xa.ack_req_mod_err,
    td_800xa.ack_req_offline,
    td_800xa.ack_req_out,
    td_800xa.ack_req_state_chg,
    td_800xa.ack_req_sys_err,
    td_800xa.ack_req_sys_fault,
    td_800xa.ack_req_usr_def_fault,
    td_800xa.ack_req_usr_def_msg,
    td_800xa.alm_comnt_sys_fault_ndx,
    td_alarmcomment_alm_comnt_sys_fault.almcomnt AS alm_comnt_sys_fault,
    td_800xa.alm_comnt_usr_def_fault_ndx,
    td_alarmcomment_alm_comnt_usr_def_fault.almcomnt AS alm_comnt_usr_def_fault,
    td_800xa.alm_comnt_usr_def_msg_ndx,
    td_alarmcomment_alm_comnt_usr_def_msg.almcomnt AS alm_comnt_usr_def_msg,
    td_800xa.alm_comnt_rtn_norm_ndx,
    td_alarmcomment_alm_comnt_rtn_norm.almcomnt AS alm_comnt_rtn_norm,
    td_800xa.alm_comnt_high_alm_ndx,
    td_alarmcomment_alm_comnt_high_alm.almcomnt AS alm_comnt_high_alm,
    td_800xa.alm_comnt_low_alm_ndx,
    td_alarmcomment_alm_comnt_low_alm.almcomnt AS alm_comnt_low_alm,
    td_800xa.alm_comnt_high2_alm_ndx,
    td_alarmcomment_alm_comnt_high2_alm.almcomnt AS alm_comnt_high2_alm,
    td_800xa.alm_comnt_low2_alm_ndx,
    td_alarmcomment_alm_comnt_low2_alm.almcomnt AS alm_comnt_low2_alm,
    td_800xa.alm_comnt_high3_alm_ndx,
    td_alarmcomment_alm_comnt_high3_alm.almcomnt AS alm_comnt_high3_alm,
    td_800xa.alm_comnt_low3_alm_ndx,
    td_alarmcomment_alm_comnt_low3_alm.almcomnt AS alm_comnt_low3_alm,
    td_800xa.alm_comnt_high_devi_alm_ndx,
    td_alarmcomment_alm_comnt_high_devi_alm.almcomnt AS alm_comnt_high_devi_alm,
    td_800xa.alm_comnt_low_devi_alm_ndx,
    td_alarmcomment_alm_comnt_low_devi_alm.almcomnt AS alm_comnt_low_devi_alm,
    td_800xa.alm_comnt_high_rate_chg_alm_ndx,
    td_alarmcomment_alm_comnt_high_rate_chg_alm.almcomnt AS alm_comnt_high_rate_chg_alm,
    td_800xa.alm_comnt_low_rate_chg_alm_ndx,
    td_alarmcomment_alm_comnt_low_rate_chg_alm.almcomnt AS alm_comnt_low_rate_chg_alm,
    td_800xa.alm_comnt_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_alm_rtn.almcomnt AS alm_comnt_alm_rtn,
    td_800xa.alm_comnt_bad_qual_ndx,
    td_alarmcomment_alm_comnt_bad_qual.almcomnt AS alm_comnt_bad_qual,
    td_800xa.alm_comnt_com_err_ndx,
    td_alarmcomment_alm_comnt_com_err.almcomnt AS alm_comnt_com_err,
    td_800xa.alm_comnt_com_err_rtn_ndx,
    td_alarmcomment_alm_comnt_com_err_rtn.almcomnt AS alm_comnt_com_err_rtn,
    td_800xa.alm_comnt_high_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_alm_rtn.almcomnt AS alm_comnt_high_alm_rtn,
    td_800xa.alm_comnt_high_devi_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_devi_alm_rtn.almcomnt AS alm_comnt_high_devi_alm_rtn,
    td_800xa.alm_comnt_high_rate_chg_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn.almcomnt AS alm_comnt_high_rate_chg_alm_rtn,
    td_800xa.alm_comnt_high2_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high2_alm_rtn.almcomnt AS alm_comnt_high2_alm_rtn,
    td_800xa.alm_comnt_high3_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_high3_alm_rtn.almcomnt AS alm_comnt_high3_alm_rtn,
    td_800xa.alm_comnt_low_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_alm_rtn.almcomnt AS alm_comnt_low_alm_rtn,
    td_800xa.alm_comnt_low_devi_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_devi_alm_rtn.almcomnt AS alm_comnt_low_devi_alm_rtn,
    td_800xa.alm_comnt_low_rate_chg_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn.almcomnt AS alm_comnt_low_rate_chg_alm_rtn,
    td_800xa.alm_comnt_low2_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low2_alm_rtn.almcomnt AS alm_comnt_low2_alm_rtn,
    td_800xa.alm_comnt_low3_alm_rtn_ndx,
    td_alarmcomment_alm_comnt_low3_alm_rtn.almcomnt AS alm_comnt_low3_alm_rtn,
    td_800xa.alm_comnt_mod_err_ndx,
    td_alarmcomment_alm_comnt_mod_err.almcomnt AS alm_comnt_mod_err,
    td_800xa.alm_comnt_mod_err_rtn_ndx,
    td_alarmcomment_alm_comnt_mod_err_rtn.almcomnt AS alm_comnt_mod_err_rtn,
    td_800xa.alm_comnt_offline_ndx,
    td_alarmcomment_alm_comnt_offline.almcomnt AS alm_comnt_offline,
    td_800xa.alm_comnt_offline_rtn_ndx,
    td_alarmcomment_alm_comnt_offline_rtn.almcomnt AS alm_comnt_offline_rtn,
    td_800xa.alm_comnt_out_ndx,
    td_alarmcomment_alm_comnt_out.almcomnt AS alm_comnt_out,
    td_800xa.alm_comnt_out_rtn_ndx,
    td_alarmcomment_alm_comnt_out_rtn.almcomnt AS alm_comnt_out_rtn,
    td_800xa.alm_comnt_state_chg_ndx,
    td_alarmcomment_alm_comnt_state_chg.almcomnt AS alm_comnt_state_chg,
    td_800xa.alm_comnt_sys_err_ndx,
    td_alarmcomment_alm_comnt_sys_err.almcomnt AS alm_comnt_sys_err,
    td_800xa.alm_comnt_sys_err_rtn_ndx,
    td_alarmcomment_alm_comnt_sys_err_rtn.almcomnt AS alm_comnt_sys_err_rtn,
    td_800xa.alm_comnt_sys_fault_rtn_ndx,
    td_alarmcomment_alm_comnt_sys_fault_rtn.almcomnt AS alm_comnt_sys_fault_rtn,
    td_800xa.alm_comnt_usr_def_fault_rtn_ndx,
    td_alarmcomment_alm_comnt_usr_def_fault_rtn.almcomnt AS alm_comnt_usr_def_fault_rtn,
    td_800xa.alm_comnt_usr_def_msg_rtn_ndx,
    td_alarmcomment_alm_comnt_usr_def_msg_rtn.almcomnt AS alm_comnt_usr_def_msg_rtn,
    td_800xa.alm_en_alm,
    td_800xa.alm_en_bad_qual,
    td_800xa.alm_en_com_err,
    td_800xa.alm_en_high_alm,
    td_800xa.alm_en_high_devi_alm,
    td_800xa.alm_en_high_rate_chg_alm,
    td_800xa.alm_en_high2_alm,
    td_800xa.alm_en_high3_alm,
    td_800xa.alm_en_low_alm,
    td_800xa.alm_en_low_devi_alm,
    td_800xa.alm_en_low_rate_chg_alm,
    td_800xa.alm_en_low2_alm,
    td_800xa.alm_en_low3_alm,
    td_800xa.alm_en_mod_err,
    td_800xa.alm_en_offline,
    td_800xa.alm_en_out,
    td_800xa.alm_en_state_chg,
    td_800xa.alm_en_sys_err,
    td_800xa.alm_en_sys_fault,
    td_800xa.alm_en_usr_def_fault,
    td_800xa.alm_en_usr_def_msg,
    td_800xa.alm_prty_rtn_norm,
    td_800xa.alm_prty_badqual,
    td_800xa.alm_prty_high_alm,
    td_800xa.alm_prty_low_alm,
    td_800xa.alm_prty_high2_alm,
    td_800xa.alm_prty_low2_alm,
    td_800xa.alm_prty_high3_alm,
    td_800xa.alm_prty_low3_alm,
    td_800xa.alm_prty_high_devi_alm,
    td_800xa.alm_prty_low_devi_alm,
    td_800xa.alm_prty_high_rate_chg_alm,
    td_800xa.alm_prty_low_rate_chg_alm,
    td_800xa.alm_prty_sys_fault,
    td_800xa.alm_prty_usr_def_fault,
    td_800xa.alm_prty_usr_def_msg,
    td_800xa.alm_prty_alm_rtn,
    td_800xa.alm_prty_com_err,
    td_800xa.alm_prty_com_err_rtn,
    td_800xa.alm_prty_high_alm_rtn,
    td_800xa.alm_prty_high_devi_alm_rtn,
    td_800xa.alm_prty_high_rate_chg_alm_rtn,
    td_800xa.alm_prty_high2_alm_rtn,
    td_800xa.alm_prty_high3_alm_rtn,
    td_800xa.alm_prty_low_alm_rtn,
    td_800xa.alm_prty_low_devi_alm_rtn,
    td_800xa.alm_prty_low_rate_chg_alm_rtn,
    td_800xa.alm_prty_low2_alm_rtn,
    td_800xa.alm_prty_low3_alm_rtn,
    td_800xa.alm_prty_mod_err,
    td_800xa.alm_prty_mod_err_rtn,
    td_800xa.alm_prty_offline,
    td_800xa.alm_prty_offline_rtn,
    td_800xa.alm_prty_out,
    td_800xa.alm_prty_out_rtn,
    td_800xa.alm_prty_state_chg,
    td_800xa.alm_prty_sys_err,
    td_800xa.alm_prty_sys_err_rtn,
    td_800xa.alm_prty_sys_fault_rtn,
    td_800xa.alm_prty_usr_def_fault_rtn,
    td_800xa.alm_prty_usr_def_msg_rtn,
    td_800xa.enable_alm,
    td_800xa.enable_bad_qual,
    td_800xa.enable_com_err,
    td_800xa.enable_high_alm,
    td_800xa.enable_high_devi_alm,
    td_800xa.enable_high_rate_chg_alm,
    td_800xa.enable_high2_alm,
    td_800xa.enable_high3_alm,
    td_800xa.enable_low_alm,
    td_800xa.enable_low_devi_alm,
    td_800xa.enable_low_rate_chg_alm,
    td_800xa.enable_low2_alm,
    td_800xa.enable_low3_alm,
    td_800xa.enable_mod_err,
    td_800xa.enable_offline,
    td_800xa.enable_out,
    td_800xa.enable_state_chg,
    td_800xa.enable_sys_err,
    td_800xa.enable_sys_fault,
    td_800xa.enable_usr_def_fault,
    td_800xa.enable_usr_def_msg,
    td_800xa.one_state_state_chg_ndx
   FROM ((((((((((((((((((((((((((((((((((((((((((((((((((((harmonydata.td_ch
     JOIN harmonydata.td_800xa ON ((td_ch.tag_guid = td_800xa.tag_guid)))
     LEFT JOIN harmonydata.domain_bcstagtype ON ((td_ch.tag_type_ndx = domain_bcstagtype.tagtypendx)))
     LEFT JOIN harmonydata.pj_controllogic ON ((td_ch.cld_guid = pj_controllogic.objectguid)))
     LEFT JOIN harmonydata.td_eud td_eud_eng_units ON ((td_ch.eng_units_ndx = td_eud_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_eud td_eud_sp_eng_units ON ((td_ch.sp_eng_units_ndx = td_eud_sp_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_eud td_eud_co_eng_units ON ((td_800xa.co_eng_units_ndx = td_eud_co_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_ch td_ch_alm_inh_tag ON ((td_800xa.alm_inh_tag_guid = td_ch_alm_inh_tag.tag_guid)))
     LEFT JOIN harmonydata.domain_alarminhibitstate domain_alarminhibitstate_alm_inh_state ON ((td_800xa.alm_inh_state_id = domain_alarminhibitstate_alm_inh_state.alminhibstatendx)))
     LEFT JOIN harmonydata.td_maestroarea td_maestroarea_area_name ON ((td_800xa.area_guid = td_maestroarea_area_name.objectguid)))
     LEFT JOIN harmonydata.td_maestroequipment td_maestroequipment_equipment_name ON ((td_800xa.equipment_guid = td_maestroequipment_equipment_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrounit td_maestrounit_unit_name ON ((td_800xa.unit_guid = td_maestrounit_unit_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrosecuritygroup td_maestrosecuritygroup_security_group_name ON ((td_800xa.security_group_guid = td_maestrosecuritygroup_security_group_name.objectguid)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_fault ON ((td_800xa.alm_comnt_sys_fault_ndx = td_alarmcomment_alm_comnt_sys_fault.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_fault ON ((td_800xa.alm_comnt_usr_def_fault_ndx = td_alarmcomment_alm_comnt_usr_def_fault.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_msg ON ((td_800xa.alm_comnt_usr_def_msg_ndx = td_alarmcomment_alm_comnt_usr_def_msg.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_rtn_norm ON ((td_800xa.alm_comnt_rtn_norm_ndx = td_alarmcomment_alm_comnt_rtn_norm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_alm ON ((td_800xa.alm_comnt_high_alm_ndx = td_alarmcomment_alm_comnt_high_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_alm ON ((td_800xa.alm_comnt_low_alm_ndx = td_alarmcomment_alm_comnt_low_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high2_alm ON ((td_800xa.alm_comnt_high2_alm_ndx = td_alarmcomment_alm_comnt_high2_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low2_alm ON ((td_800xa.alm_comnt_low2_alm_ndx = td_alarmcomment_alm_comnt_low2_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high3_alm ON ((td_800xa.alm_comnt_high3_alm_ndx = td_alarmcomment_alm_comnt_high3_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low3_alm ON ((td_800xa.alm_comnt_low3_alm_ndx = td_alarmcomment_alm_comnt_low3_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_devi_alm ON ((td_800xa.alm_comnt_high_devi_alm_ndx = td_alarmcomment_alm_comnt_high_devi_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_devi_alm ON ((td_800xa.alm_comnt_low_devi_alm_ndx = td_alarmcomment_alm_comnt_low_devi_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_rate_chg_alm ON ((td_800xa.alm_comnt_high_rate_chg_alm_ndx = td_alarmcomment_alm_comnt_high_rate_chg_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_rate_chg_alm ON ((td_800xa.alm_comnt_low_rate_chg_alm_ndx = td_alarmcomment_alm_comnt_low_rate_chg_alm.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_alm_rtn ON ((td_800xa.alm_comnt_alm_rtn_ndx = td_alarmcomment_alm_comnt_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_bad_qual ON ((td_800xa.alm_comnt_bad_qual_ndx = td_alarmcomment_alm_comnt_bad_qual.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_com_err ON ((td_800xa.alm_comnt_com_err_ndx = td_alarmcomment_alm_comnt_com_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_com_err_rtn ON ((td_800xa.alm_comnt_com_err_rtn_ndx = td_alarmcomment_alm_comnt_com_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_alm_rtn ON ((td_800xa.alm_comnt_high_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_devi_alm_rtn ON ((td_800xa.alm_comnt_high_devi_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_devi_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn ON ((td_800xa.alm_comnt_high_rate_chg_alm_rtn_ndx = td_alarmcomment_alm_comnt_high_rate_chg_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high2_alm_rtn ON ((td_800xa.alm_comnt_high2_alm_rtn_ndx = td_alarmcomment_alm_comnt_high2_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_high3_alm_rtn ON ((td_800xa.alm_comnt_high3_alm_rtn_ndx = td_alarmcomment_alm_comnt_high3_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_alm_rtn ON ((td_800xa.alm_comnt_low_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_devi_alm_rtn ON ((td_800xa.alm_comnt_low_devi_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_devi_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn ON ((td_800xa.alm_comnt_low_rate_chg_alm_rtn_ndx = td_alarmcomment_alm_comnt_low_rate_chg_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low2_alm_rtn ON ((td_800xa.alm_comnt_low2_alm_rtn_ndx = td_alarmcomment_alm_comnt_low2_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_low3_alm_rtn ON ((td_800xa.alm_comnt_low3_alm_rtn_ndx = td_alarmcomment_alm_comnt_low3_alm_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_mod_err ON ((td_800xa.alm_comnt_mod_err_ndx = td_alarmcomment_alm_comnt_mod_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_mod_err_rtn ON ((td_800xa.alm_comnt_mod_err_rtn_ndx = td_alarmcomment_alm_comnt_mod_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_offline ON ((td_800xa.alm_comnt_offline_ndx = td_alarmcomment_alm_comnt_offline.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_offline_rtn ON ((td_800xa.alm_comnt_offline_rtn_ndx = td_alarmcomment_alm_comnt_offline_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_out ON ((td_800xa.alm_comnt_out_ndx = td_alarmcomment_alm_comnt_out.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_out_rtn ON ((td_800xa.alm_comnt_out_rtn_ndx = td_alarmcomment_alm_comnt_out_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_state_chg ON ((td_800xa.alm_comnt_state_chg_ndx = td_alarmcomment_alm_comnt_state_chg.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_err ON ((td_800xa.alm_comnt_sys_err_ndx = td_alarmcomment_alm_comnt_sys_err.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_err_rtn ON ((td_800xa.alm_comnt_sys_err_rtn_ndx = td_alarmcomment_alm_comnt_sys_err_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_sys_fault_rtn ON ((td_800xa.alm_comnt_sys_fault_rtn_ndx = td_alarmcomment_alm_comnt_sys_fault_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_fault_rtn ON ((td_800xa.alm_comnt_usr_def_fault_rtn_ndx = td_alarmcomment_alm_comnt_usr_def_fault_rtn.almcomntndx)))
     LEFT JOIN harmonydata.td_alarmcomment td_alarmcomment_alm_comnt_usr_def_msg_rtn ON ((td_800xa.alm_comnt_usr_def_msg_rtn_ndx = td_alarmcomment_alm_comnt_usr_def_msg_rtn.almcomntndx)));


ALTER TABLE harmonydata.vw_all_800xa_tags_ch2 OWNER TO postgres;

--
-- TOC entry 719 (class 1259 OID 827667)
-- Name: vw_all_800xa_tags_ch3; Type: VIEW; Schema: harmonydata; Owner: postgres
--

CREATE VIEW harmonydata.vw_all_800xa_tags_ch3 AS
 SELECT td_ch.tag_guid,
    td_ch.tag_name,
    td_ch.tag_desc,
    td_ch.tag_type_ndx,
    domain_bcstagtype.bcsdesc AS tag_type,
    td_ch.exchange_indicator,
    td_ch.project_flag,
    td_ch.create_timestamp,
    td_ch.update_timestamp,
    td_ch.loop,
    td_ch.node,
    td_ch.module,
    td_ch.block,
    td_ch.cld_guid,
    pj_controllogic.name AS cld_name,
    td_ch.cld_obj_id,
    td_ch.cld_obj_subindex,
    td_ch.fc_num,
    td_ch.eng_units_ndx,
    td_eud_eng_units.engunitsdesc AS eng_units_desc,
    td_ch.value_zero,
    td_ch.span,
    td_ch.high_alm,
    td_ch.low_alm,
    td_ch.sp_value_zero,
    td_ch.sp_span,
    td_ch.sp_eng_units_ndx,
    td_eud_sp_eng_units.engunitsdesc AS sp_eng_units_desc,
    td_ch.dev_alm_point,
    td_ch.alm_state_ndx,
    td_ch.cfc_super_tag,
    td_800xa.co_eng_units_ndx,
    td_eud_co_eng_units.engunitsdesc AS co_eng_units_desc,
    td_800xa.co_num_dec_pl,
    td_800xa.co_span,
    td_800xa.co_value_zero,
    td_800xa.num_dec_places,
    td_800xa.sp_num_dec_pl,
    td_800xa.pid_blk,
    td_ch_alm_inh_tag.tag_name AS alm_inh_tag,
    td_800xa.alm_inh_tag_guid,
    td_800xa.alm_inh_tag_atom,
    td_800xa.alm_inh_state_id,
    domain_alarminhibitstate_alm_inh_state.alminhibstate AS alm_inh_state,
    td_800xa.zero_state_ndx,
    td_lsd_zero_state.logicstatedesc AS zero_state_desc,
    td_800xa.one_state_ndx,
    td_lsd_one_state.logicstatedesc AS one_state_desc,
    td_800xa.two_state_ndx,
    td_lsd_two_state.logicstatedesc AS two_state_desc,
    td_800xa.three_state_ndx,
    td_lsd_three_state.logicstatedesc AS three_state_desc,
    td_800xa.feedbk10_state_ndx,
    td_lsd_feedbk10_state.logicstatedesc AS feedbk10_state_desc,
    td_800xa.feedbk11_state_ndx,
    td_lsd_feedbk11_state.logicstatedesc AS feedbk11_state_desc,
    td_800xa.feedbk20_state_ndx,
    td_lsd_feedbk20_state.logicstatedesc AS feedbk20_state_desc,
    td_800xa.feedbk21_state_ndx,
    td_lsd_feedbk21_state.logicstatedesc AS feedbk21_state_desc,
    td_800xa.feedbk30_state_ndx,
    td_lsd_feedbk30_state.logicstatedesc AS feedbk30_state_desc,
    td_800xa.feedbk31_state_ndx,
    td_lsd_feedbk31_state.logicstatedesc AS feedbk31_state_desc,
    td_800xa.feedbk40_state_ndx,
    td_lsd_feedbk40_state.logicstatedesc AS feedbk40_state_desc,
    td_800xa.feedbk41_state_ndx,
    td_lsd_feedbk41_state.logicstatedesc AS feedbk41_state_desc,
    td_800xa.permv10_state_ndx,
    td_lsd_permv10_state.logicstatedesc AS permv10_state_desc,
    td_800xa.permv11_state_ndx,
    td_lsd_permv11_state.logicstatedesc AS permv11_state_desc,
    td_800xa.permv20_state_ndx,
    td_lsd_permv20_state.logicstatedesc AS permv20_state_desc,
    td_800xa.permv21_state_ndx,
    td_lsd_permv21_state.logicstatedesc AS permv21_state_desc,
    td_800xa.txt_set,
    td_800xa.ctrl_enbl,
    td_800xa.txt_str_lnth,
    td_800xa.handshaking,
    td_800xa.fast_rpt_max_time,
    td_800xa.slow_rpt_max_time,
    td_800xa.area_guid,
    td_maestroarea_area_name.name AS area_name,
    td_800xa.equipment_guid,
    td_maestroequipment_equipment_name.name AS equipment_name,
    td_800xa.unit_guid,
    td_maestrounit_unit_name.name AS unit_name,
    td_800xa.security_group_guid,
    td_maestrosecuritygroup_security_group_name.name AS security_group_name,
    td_800xa.user_text,
    td_800xa.user_index,
    td_800xa.alm_ack_trnsm,
    td_800xa.alm_sil_trnsm,
    td_800xa.alm_ack_bcast,
    td_800xa.ack_req_alm,
    td_800xa.ack_req_bad_qual,
    td_800xa.ack_req_com_err,
    td_800xa.ack_req_high_alm,
    td_800xa.ack_req_high_devi_alm,
    td_800xa.ack_req_high_rate_chg_alm,
    td_800xa.ack_req_high2_alm,
    td_800xa.ack_req_high3_alm,
    td_800xa.ack_req_low_alm,
    td_800xa.ack_req_low_devi_alm,
    td_800xa.ack_req_low_rate_chg_alm,
    td_800xa.ack_req_low2_alm,
    td_800xa.ack_req_low3_alm,
    td_800xa.ack_req_mod_err,
    td_800xa.ack_req_offline,
    td_800xa.ack_req_out,
    td_800xa.ack_req_state_chg,
    td_800xa.ack_req_sys_err,
    td_800xa.ack_req_sys_fault,
    td_800xa.ack_req_usr_def_fault,
    td_800xa.ack_req_usr_def_msg,
    td_800xa.alm_en_alm,
    td_800xa.alm_en_bad_qual,
    td_800xa.alm_en_com_err,
    td_800xa.alm_en_high_alm,
    td_800xa.alm_en_high_devi_alm,
    td_800xa.alm_en_high_rate_chg_alm,
    td_800xa.alm_en_high2_alm,
    td_800xa.alm_en_high3_alm,
    td_800xa.alm_en_low_alm,
    td_800xa.alm_en_low_devi_alm,
    td_800xa.alm_en_low_rate_chg_alm,
    td_800xa.alm_en_low2_alm,
    td_800xa.alm_en_low3_alm,
    td_800xa.alm_en_mod_err,
    td_800xa.alm_en_offline,
    td_800xa.alm_en_out,
    td_800xa.alm_en_state_chg,
    td_800xa.alm_en_sys_err,
    td_800xa.alm_en_sys_fault,
    td_800xa.alm_en_usr_def_fault,
    td_800xa.alm_en_usr_def_msg,
    td_800xa.alm_prty_rtn_norm,
    td_800xa.alm_prty_badqual,
    td_800xa.alm_prty_high_alm,
    td_800xa.alm_prty_low_alm,
    td_800xa.alm_prty_high2_alm,
    td_800xa.alm_prty_low2_alm,
    td_800xa.alm_prty_high3_alm,
    td_800xa.alm_prty_low3_alm,
    td_800xa.alm_prty_high_devi_alm,
    td_800xa.alm_prty_low_devi_alm,
    td_800xa.alm_prty_high_rate_chg_alm,
    td_800xa.alm_prty_low_rate_chg_alm,
    td_800xa.alm_prty_sys_fault,
    td_800xa.alm_prty_usr_def_fault,
    td_800xa.alm_prty_usr_def_msg,
    td_800xa.alm_prty_alm_rtn,
    td_800xa.alm_prty_com_err,
    td_800xa.alm_prty_com_err_rtn,
    td_800xa.alm_prty_high_alm_rtn,
    td_800xa.alm_prty_high_devi_alm_rtn,
    td_800xa.alm_prty_high_rate_chg_alm_rtn,
    td_800xa.alm_prty_high2_alm_rtn,
    td_800xa.alm_prty_high3_alm_rtn,
    td_800xa.alm_prty_low_alm_rtn,
    td_800xa.alm_prty_low_devi_alm_rtn,
    td_800xa.alm_prty_low_rate_chg_alm_rtn,
    td_800xa.alm_prty_low2_alm_rtn,
    td_800xa.alm_prty_low3_alm_rtn,
    td_800xa.alm_prty_mod_err,
    td_800xa.alm_prty_mod_err_rtn,
    td_800xa.alm_prty_offline,
    td_800xa.alm_prty_offline_rtn,
    td_800xa.alm_prty_out,
    td_800xa.alm_prty_out_rtn,
    td_800xa.alm_prty_state_chg,
    td_800xa.alm_prty_sys_err,
    td_800xa.alm_prty_sys_err_rtn,
    td_800xa.alm_prty_sys_fault_rtn,
    td_800xa.alm_prty_usr_def_fault_rtn,
    td_800xa.alm_prty_usr_def_msg_rtn,
    td_800xa.enable_alm,
    td_800xa.enable_bad_qual,
    td_800xa.enable_com_err,
    td_800xa.enable_high_alm,
    td_800xa.enable_high_devi_alm,
    td_800xa.enable_high_rate_chg_alm,
    td_800xa.enable_high2_alm,
    td_800xa.enable_high3_alm,
    td_800xa.enable_low_alm,
    td_800xa.enable_low_devi_alm,
    td_800xa.enable_low_rate_chg_alm,
    td_800xa.enable_low2_alm,
    td_800xa.enable_low3_alm,
    td_800xa.enable_mod_err,
    td_800xa.enable_offline,
    td_800xa.enable_out,
    td_800xa.enable_state_chg,
    td_800xa.enable_sys_err,
    td_800xa.enable_sys_fault,
    td_800xa.enable_usr_def_fault,
    td_800xa.enable_usr_def_msg,
    td_800xa.one_state_state_chg_ndx,
    td_lsd_one_state_state_chg.logicstatedesc AS one_state_state_chg,
    td_800xa.zero_state_state_chg_ndx,
    td_lsd_zero_state_state_chg.logicstatedesc AS zero_state_state_chg,
    td_800xa.one_state_alm_ndx,
    td_lsd_one_state_alm.logicstatedesc AS one_state_alm_desc,
    td_800xa.one_state_bad_qual_ndx,
    td_lsd_one_state_bad_qual.logicstatedesc AS one_state_bad_qual_desc,
    td_800xa.one_state_com_err_ndx,
    td_lsd_one_state_com_err.logicstatedesc AS one_state_com_err_desc,
    td_800xa.one_state_high_alm_ndx,
    td_lsd_one_state_high_alm.logicstatedesc AS one_state_high_alm_desc,
    td_800xa.one_state_high_devi_alm_ndx,
    td_lsd_one_state_high_devi_alm.logicstatedesc AS one_state_high_devi_alm_desc,
    td_800xa.one_state_high_rate_chg_alm_ndx,
    td_lsd_one_state_high_rate_chg_alm.logicstatedesc AS one_state_high_rate_chg_alm_desc,
    td_800xa.one_state_high2_alm_ndx,
    td_lsd_one_state_high2_alm.logicstatedesc AS one_state_high2_alm_desc,
    td_800xa.one_state_high3_alm_ndx,
    td_lsd_one_state_high3_alm.logicstatedesc AS one_state_high3_alm_desc,
    td_800xa.one_state_low_alm_ndx,
    td_lsd_one_state_low_alm.logicstatedesc AS one_state_low_alm_desc,
    td_800xa.one_state_low_devi_alm_ndx,
    td_lsd_one_state_low_devi_alm.logicstatedesc AS one_state_low_devi_alm_desc,
    td_800xa.one_state_low_rate_chg_alm_ndx,
    td_lsd_one_state_low_rate_chg_alm.logicstatedesc AS one_state_low_rate_chg_alm_desc,
    td_800xa.one_state_low2_alm_ndx,
    td_lsd_one_state_low2_alm.logicstatedesc AS one_state_low2_alm_desc,
    td_800xa.one_state_low3_alm_ndx,
    td_lsd_one_state_low3_alm.logicstatedesc AS one_state_low3_alm_desc,
    td_800xa.one_state_mod_err_ndx,
    td_lsd_one_state_mod_err.logicstatedesc AS one_state_mod_err_desc,
    td_800xa.one_state_offline_ndx,
    td_lsd_one_state_offline.logicstatedesc AS one_state_offline_desc,
    td_800xa.one_state_sys_err_ndx,
    td_lsd_one_state_sys_err.logicstatedesc AS one_state_sys_err_desc,
    td_800xa.one_state_sys_fault_ndx,
    td_lsd_one_state_sys_fault.logicstatedesc AS one_state_sys_fault_desc,
    td_800xa.one_state_usr_def_fault_ndx,
    td_lsd_one_state_usr_def_fault.logicstatedesc AS one_state_usr_def_fault_desc,
    td_800xa.one_state_usr_def_msg_ndx,
    td_lsd_one_state_usr_def_msg.logicstatedesc AS one_state_usr_def_msg_desc,
    td_800xa.zero_state_alm_ndx,
    td_lsd_zero_state_alm.logicstatedesc AS zero_state_alm_desc,
    td_800xa.zero_state_bad_qual_ndx,
    td_lsd_zero_state_bad_qual.logicstatedesc AS zero_state_bad_qual_desc,
    td_800xa.zero_state_com_err_ndx,
    td_lsd_zero_state_com_err.logicstatedesc AS zero_state_com_err_desc,
    td_800xa.zero_state_high_alm_ndx,
    td_lsd_zero_state_high_alm.logicstatedesc AS zero_state_high_alm_desc,
    td_800xa.zero_state_high_devi_alm_ndx,
    td_lsd_zero_state_high_devi_alm.logicstatedesc AS zero_state_high_devi_alm_desc,
    td_800xa.zero_state_high_rate_chg_alm_ndx,
    td_lsd_zero_state_high_rate_chg_alm.logicstatedesc AS zero_state_high_rate_chg_alm_desc,
    td_800xa.zero_state_high2_alm_ndx,
    td_lsd_zero_state_high2_alm.logicstatedesc AS zero_state_high2_alm_desc,
    td_800xa.zero_state_high3_alm_ndx,
    td_lsd_zero_state_high3_alm.logicstatedesc AS zero_state_high3_alm_desc,
    td_800xa.zero_state_low_alm_ndx,
    td_lsd_zero_state_low_alm.logicstatedesc AS zero_state_low_alm_desc,
    td_800xa.zero_state_low_devi_alm_ndx,
    td_lsd_zero_state_low_devi_alm.logicstatedesc AS zero_state_low_devi_alm_desc,
    td_800xa.zero_state_low_rate_chg_alm_ndx,
    td_lsd_zero_state_low_rate_chg_alm.logicstatedesc AS zero_state_low_rate_chg_alm_desc,
    td_800xa.zero_state_low2_alm_ndx,
    td_lsd_zero_state_low2_alm.logicstatedesc AS zero_state_low2_alm_desc,
    td_800xa.zero_state_low3_alm_ndx,
    td_lsd_zero_state_low3_alm.logicstatedesc AS zero_state_low3_alm_desc,
    td_800xa.zero_state_mod_err_ndx,
    td_lsd_zero_state_mod_err.logicstatedesc AS zero_state_mod_err_desc,
    td_800xa.zero_state_offline_ndx,
    td_lsd_zero_state_offline.logicstatedesc AS zero_state_offline_desc,
    td_800xa.zero_state_sys_err_ndx,
    td_lsd_zero_state_sys_err.logicstatedesc AS zero_state_sys_err_desc,
    td_800xa.zero_state_sys_fault_ndx,
    td_lsd_zero_state_sys_fault.logicstatedesc AS zero_state_sys_fault_desc,
    td_800xa.zero_state_usr_def_fault_ndx,
    td_lsd_zero_state_usr_def_fault.logicstatedesc AS zero_state_usr_def_fault_desc,
    td_800xa.zero_state_usr_def_msg_ndx,
    td_lsd_zero_state_usr_def_msg.logicstatedesc AS zero_state_usr_def_msg_desc
   FROM ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((harmonydata.td_ch
     JOIN harmonydata.td_800xa ON ((td_ch.tag_guid = td_800xa.tag_guid)))
     LEFT JOIN harmonydata.domain_bcstagtype ON ((td_ch.tag_type_ndx = domain_bcstagtype.tagtypendx)))
     LEFT JOIN harmonydata.pj_controllogic ON ((td_ch.cld_guid = pj_controllogic.objectguid)))
     LEFT JOIN harmonydata.td_eud td_eud_eng_units ON ((td_ch.eng_units_ndx = td_eud_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_eud td_eud_sp_eng_units ON ((td_ch.sp_eng_units_ndx = td_eud_sp_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_eud td_eud_co_eng_units ON ((td_800xa.co_eng_units_ndx = td_eud_co_eng_units.eudndx)))
     LEFT JOIN harmonydata.td_ch td_ch_alm_inh_tag ON ((td_800xa.alm_inh_tag_guid = td_ch_alm_inh_tag.tag_guid)))
     LEFT JOIN harmonydata.domain_alarminhibitstate domain_alarminhibitstate_alm_inh_state ON ((td_800xa.alm_inh_state_id = domain_alarminhibitstate_alm_inh_state.alminhibstatendx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state ON ((td_800xa.zero_state_ndx = td_lsd_zero_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state ON ((td_800xa.one_state_ndx = td_lsd_one_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_two_state ON ((td_800xa.two_state_ndx = td_lsd_two_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_three_state ON ((td_800xa.three_state_ndx = td_lsd_three_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk10_state ON ((td_800xa.feedbk10_state_ndx = td_lsd_feedbk10_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk11_state ON ((td_800xa.feedbk11_state_ndx = td_lsd_feedbk11_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk20_state ON ((td_800xa.feedbk20_state_ndx = td_lsd_feedbk20_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk21_state ON ((td_800xa.feedbk21_state_ndx = td_lsd_feedbk21_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk30_state ON ((td_800xa.feedbk30_state_ndx = td_lsd_feedbk30_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk31_state ON ((td_800xa.feedbk31_state_ndx = td_lsd_feedbk31_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk40_state ON ((td_800xa.feedbk40_state_ndx = td_lsd_feedbk40_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_feedbk41_state ON ((td_800xa.feedbk41_state_ndx = td_lsd_feedbk41_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv10_state ON ((td_800xa.permv10_state_ndx = td_lsd_permv10_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv11_state ON ((td_800xa.permv11_state_ndx = td_lsd_permv11_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv20_state ON ((td_800xa.permv20_state_ndx = td_lsd_permv20_state.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_permv21_state ON ((td_800xa.permv21_state_ndx = td_lsd_permv21_state.lsdndx)))
     LEFT JOIN harmonydata.td_maestroarea td_maestroarea_area_name ON ((td_800xa.area_guid = td_maestroarea_area_name.objectguid)))
     LEFT JOIN harmonydata.td_maestroequipment td_maestroequipment_equipment_name ON ((td_800xa.equipment_guid = td_maestroequipment_equipment_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrounit td_maestrounit_unit_name ON ((td_800xa.unit_guid = td_maestrounit_unit_name.objectguid)))
     LEFT JOIN harmonydata.td_maestrosecuritygroup td_maestrosecuritygroup_security_group_name ON ((td_800xa.security_group_guid = td_maestrosecuritygroup_security_group_name.objectguid)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_state_chg ON ((td_800xa.one_state_state_chg_ndx = td_lsd_one_state_state_chg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_state_chg ON ((td_800xa.zero_state_state_chg_ndx = td_lsd_zero_state_state_chg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_alm ON ((td_800xa.one_state_alm_ndx = td_lsd_one_state_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_bad_qual ON ((td_800xa.one_state_bad_qual_ndx = td_lsd_one_state_bad_qual.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_com_err ON ((td_800xa.one_state_com_err_ndx = td_lsd_one_state_com_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_alm ON ((td_800xa.one_state_high_alm_ndx = td_lsd_one_state_high_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_devi_alm ON ((td_800xa.one_state_high_devi_alm_ndx = td_lsd_one_state_high_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high_rate_chg_alm ON ((td_800xa.one_state_high_rate_chg_alm_ndx = td_lsd_one_state_high_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high2_alm ON ((td_800xa.one_state_high2_alm_ndx = td_lsd_one_state_high2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_high3_alm ON ((td_800xa.one_state_high3_alm_ndx = td_lsd_one_state_high3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_alm ON ((td_800xa.one_state_low_alm_ndx = td_lsd_one_state_low_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_devi_alm ON ((td_800xa.one_state_low_devi_alm_ndx = td_lsd_one_state_low_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low_rate_chg_alm ON ((td_800xa.one_state_low_rate_chg_alm_ndx = td_lsd_one_state_low_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low2_alm ON ((td_800xa.one_state_low2_alm_ndx = td_lsd_one_state_low2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_low3_alm ON ((td_800xa.one_state_low3_alm_ndx = td_lsd_one_state_low3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_mod_err ON ((td_800xa.one_state_mod_err_ndx = td_lsd_one_state_mod_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_offline ON ((td_800xa.one_state_offline_ndx = td_lsd_one_state_offline.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_sys_err ON ((td_800xa.one_state_sys_err_ndx = td_lsd_one_state_sys_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_sys_fault ON ((td_800xa.one_state_sys_fault_ndx = td_lsd_one_state_sys_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_usr_def_fault ON ((td_800xa.one_state_usr_def_fault_ndx = td_lsd_one_state_usr_def_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_one_state_usr_def_msg ON ((td_800xa.one_state_usr_def_msg_ndx = td_lsd_one_state_usr_def_msg.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_alm ON ((td_800xa.zero_state_alm_ndx = td_lsd_zero_state_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_bad_qual ON ((td_800xa.zero_state_bad_qual_ndx = td_lsd_zero_state_bad_qual.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_com_err ON ((td_800xa.zero_state_com_err_ndx = td_lsd_zero_state_com_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_alm ON ((td_800xa.zero_state_high_alm_ndx = td_lsd_zero_state_high_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_devi_alm ON ((td_800xa.zero_state_high_devi_alm_ndx = td_lsd_zero_state_high_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high_rate_chg_alm ON ((td_800xa.zero_state_high_rate_chg_alm_ndx = td_lsd_zero_state_high_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high2_alm ON ((td_800xa.zero_state_high2_alm_ndx = td_lsd_zero_state_high2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_high3_alm ON ((td_800xa.zero_state_high3_alm_ndx = td_lsd_zero_state_high3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_alm ON ((td_800xa.zero_state_low_alm_ndx = td_lsd_zero_state_low_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_devi_alm ON ((td_800xa.zero_state_low_devi_alm_ndx = td_lsd_zero_state_low_devi_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low_rate_chg_alm ON ((td_800xa.zero_state_low_rate_chg_alm_ndx = td_lsd_zero_state_low_rate_chg_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low2_alm ON ((td_800xa.zero_state_low2_alm_ndx = td_lsd_zero_state_low2_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_low3_alm ON ((td_800xa.zero_state_low3_alm_ndx = td_lsd_zero_state_low3_alm.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_mod_err ON ((td_800xa.zero_state_mod_err_ndx = td_lsd_zero_state_mod_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_offline ON ((td_800xa.zero_state_offline_ndx = td_lsd_zero_state_offline.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_sys_err ON ((td_800xa.zero_state_sys_err_ndx = td_lsd_zero_state_sys_err.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_sys_fault ON ((td_800xa.zero_state_sys_fault_ndx = td_lsd_zero_state_sys_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_usr_def_fault ON ((td_800xa.zero_state_usr_def_fault_ndx = td_lsd_zero_state_usr_def_fault.lsdndx)))
     LEFT JOIN harmonydata.td_lsd td_lsd_zero_state_usr_def_msg ON ((td_800xa.zero_state_usr_def_msg_ndx = td_lsd_zero_state_usr_def_msg.lsdndx)));


ALTER TABLE harmonydata.vw_all_800xa_tags_ch3 OWNER TO postgres;

--
-- TOC entry 880 (class 1259 OID 1400500)
-- Name: vw_all_dfi2_ch; Type: VIEW; Schema: harmonydata; Owner: postgres
--

CREATE VIEW harmonydata.vw_all_dfi2_ch AS
 SELECT domain_fieldinfo2.field_name,
    domain_fieldinfo2.legacy_field_name,
    domain_fieldinfo2.field_ndx,
    domain_fieldinfo2.api_data_type,
    domain_fieldinfo2.is_referenced_field,
    domain_fieldinfo2.atom_name,
    domain_fieldinfo2.import_export_name_spe21,
    domain_fieldinfo2.import_export_name_spe22,
    domain_fieldinfo2.import_export_mdb_field_type,
    domain_fieldinfo2.field_type,
    domain_fieldinfo2.default_value,
    domain_fieldinfo2.low_limit,
    domain_fieldinfo2.high_limit,
    domain_fieldinfo2.is_required,
    domain_fieldinfo2.list_specifier,
    domain_fieldinfo2.is_ch_owned,
    domain_fieldinfo2.is_client_editable,
    domain_fieldinfo2.is_browser_editable,
    domain_fieldinfo2.is_browser_displayed,
    domain_fieldinfo2.is_auto_generated,
    domain_fieldinfo2.is_importable,
    domain_fieldinfo2.field_guid,
    domain_fieldinfo2.linked_field_guid,
    domain_fieldinfo2_linked.field_name AS linked_field_name,
    domain_fieldinfo2_linked.default_value AS linked_default_value
   FROM (harmonydata.domain_fieldinfo2
     LEFT JOIN harmonydata.domain_fieldinfo2 domain_fieldinfo2_linked ON ((domain_fieldinfo2.linked_field_guid = domain_fieldinfo2_linked.field_guid)))
  ORDER BY domain_fieldinfo2.field_ndx;


ALTER TABLE harmonydata.vw_all_dfi2_ch OWNER TO postgres;

--
-- TOC entry 720 (class 1259 OID 827677)
-- Name: vw_all_euds_ch; Type: VIEW; Schema: harmonydata; Owner: postgres
--

CREATE VIEW harmonydata.vw_all_euds_ch AS
 SELECT td_eud.eudguid AS eud_guid,
    td_eud.eudndx AS eud_ndx,
    td_eud.engunitsdesc AS eng_units_desc,
    td_eud.creattimestamp AS create_timestamp,
    td_eud.updatetimestamp AS update_timestamp,
    td_eud.langid AS lang_id,
    td_eud.servertypeid AS server_type_id
   FROM harmonydata.td_eud;


ALTER TABLE harmonydata.vw_all_euds_ch OWNNER TO postgres;--
-- PostgreSQL database dump
--

-- Dumped from database version 9.4.17
-- Dumped by pg_dump version 9.4.17
-- Started on 2019-06-28 10:01:32

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 24 (class 2615 OID 824501)
-- Name: harmonydata; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA harmonydata;


ALTER SCHEMA harmonydata OWNER TO postgres;

--
-- TOC entry 1576 (class 1247 OID 824801)
-- Name: type_800xa_alm_inh_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_800xa_alm_inh_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	alm_inh_tag_guid uuid,
	alm_inh_tag character varying(64)
);


ALTER TYPE harmonydata.type_800xa_alm_inh_ch OWNER TO postgres;

--
-- TOC entry 2934 (class 1247 OID 1704011)
-- Name: type_800xa_tag_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_800xa_tag_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	tag_desc character varying(128),
	tag_type_ndx smallint,
	tag_type character varying(16),
	exchange_indicator character varying(1),
	project_flag smallint,
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	loop smallint,
	node smallint,
	module smallint,
	block integer,
	cld_guid uuid,
	cld_name character varying(255),
	cld_obj_id integer,
	cld_obj_subindex integer,
	fc_num smallint,
	eng_units_ndx smallint,
	eng_units_desc character varying(255),
	value_zero real,
	span real,
	high_alm real,
	low_alm real,
	sp_value_zero real,
	sp_span real,
	sp_eng_units_ndx smallint,
	sp_eng_units_desc character varying(255),
	dev_alm_point real,
	alm_state_ndx smallint,
	cfc_super_tag xml,
	co_eng_units_ndx smallint,
	co_eng_units_desc character varying(255),
	co_num_dec_pl smallint,
	co_span real,
	co_value_zero real,
	num_dec_places smallint,
	sp_num_dec_pl smallint,
	pid_blk integer,
	alm_inh_tag character varying(64),
	alm_inh_tag_guid uuid,
	alm_inh_tag_atom character varying(64),
	alm_inh_state_id smallint,
	alm_inh_state character varying(2),
	zero_state_ndx smallint,
	zero_state_desc character varying(255),
	one_state_ndx smallint,
	one_state_desc character varying(255),
	two_state_ndx smallint,
	two_state_desc character varying(255),
	three_state_ndx smallint,
	three_state_desc character varying(255),
	feedbk10_state_ndx smallint,
	feedbk10_state_desc character varying(255),
	feedbk11_state_ndx smallint,
	feedbk11_state_desc character varying(255),
	feedbk20_state_ndx smallint,
	feedbk20_state_desc character varying(255),
	feedbk21_state_ndx smallint,
	feedbk21_state_desc character varying(255),
	feedbk30_state_ndx smallint,
	feedbk30_state_desc character varying(255),
	feedbk31_state_ndx smallint,
	feedbk31_state_desc character varying(255),
	feedbk40_state_ndx smallint,
	feedbk40_state_desc character varying(255),
	feedbk41_state_ndx smallint,
	feedbk41_state_desc character varying(255),
	permv10_state_ndx smallint,
	permv10_state_desc character varying(255),
	permv11_state_ndx smallint,
	permv11_state_desc character varying(255),
	permv20_state_ndx smallint,
	permv20_state_desc character varying(255),
	permv21_state_ndx smallint,
	permv21_state_desc character varying(255),
	txt_set smallint,
	ctrl_enbl character varying(1),
	txt_str_lnth smallint,
	handshaking character varying(1),
	fast_rpt_max_time real,
	slow_rpt_max_time real,
	area_guid uuid,
	area_name character varying(32),
	equipment_guid uuid,
	equipment_name character varying(32),
	unit_guid uuid,
	unit_name character varying(32),
	security_group_guid uuid,
	security_group_name character varying(32),
	user_text character varying(64),
	user_index character varying(38),
	alm_ack_trnsm character varying(1),
	alm_sil_trnsm character varying(1),
	alm_ack_bcast character varying(1),
	ack_req_alm character varying(1),
	ack_req_bad_qual character varying(1),
	ack_req_com_err character varying(1),
	ack_req_high_alm character varying(1),
	ack_req_high_devi_alm character varying(1),
	ack_req_high_rate_chg_alm character varying(1),
	ack_req_high2_alm character varying(1),
	ack_req_high3_alm character varying(1),
	ack_req_low_alm character varying(1),
	ack_req_low_devi_alm character varying(1),
	ack_req_low_rate_chg_alm character varying(1),
	ack_req_low2_alm character varying(1),
	ack_req_low3_alm character varying(1),
	ack_req_mod_err character varying(1),
	ack_req_offline character varying(1),
	ack_req_out character varying(1),
	ack_req_state_chg character varying(1),
	ack_req_sys_err character varying(1),
	ack_req_sys_fault character varying(1),
	ack_req_usr_def_fault character varying(1),
	ack_req_usr_def_msg character varying(1),
	alm_comnt_sys_fault_ndx integer,
	alm_comnt_sys_fault character varying(255),
	alm_comnt_usr_def_fault_ndx integer,
	alm_comnt_usr_def_fault character varying(255),
	alm_comnt_usr_def_msg_ndx integer,
	alm_comnt_usr_def_msg character varying(255),
	alm_comnt_alm_ndx integer,
	alm_comnt_alm character varying(255),
	alm_comnt_rtn_norm_ndx integer,
	alm_comnt_rtn_norm character varying(255),
	alm_comnt_high_alm_ndx integer,
	alm_comnt_high_alm character varying(255),
	alm_comnt_low_alm_ndx integer,
	alm_comnt_low_alm character varying(255),
	alm_comnt_high2_alm_ndx integer,
	alm_comnt_high2_alm character varying(255),
	alm_comnt_low2_alm_ndx integer,
	alm_comnt_low2_alm character varying(255),
	alm_comnt_high3_alm_ndx integer,
	alm_comnt_high3_alm character varying(255),
	alm_comnt_low3_alm_ndx integer,
	alm_comnt_low3_alm character varying(255),
	alm_comnt_high_devi_alm_ndx integer,
	alm_comnt_high_devi_alm character varying(255),
	alm_comnt_low_devi_alm_ndx integer,
	alm_comnt_low_devi_alm character varying(255),
	alm_comnt_high_rate_chg_alm_ndx integer,
	alm_comnt_high_rate_chg_alm character varying(255),
	alm_comnt_low_rate_chg_alm_ndx integer,
	alm_comnt_low_rate_chg_alm character varying(255),
	alm_comnt_alm_rtn_ndx integer,
	alm_comnt_alm_rtn character varying(255),
	alm_comnt_bad_qual_ndx integer,
	alm_comnt_bad_qual character varying(255),
	alm_comnt_com_err_ndx integer,
	alm_comnt_com_err character varying(255),
	alm_comnt_com_err_rtn_ndx integer,
	alm_comnt_com_err_rtn character varying(255),
	alm_comnt_high_alm_rtn_ndx integer,
	alm_comnt_high_alm_rtn character varying(255),
	alm_comnt_high_devi_alm_rtn_ndx integer,
	alm_comnt_high_devi_alm_rtn character varying(255),
	alm_comnt_high_rate_chg_alm_rtn_ndx integer,
	alm_comnt_high_rate_chg_alm_rtn character varying(255),
	alm_comnt_high2_alm_rtn_ndx integer,
	alm_comnt_high2_alm_rtn character varying(255),
	alm_comnt_high3_alm_rtn_ndx integer,
	alm_comnt_high3_alm_rtn character varying(255),
	alm_comnt_low_alm_rtn_ndx integer,
	alm_comnt_low_alm_rtn character varying(255),
	alm_comnt_low_devi_alm_rtn_ndx integer,
	alm_comnt_low_devi_alm_rtn character varying(255),
	alm_comnt_low_rate_chg_alm_rtn_ndx integer,
	alm_comnt_low_rate_chg_alm_rtn character varying(255),
	alm_comnt_low2_alm_rtn_ndx integer,
	alm_comnt_low2_alm_rtn character varying(255),
	alm_comnt_low3_alm_rtn_ndx integer,
	alm_comnt_low3_alm_rtn character varying(255),
	alm_comnt_mod_err_ndx integer,
	alm_comnt_mod_err character varying(255),
	alm_comnt_mod_err_rtn_ndx integer,
	alm_comnt_mod_err_rtn character varying(255),
	alm_comnt_offline_ndx integer,
	alm_comnt_offline character varying(255),
	alm_comnt_offline_rtn_ndx integer,
	alm_comnt_offline_rtn character varying(255),
	alm_comnt_out_ndx integer,
	alm_comnt_out character varying(255),
	alm_comnt_out_rtn_ndx integer,
	alm_comnt_out_rtn character varying(255),
	alm_comnt_state_chg_rtn_ndx integer,
	alm_comnt_state_chg_rtn character varying(255),
	alm_comnt_state_chg_ndx integer,
	alm_comnt_state_chg character varying(255),
	alm_comnt_sys_err_ndx integer,
	alm_comnt_sys_err character varying(255),
	alm_comnt_sys_err_rtn_ndx integer,
	alm_comnt_sys_err_rtn character varying(255),
	alm_comnt_sys_fault_rtn_ndx integer,
	alm_comnt_sys_fault_rtn character varying(255),
	alm_comnt_usr_def_fault_rtn_ndx integer,
	alm_comnt_usr_def_fault_rtn character varying(255),
	alm_comnt_usr_def_msg_rtn_ndx integer,
	alm_comnt_usr_def_msg_rtn character varying(255),
	alm_en_alm character varying(1),
	alm_en_bad_qual character varying(1),
	alm_en_com_err character varying(1),
	alm_en_high_alm character varying(1),
	alm_en_high_devi_alm character varying(1),
	alm_en_high_rate_chg_alm character varying(1),
	alm_en_high2_alm character varying(1),
	alm_en_high3_alm character varying(1),
	alm_en_low_alm character varying(1),
	alm_en_low_devi_alm character varying(1),
	alm_en_low_rate_chg_alm character varying(1),
	alm_en_low2_alm character varying(1),
	alm_en_low3_alm character varying(1),
	alm_en_mod_err character varying(1),
	alm_en_offline character varying(1),
	alm_en_out character varying(1),
	alm_en_state_chg character varying(1),
	alm_en_sys_err character varying(1),
	alm_en_sys_fault character varying(1),
	alm_en_usr_def_fault character varying(1),
	alm_en_usr_def_msg character varying(1),
	alm_prty_alm smallint,
	alm_prty_rtn_norm smallint,
	alm_prty_badqual smallint,
	alm_prty_high_alm smallint,
	alm_prty_low_alm smallint,
	alm_prty_high2_alm smallint,
	alm_prty_low2_alm smallint,
	alm_prty_high3_alm smallint,
	alm_prty_low3_alm smallint,
	alm_prty_high_devi_alm smallint,
	alm_prty_low_devi_alm smallint,
	alm_prty_high_rate_chg_alm smallint,
	alm_prty_low_rate_chg_alm smallint,
	alm_prty_sys_fault smallint,
	alm_prty_usr_def_fault smallint,
	alm_prty_usr_def_msg smallint,
	alm_prty_alm_rtn smallint,
	alm_prty_com_err smallint,
	alm_prty_com_err_rtn smallint,
	alm_prty_high_alm_rtn smallint,
	alm_prty_high_devi_alm_rtn smallint,
	alm_prty_high_rate_chg_alm_rtn smallint,
	alm_prty_high2_alm_rtn smallint,
	alm_prty_high3_alm_rtn smallint,
	alm_prty_low_alm_rtn smallint,
	alm_prty_low_devi_alm_rtn smallint,
	alm_prty_low_rate_chg_alm_rtn smallint,
	alm_prty_low2_alm_rtn smallint,
	alm_prty_low3_alm_rtn smallint,
	alm_prty_mod_err smallint,
	alm_prty_mod_err_rtn smallint,
	alm_prty_offline smallint,
	alm_prty_offline_rtn smallint,
	alm_prty_out smallint,
	alm_prty_out_rtn smallint,
	alm_prty_state_chg smallint,
	alm_prty_state_chg_rtn smallint,
	alm_prty_sys_err smallint,
	alm_prty_sys_err_rtn smallint,
	alm_prty_sys_fault_rtn smallint,
	alm_prty_usr_def_fault_rtn smallint,
	alm_prty_usr_def_msg_rtn smallint,
	enable_alm character varying(1),
	enable_bad_qual character varying(1),
	enable_com_err character varying(1),
	enable_high_alm character varying(1),
	enable_high_devi_alm character varying(1),
	enable_high_rate_chg_alm character varying(1),
	enable_high2_alm character varying(1),
	enable_high3_alm character varying(1),
	enable_low_alm character varying(1),
	enable_low_devi_alm character varying(1),
	enable_low_rate_chg_alm character varying(1),
	enable_low2_alm character varying(1),
	enable_low3_alm character varying(1),
	enable_mod_err character varying(1),
	enable_offline character varying(1),
	enable_out character varying(1),
	enable_state_chg character varying(1),
	enable_sys_err character varying(1),
	enable_sys_fault character varying(1),
	enable_usr_def_fault character varying(1),
	enable_usr_def_msg character varying(1),
	one_state_state_chg_ndx smallint,
	one_state_state_chg character varying(255),
	zero_state_state_chg_ndx smallint,
	zero_state_state_chg character varying(255),
	one_state_alm_ndx smallint,
	one_state_alm_desc character varying(255),
	one_state_bad_qual_ndx smallint,
	one_state_bad_qual_desc character varying(255),
	one_state_com_err_ndx smallint,
	one_state_com_err_desc character varying(255),
	one_state_high_alm_ndx smallint,
	one_state_high_alm_desc character varying(255),
	one_state_high_devi_alm_ndx smallint,
	one_state_high_devi_alm_desc character varying(255),
	one_state_high_rate_chg_alm_ndx smallint,
	one_state_high_rate_chg_alm_desc character varying(255),
	one_state_high2_alm_ndx smallint,
	one_state_high2_alm_desc character varying(255),
	one_state_high3_alm_ndx smallint,
	one_state_high3_alm_desc character varying(255),
	one_state_low_alm_ndx smallint,
	one_state_low_alm_desc character varying(255),
	one_state_low_devi_alm_ndx smallint,
	one_state_low_devi_alm_desc character varying(255),
	one_state_low_rate_chg_alm_ndx smallint,
	one_state_low_rate_chg_alm_desc character varying(255),
	one_state_low2_alm_ndx smallint,
	one_state_low2_alm_desc character varying(255),
	one_state_low3_alm_ndx smallint,
	one_state_low3_alm_desc character varying(255),
	one_state_mod_err_ndx smallint,
	one_state_mod_err_desc character varying(255),
	one_state_offline_ndx smallint,
	one_state_offline_desc character varying(255),
	one_state_sys_err_ndx smallint,
	one_state_sys_err_desc character varying(255),
	one_state_sys_fault_ndx smallint,
	one_state_sys_fault_desc character varying(255),
	one_state_usr_def_fault_ndx smallint,
	one_state_usr_def_fault_desc character varying(255),
	one_state_usr_def_msg_ndx smallint,
	one_state_usr_def_msg_desc character varying(255),
	zero_state_alm_ndx smallint,
	zero_state_alm_desc character varying(255),
	zero_state_bad_qual_ndx smallint,
	zero_state_bad_qual_desc character varying(255),
	zero_state_com_err_ndx smallint,
	zero_state_com_err_desc character varying(255),
	zero_state_high_alm_ndx smallint,
	zero_state_high_alm_desc character varying(255),
	zero_state_high_devi_alm_ndx smallint,
	zero_state_high_devi_alm_desc character varying(255),
	zero_state_high_rate_chg_alm_ndx smallint,
	zero_state_high_rate_chg_alm_desc character varying(255),
	zero_state_high2_alm_ndx smallint,
	zero_state_high2_alm_desc character varying(255),
	zero_state_high3_alm_ndx smallint,
	zero_state_high3_alm_desc character varying(255),
	zero_state_low_alm_ndx smallint,
	zero_state_low_alm_desc character varying(255),
	zero_state_low_devi_alm_ndx smallint,
	zero_state_low_devi_alm_desc character varying(255),
	zero_state_low_rate_chg_alm_ndx smallint,
	zero_state_low_rate_chg_alm_desc character varying(255),
	zero_state_low2_alm_ndx smallint,
	zero_state_low2_alm_desc character varying(255),
	zero_state_low3_alm_ndx smallint,
	zero_state_low3_alm_desc character varying(255),
	zero_state_mod_err_ndx smallint,
	zero_state_mod_err_desc character varying(255),
	zero_state_offline_ndx smallint,
	zero_state_offline_desc character varying(255),
	zero_state_sys_err_ndx smallint,
	zero_state_sys_err_desc character varying(255),
	zero_state_sys_fault_ndx smallint,
	zero_state_sys_fault_desc character varying(255),
	zero_state_usr_def_fault_ndx smallint,
	zero_state_usr_def_fault_desc character varying(255),
	zero_state_usr_def_msg_ndx smallint,
	zero_state_usr_def_msg_desc character varying(255),
	server_id uuid
);


ALTER TYPE harmonydata.type_800xa_tag_ch OWNER TO postgres;

--
-- TOC entry 1585 (class 1247 OID 824810)
-- Name: type_eud_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_eud_ch AS (
	eud_guid uuid,
	eud_ndx smallint,
	eng_units_desc character varying(255),
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	lang_id smallint,
	server_type_id uuid
);


ALTER TYPE harmonydata.type_eud_ch OWNER TO postgres;

--
-- TOC entry 1588 (class 1247 OID 824813)
-- Name: type_tag_ch; Type: TYPE; Schema: harmonydata; Owner: postgres
--

CREATE TYPE harmonydata.type_tag_ch AS (
	tag_guid uuid,
	tag_name character varying(64),
	tag_desc character varying(128),
	tag_type_ndx smallint,
	tag_type character varying(16),
	exchange_indicator character varying(1),
	project_flag smallint,
	create_timestamp timestamp without time zone,
	update_timestamp timestamp without time zone,
	loop smallint,
	node smallint,
	module smallint,
	block integer,
	cld_guid uuid,
	cld_name character varying(255),
	cld_obj_id integer,
	cld_obj_subindex integer,
	fc_num smallint,
	eng_units_ndx smallint,
	eng_units_desc character varying(255),
	value_zero real,
	span real,
	high_alm real,
	low_alm real,
	sp_value_zero real,
	sp_span real,
	sp_eng_units_ndx smallint,
	sp_eng_units_desc character varying(255),
	dev_alm_point real,
	alm_state_ndx smallint,
	cfc_super_tag xml
);


ALTER TYPE harmonydata.type_tag_ch OWNER TO postgres;

--
-- TOC entry 1065 (class 1255 OID 824822)
-- Name: DB MAINT Remove Orphan Irefs(); Type: FUNCTION; Schema: harmonydata; Owner: postgres
--

CREATE FUNCTION harmonydata."DB MAINT Remove Orphan Irefs"() RETURNS void
    LANGUAGE sql
    AS $$
    