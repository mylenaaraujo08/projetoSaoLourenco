--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alunos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alunos (
    id integer NOT NULL,
    nome_completo character varying(255) NOT NULL,
    matricula character varying(255),
    escola character varying(255) NOT NULL,
    serie character varying(255) NOT NULL,
    turma character varying(255) NOT NULL,
    deficiencia character varying(255)
);


ALTER TABLE public.alunos OWNER TO postgres;

--
-- Name: alunos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alunos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alunos_id_seq OWNER TO postgres;

--
-- Name: alunos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alunos_id_seq OWNED BY public.alunos.id;


--
-- Name: avaliacaodados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avaliacaodados (
    id integer NOT NULL,
    carimbo_data_hora timestamp without time zone,
    endereco_email character varying(255),
    pontuacao character varying(50),
    unidade_escolar character varying(255),
    regiao_escola character varying(255),
    serie character varying(255),
    turma character varying(255),
    nome_completo_estudante character varying(255),
    estudante_com_deficiencia character varying(3),
    deficiencia_descricao character varying(255)
);


ALTER TABLE public.avaliacaodados OWNER TO postgres;

--
-- Name: avaliacaodados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.avaliacaodados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.avaliacaodados_id_seq OWNER TO postgres;

--
-- Name: avaliacaodados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.avaliacaodados_id_seq OWNED BY public.avaliacaodados.id;


--
-- Name: escolas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.escolas (
    id integer NOT NULL,
    nome_fantasia character varying(255) NOT NULL,
    razao_social character varying(255) NOT NULL,
    cnpj character varying(20) NOT NULL,
    endereco character varying(255) NOT NULL,
    contato character varying(255) NOT NULL,
    responsavel_cnct character varying(255) NOT NULL,
    tipo character varying(255) NOT NULL
);


ALTER TABLE public.escolas OWNER TO postgres;

--
-- Name: escolas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.escolas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.escolas_id_seq OWNER TO postgres;

--
-- Name: escolas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.escolas_id_seq OWNED BY public.escolas.id;


--
-- Name: gestores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gestores (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    cpf character varying(14) NOT NULL,
    escola character varying(255) NOT NULL,
    funcao character varying(255) NOT NULL,
    telefones character varying(255) NOT NULL
);


ALTER TABLE public.gestores OWNER TO postgres;

--
-- Name: gestores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gestores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gestores_id_seq OWNER TO postgres;

--
-- Name: gestores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gestores_id_seq OWNED BY public.gestores.id;


--
-- Name: pea; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pea (
    id integer NOT NULL,
    ano numeric(4,0) NOT NULL,
    serie character varying(255) NOT NULL,
    turma character varying(255) NOT NULL,
    disciplina character varying(255) NOT NULL,
    questao numeric(2,0) NOT NULL,
    nivel character varying(255) NOT NULL,
    descritores character varying(255),
    alternativas character varying(255)
);


ALTER TABLE public.pea OWNER TO postgres;

--
-- Name: pea_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pea_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pea_id_seq OWNER TO postgres;

--
-- Name: pea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pea_id_seq OWNED BY public.pea.id;


--
-- Name: respostamatematica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respostamatematica (
    id integer NOT NULL,
    id_avaliacao integer,
    resposta character varying(20)
);


ALTER TABLE public.respostamatematica OWNER TO postgres;

--
-- Name: respostamatematica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respostamatematica_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.respostamatematica_id_seq OWNER TO postgres;

--
-- Name: respostamatematica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respostamatematica_id_seq OWNED BY public.respostamatematica.id;


--
-- Name: respostaportugues; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respostaportugues (
    id integer NOT NULL,
    id_avaliacao integer,
    resposta character varying(20)
);


ALTER TABLE public.respostaportugues OWNER TO postgres;

--
-- Name: respostaportugues_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respostaportugues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.respostaportugues_id_seq OWNER TO postgres;

--
-- Name: respostaportugues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respostaportugues_id_seq OWNED BY public.respostaportugues.id;


--
-- Name: alunos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos ALTER COLUMN id SET DEFAULT nextval('public.alunos_id_seq'::regclass);


--
-- Name: avaliacaodados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avaliacaodados ALTER COLUMN id SET DEFAULT nextval('public.avaliacaodados_id_seq'::regclass);


--
-- Name: escolas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escolas ALTER COLUMN id SET DEFAULT nextval('public.escolas_id_seq'::regclass);


--
-- Name: gestores id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gestores ALTER COLUMN id SET DEFAULT nextval('public.gestores_id_seq'::regclass);


--
-- Name: pea id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pea ALTER COLUMN id SET DEFAULT nextval('public.pea_id_seq'::regclass);


--
-- Name: respostamatematica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostamatematica ALTER COLUMN id SET DEFAULT nextval('public.respostamatematica_id_seq'::regclass);


--
-- Name: respostaportugues id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostaportugues ALTER COLUMN id SET DEFAULT nextval('public.respostaportugues_id_seq'::regclass);


--
-- Data for Name: alunos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alunos (id, nome_completo, matricula, escola, serie, turma, deficiencia) FROM stdin;
1	Kássio José Gabriel da Silva	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
2	Gabrielly Camily Oliveira da Silva	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
3	Pedro Enrique Odilon Freitas	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
4	Wellington Manoel da Silva	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
5	Wesley Kauã de Souza Moreira	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
6	Jonathan Silva de Araújo	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
7	Gabriel Dias dos Santos	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
8	Yasmin Izabella Martins Afonso	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
9	Miguel Emiliano Pereira da Silva	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
10	Daniel Alves da Silva	\N	Escola Municipal Ministro Fernando Lira	5º	A	\N
11	Alana Vitória da Silva	\N	Escola Municipal Cristina Tavares	2º	D	\N
12	Hillary Victoria Vicente Correia da Cruz	\N	Escola Municipal Cristina Tavares	2º	D	\N
13	Pedro Daniel da Silva Nascimento	\N	Escola Municipal Cristina Tavares	2º	D	\N
14	Willian Micael Ferreira de Melo	\N	Escola Municipal Cristina Tavares	2º	D	\N
15	Agata Sofia de Luna Silva	\N	Escola Municipal Cristina Tavares	2º	D	\N
16	Daniel Virginio da Silva	\N	Escola Municipal Cristina Tavares	2º	D	\N
17	Gustavo Henrique Rodrigues de Araújo Silva	\N	Escola Municipal Cristina Tavares	2º	D	\N
18	Davi Samuel Oliveira da Silva	\N	Escola Municipal Cristina Tavares	2º	D	\N
19	Maria Vitória Peixoto Guedes do Nascimento	\N	Escola Municipal Cristina Tavares	2º	D	\N
20	Carlos Henrique dos Santos Souza	\N	Escola Municipal Cristina Tavares	2º	D	\N
21	Nauany Vitória de Lima Correia	\N	Escola Municipal Cristina Tavares	2º	D	\N
22	Kaio Ryan Martins Barbosa	\N	Escola Municipal Ariano Suassuna	9º	B	Não
23	Victor Hugo da Silva Lourenco	\N	Escola Municipal Ariano Suassuna	9º	B	Não
24	Terezinha Francisca da Silva Neta	\N	Escola Municipal Ariano Suassuna	9º	B	Não
25	Viviyan Lays Brito Bezerra	\N	Escola Municipal Ariano Suassuna	9º	B	Não
26	Amanda Vitória Brás da Costa	\N	Escola Municipal Ariano Suassuna	9º	B	Não
27	Ketilly Izabel Ramos da Silva	\N	Escola Municipal Ariano Suassuna	9º	B	Não
28	Arthur Soares da Silva Paz	\N	Escola Municipal Ariano Suassuna	9º	B	Não
29	Hillary Gomes	\N	Escola Municipal Ariano Suassuna	9º	B	Não
30	Ericka Kauanny Gomes Ferreira Lins	\N	Escola Municipal Ariano Suassuna	9º	B	Não
31	Nycollas Kaio Gonçalves Batista	\N	Escola Municipal Ariano Suassuna	9º	B	Não
32	Alex Silva Nascimento	\N	Escola Municipal Ariano Suassuna	9º	B	Não
33	Marcos Gabriel Pereira	\N	Escola Municipal Ariano Suassuna	9º	B	Não
34	Jenyffer Nathyele da Luz Santos	\N	Escola Municipal Ariano Suassuna	9º	B	Não
35	Vitor César da Silva Correia	\N	Escola Municipal Cleto Campelo	9º	B	Não
36	Joao Lucas da Silva	\N	Escola Municipal Cleto Campelo	9º	B	Não
\.


--
-- Data for Name: avaliacaodados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.avaliacaodados (id, carimbo_data_hora, endereco_email, pontuacao, unidade_escolar, regiao_escola, serie, turma, nome_completo_estudante, estudante_com_deficiencia, deficiencia_descricao) FROM stdin;
1	2023-07-26 11:50:41	jos@outlook.com	22 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	Kaio Ryan Martins Barbosa	Não	
2	2023-07-26 12:01:40	jos@outlook.com	34 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	Victor Hugo da Silva Lourenco	Não	
3	2023-07-27 08:27:27	jos@outlook.com	17 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	Terezinha Francisca da Silva neta	Não	
4	2023-07-27 08:40:54	jos@outlook.com	25 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	viviyan lays brito bezerra	Não	
5	2023-07-27 09:05:50	jos@outlook.com	22 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	Amanda vitória Brás da Costa	Não	
6	2023-07-27 09:12:25	jos@outlook.com	11 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	Ketilly Izabel Ramos da Silva	Não	
7	2023-07-27 09:17:38	jos@outlook.com	27 / 52	Escola Municipal Ariano Suassuna	Urbana	9º	B	arthur soares da silva paz	Não	
\.


--
-- Data for Name: escolas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.escolas (id, nome_fantasia, razao_social, cnpj, endereco, contato, responsavel_cnct, tipo) FROM stdin;
1	Escola Municipal Clodoaldo Gomes de Araujo						
2	Escola Municipal Jonas de Andrade Lima						
3	Escola Municipal Joaquim de Brito						
4	Escola Municipal Ariano Suassuna						
5	Escola Municipal Ariano Suassuna						
6	Escola Municipal Doutor Augusto Lucena						
7	Escola Municipal Doutor Henrique de Queiroz Monteiro						
8	Escola Municipal Inacio Gomes da Silva						
9	Escola Municipal Padre Joao Collignon						
10	Escola Municipal Maria Jose de Souza						
11	Colegio Municipal Ministro Apolonio Sales						
12	Escola Municipal Duque de Caxias						
13	Escola Municipal Cloaldo Gomes de Araujo						
14	Escola Municipal Padre Joao Collignon						
15	Escola Municipal Menino Jesus						
16	Escola Municipal Professor Josue Pereira de Oliveira						
17	Escola Municipal Doutor Fernando Sampaio						
18	Escola Municipal Padre Joao Barbalho						
19	Escola Municipal Antonio de Castro Alves						
20	Creche Idalina Bezerra						
21	Escola Municipal Doutor Luiz Correa de Araujo						
22	Colegio Municipal Ministro Apolonio Sales						
23	Creche Municipal Governador Eduardo Campos - Creche Tio Dudu						
24	Escola Municipal Poco Dantas						
25	Escola Municipal Hermino Moreira Dias						
26	Escola Municipal Creche Vovo Isaura Chaves						
27	Escola Municipal Inacio Gomes da Silva						
28	Escola Municipal Inacio Gomes da Silva, Escola Municipal Tiradentes						
29	Escola Municipal Cleto Camelo						
30	Escola Municipal Antonio Crescencio de Gois						
31	Creche Municipal Tia Ines						
32	Escola Municipal Senador Jose Ermirio de Moraes, Escola Mun Jornalista Cristina Tavares						
33	Escola Municipal Jair Pereira de Oliveira						
34	Escola Municipal Joaquim Damiao da Silva						
35	Escola Municipal Professor Severino Sales						
36	Escola Municipal Paulo Gomes de Araujo						
37	Escola Municipal Ministro Fernando Lyra						
38	Escola Municipal Carmela Orrico Lapenda, Escola Municipal Dona Olivia Josefa da Silva						
39	Escola Municipal Senador Jose Ermirio de Moraes, Escola Municipal Tiradentes						
40	Escola Municipal Senador Francisco Gomes de Araujo						
41	Escola Municipal Cleto Camelo						
42	Escola Municipal Alfredo Dias de Oliveira, Escola Municipal Carmela Orrico Lapenda						
43	Escola Mun Jornalista Cristina Tavares						
44	Escola Municipal Rosina Labanca						
\.


--
-- Data for Name: gestores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gestores (id, nome, cpf, escola, funcao, telefones) FROM stdin;
1	AGUINALDO CLAUDINO LEITE	823.571.964-91	ESCOLA MUNICIPAL CLODOALDO GOMES DE ARAUJO	Gestor (a) Adjunto	{"(81) 999998256"}
2	Alexandre José da Silva	064.104.764-93	ESCOLA MUNICIPAL JONAS DE ANDRADE LIMA	Gestor (a) Adjunto	{"(81) 989357076", "(81) 989357076"}
3	CASSIA CRISTINA RUFINO DA SILVA LUZ	040.858.404-10	ESCOLA MUNICIPAL JOAQUIM DE BRITO	Gestor (a) Escolar	{"(81) 986908315"}
4	CÉLIA MARIA MENDES DE MORAIS ALMEIDA	169.831.654-20	Escola Municipal Ariano Suassuna	Gestor (a) Escolar	{"(81) 998100827", "(81) 986081781"}
5	Claudia Regina Portela de Nóbrega Silva	418.296.625-20	Escola Municipal Ariano Suassuna	Gestor (a) Adjunto	{"(81) 979063831"}
6	CREUSA FERREIRA DA SILVA	333.495.504-44	ESCOLA MUNICIPAL DOUTOR AUGUSTO LUCENA	Gestor (a) Escolar	{"(81) 988437002"}
7	EDISANGELA EDILEUZA FERREIRA	092.165.274-71	ESCOLA MUNICIPAL DOUTOR HENRIQUE DE QUEIROZ MONTEIRO	Gestor (a) Escolar	{"(81) 81991716973", "(81) 81991716973"}
8	ELIANA ANDRADE DE SOUZA MELO	833.528.484-91	ESCOLA MUNICIPAL INACIO GOMES DA SILVA	Gestor (a) Adjunto	{"(81) 988841373"}
9	ELIANE SANTOS XAVIER DAS NEVES	402.177.014-34	ESCOLA MUNICIPAL PADRE JOAO COLLIGNON	Gestor (a) Escolar	{"(81) 997407392"}
10	ELIZANGELA AGUIAR BARBOSA DA SILVA	040.706.504-07	ESCOLA MUNICIPAL MARIA JOSE DE SOUZA	Gestor (a) Escolar	{"(81) 999638080"}
11	EMERSON JOSÉ ALVES	071.645.694-01	COLEGIO MUNICIPAL MINISTRO APOLONIO SALES	Gestor (a) Adjunto	{"(81) 998085637"}
12	ERINA CARLA ARAUJO DE OLIVEIRA NASCIMENTO	041.744.494-06	ESCOLA MUNICIPAL DUQUE DE CAXIAS	Gestor (a) Escolar	{"(81) 987383848", "(81) 987383848"}
13	EVELINA MARIA DA SILVA	284.094.854-00	ESCOLA MUNICIPAL CLODOALDO GOMES DE ARAUJO	Gestor (a) Escolar	{"(81) 997974750"}
14	FLAVIANE LILIAN URSULINO DE LIRA	043.831.004-73	ESCOLA MUNICIPAL PADRE JOAO COLLIGNON	Gestor (a) Adjunto	{"(81) 995227981"}
15	GRACIA MARIA DE OLIVEIRA MUNIZ	104.373.984-04	ESCOLA MUNICIPAL MENINO JESUS	Gestor (a) Escolar	{"(81) 986427876"}
16	ISOLDA GRAZIELA DA CUNHA SILVA LUZ	007.687.044-80	ESCOLA MUNICIPAL PROFESSOR JOSUE PEREIRA DE OLIVEIRA	Gestor (a) Escolar	{"(81) 35250394", "(81) 987256258"}
17	JAILMA VIEIRA DE SALES	039.549.034-07	ESCOLA MUNICIPAL DOUTOR FERNANDO SAMPAIO	Gestor (a) Escolar	{"(81) 988642528"}
18	JAQUELINE PEREIRA MENDES VIANA	683.792.264-53	ESCOLA MUNICIPAL PADRE JOAO BARBALHO	Gestor (a) Escolar	{"(81) 986482058"}
19	JOELMA MARIA DOS SANTOS	093.437.744-86	ESCOLA MUNICIPAL ANTONIO DE CASTRO ALVES	Gestor (a) Escolar	{"(81) 971755639"}
20	JOSILENE DOURADO DE OLIVEIRA GOMES	586.818.924-87	CRECHE IDALINA BEZERRA	Gestor (a) Escolar	{"(81) 988503412"}
21	JOSINEIDE TEOTONIA DA SILVA	036.436.754-70	ESCOLA MUNICIPAL DOUTOR LUIZ CORREA DE ARAUJO	Gestor (a) Escolar	{"(81) 987815756"}
22	JOSUE FERREIRA PARENTE	012.871.254-68	COLEGIO MUNICIPAL MINISTRO APOLONIO SALES	Gestor (a) Escolar	{"(81) 983208928"}
23	KARINA PEREIRA DOS SANTOS	919.028.004-00	CRECHE MUNICIPAL GOVERNADOR EDUARDO CAMPOS - CRECHE TIO DUDU	Gestor (a) Escolar	{"(81) 987779643"}
24	KATIA REGINA LIMA DA SILVA	606.940.034-04	ESCOLA MUNICIPAL AUREA DE MOURA CAVALCANTI	Gestor (a) Adjunto	{"(81) 987319017"}
25	LARISSE CAMILA DOS SANTOS	073.351.174-01	ESCOLA MUNICIPAL MELANIA GOMES DE ALENCAR	Gestor (a) Escolar	{"(81) 987363223"}
26	LUCICLEIDE SOARES DA SILVA	665.569.964-91	ESCOLA MUNICIPAL HERMINO MOREIRA DIAS	Gestor (a) Escolar	{"(81) 986953056"}
27	LUCINEIA SEVERINA DOS SANTOS	026.140.994-81	ESCOLA MUNICIPAL CRECHE VOVO ISAURA CHAVES	Gestor (a) Escolar	{"(81) 987801944"}
28	Luiz Carlos da Silva	794.106.424-34	ESCOLA MUNICIPAL INACIO GOMES DA SILVA	Gestor (a) Escolar	{"(81) 987069300"}
29	MARCELO RODRIGUES DE MOURA	455.858.064-91	ESCOLA MUNICIPAL INACIO GOMES DA SILVA, ESCOLA MUNICIPAL TIRADENTES	Gestor (a) Escolar	{"(81) 992160617"}
30	MARIA APARECIDA DE SOUSA XAVIER	436.268.234-15	ESCOLA MUNICIPAL CLETO CAMPELO	Gestor (a) Escolar	{"(81) 996752989"}
31	MARIA DAS NEVES TEIXEIRA	370.394.664-49	ESCOLA MUNICIPAL ANTONIO CRESCENCIO DE GOIS	Gestor (a) Escolar	{"(81) 996108008"}
32	MARIA DO SOCORRO SANTOS DE AZEVEDO	330.570.954-53	CRECHE MUNICIPAL TIA INES	Gestor (a) Escolar	{"(81) 986348189"}
33	Maria Elisabete Paulino Ferreira	975.129.824-53	ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES, ESCOLA MUN JORNALISTA CRISTINA TAVARES	Gestor (a) Adjunto	{"(81) 86328949"}
34	MAURICEIA CORREIA LIMA	743.963.404-78	ESCOLA MUNICIPAL JAIR PEREIRA DE OLIVEIRA	Gestor (a) Escolar	
35	MIRAZIANE MARIA DA SILVA	104.311.374-63	ESCOLA MUNICIPAL JOAQUIM DAMIAO DA SILVA	Gestor (a) Escolar	{"(81) 984553111"}
36	MONETA ALVES DOS SANTOS	060.070.064-09	ESCOLA MUNICIPAL PROFESSOR SEVERINO SALES	Gestor (a) Escolar	{"(81) 997796924"}
37	NIVALDA FRANCISCA DE LIMA	453.199.874-04	ESCOLA MUNICIPAL PAULO GOMES DE ARAUJO	Gestor (a) Escolar	{"(81) 985261629"}
38	RILDO CASSEMIRO DOS SANTOS	933.289.234-20	ESCOLA MUNICIPAL MINISTRO FERNANDO LYRA	Gestor (a) Escolar	{"(81) 987293360"}
39	ROSANA ALVES SA BARRETO	475.985.734-68	ESCOLA MUNICIPAL CARMELA ORRICO LAPENDA, ESCOLA MUNICIPAL DONA OLIVIA JOSEFA DA SILVA	Gestor (a) Escolar	{"(81) 997695880"}
40	SEVERINA MARIA PEREIRA MUNIZ	555.796.394-49	ESCOLA MUNICIPAL SENADOR JOSE ERMIRIO DE MORAES, ESCOLA MUNICIPAL TIRADENTES	Gestor (a) Escolar	{"(81) 982741880", "(81) 982711880"}
41	SUELY FELIX DA SILVA	754.010.104-00	ESCOLA MUNICIPAL SENADOR FRANCISCO GOMES DE ARAUJO	Gestor (a) Escolar	{"(81) 982861302"}
42	SUZANA GERALDO DA SILVA	024.428.614-02	ESCOLA MUNICIPAL CLETO CAMPELO	Gestor (a) Adjunto	{"(81) 998990034"}
43	VANESSA REGINA FLORENCIO DE MORAIS NASCIMENTO	082.728.824-77	ESCOLA MUNICIPAL ALFREDO DIAS DE OLIVEIRA, ESCOLA MUNICIPAL CARMELA ORRICO LAPENDA	Gestor (a) Escolar	{"(81) 988513544"}
44	VERONILDA MARIA DOS SANTOS	720.290.134-04	ESCOLA MUN JORNALISTA CRISTINA TAVARES	Gestor (a) Escolar	{"(81) 984720401"}
45	ZILMA DE MELO ROCHA	819.782.274-34	ESCOLA MUNICIPAL ROSINA LABANCA	Gestor (a) Adjunto	{"(81) 994624923"}
\.


--
-- Data for Name: pea; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pea (id, ano, serie, turma, disciplina, questao, nivel, descritores, alternativas) FROM stdin;
1	2023	9ano	T1	Língua Portuguesa	1	Médio	\N	A
2	2023	9ano	T1	Língua Portuguesa	2	Médio	\N	B
3	2023	9ano	T1	Língua Portuguesa	3	Difícil	\N	D
4	2023	9ano	T1	Língua Portuguesa	4	Difícil	\N	B
5	2023	9ano	T1	Língua Portuguesa	5	Fácil	\N	C
6	2023	9ano	T1	Língua Portuguesa	6	Médio	\N	B
7	2023	9ano	T1	Língua Portuguesa	7	Difícil	\N	B
8	2023	9ano	T1	Língua Portuguesa	8	Fácil	\N	A
9	2023	9ano	T1	Língua Portuguesa	9	Médio	\N	D
10	2023	9ano	T1	Língua Portuguesa	10	Fácil	\N	A
11	2023	9ano	T1	Língua Portuguesa	11	Difícil	\N	C
12	2023	9ano	T1	Língua Portuguesa	12	Difícil	\N	C
13	2023	9ano	T1	Língua Portuguesa	13	Médio	\N	A
14	2023	9ano	T1	Língua Portuguesa	14	Médio	\N	D
15	2023	9ano	T1	Língua Portuguesa	15	Fácil	\N	B
16	2023	9ano	T1	Língua Portuguesa	16	Fácil	\N	B
17	2023	9ano	T1	Língua Portuguesa	17	Difícil	\N	B
18	2023	9ano	T1	Língua Portuguesa	18	Difícil	\N	B
19	2023	9ano	T1	Língua Portuguesa	19	Fácil	\N	A
20	2023	9ano	T1	Língua Portuguesa	20	Fácil	\N	A
21	2023	9ano	T1	Língua Portuguesa	21	Fácil	\N	C
22	2023	9ano	T1	Língua Portuguesa	22	Médio	\N	A
23	2023	9ano	T1	Língua Portuguesa	23	Médio	\N	D
24	2023	9ano	T1	Língua Portuguesa	24	Difícil	\N	B
25	2023	9ano	T1	Língua Portuguesa	25	Médio	\N	B
26	2023	9ano	T1	Língua Portuguesa	26	Fácil	\N	C
27	2023	9ano	T1	Matemática	27	Fácil	\N	B
28	2023	9ano	T1	Matemática	28	Fácil	\N	C
29	2023	9ano	T1	Matemática	29	Médio	\N	A
30	2023	9ano	T1	Matemática	30	Médio	\N	B
31	2023	9ano	T1	Matemática	31	Fácil	\N	D
32	2023	9ano	T1	Matemática	32	Difícil	\N	A
33	2023	9ano	T1	Matemática	33	Fácil	\N	D
34	2023	9ano	T1	Matemática	34	Médio	\N	A
35	2023	9ano	T1	Matemática	35	Difícil	\N	C
36	2023	9ano	T1	Matemática	36	Fácil	\N	B
37	2023	9ano	T1	Matemática	37	Fácil	\N	B
38	2023	9ano	T1	Matemática	38	Difícil	\N	A
39	2023	9ano	T1	Matemática	39	Fácil	\N	C
40	2023	9ano	T1	Matemática	40	Fácil	\N	C
41	2023	9ano	T1	Matemática	41	Médio	\N	A
42	2023	9ano	T1	Matemática	42	Difícil	\N	D
43	2023	9ano	T1	Matemática	43	Médio	\N	A
44	2023	9ano	T1	Matemática	44	Fácil	\N	C
45	2023	9ano	T1	Matemática	45	Médio	\N	A
46	2023	9ano	T1	Matemática	46	Médio	\N	A
47	2023	9ano	T1	Matemática	47	Médio	\N	C
48	2023	9ano	T1	Matemática	48	Médio	\N	D
49	2023	9ano	T1	Matemática	49	Médio	\N	B
50	2023	9ano	T1	Matemática	50	Médio	\N	B
51	2023	9ano	T1	Matemática	51	Médio	\N	D
52	2023	9ano	T1	Matemática	52	Fácil	\N	A
53	2023	5ano	T1	Língua Portuguesa	1	Fácil	D1	C
54	2023	5ano	T1	Língua Portuguesa	2	Médio	D4	D
55	2023	5ano	T1	Língua Portuguesa	3	Médio	D3	A
56	2023	5ano	T1	Língua Portuguesa	4	Fácil	D7	C
57	2023	5ano	T1	Língua Portuguesa	5	Médio	D3	D
58	2023	5ano	T1	Língua Portuguesa	6	Médio	D6	A
59	2023	5ano	T1	Língua Portuguesa	7	Difícil	D11	D
60	2023	5ano	T1	Língua Portuguesa	8	Fácil	D9	C
61	2023	5ano	T1	Língua Portuguesa	9	Fácil	D14	A
62	2023	5ano	T1	Língua Portuguesa	10	Difícil	D11	B
63	2023	5ano	T1	Língua Portuguesa	11	Fácil	D10	B
64	2023	5ano	T1	Língua Portuguesa	12	Médio	D13	C
65	2023	5ano	T1	Língua Portuguesa	13	Médio	D01	C
66	2023	5ano	T1	Língua Portuguesa	14	Médio	D6	A
67	2023	5ano	T1	Língua Portuguesa	15	Difícil	D15	D
68	2023	5ano	T1	Língua Portuguesa	16	Fácil	D4	A
69	2023	5ano	T1	Língua Portuguesa	17	Difícil	D10	A
70	2023	5ano	T1	Língua Portuguesa	18	Médio	D9	C
71	2023	5ano	T1	Língua Portuguesa	19	Médio		A
72	2023	5ano	T1	Língua Portuguesa	20	Médio		A
73	2023	5ano	T1	Língua Portuguesa	21	Fácil	D1	A
74	2023	5ano	T1	Língua Portuguesa	22	Difícil	D3	C
75	2023	5ano	T1	Matemática	23	Fácil	D28	A
76	2023	5ano	T1	Matemática	24	Difícil	D1	D
77	2023	5ano	T1	Matemática	25	Fácil	D20	A
78	2023	5ano	T1	Matemática	26	Médio	D2	C
79	2023	5ano	T1	Matemática	27	Médio	D19	B
80	2023	5ano	T1	Matemática	28	Fácil	D27	A
81	2023	5ano	T1	Matemática	29	Fácil	D19	C
82	2023	5ano	T1	Matemática	30	Médio	D6	B
83	2023	5ano	T1	Matemática	31	Médio	D9	B
84	2023	5ano	T1	Matemática	32	Médio	D13	C
85	2023	5ano	T1	Matemática	33	Médio	D10	D
86	2023	5ano	T1	Matemática	34	Médio	D08	D
87	2023	5ano	T1	Matemática	35	Difícil	D02	A
88	2023	5ano	T1	Matemática	36	Difícil	D14	D
89	2023	5ano	T1	Matemática	37	Difícil		D
90	2023	5ano	T1	Matemática	38	Difícil	D10	B
91	2023	5ano	T1	Matemática	39	Difícil	D24	B
92	2023	5ano	T1	Matemática	40	Difícil	D07	B
93	2023	5ano	T1	Matemática	41	Médio	D14	C
94	2023	5ano	T1	Matemática	42	Fácil	D08	D
95	2023	5ano	T1	Matemática	43	Fácil	D19	A
96	2023	5ano	T1	Matemática	44	Médio	D29	A
97	2023	2ano	T1	Língua Portuguesa	1	Fácil		A
98	2023	2ano	T1	Língua Portuguesa	2	Fácil	BOLA e ÁRVORE	
99	2023	2ano	T1	Língua Portuguesa	3	Fácil		C
100	2023	2ano	T1	Língua Portuguesa	4	Fácil		C
101	2023	2ano	T1	Língua Portuguesa	5	Fácil		D
102	2023	2ano	T1	Língua Portuguesa	6	Fácil		C
103	2023	2ano	T1	Língua Portuguesa	7	Médio		A
104	2023	2ano	T1	Língua Portuguesa	8	Médio		C
105	2023	2ano	T1	Língua Portuguesa	9	Médio		B
106	2023	2ano	T1	Língua Portuguesa	10	Médio		B
107	2023	2ano	T1	Língua Portuguesa	11	Médio		A
108	2023	2ano	T1	Língua Portuguesa	12	Médio		B
109	2023	2ano	T1	Língua Portuguesa	13	Médio		D
110	2023	2ano	T1	Língua Portuguesa	14	Difícil		D
111	2023	2ano	T1	Língua Portuguesa	15	Difícil		C
112	2023	2ano	T1	Língua Portuguesa	16	Difícil		B
113	2023	2ano	T1	Língua Portuguesa	17	Difícil		A
114	2023	2ano	T1	Língua Portuguesa	18	Difícil		D
115	2023	2ano	T1	Língua Portuguesa	19	Difícil		C
116	2023	2ano	T1	Língua Portuguesa	20	Difícil		C
117	2023	2ano	T1	Matemática	21	Fácil	D09	C
118	2023	2ano	T1	Matemática	22	Fácil	D09	D
119	2023	2ano	T1	Matemática	23	Fácil	D12	B
120	2023	2ano	T1	Matemática	24	Fácil	D10	D
121	2023	2ano	T1	Matemática	25	Fácil	D01	A
122	2023	2ano	T1	Matemática	26	Fácil	D01	B
123	2023	2ano	T1	Matemática	27	Fácil	D01	D
124	2023	2ano	T1	Matemática	28	Fácil	D05	C
125	2023	2ano	T1	Matemática	29	Fácil	D03	D
126	2023	2ano	T1	Matemática	30	Médio	D07	C
127	2023	2ano	T1	Matemática	31	Médio	D12	B
128	2023	2ano	T1	Matemática	32	Difícil	D07	A
129	2023	2ano	T1	Matemática	33	Médio	D06	B
130	2023	2ano	T1	Matemática	34	Médio	D06	D
131	2023	2ano	T1	Matemática	35	Médio	D17	D
132	2023	2ano	T1	Matemática	36	Médio	D17	B
133	2023	2ano	T1	Matemática	37	Difícil	D18	A
134	2023	2ano	T1	Matemática	38	Difícil	D18	B
135	2023	2ano	T1	Matemática	39	Difícil	D18	D
136	2023	2ano	T1	Matemática	40	Difícil	D17	B
\.


--
-- Data for Name: respostamatematica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respostamatematica (id, id_avaliacao, resposta) FROM stdin;
137	1	B
138	1	C
139	1	A
140	1	A
141	1	B
142	1	C
143	1	D
144	1	D
145	1	A
146	1	C
147	1	B
148	1	B
149	1	D
150	1	A
151	1	A
152	1	B
153	1	C
154	1	A
155	1	C
156	1	B
157	1	A
158	1	D
159	1	A
160	1	D
161	1	Não Preencheu
162	2	B
163	2	C
164	2	D
165	2	D
166	2	D
167	2	A
168	2	B
169	2	A
170	2	C
171	2	B
172	2	D
173	2	C
174	2	D
175	2	C
176	2	A
177	2	D
178	2	A
179	2	C
180	2	C
181	2	A
182	2	D
183	2	A
184	2	C
185	2	C
186	2	A
187	3	A
188	3	B
189	3	C
190	3	B
191	3	C
192	3	B
193	3	D
194	3	A
195	3	D
196	3	A
197	3	A
198	3	C
199	3	A
200	3	D
201	3	C
202	3	Não Preencheu
203	3	Não Preencheu
204	4	B
205	4	D
206	4	B
207	4	B
208	4	C
209	4	B
210	4	D
211	4	A
212	4	A
213	4	A
214	4	C
215	4	C
216	4	A
217	4	D
218	4	B
219	4	D
220	4	C
221	4	Não Preencheu
222	5	B
223	5	D
224	5	B
225	5	B
226	5	C
227	5	B
228	5	D
229	5	A
230	5	A
231	5	A
232	5	C
233	5	C
234	5	A
235	5	D
236	5	B
237	5	D
238	5	Não Preencheu
239	5	Não Preencheu
240	6	D
241	6	B
242	6	D
243	6	C
244	6	B
245	6	B
246	6	D
247	6	A
248	6	D
249	6	A
250	6	B
251	6	B
252	6	D
253	6	Não Preencheu
254	6	Não Preencheu
255	7	D
256	7	B
257	7	A
258	7	A
259	7	B
260	7	B
261	7	B
262	7	A
263	7	D
264	7	B
265	7	C
266	7	A
267	7	C
268	7	D
269	7	B
270	7	C
271	7	Não Preencheu
272	7	Não Preencheu
\.


--
-- Data for Name: respostaportugues; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.respostaportugues (id, id_avaliacao, resposta) FROM stdin;
559	1	A
560	1	B
561	1	A
562	1	B
563	1	C
564	1	B
565	1	B
566	1	A
567	1	A
568	1	A
569	1	C
570	1	A
571	1	A
572	1	B
573	1	D
574	1	A
575	1	A
576	1	B
577	1	C
578	1	A
579	1	A
580	1	A
581	1	A
582	1	A
583	1	A
584	1	Não Preencheu
585	2	B
586	2	C
587	2	A
588	2	A
589	2	B
590	2	A
591	2	A
592	2	D
593	2	D
594	2	C
595	2	C
596	2	D
597	2	A
598	2	C
599	2	D
600	2	C
601	2	A
602	2	B
603	2	A
604	2	D
605	2	A
606	2	A
607	2	B
608	2	B
609	2	B
610	2	B
611	2	A
612	3	A
613	3	B
614	3	C
615	3	B
616	3	C
617	3	B
618	3	D
619	3	A
620	3	D
621	3	A
622	3	A
623	3	C
624	3	A
625	3	D
626	3	C
627	3	Não Preencheu
628	3	Não Preencheu
629	4	B
630	4	D
631	4	B
632	4	B
633	4	C
634	4	B
635	4	D
636	4	A
637	4	A
638	4	A
639	4	C
640	4	C
641	4	A
642	4	D
643	4	B
644	4	D
645	4	C
646	4	Não Preencheu
647	5	B
648	5	D
649	5	B
650	5	B
651	5	C
652	5	B
653	5	D
654	5	A
655	5	A
656	5	A
657	5	C
658	5	C
659	5	A
660	5	D
661	5	B
662	5	D
663	5	Não Preencheu
664	5	Não Preencheu
665	6	D
666	6	B
667	6	D
668	6	C
669	6	B
670	6	B
671	6	D
672	6	A
673	6	D
674	6	A
675	6	B
676	6	B
677	6	D
678	6	Não Preencheu
679	6	Não Preencheu
680	7	D
681	7	B
682	7	A
683	7	A
684	7	B
685	7	B
686	7	B
687	7	A
688	7	D
689	7	B
690	7	C
691	7	A
692	7	C
693	7	D
694	7	B
695	7	C
696	7	Não Preencheu
697	7	Não Preencheu
\.


--
-- Name: alunos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alunos_id_seq', 36, true);


--
-- Name: avaliacaodados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.avaliacaodados_id_seq', 7, true);


--
-- Name: escolas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.escolas_id_seq', 44, true);


--
-- Name: gestores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gestores_id_seq', 45, true);


--
-- Name: pea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pea_id_seq', 136, true);


--
-- Name: respostamatematica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respostamatematica_id_seq', 272, true);


--
-- Name: respostaportugues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respostaportugues_id_seq', 697, true);


--
-- Name: alunos alunos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alunos
    ADD CONSTRAINT alunos_pkey PRIMARY KEY (id);


--
-- Name: avaliacaodados avaliacaodados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avaliacaodados
    ADD CONSTRAINT avaliacaodados_pkey PRIMARY KEY (id);


--
-- Name: escolas escolas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.escolas
    ADD CONSTRAINT escolas_pkey PRIMARY KEY (id);


--
-- Name: gestores gestores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gestores
    ADD CONSTRAINT gestores_pkey PRIMARY KEY (id);


--
-- Name: pea pea_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pea
    ADD CONSTRAINT pea_pkey PRIMARY KEY (id);


--
-- Name: respostamatematica respostamatematica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostamatematica
    ADD CONSTRAINT respostamatematica_pkey PRIMARY KEY (id);


--
-- Name: respostaportugues respostaportugues_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostaportugues
    ADD CONSTRAINT respostaportugues_pkey PRIMARY KEY (id);


--
-- Name: respostamatematica respostamatematica_id_avaliacao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostamatematica
    ADD CONSTRAINT respostamatematica_id_avaliacao_fkey FOREIGN KEY (id_avaliacao) REFERENCES public.avaliacaodados(id);


--
-- Name: respostaportugues respostaportugues_id_avaliacao_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respostaportugues
    ADD CONSTRAINT respostaportugues_id_avaliacao_fkey FOREIGN KEY (id_avaliacao) REFERENCES public.avaliacaodados(id);


--
-- PostgreSQL database dump complete
--

