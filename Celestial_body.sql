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
-- Name: city; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.city (
    city_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.city OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    neighbors text,
    shape character varying(20),
    age character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age numeric,
    planet_id integer,
    size integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    size integer,
    moons integer,
    habitable boolean,
    hasmoon boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    age integer,
    size integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.city VALUES (1, 'Berlin', 2);
INSERT INTO public.city VALUES (2, 'Mars_City', 3);
INSERT INTO public.city VALUES (3, 'Kordelion', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky_way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'PKT1823', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Triangulum_Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool_Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Cigar_Galaxy', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'daMoon', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon2', 52352, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Moon3', 352, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Luna', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Phobos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ariel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Hyperion', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Miranda', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Ganymede', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Io', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Europa', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Eceladus', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Rhea', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Mimas', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Triton', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Charon2', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mustafa', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'earth', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Mars', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Neptune', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Ceres', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Haumea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Proxima_Centauri_B', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Jupiter', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Degobah', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Tatooin', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Keppler', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Black_Hole', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Polaris', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Altair', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Deneb', NULL, NULL, NULL);


--
-- Name: city city_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_id UNIQUE (city_id);


--
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (city_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: city city_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

