--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    comet_type text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    distance numeric,
    inhabited boolean,
    galaxy_type text,
    fun_fact text,
    in_milky_way boolean
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
    name character varying(60) NOT NULL,
    diameter integer,
    in_milky_way boolean,
    solo_sattelite boolean,
    fun_fact text,
    planet_id integer
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
    name character varying(60) NOT NULL,
    has_water boolean,
    number_of_moons integer,
    is_inhabited boolean,
    in_milky_way boolean,
    fun_fact text,
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
    name character varying(60) NOT NULL,
    star_type text,
    in_milky_way boolean,
    fun_fact text,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 'Short Period');
INSERT INTO public.comet VALUES (2, 'Hale Bop', 'Long Period');
INSERT INTO public.comet VALUES (3, 'Shoemaker Levy 9', 'Colliding');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, true, 'Barred Spiral Galaxy', 'This is our home galaxy!', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2.537, false, 'Spiral Galaxy', 'This is the closest large spiral galaxy to our own galaxy, the Milky Way!', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2.73, false, 'Spiral Galaxy', 'This is the second-closest Spiral Galaxy to our own galaxy, the Milky Way!', false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Clouds', 0.16, false, 'Irregular Dwarf Galaxy', 'This dwarf galaxy is very rich in gas!', false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Clouds', 0.2, false, 'Irregular Dwarf Galaxy', 'This Dwarf Galaxy is located in the southern sky near hte Large Magellanic Cloud!', false);
INSERT INTO public.galaxy VALUES (6, 'Canis Major', 0.025, false, 'Irregular Dwarf Galaxy', 'This galaxy contains a signifcant amount of Red Dwarf Stars!', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 2159, true, true, 'Our moon moves away from earth at a rate of around 1.5 inches per year!', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 14, true, false, 'Phobos orbits Mars in just under 8 hours!', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 8, true, false, 'Deimos is the smaller of the moons of Mars and takes around 30 hours to orbit Mars!', 4);
INSERT INTO public.moon VALUES (4, 'Io', 2264, true, false, 'Io is the most volcanically active body in our solar system!', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 1940, true, false, 'Europa may contain twice the amount of water as earth despite being only a quarter of the size!', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5268, true, false, 'Ganymede is the largest moon in our solar system!', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 2995, true, false, 'Callisto takes approximately 16.7 earth days to orbit its planet!', 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 52, true, false, 'Amalthea is potato shaped and orbits incredibly close to Jupiter!', 5);
INSERT INTO public.moon VALUES (9, 'Metis', 27, true, false, 'Metis is the innermost known moon of Jupiter!', 5);
INSERT INTO public.moon VALUES (10, 'Adrastea', 5, true, false, 'Adrastea is considered an inner moon of Jupiter, along with Metis, Amalthea, and Thebe', 5);
INSERT INTO public.moon VALUES (11, 'Thebe', 62, true, false, 'Thebe is the second largest of the inner moons of Jupiter!', 5);
INSERT INTO public.moon VALUES (12, 'Titan', 3200, true, false, 'Titan is the second largest moon in our solar system!', 6);
INSERT INTO public.moon VALUES (13, 'Enceladus', 313, true, false, 'The surface of Enceladus is almost entirely pure, bright water ice!', 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 913, true, false, 'Iapetus looks like a walnut because of its two toned appearance!', 6);
INSERT INTO public.moon VALUES (15, 'Mimas', 246, true, false, 'Because of its giant crater, Mimas resembles the Death Star from Star Wars!', 6);
INSERT INTO public.moon VALUES (16, 'Rhea', 949, true, false, 'Rhea is often described as a frozen dirty snowball!', 6);
INSERT INTO public.moon VALUES (17, 'Hyperion', 169, true, false, 'Hyperion is one of the potato shaped moons of Saturn', 6);
INSERT INTO public.moon VALUES (18, 'Titania', 980, true, false, 'Titania has extreme seasons of up to 42 years in duration!', 7);
INSERT INTO public.moon VALUES (19, 'Oberon', 946, true, false, 'Oberon was named after the king of the fairies in a Midsummer Night Dream by Shakespeare!', 7);
INSERT INTO public.moon VALUES (20, 'Miranda', 292, true, false, 'Miranda was named after the daugher of Prospero from the play The Tempest!', 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, false, true, 'This planet orbits the sun in only about 3 months!', 1);
INSERT INTO public.planet VALUES (2, 'Venus', false, 0, false, true, 'This planet is the hottest planet in our solar system!', 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, true, true, 'Earth is the only planet known to support life!', 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, false, true, 'This planet is home to the largest volcano in our solar system!', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 95, false, true, 'Jupiter is the largest planet in our solar system!', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 274, false, true, 'The rings of Saturn are largely made up of ice and rock chunks!', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', false, 28, false, true, 'Uranus has a pale blue color due to methane in its atmosphere!', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, 16, false, true, 'Neptune has the fastest winds in the solar system!', 1);
INSERT INTO public.planet VALUES (9, 'Pluto', false, 5, false, true, 'Pluto was considered a planet until 2006, when it lost its status!', 1);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', false, 0, false, true, 'Proxima Centauri b is the closest known exoplanet to earth!', 1);
INSERT INTO public.planet VALUES (11, 'Kepler 186f', false, 0, false, true, 'Kepler 186f was discovered orbiting a nearby red dwarf star in 2014!', 1);
INSERT INTO public.planet VALUES (12, 'Sweeps 11', false, 0, false, true, 'Sweeps 11 has almost 10 times the mass of Jupiter!', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow Dwarf', true, 'The sun is the star that our planet, Earth, revolves around!', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'Main Sequence', true, 'You can find this star by following the belt of Orion while stargazing!', 1);
INSERT INTO public.star VALUES (3, 'Lucy', 'White Dwarf', true, 'It is believed that the center of this star became diamonds as it cooled!', 1);
INSERT INTO public.star VALUES (4, 'Achernar', 'Main Sequence', true, 'This star has largely become flattened due to how fast it rotates!', 1);
INSERT INTO public.star VALUES (5, 'Mira', 'Red Giant', true, 'This star is between 300 and 700 times larger than our own sun!', 1);
INSERT INTO public.star VALUES (6, 'Methuselah Star', 'Subgiant Star', true, 'This star is one of the oldest known stars in the universe!', 1);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: comet pk_comet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT pk_comet_id PRIMARY KEY (comet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: comet unique_comet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_comet_id UNIQUE (comet_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

