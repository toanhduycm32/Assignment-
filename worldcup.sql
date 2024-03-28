--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 4, 2, 116, 117);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 2, 0, 118, 119);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 2, 1, 117, 119);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 1, 0, 116, 118);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 3, 2, 117, 120);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 2, 0, 119, 121);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 2, 1, 118, 122);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 2, 0, 116, 123);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 2, 1, 119, 124);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 1, 0, 121, 125);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 3, 2, 118, 126);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 2, 0, 122, 127);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 2, 1, 117, 128);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 2, 1, 120, 129);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 2, 1, 123, 130);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 4, 3, 116, 131);
INSERT INTO public.games VALUES (17, 2014, 'Final', 1, 0, 132, 131);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 3, 0, 133, 122);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 1, 0, 131, 133);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 7, 1, 132, 122);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 1, 0, 133, 134);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 1, 0, 131, 118);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 2, 1, 122, 124);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 1, 0, 132, 116);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 2, 1, 122, 135);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 2, 0, 124, 123);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 2, 0, 116, 136);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 2, 1, 132, 137);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 2, 1, 133, 127);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 2, 1, 134, 138);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 1, 0, 131, 125);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 2, 1, 118, 139);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (116, 'France');
INSERT INTO public.teams VALUES (117, 'Croatia');
INSERT INTO public.teams VALUES (118, 'Belgium');
INSERT INTO public.teams VALUES (119, 'England');
INSERT INTO public.teams VALUES (120, 'Russia');
INSERT INTO public.teams VALUES (121, 'Sweden');
INSERT INTO public.teams VALUES (122, 'Brazil');
INSERT INTO public.teams VALUES (123, 'Uruguay');
INSERT INTO public.teams VALUES (124, 'Colombia');
INSERT INTO public.teams VALUES (125, 'Switzerland');
INSERT INTO public.teams VALUES (126, 'Japan');
INSERT INTO public.teams VALUES (127, 'Mexico');
INSERT INTO public.teams VALUES (128, 'Denmark');
INSERT INTO public.teams VALUES (129, 'Spain');
INSERT INTO public.teams VALUES (130, 'Portugal');
INSERT INTO public.teams VALUES (131, 'Argentina');
INSERT INTO public.teams VALUES (132, 'Germany');
INSERT INTO public.teams VALUES (133, 'Netherlands');
INSERT INTO public.teams VALUES (134, 'Costa Rica');
INSERT INTO public.teams VALUES (135, 'Chile');
INSERT INTO public.teams VALUES (136, 'Nigeria');
INSERT INTO public.teams VALUES (137, 'Algeria');
INSERT INTO public.teams VALUES (138, 'Greece');
INSERT INTO public.teams VALUES (139, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 139, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

