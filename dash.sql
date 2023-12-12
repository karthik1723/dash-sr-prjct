--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _admin; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._admin (
    a_email character varying(16) DEFAULT NULL::character varying,
    a_pass character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public._admin OWNER TO rebasedata;

--
-- Name: _data; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._data (
    category character varying(23) DEFAULT NULL::character varying,
    file character varying(25) DEFAULT NULL::character varying
);


ALTER TABLE public._data OWNER TO rebasedata;

--
-- Name: _users; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._users (
    u_email character varying(21) DEFAULT NULL::character varying,
    u_name character varying(9) DEFAULT NULL::character varying,
    u_pass character varying(8) DEFAULT NULL::character varying,
    u_desig character varying(8) DEFAULT NULL::character varying
);


ALTER TABLE public._users OWNER TO rebasedata;

--
-- Data for Name: _admin; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._admin (a_email, a_pass) FROM stdin;
admin1@gmail.com	shj@100
\.


--
-- Data for Name: _data; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._data (category, file) FROM stdin;
Student	students.xlsx
Student	students.xlsx
Student	students.xlsx
Faculty	faculty.xlsx
IT Publications	it_pub.xlsx
CSE Publications	cse_pub.xlsx
EEE Publications	eee_pub.xlsx
ECE Publications	ece_pub.xlsx
Chemical Publications	chem_pub.xlsx
Mechanical Publications	mech_pub.xlsx
Faculty	faculty.xlsx
Support Staff	support.xlsx
Consultancy Engineering	consultancy_engg.xlsx
Consultancy Pharmacy	consultancy_pharmacy.xlsx
Research Grants	research_grants_new.xlsx
Admissions	admission.xlsx
Programs	programs.xlsx
Programs	programs.xlsx
Programs	programs.xlsx
\.


--
-- Data for Name: _users; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._users (u_email, u_name, u_pass, u_desig) FROM stdin;
18h61a1216@cvsr.ac.in	Jyothika	pass	student1
18h61a1237@cvsr.ac.in	Shivani	password	student2
18h61a1241@cvsr.ac.in	Harika	pass	student3
18h61a12@cvsr.ac.in	Joey	joey	Student
Sant@cvsr.ac.in	Sanitizer	sant	Work
\.


--
-- PostgreSQL database dump complete
--

