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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
    alien_id integer NOT NULL,
    name character varying(30) NOT NULL,
    language character varying(30) NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_alien_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    number_of_stars integer,
    diameter integer,
    density numeric(3,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    planet_id integer,
    length_of_orbit integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    gravity numeric(3,2),
    has_atmosphere boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    is_supergiant boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.aliens_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'Zogarth', 'Zogaric');
INSERT INTO public.alien VALUES (2, 'Vyra', 'Vyrian');
INSERT INTO public.alien VALUES (3, 'Altara', 'Altarian');
INSERT INTO public.alien VALUES (4, 'Drakon', 'Drakonic');
INSERT INTO public.alien VALUES (5, 'Luminara', 'Luminarian');
INSERT INTO public.alien VALUES (6, 'Nythra', 'Nythric');
INSERT INTO public.alien VALUES (7, 'Valtoran', 'Valtorian');
INSERT INTO public.alien VALUES (8, 'Krythar', 'Krythic');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Zorax', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Vyrion', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Jogen', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Jugannal', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Morthii', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'ASYYK', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lunara', 15, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 10, 2, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 8, 3, NULL);
INSERT INTO public.moon VALUES (4, 'Selene', 12, 4, NULL);
INSERT INTO public.moon VALUES (5, 'Titania', 20, 5, NULL);
INSERT INTO public.moon VALUES (6, 'Oberon', 18, 6, NULL);
INSERT INTO public.moon VALUES (7, 'Miranda', 9, 7, NULL);
INSERT INTO public.moon VALUES (8, 'Ariel', 17, 8, NULL);
INSERT INTO public.moon VALUES (9, 'Umbriel', 16, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Charon', 14, 10, NULL);
INSERT INTO public.moon VALUES (11, 'Ganymede', 21, 11, NULL);
INSERT INTO public.moon VALUES (12, 'Callisto', 19, 12, NULL);
INSERT INTO public.moon VALUES (13, 'Europa', 13, 13, NULL);
INSERT INTO public.moon VALUES (14, 'Io', 11, 14, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 18, 15, NULL);
INSERT INTO public.moon VALUES (16, 'Titan', 22, 16, NULL);
INSERT INTO public.moon VALUES (17, 'Enceladus', 10, 17, NULL);
INSERT INTO public.moon VALUES (18, 'Mimas', 8, 18, NULL);
INSERT INTO public.moon VALUES (19, 'Dione', 15, 19, NULL);
INSERT INTO public.moon VALUES (20, 'Iapetus', 17, 20, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Zorax', 120, 1.20, true, 'A lush, green planet with a thriving ecosystem.', 1);
INSERT INTO public.planet VALUES (2, 'Vyrion', 85, 0.85, false, 'A rocky planet with minimal atmosphere.', 2);
INSERT INTO public.planet VALUES (3, 'Altheon', 142, 1.42, true, 'A planet known for its vast oceans and diverse marine life.', 3);
INSERT INTO public.planet VALUES (4, 'Drakara', 95, 0.95, true, 'A volcanic planet with a fiery surface.', 4);
INSERT INTO public.planet VALUES (5, 'Lumisara', 111, 1.11, false, 'A desert planet with vast sand dunes and harsh conditions.', 5);
INSERT INTO public.planet VALUES (6, 'Nythara', 98, 0.98, true, 'A forested planet with dense jungles.', 6);
INSERT INTO public.planet VALUES (7, 'Valtor', 130, 1.30, false, 'A frozen planet with a surface of ice and snow.', 1);
INSERT INTO public.planet VALUES (8, 'Krytallis', 150, 1.50, true, 'A crystal planet with a glittering surface.', 2);
INSERT INTO public.planet VALUES (9, 'Exovar', 105, 1.05, false, 'A barren planet with a rocky terrain.', 3);
INSERT INTO public.planet VALUES (10, 'Seraphis', 123, 1.23, true, 'A gas giant with swirling storms.', 4);
INSERT INTO public.planet VALUES (11, 'Vortica', 99, 0.99, false, 'A planet with strong magnetic fields.', 5);
INSERT INTO public.planet VALUES (12, 'Lycoris', 110, 1.10, true, 'A planet with lush vegetation and abundant wildlife.', 6);
INSERT INTO public.planet VALUES (13, 'Zaluria', 101, 1.01, false, 'A planet with a surface covered in lava.', 1);
INSERT INTO public.planet VALUES (14, 'Mystara', 145, 1.45, true, 'A planet with a misty atmosphere and hidden secrets.', 2);
INSERT INTO public.planet VALUES (15, 'Tharion', 115, 1.15, false, 'A planet with vast plains and rolling hills.', 3);
INSERT INTO public.planet VALUES (16, 'Astrodon', 132, 1.32, true, 'A planet with large mountain ranges.', 4);
INSERT INTO public.planet VALUES (17, 'Eclipsa', 88, 0.88, false, 'A dark planet with minimal light.', 5);
INSERT INTO public.planet VALUES (18, 'Solara', 118, 1.18, true, 'A planet orbiting close to its star, with intense heat.', 6);
INSERT INTO public.planet VALUES (19, 'Vesperon', 107, 1.07, false, 'A planet with a thick, toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (20, 'Nyxara', 140, 1.40, true, 'A planet with beautiful auroras.', 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Morpu', 4098, true, 1);
INSERT INTO public.star VALUES (2, 'Equanoo', 871, false, 1);
INSERT INTO public.star VALUES (3, 'JKUUKU', 977, false, 1);
INSERT INTO public.star VALUES (4, 'Bunku', 8717, true, 1);
INSERT INTO public.star VALUES (5, 'Kukukuku', 789, false, 1);
INSERT INTO public.star VALUES (6, 'Alyma', 8712, true, 1);


--
-- Name: aliens_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_alien_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: alien aliens_language_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_language_key UNIQUE (language);


--
-- Name: alien aliens_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name: alien aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

