--
-- PostgreSQL database dump
--

-- Dumped from database version 10.16
-- Dumped by pg_dump version 13.1

-- Started on 2021-03-17 17:22:34

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

--
-- TOC entry 196 (class 1259 OID 16395)
-- Name: comenthoroscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comenthoroscopo (
    id integer NOT NULL,
    iduser integer NOT NULL,
    idsigno integer NOT NULL,
    text character varying(200),
    fechcreation timestamp with time zone NOT NULL,
    idtiposigno integer NOT NULL
);


ALTER TABLE public.comenthoroscopo OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16437)
-- Name: comentspost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentspost (
    "IdComent" bigint NOT NULL,
    "fechaComent" timestamp without time zone NOT NULL,
    "textComent" character varying(200) NOT NULL,
    iduser integer NOT NULL,
    fechacoment timestamp with time zone NOT NULL,
    text character varying(500) NOT NULL,
    idsigno integer NOT NULL
);


ALTER TABLE public.comentspost OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16443)
-- Name: comprasesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprasesion (
    id integer NOT NULL,
    price real NOT NULL,
    "idComrpador" integer NOT NULL
);


ALTER TABLE public.comprasesion OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16434)
-- Name: horoscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horoscopo (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    idtipo integer NOT NULL,
    startfecha date NOT NULL,
    endfecha date NOT NULL
);


ALTER TABLE public.horoscopo OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16446)
-- Name: posteohoroscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posteohoroscopo (
    id integer NOT NULL,
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL,
    meshoroscopo timestamp without time zone NOT NULL,
    text character varying(2000) NOT NULL,
    idcoments integer
);


ALTER TABLE public.posteohoroscopo OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16452)
-- Name: posteos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posteos (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    subtitle character varying(200),
    img character varying(300),
    contenido character varying(1000) NOT NULL,
    fechcreation date NOT NULL,
    idtags integer,
    idsigno integer NOT NULL,
    idcoment integer
);


ALTER TABLE public.posteos OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16458)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    "IdTags" integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16478)
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    coltest character varying(20)
);


ALTER TABLE public.test OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16461)
-- Name: tiposigno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiposigno (
    id integer NOT NULL,
    signo character varying(20) NOT NULL
);


ALTER TABLE public.tiposigno OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16464)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    nameuser character varying(50) NOT NULL,
    fechanac timestamp without time zone NOT NULL,
    rol character varying(100),
    nation character varying(100),
    avatar character varying(200),
    description character varying(300),
    id integer NOT NULL,
    idsigno integer,
    idtiposigno integer,
    password character varying(200) NOT NULL,
    mail character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 2829 (class 0 OID 16395)
-- Dependencies: 196
-- Data for Name: comenthoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comenthoroscopo (id, iduser, idsigno, text, fechcreation, idtiposigno) FROM stdin;
\.


--
-- TOC entry 2831 (class 0 OID 16437)
-- Dependencies: 198
-- Data for Name: comentspost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentspost ("IdComent", "fechaComent", "textComent", iduser, fechacoment, text, idsigno) FROM stdin;
\.


--
-- TOC entry 2832 (class 0 OID 16443)
-- Dependencies: 199
-- Data for Name: comprasesion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comprasesion (id, price, "idComrpador") FROM stdin;
\.


--
-- TOC entry 2830 (class 0 OID 16434)
-- Dependencies: 197
-- Data for Name: horoscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horoscopo (id, nombre, idtipo, startfecha, endfecha) FROM stdin;
\.


--
-- TOC entry 2833 (class 0 OID 16446)
-- Dependencies: 200
-- Data for Name: posteohoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteohoroscopo (id, idsigno, idtiposigno, meshoroscopo, text, idcoments) FROM stdin;
\.


--
-- TOC entry 2834 (class 0 OID 16452)
-- Dependencies: 201
-- Data for Name: posteos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteos (id, title, subtitle, img, contenido, fechcreation, idtags, idsigno, idcoment) FROM stdin;
\.


--
-- TOC entry 2835 (class 0 OID 16458)
-- Dependencies: 202
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags ("IdTags", nombre) FROM stdin;
\.


--
-- TOC entry 2838 (class 0 OID 16478)
-- Dependencies: 205
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (coltest) FROM stdin;
It works
\.


--
-- TOC entry 2836 (class 0 OID 16461)
-- Dependencies: 203
-- Data for Name: tiposigno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiposigno (id, signo) FROM stdin;
\.


--
-- TOC entry 2837 (class 0 OID 16464)
-- Dependencies: 204
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (nameuser, fechanac, rol, nation, avatar, description, id, idsigno, idtiposigno, password, mail) FROM stdin;
\.


-- Completed on 2021-03-17 17:22:40

--
-- PostgreSQL database dump complete
--

