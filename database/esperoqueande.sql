--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.1

-- Started on 2021-03-04 23:36:10

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
    id integer NOT NULL,
    iduser integer NOT NULL,
    idsigno integer NOT NULL,
    text character varying(200),
    fechcreation timestamp with time zone NOT NULL,
    idtiposigno integer NOT NULL
);


ALTER TABLE public.comenthoroscopo OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24586)
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
-- TOC entry 204 (class 1259 OID 24603)
-- Name: comprasesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprasesion (
    id integer NOT NULL,
    price real NOT NULL,
    "idComrpador" integer NOT NULL
);


ALTER TABLE public.comprasesion OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24621)
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
-- TOC entry 201 (class 1259 OID 16406)
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
-- TOC entry 202 (class 1259 OID 16414)
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    "IdTags" integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24611)
-- Name: tiposigno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tiposigno (
    id integer NOT NULL,
    signo character varying(20) NOT NULL
);


ALTER TABLE public.tiposigno OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16398)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    "nameUser" character varying(50) NOT NULL,
    "fechaNac" date NOT NULL,
    "rolUser" character varying(100) NOT NULL,
    nation character varying(100) NOT NULL,
    "fotoUser" character varying(200),
    description character varying(300),
    id integer NOT NULL,
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL,
    password character varying(200) NOT NULL,
    mail character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 32823)
-- Dependencies: 207
-- Data for Name: comenthoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comenthoroscopo (id, iduser, idsigno, text, fechcreation, idtiposigno) FROM stdin;
\.


--
-- TOC entry 3038 (class 0 OID 24586)
-- Dependencies: 203
-- Data for Name: comentspost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentspost ("IdComent", "fechaComent", "textComent", iduser, fechacoment, text, idsigno) FROM stdin;
\.


--
-- TOC entry 3039 (class 0 OID 24603)
-- Dependencies: 204
-- Data for Name: comprasesion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comprasesion (id, price, "idComrpador") FROM stdin;
\.


--
-- TOC entry 3041 (class 0 OID 24621)
-- Dependencies: 206
-- Data for Name: horoscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horoscopo (id, nombre, idtipo, startfecha, endfecha) FROM stdin;
2	Acuario	2	2021-01-21	2021-02-19
3	Piscis	3	2021-02-20	2021-03-20
4	Aries	4	2021-03-21	2021-04-20
5	Tauro	1	2021-04-21	2021-05-20
6	Geminis	2	2021-01-21	2021-06-21
7	Cancer	3	2021-06-22	2021-07-22
8	Leo	4	2021-07-23	2021-08-23
9	Virgo	1	2021-08-21	2021-09-22
10	Libra	2	2021-09-23	2021-10-22
11	Escorpio	3	2021-10-23	2021-11-22
12	Sagitario	4	2021-11-23	2021-12-21
1	Capricornio	1	2020-12-22	2021-01-20
\.


--
-- TOC entry 3036 (class 0 OID 16406)
-- Dependencies: 201
-- Data for Name: posteos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteos (id, title, subtitle, img, contenido, fechcreation, idtags, idsigno, idcoment) FROM stdin;
\.


--
-- TOC entry 3037 (class 0 OID 16414)
-- Dependencies: 202
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags ("IdTags", nombre) FROM stdin;
\.


--
-- TOC entry 3040 (class 0 OID 24611)
-- Dependencies: 205
-- Data for Name: tiposigno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tiposigno (id, signo) FROM stdin;
1	Tierra
2	Aire
3	Agua
4	Fuego
\.


--
-- TOC entry 3035 (class 0 OID 16398)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users ("nameUser", "fechaNac", "rolUser", nation, "fotoUser", description, id, idsigno, idtiposigno, password, mail) FROM stdin;
\.


--
-- TOC entry 2886 (class 2606 OID 24590)
-- Name: comentspost ComentsPost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT "ComentsPost_pkey" PRIMARY KEY ("IdComent");


--
-- TOC entry 2890 (class 2606 OID 24625)
-- Name: horoscopo Horoscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT "Horoscopo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2882 (class 2606 OID 16413)
-- Name: posteos Posteos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "Posteos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 16418)
-- Name: tags Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY ("IdTags");


--
-- TOC entry 2888 (class 2606 OID 24615)
-- Name: tiposigno TipoSigno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposigno
    ADD CONSTRAINT "TipoSigno_pkey" PRIMARY KEY (id);


--
-- TOC entry 2892 (class 2606 OID 32827)
-- Name: comenthoroscopo comenthoroscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT comenthoroscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2880 (class 2606 OID 24597)
-- Name: users id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- TOC entry 2895 (class 2606 OID 32778)
-- Name: posteos idComent; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "idComent" FOREIGN KEY (idcoment) REFERENCES public.comentspost("IdComent") NOT VALID;


--
-- TOC entry 2900 (class 2606 OID 24606)
-- Name: comprasesion idComprador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT "idComprador" FOREIGN KEY ("idComrpador") REFERENCES public.users(id);


--
-- TOC entry 2897 (class 2606 OID 32788)
-- Name: posteos idSigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "idSigno" FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2901 (class 2606 OID 24626)
-- Name: horoscopo idTipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT "idTipo" FOREIGN KEY (idtipo) REFERENCES public.tiposigno(id);


--
-- TOC entry 2893 (class 2606 OID 32793)
-- Name: users idsigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2898 (class 2606 OID 32818)
-- Name: comentspost idsigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2903 (class 2606 OID 32833)
-- Name: comenthoroscopo idsigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.users(id);


--
-- TOC entry 2896 (class 2606 OID 32783)
-- Name: posteos idtag; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT idtag FOREIGN KEY (idtags) REFERENCES public.tags("IdTags") NOT VALID;


--
-- TOC entry 2894 (class 2606 OID 32798)
-- Name: users idtiposigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2904 (class 2606 OID 32838)
-- Name: comenthoroscopo idtiposigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2902 (class 2606 OID 32828)
-- Name: comenthoroscopo iduser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id);


--
-- TOC entry 2899 (class 2606 OID 32843)
-- Name: comentspost iduser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


-- Completed on 2021-03-04 23:36:13

--
-- PostgreSQL database dump complete
--

