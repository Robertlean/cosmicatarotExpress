--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-03-18 00:32:17

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
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL
);


ALTER TABLE public.comenthoroscopo OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 73796)
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
-- TOC entry 3153 (class 0 OID 0)
-- Dependencies: 212
-- Name: comenthoroscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comenthoroscopo_id_seq OWNED BY public.comenthoroscopo.id;


--
-- TOC entry 214 (class 1259 OID 73808)
-- Name: comenthoroscopo_idsigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comenthoroscopo_idsigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comenthoroscopo_idsigno_seq OWNER TO postgres;

--
-- TOC entry 3154 (class 0 OID 0)
-- Dependencies: 214
-- Name: comenthoroscopo_idsigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comenthoroscopo_idsigno_seq OWNED BY public.comenthoroscopo.idsigno;


--
-- TOC entry 215 (class 1259 OID 73814)
-- Name: comenthoroscopo_idtiposigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comenthoroscopo_idtiposigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comenthoroscopo_idtiposigno_seq OWNER TO postgres;

--
-- TOC entry 3155 (class 0 OID 0)
-- Dependencies: 215
-- Name: comenthoroscopo_idtiposigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comenthoroscopo_idtiposigno_seq OWNED BY public.comenthoroscopo.idtiposigno;


--
-- TOC entry 213 (class 1259 OID 73802)
-- Name: comenthoroscopo_iduser_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comenthoroscopo_iduser_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comenthoroscopo_iduser_seq OWNER TO postgres;

--
-- TOC entry 3156 (class 0 OID 0)
-- Dependencies: 213
-- Name: comenthoroscopo_iduser_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comenthoroscopo_iduser_seq OWNED BY public.comenthoroscopo.iduser;


--
-- TOC entry 203 (class 1259 OID 24586)
-- Name: comentspost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comentspost (
    textcoment character varying(1000) NOT NULL,
    fechacoment timestamp with time zone NOT NULL,
    id integer NOT NULL,
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL
);


ALTER TABLE public.comentspost OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 73823)
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
-- TOC entry 3157 (class 0 OID 0)
-- Dependencies: 216
-- Name: comentspost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentspost_id_seq OWNED BY public.comentspost.id;


--
-- TOC entry 217 (class 1259 OID 73832)
-- Name: comentspost_idsigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentspost_idsigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentspost_idsigno_seq OWNER TO postgres;

--
-- TOC entry 3158 (class 0 OID 0)
-- Dependencies: 217
-- Name: comentspost_idsigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentspost_idsigno_seq OWNED BY public.comentspost.idsigno;


--
-- TOC entry 218 (class 1259 OID 73841)
-- Name: comentspost_idtiposigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comentspost_idtiposigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comentspost_idtiposigno_seq OWNER TO postgres;

--
-- TOC entry 3159 (class 0 OID 0)
-- Dependencies: 218
-- Name: comentspost_idtiposigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comentspost_idtiposigno_seq OWNED BY public.comentspost.idtiposigno;


--
-- TOC entry 204 (class 1259 OID 24603)
-- Name: comprasesion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comprasesion (
    price real NOT NULL,
    id integer NOT NULL,
    iduser integer NOT NULL
);


ALTER TABLE public.comprasesion OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 73852)
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
-- TOC entry 3160 (class 0 OID 0)
-- Dependencies: 219
-- Name: comprasesion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comprasesion_id_seq OWNED BY public.comprasesion.id;


--
-- TOC entry 220 (class 1259 OID 73858)
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
-- TOC entry 3161 (class 0 OID 0)
-- Dependencies: 220
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
    idtipo integer NOT NULL
);


ALTER TABLE public.horoscopo OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 73866)
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
-- TOC entry 3162 (class 0 OID 0)
-- Dependencies: 221
-- Name: horoscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horoscopo_id_seq OWNED BY public.horoscopo.id;


--
-- TOC entry 222 (class 1259 OID 73872)
-- Name: horoscopo_idtipo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horoscopo_idtipo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horoscopo_idtipo_seq OWNER TO postgres;

--
-- TOC entry 3163 (class 0 OID 0)
-- Dependencies: 222
-- Name: horoscopo_idtipo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horoscopo_idtipo_seq OWNED BY public.horoscopo.idtipo;


--
-- TOC entry 208 (class 1259 OID 41009)
-- Name: posteohoroscopo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.posteohoroscopo (
    meshoroscopo timestamp without time zone NOT NULL,
    text character varying(2000) NOT NULL,
    id integer NOT NULL,
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL,
    idcoments integer NOT NULL
);


ALTER TABLE public.posteohoroscopo OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 73881)
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
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 223
-- Name: posteohoroscopo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteohoroscopo_id_seq OWNED BY public.posteohoroscopo.id;


--
-- TOC entry 226 (class 1259 OID 73908)
-- Name: posteohoroscopo_idcoments_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteohoroscopo_idcoments_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteohoroscopo_idcoments_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 226
-- Name: posteohoroscopo_idcoments_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteohoroscopo_idcoments_seq OWNED BY public.posteohoroscopo.idcoments;


--
-- TOC entry 224 (class 1259 OID 73890)
-- Name: posteohoroscopo_idsigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteohoroscopo_idsigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteohoroscopo_idsigno_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 224
-- Name: posteohoroscopo_idsigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteohoroscopo_idsigno_seq OWNED BY public.posteohoroscopo.idsigno;


--
-- TOC entry 225 (class 1259 OID 73899)
-- Name: posteohoroscopo_idtiposigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteohoroscopo_idtiposigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteohoroscopo_idtiposigno_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 225
-- Name: posteohoroscopo_idtiposigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteohoroscopo_idtiposigno_seq OWNED BY public.posteohoroscopo.idtiposigno;


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
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL,
    idcoments integer NOT NULL
);


ALTER TABLE public.posteos OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 73919)
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
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 227
-- Name: posteos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteos_id_seq OWNED BY public.posteos.id;


--
-- TOC entry 230 (class 1259 OID 73946)
-- Name: posteos_idcoments_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteos_idcoments_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteos_idcoments_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 230
-- Name: posteos_idcoments_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteos_idcoments_seq OWNED BY public.posteos.idcoments;


--
-- TOC entry 228 (class 1259 OID 73928)
-- Name: posteos_idsigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteos_idsigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteos_idsigno_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 228
-- Name: posteos_idsigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteos_idsigno_seq OWNED BY public.posteos.idsigno;


--
-- TOC entry 229 (class 1259 OID 73937)
-- Name: posteos_idtiposigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.posteos_idtiposigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posteos_idtiposigno_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 229
-- Name: posteos_idtiposigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.posteos_idtiposigno_seq OWNED BY public.posteos.idtiposigno;


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
-- TOC entry 231 (class 1259 OID 73958)
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
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 231
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
-- TOC entry 232 (class 1259 OID 73966)
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
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 232
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
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL
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
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 210 (class 1259 OID 73776)
-- Name: users_idsigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_idsigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_idsigno_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 210
-- Name: users_idsigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_idsigno_seq OWNED BY public.users.idsigno;


--
-- TOC entry 211 (class 1259 OID 73785)
-- Name: users_idtiposigno_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_idtiposigno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_idtiposigno_seq OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_idtiposigno_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_idtiposigno_seq OWNED BY public.users.idtiposigno;


--
-- TOC entry 2948 (class 2604 OID 73798)
-- Name: comenthoroscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo ALTER COLUMN id SET DEFAULT nextval('public.comenthoroscopo_id_seq'::regclass);


--
-- TOC entry 2949 (class 2604 OID 73804)
-- Name: comenthoroscopo iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo ALTER COLUMN iduser SET DEFAULT nextval('public.comenthoroscopo_iduser_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 73810)
-- Name: comenthoroscopo idsigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo ALTER COLUMN idsigno SET DEFAULT nextval('public.comenthoroscopo_idsigno_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 73816)
-- Name: comenthoroscopo idtiposigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo ALTER COLUMN idtiposigno SET DEFAULT nextval('public.comenthoroscopo_idtiposigno_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 73825)
-- Name: comentspost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost ALTER COLUMN id SET DEFAULT nextval('public.comentspost_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 73834)
-- Name: comentspost idsigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost ALTER COLUMN idsigno SET DEFAULT nextval('public.comentspost_idsigno_seq'::regclass);


--
-- TOC entry 2942 (class 2604 OID 73843)
-- Name: comentspost idtiposigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost ALTER COLUMN idtiposigno SET DEFAULT nextval('public.comentspost_idtiposigno_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 73854)
-- Name: comprasesion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion ALTER COLUMN id SET DEFAULT nextval('public.comprasesion_id_seq'::regclass);


--
-- TOC entry 2944 (class 2604 OID 73860)
-- Name: comprasesion iduser; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion ALTER COLUMN iduser SET DEFAULT nextval('public.comprasesion_iduser_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 73868)
-- Name: horoscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo ALTER COLUMN id SET DEFAULT nextval('public.horoscopo_id_seq'::regclass);


--
-- TOC entry 2947 (class 2604 OID 73874)
-- Name: horoscopo idtipo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo ALTER COLUMN idtipo SET DEFAULT nextval('public.horoscopo_idtipo_seq'::regclass);


--
-- TOC entry 2952 (class 2604 OID 73883)
-- Name: posteohoroscopo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo ALTER COLUMN id SET DEFAULT nextval('public.posteohoroscopo_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 73892)
-- Name: posteohoroscopo idsigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo ALTER COLUMN idsigno SET DEFAULT nextval('public.posteohoroscopo_idsigno_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 73901)
-- Name: posteohoroscopo idtiposigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo ALTER COLUMN idtiposigno SET DEFAULT nextval('public.posteohoroscopo_idtiposigno_seq'::regclass);


--
-- TOC entry 2955 (class 2604 OID 73910)
-- Name: posteohoroscopo idcoments; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo ALTER COLUMN idcoments SET DEFAULT nextval('public.posteohoroscopo_idcoments_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 73921)
-- Name: posteos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos ALTER COLUMN id SET DEFAULT nextval('public.posteos_id_seq'::regclass);


--
-- TOC entry 2936 (class 2604 OID 73930)
-- Name: posteos idsigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos ALTER COLUMN idsigno SET DEFAULT nextval('public.posteos_idsigno_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 73939)
-- Name: posteos idtiposigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos ALTER COLUMN idtiposigno SET DEFAULT nextval('public.posteos_idtiposigno_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 73948)
-- Name: posteos idcoments; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos ALTER COLUMN idcoments SET DEFAULT nextval('public.posteos_idcoments_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 73960)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 2945 (class 2604 OID 73968)
-- Name: tiposigno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposigno ALTER COLUMN id SET DEFAULT nextval('public.tiposigno_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 73769)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 73778)
-- Name: users idsigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN idsigno SET DEFAULT nextval('public.users_idsigno_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 73787)
-- Name: users idtiposigno; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN idtiposigno SET DEFAULT nextval('public.users_idtiposigno_seq'::regclass);


--
-- TOC entry 3122 (class 0 OID 32823)
-- Dependencies: 207
-- Data for Name: comenthoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comenthoroscopo (text, fechcreation, id, iduser, idsigno, idtiposigno) FROM stdin;
\.


--
-- TOC entry 3118 (class 0 OID 24586)
-- Dependencies: 203
-- Data for Name: comentspost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comentspost (textcoment, fechacoment, id, idsigno, idtiposigno) FROM stdin;
\.


--
-- TOC entry 3119 (class 0 OID 24603)
-- Dependencies: 204
-- Data for Name: comprasesion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comprasesion (price, id, iduser) FROM stdin;
\.


--
-- TOC entry 3121 (class 0 OID 24621)
-- Dependencies: 206
-- Data for Name: horoscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.horoscopo (nombre, startfecha, endfecha, id, idtipo) FROM stdin;
Acuario	2021-01-21 00:00:00	2021-02-19 00:00:00	1	1
Piscis	2021-02-20 00:00:00	2021-03-20 00:00:00	2	2
Aries	2021-03-21 00:00:00	2021-04-20 00:00:00	3	3
Tauro	2021-04-21 00:00:00	2021-05-20 00:00:00	4	4
Geminis	2021-01-21 00:00:00	2021-06-21 00:00:00	5	1
Cancer	2021-06-22 00:00:00	2021-07-22 00:00:00	6	2
Leo	2021-07-23 00:00:00	2021-08-23 00:00:00	7	3
Virgo	2021-08-21 00:00:00	2021-09-22 00:00:00	8	4
Libra	2021-09-23 00:00:00	2021-10-22 00:00:00	9	1
Escorpio	2021-10-23 00:00:00	2021-11-22 00:00:00	10	2
Sagitario	2021-11-23 00:00:00	2021-12-21 00:00:00	11	3
Capricornio	2020-12-22 00:00:00	2021-01-20 00:00:00	12	4
\.


--
-- TOC entry 3123 (class 0 OID 41009)
-- Dependencies: 208
-- Data for Name: posteohoroscopo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteohoroscopo (meshoroscopo, text, id, idsigno, idtiposigno, idcoments) FROM stdin;
\.


--
-- TOC entry 3116 (class 0 OID 16406)
-- Dependencies: 201
-- Data for Name: posteos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.posteos (title, subtitle, img, contenido, fechcreation, id, idsigno, idtiposigno, idcoments) FROM stdin;
\.


--
-- TOC entry 3117 (class 0 OID 16414)
-- Dependencies: 202
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tags (nombre, id) FROM stdin;
\.


--
-- TOC entry 3120 (class 0 OID 24611)
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
-- TOC entry 3115 (class 0 OID 16398)
-- Dependencies: 200
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (nameuser, fechanac, rol, nation, avatar, description, password, mail, id, idsigno, idtiposigno) FROM stdin;
Robertolean	0192-07-07 00:00:00	usuario	\N	default.png	\N	$2b$10$VUHJG25V8fTl7Vmhw6t43ehhvHYyfAhxgM9b/Bkos7FE1XiPmc3we	robert_lean@live.com.ar	1	1	1
\.


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 212
-- Name: comenthoroscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comenthoroscopo_id_seq', 1, false);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 214
-- Name: comenthoroscopo_idsigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comenthoroscopo_idsigno_seq', 1, false);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 215
-- Name: comenthoroscopo_idtiposigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comenthoroscopo_idtiposigno_seq', 1, false);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 213
-- Name: comenthoroscopo_iduser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comenthoroscopo_iduser_seq', 1, false);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 216
-- Name: comentspost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentspost_id_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 217
-- Name: comentspost_idsigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentspost_idsigno_seq', 1, false);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 218
-- Name: comentspost_idtiposigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comentspost_idtiposigno_seq', 1, false);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 219
-- Name: comprasesion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comprasesion_id_seq', 1, false);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 220
-- Name: comprasesion_iduser_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comprasesion_iduser_seq', 1, false);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 221
-- Name: horoscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horoscopo_id_seq', 12, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 222
-- Name: horoscopo_idtipo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horoscopo_idtipo_seq', 12, true);


--
-- TOC entry 3188 (class 0 OID 0)
-- Dependencies: 223
-- Name: posteohoroscopo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteohoroscopo_id_seq', 1, false);


--
-- TOC entry 3189 (class 0 OID 0)
-- Dependencies: 226
-- Name: posteohoroscopo_idcoments_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteohoroscopo_idcoments_seq', 1, false);


--
-- TOC entry 3190 (class 0 OID 0)
-- Dependencies: 224
-- Name: posteohoroscopo_idsigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteohoroscopo_idsigno_seq', 1, false);


--
-- TOC entry 3191 (class 0 OID 0)
-- Dependencies: 225
-- Name: posteohoroscopo_idtiposigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteohoroscopo_idtiposigno_seq', 1, false);


--
-- TOC entry 3192 (class 0 OID 0)
-- Dependencies: 227
-- Name: posteos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteos_id_seq', 1, false);


--
-- TOC entry 3193 (class 0 OID 0)
-- Dependencies: 230
-- Name: posteos_idcoments_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteos_idcoments_seq', 1, false);


--
-- TOC entry 3194 (class 0 OID 0)
-- Dependencies: 228
-- Name: posteos_idsigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteos_idsigno_seq', 1, false);


--
-- TOC entry 3195 (class 0 OID 0)
-- Dependencies: 229
-- Name: posteos_idtiposigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.posteos_idtiposigno_seq', 1, false);


--
-- TOC entry 3196 (class 0 OID 0)
-- Dependencies: 231
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- TOC entry 3197 (class 0 OID 0)
-- Dependencies: 232
-- Name: tiposigno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tiposigno_id_seq', 4, true);


--
-- TOC entry 3198 (class 0 OID 0)
-- Dependencies: 209
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 3199 (class 0 OID 0)
-- Dependencies: 210
-- Name: users_idsigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_idsigno_seq', 1, true);


--
-- TOC entry 3200 (class 0 OID 0)
-- Dependencies: 211
-- Name: users_idtiposigno_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_idtiposigno_seq', 1, true);


--
-- TOC entry 2971 (class 2606 OID 73821)
-- Name: comenthoroscopo comenthoroscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT comenthoroscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2963 (class 2606 OID 73851)
-- Name: comentspost comentspost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT comentspost_pkey PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 73865)
-- Name: comprasesion comprasesion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT comprasesion_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 73879)
-- Name: horoscopo horoscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT horoscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2973 (class 2606 OID 73918)
-- Name: posteohoroscopo posteohoroscopo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_pkey PRIMARY KEY (id);


--
-- TOC entry 2959 (class 2606 OID 73956)
-- Name: posteos posteos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_pkey PRIMARY KEY (id);


--
-- TOC entry 2961 (class 2606 OID 73965)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2967 (class 2606 OID 73973)
-- Name: tiposigno tiposigno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tiposigno
    ADD CONSTRAINT tiposigno_pkey PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 73795)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 74019)
-- Name: comprasesion comprasesion_iduser_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT comprasesion_iduser_fkey FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2980 (class 2606 OID 74024)
-- Name: horoscopo horoscopo_idtipo_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT horoscopo_idtipo_fkey FOREIGN KEY (idtipo) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2974 (class 2606 OID 73979)
-- Name: users idsigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2975 (class 2606 OID 73984)
-- Name: users idtiposigno; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2981 (class 2606 OID 73974)
-- Name: comenthoroscopo iduser; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;


--
-- TOC entry 2984 (class 2606 OID 74039)
-- Name: posteohoroscopo posteohoroscopo_idcoments_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_idcoments_fkey FOREIGN KEY (idcoments) REFERENCES public.comenthoroscopo(id) NOT VALID;


--
-- TOC entry 2982 (class 2606 OID 74029)
-- Name: posteohoroscopo posteohoroscopo_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2983 (class 2606 OID 74034)
-- Name: posteohoroscopo posteohoroscopo_idtiposigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteohoroscopo
    ADD CONSTRAINT posteohoroscopo_idtiposigno_fkey FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


--
-- TOC entry 2978 (class 2606 OID 74014)
-- Name: posteos posteos_idcoments_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idcoments_fkey FOREIGN KEY (idcoments) REFERENCES public.comentspost(id) NOT VALID;


--
-- TOC entry 2976 (class 2606 OID 74004)
-- Name: posteos posteos_idsigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idsigno_fkey FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;


--
-- TOC entry 2977 (class 2606 OID 74009)
-- Name: posteos posteos_idtiposigno_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT posteos_idtiposigno_fkey FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;


-- Completed on 2021-03-18 00:32:20

--
-- PostgreSQL database dump complete
--

