--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: boleta; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE boleta (
    id integer NOT NULL,
    vendedor character varying,
    valor_total integer,
    tipo_pago character varying,
    cantidad_producto integer,
    lista_productos character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE boleta OWNER TO pablo;

--
-- Name: boleta_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE boleta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boleta_id_seq OWNER TO pablo;

--
-- Name: boleta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE boleta_id_seq OWNED BY boleta.id;


--
-- Name: boletaas; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE boletaas (
    id integer NOT NULL,
    vendedor character varying,
    codigo_boleta integer,
    monto double precision,
    cantidad_producto integer,
    tipo_pago character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE boletaas OWNER TO pablo;

--
-- Name: boletaas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE boletaas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE boletaas_id_seq OWNER TO pablo;

--
-- Name: boletaas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE boletaas_id_seq OWNED BY boletaas.id;


--
-- Name: carros; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE carros (
    id integer NOT NULL,
    cant_prod integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    producto_id integer,
    boletaa_id integer,
    documento_id integer
);


ALTER TABLE carros OWNER TO pablo;

--
-- Name: carros_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE carros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE carros_id_seq OWNER TO pablo;

--
-- Name: carros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE carros_id_seq OWNED BY carros.id;


--
-- Name: documentos; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE documentos (
    id integer NOT NULL,
    tipo_documento integer,
    cantidad_producto integer,
    rut_proveedor integer,
    fecha_emision character varying,
    valor_neto double precision,
    valor_exento double precision,
    valor_iva double precision,
    folio integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE documentos OWNER TO pablo;

--
-- Name: documentos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE documentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE documentos_id_seq OWNER TO pablo;

--
-- Name: documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE documentos_id_seq OWNED BY documentos.id;


--
-- Name: facturas; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE facturas (
    id integer NOT NULL,
    monto_factura double precision,
    cantidad_producto integer,
    rut_proveedor integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE facturas OWNER TO pablo;

--
-- Name: facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE facturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE facturas_id_seq OWNER TO pablo;

--
-- Name: facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE facturas_id_seq OWNED BY facturas.id;


--
-- Name: personas; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE personas (
    id integer NOT NULL,
    nombre character varying,
    rol integer,
    rut integer,
    telefono integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    users_id integer
);


ALTER TABLE personas OWNER TO pablo;

--
-- Name: personas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE personas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE personas_id_seq OWNER TO pablo;

--
-- Name: personas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE personas_id_seq OWNED BY personas.id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE productos (
    id integer NOT NULL,
    stock_actual integer,
    stock_minimo integer,
    nombre character varying,
    precio double precision,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE productos OWNER TO pablo;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE productos_id_seq OWNER TO pablo;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE productos_id_seq OWNED BY productos.id;


--
-- Name: pruebas; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE pruebas (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE pruebas OWNER TO pablo;

--
-- Name: pruebas_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE pruebas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pruebas_id_seq OWNER TO pablo;

--
-- Name: pruebas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE pruebas_id_seq OWNED BY pruebas.id;


--
-- Name: registros; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE registros (
    id integer NOT NULL,
    ingreso timestamp without time zone,
    salida timestamp without time zone,
    fecha date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id integer
);


ALTER TABLE registros OWNER TO pablo;

--
-- Name: registros_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE registros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE registros_id_seq OWNER TO pablo;

--
-- Name: registros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE registros_id_seq OWNED BY registros.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO pablo;

--
-- Name: users; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    nombre character varying,
    rut integer,
    rol integer,
    telefono integer
);


ALTER TABLE users OWNER TO pablo;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO pablo;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: usuarios; Type: TABLE; Schema: public; Owner: pablo; Tablespace: 
--

CREATE TABLE usuarios (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE usuarios OWNER TO pablo;

--
-- Name: usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: pablo
--

CREATE SEQUENCE usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuarios_id_seq OWNER TO pablo;

--
-- Name: usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pablo
--

ALTER SEQUENCE usuarios_id_seq OWNED BY usuarios.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY boleta ALTER COLUMN id SET DEFAULT nextval('boleta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY boletaas ALTER COLUMN id SET DEFAULT nextval('boletaas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY carros ALTER COLUMN id SET DEFAULT nextval('carros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY documentos ALTER COLUMN id SET DEFAULT nextval('documentos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY facturas ALTER COLUMN id SET DEFAULT nextval('facturas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY personas ALTER COLUMN id SET DEFAULT nextval('personas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY pruebas ALTER COLUMN id SET DEFAULT nextval('pruebas_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY registros ALTER COLUMN id SET DEFAULT nextval('registros_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq'::regclass);


--
-- Data for Name: boleta; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY boleta (id, vendedor, valor_total, tipo_pago, cantidad_producto, lista_productos, created_at, updated_at) FROM stdin;
2	tita	1500000	efectivo	3	\N	2017-01-10 17:20:41.292071	2017-01-10 17:20:59.531036
3	alejandra	4955	efectivo	5	\N	2017-01-10 17:54:48.379347	2017-01-10 17:54:48.379347
\.


--
-- Name: boleta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('boleta_id_seq', 3, true);


--
-- Data for Name: boletaas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY boletaas (id, vendedor, codigo_boleta, monto, cantidad_producto, tipo_pago, created_at, updated_at) FROM stdin;
1	erwin alves	4543	3534	4	efectivo	2017-01-11 03:26:45.552669	2017-01-11 03:26:45.552669
\.


--
-- Name: boletaas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('boletaas_id_seq', 1, true);


--
-- Data for Name: carros; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY carros (id, cant_prod, created_at, updated_at, producto_id, boletaa_id, documento_id) FROM stdin;
\.


--
-- Name: carros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('carros_id_seq', 1, false);


--
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY documentos (id, tipo_documento, cantidad_producto, rut_proveedor, fecha_emision, valor_neto, valor_exento, valor_iva, folio, created_at, updated_at) FROM stdin;
1	33	5	18464662	10/03/2003	432423	43242	19	453	2017-01-11 02:43:00.956658	2017-01-11 03:08:48.201545
\.


--
-- Name: documentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('documentos_id_seq', 1, true);


--
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY facturas (id, monto_factura, cantidad_producto, rut_proveedor, created_at, updated_at) FROM stdin;
7	\N	\N	\N	2017-01-11 01:43:16.880714	2017-01-11 01:43:16.880714
\.


--
-- Name: facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('facturas_id_seq', 7, true);


--
-- Data for Name: personas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY personas (id, nombre, rol, rut, telefono, created_at, updated_at, users_id) FROM stdin;
2	erwin alvessls	0	18464662	955121117	2017-01-06 14:05:30.70404	2017-01-06 14:38:06.551447	\N
3	caca	0	184645532	432423	2017-01-06 18:58:53.739987	2017-01-06 18:58:53.739987	\N
\.


--
-- Name: personas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('personas_id_seq', 5, true);


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY productos (id, stock_actual, stock_minimo, nombre, precio, created_at, updated_at) FROM stdin;
1	100	12	caca	1990	2017-01-06 14:53:58.332986	2017-01-06 14:53:58.332986
2	534	54	fsdf	4325	2017-01-06 19:24:05.548132	2017-01-06 19:24:05.548132
3	3453	453	43534	453	2017-01-06 19:31:12.998222	2017-01-06 19:31:12.998222
\.


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('productos_id_seq', 8, true);


--
-- Data for Name: pruebas; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY pruebas (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	happy@ql.com	$2a$11$BFabSMZcbaitud6OndkN4eU2VOPlV9QYLooh/oX80xw/Fy2G01JbW	\N	\N	\N	1	2017-01-13 17:25:40.968435	2017-01-13 17:25:40.968435	127.0.0.1	127.0.0.1	2017-01-13 17:25:40.921675	2017-01-13 17:25:40.971623
\.


--
-- Name: pruebas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('pruebas_id_seq', 1, true);


--
-- Data for Name: registros; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY registros (id, ingreso, salida, fecha, created_at, updated_at, user_id) FROM stdin;
2	2017-01-16 02:05:00	\N	2017-01-16	2017-01-16 02:05:37.054681	2017-01-16 02:05:37.054681	\N
3	2017-02-06 23:32:00	\N	2017-02-06	2017-02-06 23:32:45.657482	2017-02-06 23:32:45.657482	\N
4	2017-02-06 23:40:00	\N	2017-02-06	2017-02-06 23:40:30.971104	2017-02-06 23:40:30.971104	\N
\.


--
-- Name: registros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('registros_id_seq', 4, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY schema_migrations (version) FROM stdin;
20161215194527
20161215195825
20161215200147
20161215200830
20161215213158
20161215230101
20161215230413
20161215232237
20161216004948
20161216005827
20170109015544
20170111023227
20170111031837
20170111182809
20170111214158
20170113145112
20170113161344
20170113162128
20170113172643
20170115013318
20170117024557
20170117025329
20170117164927
20170118142011
20170211215450
20170212004123
20170213210949
20170213211413
20170213225051
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, nombre, rut, rol, telefono) FROM stdin;
11	erwin@gmail.com	$2a$11$X8/gsQ8bYvZp1kj22FkNJe8.9fX2TTRuWv8HSx1fGY.7wtJvt.5lu	\N	\N	\N	1	2017-02-07 04:05:57.722661	2017-02-07 04:05:57.722661	127.0.0.1	127.0.0.1	2017-02-07 04:05:57.574496	2017-02-07 04:05:57.724606	\N	\N	\N	\N
12	caca@gmail.com	$2a$11$7zA67hdq152t5N07OqkEPuAdSTIwBXnlNfSq7B8bu7lFiGFB7z7Xa	\N	\N	\N	1	2017-02-09 04:10:39.838275	2017-02-09 04:10:39.838275	127.0.0.1	127.0.0.1	2017-02-09 04:10:39.748538	2017-02-09 04:10:39.839878	\N	\N	\N	\N
9	erwinalvessilva@gmail.com	$2a$11$98swyvKV3Re8SNGgsbp4jur0L7ImTVv.ub1EGGZGgdma3GbkWZ19K	\N	\N	\N	6	2017-02-12 19:52:24.393784	2017-02-11 21:40:13.901183	127.0.0.1	127.0.0.1	2017-01-18 23:30:39.583448	2017-02-12 19:52:24.395283	\N	\N	\N	\N
13	ale4872@hotmail.com	$2a$11$IArNX5c/owwDOa9vY5yirePUzwjYBoqAFxQs13aXLqUfVM/drgmAC	\N	\N	\N	1	2017-02-13 21:42:06.666938	2017-02-13 21:42:06.666938	127.0.0.1	127.0.0.1	2017-02-13 21:42:06.610935	2017-02-13 21:42:06.668358	\N	\N	\N	\N
14	eas@gmail.com	$2a$11$CIL7.Btu/K5JXlh2wP4oW.b.UtJMv5PEn19IrRmCb19LoffwvTOCC	\N	\N	\N	1	2017-02-13 22:27:12.268173	2017-02-13 22:27:12.268173	127.0.0.1	127.0.0.1	2017-02-13 22:27:12.231118	2017-02-13 22:27:12.269752	\N	\N	\N	\N
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('users_id_seq', 14, true);


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: pablo
--

COPY usuarios (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at) FROM stdin;
1	mipene@hola.com	$2a$11$eJdxVyVXQUaI/H9uCk3F5eeJnlIKJLohFPXC/XKTfFwljfeLR4wa2	\N	\N	\N	1	2017-01-13 16:50:27.87252	2017-01-13 16:50:27.87252	127.0.0.1	127.0.0.1	2017-01-13 16:50:27.846569	2017-01-13 16:50:27.87659
2	mipene@hola1.com	$2a$11$07T6NJWDWb8J8uMlrVaI0.KsDJHlmdgen1/19ZCzr/R6oOEQIP/Fa	\N	\N	\N	1	2017-01-13 16:51:24.437972	2017-01-13 16:51:24.437972	127.0.0.1	127.0.0.1	2017-01-13 16:51:24.379359	2017-01-13 16:51:24.441277
3	micaca@potrogay.es	$2a$11$Pi6x41NGC4Gleq2vMF1txu/YkhxccUY4rfZLkwDWghTaVj4sON9Ne	\N	\N	\N	1	2017-01-13 17:04:38.799858	2017-01-13 17:04:38.799858	127.0.0.1	127.0.0.1	2017-01-13 17:04:38.750605	2017-01-13 17:04:38.804992
4	cacallala@hola.com	$2a$11$cEPnIE5fWu/WkjEVOichLuoU/O5vdP4TQ0o3XFOrZV3BP/5NH9.YC	\N	\N	\N	1	2017-01-13 17:20:27.108817	2017-01-13 17:20:27.108817	127.0.0.1	127.0.0.1	2017-01-13 17:20:27.059166	2017-01-13 17:20:27.112208
\.


--
-- Name: usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pablo
--

SELECT pg_catalog.setval('usuarios_id_seq', 4, true);


--
-- Name: boleta_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY boleta
    ADD CONSTRAINT boleta_pkey PRIMARY KEY (id);


--
-- Name: boletaas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY boletaas
    ADD CONSTRAINT boletaas_pkey PRIMARY KEY (id);


--
-- Name: carros_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY carros
    ADD CONSTRAINT carros_pkey PRIMARY KEY (id);


--
-- Name: documentos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);


--
-- Name: facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id);


--
-- Name: personas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY personas
    ADD CONSTRAINT personas_pkey PRIMARY KEY (id);


--
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: pruebas_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY pruebas
    ADD CONSTRAINT pruebas_pkey PRIMARY KEY (id);


--
-- Name: registros_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY registros
    ADD CONSTRAINT registros_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: pablo; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);


--
-- Name: index_pruebas_on_email; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_pruebas_on_email ON pruebas USING btree (email);


--
-- Name: index_pruebas_on_reset_password_token; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_pruebas_on_reset_password_token ON pruebas USING btree (reset_password_token);


--
-- Name: index_registros_on_user_id; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE INDEX index_registros_on_user_id ON registros USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_usuarios_on_email; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_email ON usuarios USING btree (email);


--
-- Name: index_usuarios_on_reset_password_token; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX index_usuarios_on_reset_password_token ON usuarios USING btree (reset_password_token);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: pablo; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: fk_rails_0364c90c1a; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY registros
    ADD CONSTRAINT fk_rails_0364c90c1a FOREIGN KEY (user_id) REFERENCES users(id);


--
-- Name: fk_rails_7c40459fd9; Type: FK CONSTRAINT; Schema: public; Owner: pablo
--

ALTER TABLE ONLY carros
    ADD CONSTRAINT fk_rails_7c40459fd9 FOREIGN KEY (producto_id) REFERENCES productos(id) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

