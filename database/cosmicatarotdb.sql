--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-30 22:03:06

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
-- TOC entry 207 (class 1259 OID 32823)
-- Name: comenthoroscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comenthoroscopo (
    text character varying(200),
    fechcreation timestamp with time zone NOT NULL,
    id integer NOT NULL,
    iduser integer NOT NULL,
    idtiposigno integer NOT NULL,
    idsigno integer NOT NULL
);


ALTER TABLE public.comenthoroscopo OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 73796)
-- Name: comenthoroscopo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comenthoroscopo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comenthoroscopo_id_seq OWNER TO postgres;

--
-- TOC entry 3114 (class 0 OID 0)
-- Dependencies: 210
-- Name: comenthoroscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comenthoroscopo_id_seq OWNED BY public.comenthoroscopo.id;


--
-- TOC entry 203 (class 1259 OID 24586)
-- Name: comentspost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentspost (
    textcoment character varying(1000) NOT NULL,
    fechacoment timestamp with time zone NOT NULL,
    id integer NOT NULL,
    idsigno integer,
    iduser integer,
    idtiposigno integer
);


ALTER TABLE public.comentspost OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 73823)
-- Name: comentspost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentspost_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentspost_id_seq OWNER TO postgres;

--
-- TOC entry 3115 (class 0 OID 0)
-- Dependencies: 211
-- Name: comentspost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentspost_id_seq OWNED BY public.comentspost.id;


--
-- TOC entry 204 (class 1259 OID 24603)
-- Name: comprasesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprasesion (
    price real NOT NULL,
    id integer NOT NULL,
    iduser integer NOT NULL,
    name bit varying(100) NOT NULL
);


ALTER TABLE public.comprasesion OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 73852)
-- Name: comprasesion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comprasesion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comprasesion_id_seq OWNER TO postgres;

--
-- TOC entry 3116 (class 0 OID 0)
-- Dependencies: 212
-- Name: comprasesion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comprasesion_id_seq OWNED BY public.comprasesion.id;


--
-- TOC entry 213 (class 1259 OID 73858)
-- Name: comprasesion_iduser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comprasesion_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comprasesion_iduser_seq OWNER TO postgres;

--
-- TOC entry 3117 (class 0 OID 0)
-- Dependencies: 213
-- Name: comprasesion_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comprasesion_iduser_seq OWNED BY public.comprasesion.iduser;


--
-- TOC entry 206 (class 1259 OID 24621)
-- Name: horoscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horoscopo (
    nombre character varying(20) NOT NULL,
    startfecha timestamp without time zone NOT NULL,
    endfecha timestamp without time zone NOT NULL,
    id integer NOT NULL,
    idtipo integer
);


ALTER TABLE public.horoscopo OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 73866)
-- Name: horoscopo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horoscopo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horoscopo_id_seq OWNER TO postgres;

--
-- TOC entry 3118 (class 0 OID 0)
-- Dependencies: 214
-- Name: horoscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horoscopo_id_seq OWNED BY public.horoscopo.id;


--
-- TOC entry 220 (class 1259 OID 90124)
-- Name: imgposteo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.imgposteo (
    id bigint NOT NULL,
    nombre character varying NOT NULL,
    idpost integer NOT NULL
);


ALTER TABLE public.imgposteo OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 90122)
-- Name: imgposteo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.imgposteo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imgposteo_id_seq OWNER TO postgres;

--
-- TOC entry 3119 (class 0 OID 0)
-- Dependencies: 219
-- Name: imgposteo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.imgposteo_id_seq OWNED BY public.imgposteo.id;


--
-- TOC entry 208 (class 1259 OID 41009)
-- Name: posteohoroscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posteohoroscopo (
    meshoroscopo timestamp without time zone NOT NULL,
    text character varying(2000) NOT NULL,
    id integer NOT NULL,
    idsigno integer,
    idtiposigno integer,
    iduser integer
);


ALTER TABLE public.posteohoroscopo OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 73881)
-- Name: posteohoroscopo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteohoroscopo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteohoroscopo_id_seq OWNER TO postgres;

--
-- TOC entry 3120 (class 0 OID 0)
-- Dependencies: 215
-- Name: posteohoroscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteohoroscopo_id_seq OWNED BY public.posteohoroscopo.id;


--
-- TOC entry 201 (class 1259 OID 16406)
-- Name: posteos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posteos (
    title character varying(100) NOT NULL,
    subtitle character varying(200),
    img character varying(300),
    contenido character varying(1000) NOT NULL,
    fechcreation timestamp with time zone NOT NULL,
    id integer NOT NULL,
    idsigno integer,
    idtiposigno integer,
    idcoments integer
);


ALTER TABLE public.posteos OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 73919)
-- Name: posteos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteos_id_seq OWNER TO postgres;

--
-- TOC entry 3121 (class 0 OID 0)
-- Dependencies: 216
-- Name: posteos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteos_id_seq OWNED BY public.posteos.id;


--
-- TOC entry 202 (class 1259 OID 16414)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    nombre character varying(100),
    id integer NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 73958)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- TOC entry 3122 (class 0 OID 0)
-- Dependencies: 217
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 205 (class 1259 OID 24611)
-- Name: tiposigno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiposigno (
    signo character varying(20) NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.tiposigno OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 73966)
-- Name: tiposigno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tiposigno_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tiposigno_id_seq OWNER TO postgres;

--
-- TOC entry 3123 (class 0 OID 0)
-- Dependencies: 218
-- Name: tiposigno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tiposigno_id_seq OWNED BY public.tiposigno.id;


--
-- TOC entry 200 (class 1259 OID 16398)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    nameuser character varying(50) NOT NULL,
    fechanac timestamp without time zone NOT NULL,
    rol character varying(100) NOT NULL,
    nation character varying(100),
    avatar character varying(200),
    description character varying(300),
    password character varying(200) NOT NULL,
    mail character varying(100) NOT NULL,
    id integer NOT NULL,
    idsigno integer,
    idtiposigno integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 73767)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3124 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2919 (class 2604 OID 73798)
-- Name: comenthoroscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo ALTER COLUMN id SET DEFAULT nextval('public.comenthoroscopo_id_seq'::regclass);


--
-- TOC entry 2914 (class 2604 OID 73825)
-- Name: comentspost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost ALTER COLUMN id SET DEFAULT nextval('public.comentspost_id_seq'::regclass);


--
-- TOC entry 2915 (class 2604 OID 73854)
-- Name: comprasesion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion ALTER COLUMN id SET DEFAULT nextval('public.comprasesion_id_seq'::regclass);


--
-- TOC entry 2916 (class 2604 OID 73860)
-- Name: comprasesion iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion ALTER COLUMN iduser SET DEFAULT nextval('public.comprasesion_iduser_seq'::regclass);


--
-- TOC entry 2918 (class 2604 OID 73868)
-- Name: horoscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo ALTER COLUMN id SET DEFAULT nextval('public.horoscopo_id_seq'::regclass);


--
-- TOC entry 2921 (class 2604 OID 90127)
-- Name: imgposteo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imgposteo ALTER COLUMN id SET DEFAULT nextval('public.imgposteo_id_seq'::regclass);


--
-- TOC entry 2920 (class 2604 OID 73883)
-- Name: posteohoroscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo ALTER COLUMN id SET DEFAULT nextval('public.posteohoroscopo_id_seq'::regclass);


--
-- TOC entry 2912 (class 2604 OID 73921)
-- Name: posteos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos ALTER COLUMN id SET DEFAULT nextval('public.posteos_id_seq'::regclass);


--
-- TOC entry 2913 (class 2604 OID 73960)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 2917 (class 2604 OID 73968)
-- Name: tiposigno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposigno ALTER COLUMN id SET DEFAULT nextval('public.tiposigno_id_seq'::regclass);


--
-- TOC entry 2911 (class 2604 OID 73769)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3095 (class 0 OID 32823)
-- Dependencies: 207
-- Data for Name: comenthoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comenthoroscopo (text, fechcreation, id, iduser, idtiposigno, idsigno) FROM stdin;
\.


--
-- TOC entry 3091 (class 0 OID 24586)
-- Dependencies: 203
-- Data for Name: comentspost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentspost (textcoment, fechacoment, id, idsigno, iduser, idtiposigno) FROM stdin;
\.


--
-- TOC entry 3092 (class 0 OID 24603)
-- Dependencies: 204
-- Data for Name: comprasesion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comprasesion (price, id, iduser, name) FROM stdin;
\.


--
-- TOC entry 3094 (class 0 OID 24621)
-- Dependencies: 206
-- Data for Name: horoscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horoscopo (nombre, startfecha, endfecha, id, idtipo) FROM stdin;
Acuario	2021-01-21 00:00:00	2021-02-19 00:00:00	1	2
Piscis	2021-02-20 00:00:00	2021-03-20 00:00:00	2	3
Aries	2021-03-21 00:00:00	2021-04-20 00:00:00	3	4
Tauro	2021-04-21 00:00:00	2021-05-20 00:00:00	4	1
Geminis	2021-01-21 00:00:00	2021-06-21 00:00:00	5	2
Cancer	2021-06-22 00:00:00	2021-07-22 00:00:00	6	3
Leo	2021-07-23 00:00:00	2021-08-23 00:00:00	7	4
Virgo	2021-08-21 00:00:00	2021-09-22 00:00:00	8	1
Libra	2021-09-23 00:00:00	2021-10-22 00:00:00	9	2
Escorpio	2021-10-23 00:00:00	2021-11-22 00:00:00	10	3
Sagitario	2021-11-23 00:00:00	2021-12-21 00:00:00	11	4
Capricornio	2020-12-22 00:00:00	2021-01-20 00:00:00	12	1
\.


--
-- TOC entry 3108 (class 0 OID 90124)
-- Dependencies: 220
-- Data for Name: imgposteo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.imgposteo (id, nombre, idpost) FROM stdin;
\.


--
-- TOC entry 3096 (class 0 OID 41009)
-- Dependencies: 208
-- Data for Name: posteohoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteohoroscopo (meshoroscopo, text, id, idsigno, idtiposigno, iduser) FROM stdin;
\.


--
-- TOC entry 3089 (class 0 OID 16406)
-- Dependencies: 201
-- Data for Name: posteos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteos (title, subtitle, img, contenido, fechcreation, id, idsigno, idtiposigno, idcoments) FROM stdin;
\.


--
-- TOC entry 3090 (class 0 OID 16414)
-- Dependencies: 202
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (nombre, id) FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 24611)
-- Dependencies: 205
-- Data for Name: tiposigno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiposigno (signo, id) FROM stdin;
Tierra	1
Aire	2
Agua	3
Fuego	4
\.


--
-- TOC entry 3088 (class 0 OID 16398)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (nameuser, fechanac, rol, nation, avatar, description, password, mail, id, idsigno, idtiposigno) FROM stdin;
RobertV	1992-07-07 00:00:00	usuario	\N	default.png	\N	$2b$10$fad6dSJLJTLl.oHI1BD5L.2NMC/NUZN1G7ON7gEFpDgxyKhYex21a	robert_lean@live.com.ar	17	\N	\N
Leandro	1992-07-07 00:00:00	usuario	\N	default.png	\N	$2b$10$pWEA6s/jDeSO25TqLyRxw.lknsYT0TQftjDQH5KsrzfWDns6WiAjW	robertlean@hotmail.com	18	\N	\N
RobertLean	1992-07-07 00:00:00	usuario	\N	default.png	\N	$2b$10$BAnXNbX/lncta2aGWiQhYeBvH45tOspgNYu8ZN/tCV2CMA7K5umRu	robert@lean.com	19	\N	\N
leandrito	1992-07-07 00:00:00	usuario	\N	default.png	\N	$2b$10$lPn6yN1mk.eL3KbN3ERziel4FiAOzJMB/wU7kmE/epi0E3d4mcXNa	robertlean@live.com.ar	20	\N	\N
AndreP	1992-02-23 00:00:00	usuario	\N	default.png	\N	$2b$10$7TvtE4t9g2Nla/2UEQKt..DufhVJ6cvfixgpBla6RWxyFpkafLV0K	andrep@hotmail.com	21	\N	\N
homero	1969-03-15 00:00:00	usuario	\N	default.png	\N	$2b$10$Y138P6lIptIUtMm7er/uve3rW0MZRgSFUdA72hZNAJl3t6W91B/pW	homerosimpsons@hotmail.com	22	\N	\N
homerosim	1960-10-30 00:00:00	usuario	\N	default.png	\N	$2b$10$0Xo4fzbglnsmpOz91NXlCu1dNXER5yqUxR0HdMapyRFp45FF/l4iu	homerojsimpsons@hotmail.com	23	11	\N
violeta	2020-12-31 00:00:00	usuario	\N	default.png	\N	$2b$10$3W4YnMXIKOWrRG9yXgJV6uNeAdNIh6t8T6/Qu.7GRltCaVvIe7XHe	violet@hotmail.com	25	12	1
violetabulma	2000-12-12 00:00:00	usuario	\N	default.png	\N	$2b$10$5KTPFTJJwJy3esGg6CEAaOHSGnEtSi4YC7Ik6a9/dCe07zh03o9Sm	violetaBulma@hotmail.com	26	11	4
PabloLescano	1982-11-07 00:00:00	usuario	\N	default.png	\N	$2b$10$r2htBNqEWrT0/KZ0qadsPOQo6Hv3pG2ZnkYZYXCvHwWZDhK9vyMv6	pablolescano@hotmail.com	27	10	3
robertVe	1992-07-07 00:00:00	admin	\N	default.png	\N	$2b$10$uMKSoAUHa2Jtl8eely829.YrKgq672J7PR.M4STBQK20Nv0NYgZju	robertVe@hotmail.com	24	7	\N
Sofia Monzón	1997-04-11 00:00:00	usuario	\N	default.png	\N	$2b$10$QYkSWzVXpjYJDc8Hi2NbVu5.dS4ZU3zD.eQN4IidiLAPA7aVoNjYu	sofiamonzon@hotmail.com	28	3	4
\.


--
-- TOC entry 3125 (class 0 OID 0)
-- Dependencies: 210
-- Name: comenthoroscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comenthoroscopo_id_seq', 1, false);


--
-- TOC entry 3126 (class 0 OID 0)
-- Dependencies: 211
-- Name: comentspost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentspost_id_seq', 1, false);


--
-- TOC entry 3127 (class 0 OID 0)
-- Dependencies: 212
-- Name: comprasesion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comprasesion_id_seq', 1, false);


--
-- TOC entry 3128 (class 0 OID 0)
-- Dependencies: 213
-- Name: comprasesion_iduser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comprasesion_iduser_seq', 1, false);


--
-- TOC entry 3129 (class 0 OID 0)
-- Dependencies: 214
-- Name: horoscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horoscopo_id_seq', 14, true);


--
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 219
-- Name: imgposteo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.imgposteo_id_seq', 1, false);


--
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 215
-- Name: posteohoroscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteohoroscopo_id_seq', 1, false);


--
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 216
-- Name: posteos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteos_id_seq', 1, false);


--
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 217
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 218
-- Name: tiposigno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiposigno_id_seq', 4, true);


--
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 28, true);


--
-- TOC entry 2937 (class 2606 OID 73821)
-- Name: comenthoroscopo comenthoroscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT comenthoroscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2929 (class 2606 OID 73851)
-- Name: comentspost comentspost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT comentspost_pkey PRIMARY KEY (id);


--
-- TOC entry 2931 (class 2606 OID 73865)
-- Name: comprasesion comprasesion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT comprasesion_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 73879)
-- Name: horoscopo horoscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT horoscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 90132)
-- Name: imgposteo imgposteo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imgposteo
    ADD CONSTRAINT imgposteo_pkey PRIMARY KEY (id);


--
-- TOC entry 2939 (class 2606 OID 73918)
-- Name: posteohoroscopo posteohoroscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2925 (class 2606 OID 73956)
-- Name: posteos posteos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_pkey PRIMARY KEY (id);


--
-- TOC entry 2927 (class 2606 OID 73965)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2933 (class 2606 OID 73973)
-- Name: tiposigno tiposigno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposigno
    ADD CONSTRAINT tiposigno_pkey PRIMARY KEY (id);


--
-- TOC entry 2923 (class 2606 OID 73795)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2947 (class 2606 OID 81955)
-- Name: comentspost comentspost_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT comentspost_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2948 (class 2606 OID 81960)
-- Name: comentspost comentspost_idtiposigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT comentspost_idtiposigno_fkey FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2946 (class 2606 OID 81950)
-- Name: comentspost comentspost_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT comentspost_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2949 (class 2606 OID 81965)
-- Name: comprasesion comprasesion_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT comprasesion_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2950 (class 2606 OID 81970)
-- Name: horoscopo horoscopo_idtipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT horoscopo_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2953 (class 2606 OID 81940)
-- Name: comenthoroscopo idsigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2952 (class 2606 OID 81935)
-- Name: comenthoroscopo idtiposigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2951 (class 2606 OID 81930)
-- Name: comenthoroscopo iduser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2957 (class 2606 OID 90133)
-- Name: imgposteo imgposteo_idpost_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.imgposteo
    ADD CONSTRAINT imgposteo_idpost_fkey FOREIGN KEY (idpost) REFERENCES public.posteos(id);


--
-- TOC entry 2954 (class 2606 OID 81975)
-- Name: posteohoroscopo posteohoroscopo_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2955 (class 2606 OID 81980)
-- Name: posteohoroscopo posteohoroscopo_idtiposigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_idtiposigno_fkey FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2956 (class 2606 OID 81985)
-- Name: posteohoroscopo posteohoroscopo_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2945 (class 2606 OID 82000)
-- Name: posteos posteos_idcoments_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idcoments_fkey FOREIGN KEY (idcoments) REFERENCES public.comentspost(id) NOT VALID;


--
-- TOC entry 2943 (class 2606 OID 81990)
-- Name: posteos posteos_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2944 (class 2606 OID 81995)
-- Name: posteos posteos_idtiposigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idtiposigno_fkey FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2942 (class 2606 OID 82005)
-- Name: users users_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


-- Completed on 2021-03-30 22:03:13

--
-- PostgreSQL database dump complete
--

