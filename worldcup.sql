--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
    name character varying(255) NOT NULL
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

INSERT INTO public.games VALUES (35, 121, 122, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (36, 123, 124, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (37, 122, 124, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (38, 121, 123, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (39, 122, 125, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 124, 126, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 123, 127, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (42, 121, 128, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (43, 124, 129, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 126, 130, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 123, 131, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 127, 132, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 122, 133, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 125, 134, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 128, 135, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (50, 121, 136, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (51, 137, 136, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (52, 138, 127, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (53, 136, 138, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (54, 137, 127, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (55, 138, 139, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 136, 123, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 127, 129, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (58, 137, 121, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (59, 127, 140, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 129, 128, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 121, 141, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 137, 142, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 138, 132, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 139, 143, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (65, 136, 130, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (66, 123, 144, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (121, 'France');
INSERT INTO public.teams VALUES (122, 'Croatia');
INSERT INTO public.teams VALUES (123, 'Belgium');
INSERT INTO public.teams VALUES (124, 'England');
INSERT INTO public.teams VALUES (125, 'Russia');
INSERT INTO public.teams VALUES (126, 'Sweden');
INSERT INTO public.teams VALUES (127, 'Brazil');
INSERT INTO public.teams VALUES (128, 'Uruguay');
INSERT INTO public.teams VALUES (129, 'Colombia');
INSERT INTO public.teams VALUES (130, 'Switzerland');
INSERT INTO public.teams VALUES (131, 'Japan');
INSERT INTO public.teams VALUES (132, 'Mexico');
INSERT INTO public.teams VALUES (133, 'Denmark');
INSERT INTO public.teams VALUES (134, 'Spain');
INSERT INTO public.teams VALUES (135, 'Portugal');
INSERT INTO public.teams VALUES (136, 'Argentina');
INSERT INTO public.teams VALUES (137, 'Germany');
INSERT INTO public.teams VALUES (138, 'Netherlands');
INSERT INTO public.teams VALUES (139, 'Costa Rica');
INSERT INTO public.teams VALUES (140, 'Chile');
INSERT INTO public.teams VALUES (141, 'Nigeria');
INSERT INTO public.teams VALUES (142, 'Algeria');
INSERT INTO public.teams VALUES (143, 'Greece');
INSERT INTO public.teams VALUES (144, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 144, true);


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
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

