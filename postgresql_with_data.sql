--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-07-16 08:49:28

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16446)
-- Name: employees; Type: TABLE; Schema: public; Owner: emp_manager_db_user
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    salary numeric(10,2) NOT NULL,
    date_employed timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "position" character varying(255) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.employees OWNER TO emp_manager_db_user;

--
-- TOC entry 214 (class 1259 OID 16445)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: emp_manager_db_user
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO emp_manager_db_user;

--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 214
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: emp_manager_db_user
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 2992 (class 2604 OID 16449)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: emp_manager_db_user
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 3142 (class 0 OID 16446)
-- Dependencies: 215
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: emp_manager_db_user
--

COPY public.employees (id, name, salary, date_employed, "position", status, created_at, updated_at) FROM stdin;
4	Emily Wilson	67215.00	2023-06-10 06:20:00	Manager	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
5	Michael Brown	41283.00	2023-06-10 07:55:00	Administrator	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
6	Olivia Davis	93545.00	2023-06-10 09:40:00	Developer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
7	William Johnson	68951.00	2023-06-10 11:25:00	Salesperson	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
8	Sophia Miller	52684.00	2023-06-10 13:10:00	Designer	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
9	Alexander Wilson	78213.00	2023-06-10 02:30:00	Developer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
10	Emma Davis	63952.00	2023-06-10 03:15:00	Salesperson	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
11	James Johnson	71495.00	2023-06-10 04:45:00	Designer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
12	Oliver Smith	57639.00	2023-06-10 06:20:00	Manager	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
13	Charlotte Wilson	42971.00	2023-06-10 07:55:00	Administrator	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
14	Liam Davis	89546.00	2023-06-10 09:40:00	Developer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
15	Isabella Johnson	65284.00	2023-06-10 11:25:00	Salesperson	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
17	Amelia Miller	54526.00	2023-06-10 02:30:00	Developer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
18	Henry Wilson	78962.00	2023-06-10 03:15:00	Salesperson	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
19	Ava Davis	61653.00	2023-06-10 04:45:00	Designer	t	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
20	Oliver Smith	75418.00	2023-06-10 06:20:00	Manager	f	2023-07-16 01:28:39.572177	2023-07-16 01:32:10.941048
2	Jane Smith	74639.00	2023-06-10 03:15:00	Salesperson	f	2023-07-16 01:28:39.572177	2023-07-15 18:40:20.721464
3	David Johnson	82105.00	2023-06-10 04:45:00	Designer	t	2023-07-16 01:28:39.572177	2023-07-16 08:42:32.956195
16	Mason Smith	71951.00	2023-06-10 13:10:00	Designer	f	2023-07-16 01:28:39.572177	2023-07-16 08:42:38.956172
1	John Doe	58950.00	2023-06-10 02:30:00	Developer	t	2023-07-16 01:28:39.572177	2023-07-16 08:42:46.167263
21	test	1111.00	2023-07-16 08:28:23	dev	t	2023-07-16 01:28:39.572177	2023-07-16 08:43:05.000297
\.


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 214
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: emp_manager_db_user
--

SELECT pg_catalog.setval('public.employees_id_seq', 22, true);


--
-- TOC entry 2997 (class 2606 OID 16456)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: emp_manager_db_user
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 2998 (class 2620 OID 16457)
-- Name: employees employees_updated_at_trigger; Type: TRIGGER; Schema: public; Owner: emp_manager_db_user
--

CREATE TRIGGER employees_updated_at_trigger BEFORE UPDATE ON public.employees FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();


-- Completed on 2023-07-16 08:49:33

--
-- PostgreSQL database dump complete
--

