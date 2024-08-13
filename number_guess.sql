--
-- PostgreSQL database dump
--

-- Dumped from database version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.19 (Ubuntu 12.19-0ubuntu0.20.04.1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 8, 68);
INSERT INTO public.games VALUES (2, 8, 415);
INSERT INTO public.games VALUES (3, 9, 937);
INSERT INTO public.games VALUES (4, 9, 442);
INSERT INTO public.games VALUES (5, 8, 507);
INSERT INTO public.games VALUES (6, 8, 1);
INSERT INTO public.games VALUES (7, 8, 281);
INSERT INTO public.games VALUES (8, 7, 4);
INSERT INTO public.games VALUES (9, 7, 1);
INSERT INTO public.games VALUES (10, 10, 963);
INSERT INTO public.games VALUES (11, 10, 166);
INSERT INTO public.games VALUES (12, 11, 688);
INSERT INTO public.games VALUES (13, 11, 662);
INSERT INTO public.games VALUES (14, 10, 599);
INSERT INTO public.games VALUES (15, 10, 1);
INSERT INTO public.games VALUES (16, 10, 576);
INSERT INTO public.games VALUES (17, 12, 93);
INSERT INTO public.games VALUES (18, 12, 89);
INSERT INTO public.games VALUES (19, 13, 849);
INSERT INTO public.games VALUES (20, 13, 128);
INSERT INTO public.games VALUES (21, 12, 154);
INSERT INTO public.games VALUES (22, 12, 1);
INSERT INTO public.games VALUES (23, 12, 369);
INSERT INTO public.games VALUES (24, 14, 581);
INSERT INTO public.games VALUES (25, 14, 582);
INSERT INTO public.games VALUES (26, 15, 821);
INSERT INTO public.games VALUES (27, 15, 849);
INSERT INTO public.games VALUES (28, 14, 861);
INSERT INTO public.games VALUES (29, 14, 1);
INSERT INTO public.games VALUES (30, 14, 486);
INSERT INTO public.games VALUES (31, 16, 801);
INSERT INTO public.games VALUES (32, 16, 110);
INSERT INTO public.games VALUES (33, 17, 900);
INSERT INTO public.games VALUES (34, 17, 658);
INSERT INTO public.games VALUES (35, 16, 702);
INSERT INTO public.games VALUES (36, 16, 1);
INSERT INTO public.games VALUES (37, 16, 301);
INSERT INTO public.games VALUES (38, 18, 336);
INSERT INTO public.games VALUES (39, 18, 969);
INSERT INTO public.games VALUES (40, 19, 142);
INSERT INTO public.games VALUES (41, 19, 695);
INSERT INTO public.games VALUES (42, 18, 660);
INSERT INTO public.games VALUES (43, 18, 1);
INSERT INTO public.games VALUES (44, 18, 840);
INSERT INTO public.games VALUES (45, 20, 307);
INSERT INTO public.games VALUES (46, 20, 849);
INSERT INTO public.games VALUES (47, 21, 77);
INSERT INTO public.games VALUES (48, 21, 771);
INSERT INTO public.games VALUES (49, 20, 53);
INSERT INTO public.games VALUES (50, 20, 1);
INSERT INTO public.games VALUES (51, 20, 463);
INSERT INTO public.games VALUES (52, 22, 768);
INSERT INTO public.games VALUES (53, 22, 17);
INSERT INTO public.games VALUES (54, 23, 441);
INSERT INTO public.games VALUES (55, 23, 450);
INSERT INTO public.games VALUES (56, 22, 65);
INSERT INTO public.games VALUES (57, 22, 1);
INSERT INTO public.games VALUES (58, 22, 433);
INSERT INTO public.games VALUES (59, 24, 890);
INSERT INTO public.games VALUES (60, 24, 678);
INSERT INTO public.games VALUES (61, 25, 705);
INSERT INTO public.games VALUES (62, 25, 737);
INSERT INTO public.games VALUES (63, 24, 261);
INSERT INTO public.games VALUES (64, 24, 1);
INSERT INTO public.games VALUES (65, 24, 205);
INSERT INTO public.games VALUES (66, 7, 12);
INSERT INTO public.games VALUES (67, 26, 319);
INSERT INTO public.games VALUES (68, 26, 730);
INSERT INTO public.games VALUES (69, 27, 16);
INSERT INTO public.games VALUES (70, 27, 550);
INSERT INTO public.games VALUES (71, 26, 264);
INSERT INTO public.games VALUES (72, 26, 1);
INSERT INTO public.games VALUES (73, 26, 308);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1723541554536');
INSERT INTO public.users VALUES (2, 'user_1723541554535');
INSERT INTO public.users VALUES (3, 'user_1723541620660');
INSERT INTO public.users VALUES (4, 'user_1723541620659');
INSERT INTO public.users VALUES (5, 'user_1723541642495');
INSERT INTO public.users VALUES (6, 'user_1723541642494');
INSERT INTO public.users VALUES (7, 'Ray');
INSERT INTO public.users VALUES (8, 'user_1723542663480');
INSERT INTO public.users VALUES (9, 'user_1723542663478');
INSERT INTO public.users VALUES (10, 'user_1723543218301');
INSERT INTO public.users VALUES (11, 'user_1723543218300');
INSERT INTO public.users VALUES (12, 'user_1723543845053');
INSERT INTO public.users VALUES (13, 'user_1723543845052');
INSERT INTO public.users VALUES (14, 'user_1723543998667');
INSERT INTO public.users VALUES (15, 'user_1723543998666');
INSERT INTO public.users VALUES (16, 'user_1723544019306');
INSERT INTO public.users VALUES (17, 'user_1723544019305');
INSERT INTO public.users VALUES (18, 'user_1723544098093');
INSERT INTO public.users VALUES (19, 'user_1723544098092');
INSERT INTO public.users VALUES (20, 'user_1723544166933');
INSERT INTO public.users VALUES (21, 'user_1723544166932');
INSERT INTO public.users VALUES (22, 'user_1723544268573');
INSERT INTO public.users VALUES (23, 'user_1723544268572');
INSERT INTO public.users VALUES (24, 'user_1723544297479');
INSERT INTO public.users VALUES (25, 'user_1723544297478');
INSERT INTO public.users VALUES (26, 'user_1723544486555');
INSERT INTO public.users VALUES (27, 'user_1723544486554');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 73, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 27, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

