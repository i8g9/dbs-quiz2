--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg100+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg100+1)

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
-- Name: album; Type: TABLE; Schema: public; Owner: dbs
--

CREATE TABLE public.album (
    album_id integer NOT NULL,
    album_name character varying(50) NOT NULL,
    album_release_date timestamp without time zone NOT NULL,
    album_record_location character varying(50) NOT NULL,
    artist_id integer
);


ALTER TABLE public.album OWNER TO dbs;

--
-- Name: album_album_id_seq; Type: SEQUENCE; Schema: public; Owner: dbs
--

CREATE SEQUENCE public.album_album_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_album_id_seq OWNER TO dbs;

--
-- Name: album_album_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbs
--

ALTER SEQUENCE public.album_album_id_seq OWNED BY public.album.album_id;


--
-- Name: artist; Type: TABLE; Schema: public; Owner: dbs
--

CREATE TABLE public.artist (
    artist_id integer NOT NULL,
    artist_name character varying(50) NOT NULL,
    vocalist character varying(50) NOT NULL,
    vocalist_end_date timestamp without time zone,
    guitarist character varying(50) NOT NULL,
    guitarist_end_date timestamp without time zone,
    drummer character varying(50) NOT NULL,
    drummer_end_date timestamp without time zone
);


ALTER TABLE public.artist OWNER TO dbs;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE; Schema: public; Owner: dbs
--

CREATE SEQUENCE public.artist_artist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artist_artist_id_seq OWNER TO dbs;

--
-- Name: artist_artist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: dbs
--

ALTER SEQUENCE public.artist_artist_id_seq OWNED BY public.artist.artist_id;


--
-- Name: album album_id; Type: DEFAULT; Schema: public; Owner: dbs
--

ALTER TABLE ONLY public.album ALTER COLUMN album_id SET DEFAULT nextval('public.album_album_id_seq'::regclass);


--
-- Name: artist artist_id; Type: DEFAULT; Schema: public; Owner: dbs
--

ALTER TABLE ONLY public.artist ALTER COLUMN artist_id SET DEFAULT nextval('public.artist_artist_id_seq'::regclass);


--
-- Data for Name: album; Type: TABLE DATA; Schema: public; Owner: dbs
--

COPY public.album (album_id, album_name, album_release_date, album_record_location, artist_id) FROM stdin;
1	A	2020-05-12 11:24:37	Jakarta	1
2	B	2020-05-13 11:24:37	Bandung	2
3	C	2020-05-14 11:24:37	Bogor	3
4	D	2020-05-15 11:24:37	Jakarta	4
5	E	2020-05-16 11:24:37	Jakarta	5
6	Music Revolution	2020-05-20 11:24:37	Jakarta	6
7	Good Day	2020-07-01 11:24:37	Jakarta	7
8	Paper	2020-08-08 11:24:37	Jakarta	8
9	Book	2020-09-12 11:24:37	Jakarta	9
10	Final	2020-12-12 11:24:37	Jakarta	10
\.


--
-- Data for Name: artist; Type: TABLE DATA; Schema: public; Owner: dbs
--

COPY public.artist (artist_id, artist_name, vocalist, vocalist_end_date, guitarist, guitarist_end_date, drummer, drummer_end_date) FROM stdin;
1	Rini	Alex	2020-05-12 11:24:37	Ed	2020-07-04 11:24:37	Dram	2020-09-08 11:24:37
2	Rina	Steve	2020-05-12 11:24:37	Hari	2020-07-04 11:24:37	Bari	2020-09-08 11:24:37
3	Rino	Mike	2020-05-12 11:24:37	Lari	2020-07-04 11:24:37	Ari	2020-09-08 11:24:37
4	Ahmad	Gita	2021-01-02 11:24:37	Pra	2021-11-10 11:24:37	Bowo	2021-07-04 11:24:37
5	Rio	Bas	2021-04-04 11:33:37	Joko	2021-11-10 11:33:37	Widodo	2021-03-01 11:33:37
6	Rian	Tram	2021-02-05 11:33:37	Konan	2021-07-08 11:33:37	Edo	2021-07-04 11:33:37
7	Budi	Felix	2021-02-05 11:33:37	Richard	2021-07-08 11:33:37	Oke	2021-07-04 11:33:37
8	Har	Feng	2021-02-05 11:33:37	Bobi	2021-07-08 11:33:37	Budi	2021-07-04 11:33:37
9	Bob	Lia	2021-02-05 11:33:37	Amar	2021-07-08 11:33:37	Adit	2021-07-04 11:33:37
10	Bobo	Aman	2021-02-05 11:33:37	Endah	2021-07-08 11:33:37	Su	2021-07-04 11:33:37
\.


--
-- Name: album_album_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbs
--

SELECT pg_catalog.setval('public.album_album_id_seq', 10, true);


--
-- Name: artist_artist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: dbs
--

SELECT pg_catalog.setval('public.artist_artist_id_seq', 10, true);


--
-- Name: album album_pkey; Type: CONSTRAINT; Schema: public; Owner: dbs
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_pkey PRIMARY KEY (album_id);


--
-- Name: artist artist_pkey; Type: CONSTRAINT; Schema: public; Owner: dbs
--

ALTER TABLE ONLY public.artist
    ADD CONSTRAINT artist_pkey PRIMARY KEY (artist_id);


--
-- Name: album album_artist_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: dbs
--

ALTER TABLE ONLY public.album
    ADD CONSTRAINT album_artist_id_fkey FOREIGN KEY (artist_id) REFERENCES public.artist(artist_id);


--
-- PostgreSQL database dump complete
--

