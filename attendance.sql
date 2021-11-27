--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: attendances; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.attendances (
    id bigint NOT NULL,
    tanggal integer NOT NULL,
    bulan integer NOT NULL,
    tahun integer NOT NULL,
    jam_masuk character varying(255) NOT NULL,
    flag_masuk boolean NOT NULL,
    jam_keluar character varying(255) NOT NULL,
    flag_keluar boolean NOT NULL,
    nip character varying(255) NOT NULL,
    nama_pegawai character varying(255) NOT NULL,
    jabatan_fungsional character varying(255) NOT NULL,
    jabatan_struktural character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.attendances OWNER TO adminlapi;

--
-- Name: attendances_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.attendances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attendances_id_seq OWNER TO adminlapi;

--
-- Name: attendances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.attendances_id_seq OWNED BY public.attendances.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO adminlapi;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO adminlapi;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO adminlapi;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO adminlapi;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO adminlapi;

--
-- Name: permissions; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.permissions (
    id bigint NOT NULL,
    nip character varying(255) NOT NULL,
    nama_pegawai character varying(255) NOT NULL,
    alasan character varying(255) NOT NULL,
    tanggal_izin integer NOT NULL,
    bulan_izin integer NOT NULL,
    tahun_izin integer NOT NULL,
    jabatan_fungsional character varying(255) NOT NULL,
    jabatan_struktural character varying(255) NOT NULL,
    role character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.permissions OWNER TO adminlapi;

--
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.permissions_id_seq OWNER TO adminlapi;

--
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.personal_access_tokens OWNER TO adminlapi;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.personal_access_tokens_id_seq OWNER TO adminlapi;

--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: user_infos; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.user_infos (
    id bigint NOT NULL,
    nip character varying(255) NOT NULL,
    nama_pegawai character varying(255) NOT NULL,
    jabatan_fungsional character varying(255) NOT NULL,
    jabatan_struktural character varying(255) NOT NULL,
    jumlah_izin integer NOT NULL,
    jumlah_sakit integer NOT NULL,
    jumlah_alpha integer NOT NULL,
    jumlah_hadir integer NOT NULL,
    role character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.user_infos OWNER TO adminlapi;

--
-- Name: user_infos_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.user_infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_infos_id_seq OWNER TO adminlapi;

--
-- Name: user_infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.user_infos_id_seq OWNED BY public.user_infos.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: adminlapi
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    nip character varying(255) NOT NULL,
    nama_pegawai character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.users OWNER TO adminlapi;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: adminlapi
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO adminlapi;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: adminlapi
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: attendances id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.attendances ALTER COLUMN id SET DEFAULT nextval('public.attendances_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: permissions id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: user_infos id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.user_infos ALTER COLUMN id SET DEFAULT nextval('public.user_infos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: attendances; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.attendances (id, tanggal, bulan, tahun, jam_masuk, flag_masuk, jam_keluar, flag_keluar, nip, nama_pegawai, jabatan_fungsional, jabatan_struktural, role, created_at, updated_at) FROM stdin;
1	26	11	2021	00:20:43	t	00:21:02	t	13010049	ari	engineer	staff	staff	2021-11-27 00:20:43	2021-11-27 00:21:02
2	25	11	2021	00:30:17	t	00:30:41	t	13010049	ari	engineer	staff	staff	2021-11-27 00:30:17	2021-11-27 00:30:41
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.migrations (id, migration, batch) FROM stdin;
61	2021_11_24_040655_create_attendance_table	2
65	2021_11_23_225355_create_permissions_table	4
66	2021_11_23_223001_create_user_info_table	5
53	2014_10_12_000000_create_users_table	1
54	2014_10_12_100000_create_password_resets_table	1
55	2019_08_19_000000_create_failed_jobs_table	1
56	2019_12_14_000001_create_personal_access_tokens_table	1
\.


--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.permissions (id, nip, nama_pegawai, alasan, tanggal_izin, bulan_izin, tahun_izin, jabatan_fungsional, jabatan_struktural, role, created_at, updated_at) FROM stdin;
1	13010049	ari	acara keluarga	27	11	2021	engineer	staff	staff	2021-11-27 13:21:42	2021-11-27 13:21:42
2	12010041	budi	acara keluarga	27	11	2021	engineer	manager	admin	2021-11-27 13:24:48	2021-11-27 13:24:48
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_infos; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.user_infos (id, nip, nama_pegawai, jabatan_fungsional, jabatan_struktural, jumlah_izin, jumlah_sakit, jumlah_alpha, jumlah_hadir, role, created_at, updated_at) FROM stdin;
1	12010041	budi	engineer	manager	0	0	0	1	admin	2021-11-27 13:33:53	2021-11-27 13:33:53
2	12020042	wati	administrasi	manager	0	0	0	1	admin	2021-11-27 13:33:53	2021-11-27 13:33:53
3	12020043	iwan	administrasi	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
4	13020046	yudi	administrasi	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
5	12010043	ari	engineer	team leader	0	0	0	1	leader	2021-11-27 13:33:53	2021-11-27 13:33:53
6	12010044	susi	engineer	team leader	0	0	0	1	leader	2021-11-27 13:33:53	2021-11-27 13:33:53
7	13010049	ari	engineer	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
8	13010050	medi	engineer	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
9	13010051	susan	engineer	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
10	13030052	andi	support	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
11	13010053	hasan	engineer	staff	0	0	0	1	staff	2021-11-27 13:33:53	2021-11-27 13:33:53
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: adminlapi
--

COPY public.users (id, nip, nama_pegawai, password, created_at, updated_at) FROM stdin;
1	12010041	budi	$2y$10$jM4KIkb2JxL81mbcGKTHB.wif5UbWoKM3Mdz678YqUdoW.GBVplu6	2021-11-25 23:46:09	2021-11-25 23:46:09
2	12020042	wati	$2y$10$182d/otxsH3wSX1HUh6fyeebMa7psSlsgGyXJV3XVcxDtYQh3HUuW	2021-11-25 23:46:23	2021-11-25 23:46:23
3	13010049	ari	$2y$10$Z41Pdwmv0N1Zu/xLOBCgmeqFXIwhDJZr5s1FTlGGD5JFvloJyZxIW	2021-11-25 23:46:53	2021-11-25 23:46:53
4	12010044	susi	$2y$10$jsP5F.tn3Lv..i.BMpD4y./zpcDwQMrWqNT8/3v9GiMXsYwQ./BiK	2021-11-25 23:47:14	2021-11-25 23:47:14
5	1301151	medi	$2y$10$Psqb9Umk8YUqU1V4B1eji.vD4pKCA8bovPaHXVOae2UOFWxMoMy2W	2021-11-26 01:05:30	2021-11-26 01:05:30
\.


--
-- Name: attendances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.attendances_id_seq', 2, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.migrations_id_seq', 66, true);


--
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.permissions_id_seq', 2, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);


--
-- Name: user_infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.user_infos_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: adminlapi
--

SELECT pg_catalog.setval('public.users_id_seq', 5, true);


--
-- Name: attendances attendances_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.attendances
    ADD CONSTRAINT attendances_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: permissions permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_token_unique; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);


--
-- Name: user_infos user_infos_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.user_infos
    ADD CONSTRAINT user_infos_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: adminlapi
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: adminlapi
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: personal_access_tokens_tokenable_type_tokenable_id_index; Type: INDEX; Schema: public; Owner: adminlapi
--

CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);


--
-- PostgreSQL database dump complete
--

