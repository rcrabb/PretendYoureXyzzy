-- Pretend You're Xyzzy cards by Andy Janata is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License.
-- Based on a work at www.cardsagainsthumanity.com.
-- For more information, see http://creativecommons.org/licenses/by-nc-sa/3.0/

-- This file contains the Black Cards and White Cards for Cards Against Humanity, as a script for importing into PostgreSQL. There should be a user named pyx.
-- This contains all of the official cards through Q3 2017, imported via pyx-importer from a spreadsheet provided by CAH.

--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.7
-- Dumped by pg_dump version 10.1

-- Started on 2018-02-27 15:12:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12427)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2201 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 17734)
-- Name: black_cards; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE black_cards (
    id integer NOT NULL,
    draw integer NOT NULL,
    pick integer NOT NULL,
    text character varying(255),
    watermark character varying(255)
);


ALTER TABLE black_cards OWNER TO pyx;

--
-- TOC entry 186 (class 1259 OID 17742)
-- Name: card_set; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set (
    id integer NOT NULL,
    active boolean NOT NULL,
    base_deck boolean NOT NULL,
    description character varying(255),
    name character varying(255),
    weight integer NOT NULL
);


ALTER TABLE card_set OWNER TO pyx;

--
-- TOC entry 187 (class 1259 OID 17750)
-- Name: card_set_black_card; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set_black_card (
    card_set_id integer NOT NULL,
    black_card_id integer NOT NULL
);


ALTER TABLE card_set_black_card OWNER TO pyx;

--
-- TOC entry 188 (class 1259 OID 17755)
-- Name: card_set_white_card; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE card_set_white_card (
    card_set_id integer NOT NULL,
    white_card_id integer NOT NULL
);


ALTER TABLE card_set_white_card OWNER TO pyx;

--
-- TOC entry 190 (class 1259 OID 17788)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: pyx
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO pyx;

--
-- TOC entry 189 (class 1259 OID 17760)
-- Name: white_cards; Type: TABLE; Schema: public; Owner: pyx
--

CREATE TABLE white_cards (
    id integer NOT NULL,
    text character varying(255),
    watermark character varying(255)
);


ALTER TABLE white_cards OWNER TO pyx;

--
-- TOC entry 2189 (class 0 OID 17734)
-- Dependencies: 185
-- Data for Name: black_cards; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY black_cards (id, draw, pick, text, watermark) FROM stdin;
2	0	1	A Bad Haircut	Expansion Set 1
4	0	1	A Bakery	Junior 9+
5	0	1	A Broken Leg	Junior 9+
7	0	1	A Bull Fight	Expansion Set 2
9	0	1	A Cabin In The Woods	Expansion Set 3
10	0	1	A Can Of Worms	Expansion Set 3
12	0	1	A Car Crash	Basic Set
13	0	1	A Cheap Motel	Basic Set
14	0	1	A Cookbook	Junior 9+
15	0	1	A Crawl Space	Basic Set
16	0	1	A Crown	Junior 9+
17	0	1	A Desert	Junior 9+
18	0	1	A Dollar	Junior 9+
19	0	1	A Dozen Red Roses	Expansion Set 1
21	0	1	A Fairy	Junior
22	0	1	A Few Good Men	Expansion Set 3
23	0	1	A Flat Tire	Basic Set
25	0	1	A Fool & His Money	Expansion Set 4
26	0	1	A Forest	Junior
27	0	1	A French Maid	Expansion Set 3
28	0	1	A Full Moon	Expansion Set 1
29	0	1	A Funeral	Junior 9+
30	0	1	A Giant	Junior
31	0	1	A Haunted House	Expansion Set 1
32	0	1	A High School Bathroom	Basic Set
33	0	1	A Hole In One	Expansion Set 3
34	0	1	A Honeymoon	Basic Set
35	0	1	A King	Junior
36	0	1	A Leaky Boat	Junior 9+
37	0	1	A Little White Lie	Expansion Set 3
38	0	1	A Locker Room	Basic Set
39	0	1	A Log Cabin	Junior 9+
40	0	1	A Mermaid	Junior 9+
41	0	1	A Microwave Oven	Junior 9+
42	0	1	A Million Dollars	Expansion Set 3
43	0	1	A Morgue	Basic Set
44	0	1	A Movie Theater	Junior 9+
45	0	1	A Mummy	Expansion Set 3
46	0	1	A Nine Iron	Expansion Set 2
47	0	1	A Parade	Junior 9+
48	0	1	A Piano	Junior 9+
49	0	1	A Pile Of Leaves	Junior
50	0	1	A Prince	Junior 9+
51	0	1	A Princess	Junior 9+
52	0	1	A Queen	Junior
53	0	1	A Refrigerator	Junior 9+
54	0	1	A Ringing In My Ears	Expansion Set 3
55	0	1	A Saw	Junior
56	0	1	A School Bus	Expansion Set 1
57	0	1	A School Cafeteria	Expansion Set 2
58	0	1	A School Dance	Junior 9+
59	0	1	A Spare Tire	Expansion Set 3
60	0	1	A Submarine	Junior 9+
61	0	1	A Sunrise	Basic Set
62	0	1	A Sunset	Basic Set
63	0	1	A Surprise	Junior
64	0	1	A Swimming Pool	Junior 9+
65	0	1	A Tree House	Expansion Set 1
66	0	1	A Used Car Lot	Basic Set
67	0	1	A Volcano	Junior 9+
68	0	1	Abbot & Costello	Expansion Set 4
69	0	1	Abraham Lincoln	Basic Set
70	0	1	Abraham Lincoln	Junior 9+
71	0	1	Actors	Junior 9+
72	0	1	Actresses	Junior 9+
73	0	1	Adam & Eve	Expansion Set 4
74	0	1	Adam Sandler	Expansion Set 2
75	0	1	Adolph Hitler	Basic Set
76	0	1	Africa	Junior 9+
77	0	1	AIDS	Expansion Set 2
78	0	1	Airline Food	Expansion Set 1
79	0	1	Airplane	Junior 9+
80	0	1	Airplanes	Junior
81	0	1	Al Pacino	Expansion Set 1
82	0	1	Aladdin	Junior
83	0	1	Alan Greenspan	Expansion Set 3
84	0	1	Alaska	Junior 9+
85	0	1	Albert Einstein	Basic Set
86	0	1	Alfred Hitchcock	Basic Set
87	0	1	Alien Abductions	Expansion Set 1
88	0	1	Aliens	Junior 9+
89	0	1	Alligators	Junior 9+
90	0	1	AM & FM	Expansion Set 4
91	0	1	Americans	Basic Set
92	0	1	Amputations	Expansion Set 2
93	0	1	Amsterdam	Expansion Set 3
94	0	1	An Igloo	Junior
95	0	1	Ancient Rome	Expansion Set 3
96	0	1	Andy Warhol	Basic Set
97	0	1	Angry Hornets	Expansion Set 2
98	0	1	Anna & The King	Expansion Set 4
99	0	1	Anna Kournikova	Expansion Set 3
100	0	1	Anne Frank	Basic Set
101	0	1	Antarctica	Basic Set
102	0	1	Anthony Hopkins	Expansion Set 2
103	0	1	Anthrax	Expansion Set 3
104	0	1	Antiques Roadshow	Expansion Set 3
105	0	1	Antony & Cleopatra	Expansion Set 4
106	0	1	Ants	Junior
107	0	1	Apple Juice	Junior
108	0	1	Apple Pie	Expansion Set 1
109	0	1	Apples	Basic Set
110	0	1	Apples & Oranges	Expansion Set 4
111	0	1	Aristotle	Expansion Set 3
112	0	1	Arm & A Leg	Expansion Set 4
113	0	1	Armadillo	Expansion Set 3
114	0	1	Armed Robbery	Expansion Set 2
115	0	1	Arnold Schwarzenegger	Expansion Set 3
116	0	1	Aroma Therapy	Expansion Set 3
117	0	1	Arsenic & Old Lace	Expansion Set 4
118	0	1	Artists	Junior 9+
119	0	1	Assault & Battery	Expansion Set 4
120	0	1	Assembly Lines	Expansion Set 2
121	0	1	Astronauts	Junior 9+
122	0	1	At My Parent's House	Basic Set
123	0	1	Atlantis	Expansion Set 2
124	0	1	Atomic Bombs	Basic Set
125	0	1	Attack On Pearl Harbor	Basic Set
126	0	1	Austin Powers	Expansion Set 1
127	0	1	Australian Outback	Expansion Set 1
128	0	1	Babe Ruth	Basic Set
129	0	1	Babies	Expansion Set 2
130	0	1	Baby Dolls	Junior
131	0	1	Baby Food	Junior 9+
132	0	1	Baby Showers	Basic Set
133	0	1	Babysitters	Junior
134	0	1	Backstreet Boys	Expansion Set 1
135	0	1	Backyards	Junior 9+
136	0	1	Bacon	Junior 9+
137	0	1	Bad Dogs	Basic Set
138	0	1	Bad Dreams	Junior
139	0	1	Bagels And Lox	Expansion Set 3
140	0	1	Bagpipes	Expansion Set 1
141	0	1	Baked Beans	Expansion Set 2
142	0	1	Baked Potatoes	Basic Set
143	0	1	Baking Cookies	Expansion Set 1
144	0	1	Bald Eagles	Expansion Set 1
145	0	1	Ball & Chain	Expansion Set 4
146	0	1	Ballerinas	Expansion Set 1
147	0	1	Balloons	Junior
148	0	1	Ballroom Dancing	Expansion Set 3
149	0	1	Bananas	Junior
150	0	1	Band-Aids	Junior 9+
151	0	1	Bangkok	Basic Set
152	0	1	Bankruptcy	Expansion Set 2
153	0	1	Barbara Walters	Expansion Set 1
154	0	1	Barbed Wire	Expansion Set 1
155	0	1	Barbershops	Junior 9+
156	0	1	Barbie & Ken	Expansion Set 4
157	0	1	Barbie Dolls	Junior
158	0	1	Barfing	Basic Set
159	0	1	Barney	Basic Set
160	0	1	Bart Simpson	Basic Set
161	0	1	Baseball	Expansion Set 3
162	0	1	Baseball Games	Junior 9+
163	0	1	Baseball Fields	Junior 9+
164	0	1	Basketball	Junior 9+
165	0	1	Bates Motel	Expansion Set 2
166	0	1	Batman	Expansion Set 2
167	0	1	Batman & Robin	Expansion Set 4
168	0	1	Bats	Expansion Set 1
169	0	1	Bats & Balls	Expansion Set 4
170	0	1	BB Guns	Expansion Set 3
171	0	1	Beach Balls	Junior 9+
172	0	1	Beach Parties	Expansion Set 1
173	0	1	Beanbag Chairs	Expansion Set 3
174	0	1	Beanie Babies	Expansion Set 1
175	0	1	Bears	Junior
176	0	1	Beauty & The Beast	Expansion Set 4
177	0	1	Beauty And The Beast	Expansion Set 2
178	0	1	Beavis & Butt-Head	Expansion Set 4
179	0	1	Bed & Breakfast	Expansion Set 4
180	0	1	Bee Stings	Junior 9+
181	0	1	Beef Stew	Junior 9+
182	0	1	Beer	Expansion Set 2
183	0	1	Beer & Pretzels	Expansion Set 4
184	0	1	Beer Bellies	Expansion Set 1
185	0	1	Beethoven	Basic Set
186	0	1	Beets	Expansion Set 2
187	0	1	Being & Nothingness	Expansion Set 4
188	0	1	Being In Love	Basic Set
189	0	1	Bell-Bottoms	Expansion Set 1
190	0	1	Bells & Whistles	Expansion Set 4
191	0	1	Belt Buckles	Junior 9+
192	0	1	Ben Stiller	Expansion Set 2
193	0	1	Berlin - 1945	Basic Set
194	0	1	Bert & Ernie	Expansion Set 4
195	0	1	Bert And Ernie	Junior
196	0	1	Bigfoot	Expansion Set 1
197	0	1	Big Bang Theory	Expansion Set 2
198	0	1	Big Bird	Expansion Set 3
199	0	1	Big Cities	Junior
200	0	1	Big Dogs	Junior 9+
201	0	1	Big Macs	Expansion Set 2
202	0	1	Bill & Ted	Expansion Set 4
203	0	1	Bill Clinton	Basic Set
204	0	1	Bill Gates	Basic Set
205	0	1	Bill Murray	Expansion Set 2
206	0	1	Billboards	Basic Set
207	0	1	Billy Crystal	Expansion Set 3
208	0	1	Bingo	Expansion Set 2
209	0	1	Bird Watching	Expansion Set 1
210	0	1	Birds	Junior
211	0	1	Birthday Cake	Junior
212	0	1	Black Cats	Expansion Set 3
213	0	1	Black Holes	Basic Set
214	0	1	Black Licorice	Expansion Set 3
215	0	1	Black Lingerie	Expansion Set 3
216	0	1	Black Velvet	Expansion Set 2
217	0	1	Blackouts	Expansion Set 3
218	0	1	Blizzard	Basic Set
219	0	1	Blood	Basic Set
220	0	1	Blood & Tears	Expansion Set 4
221	0	1	Blowing Bubbles	Junior
222	0	1	Blowing Your Nose	Junior
223	0	1	Blue Velvet	Expansion Set 3
224	0	1	Blueberries	Junior 9+
225	0	1	Board Games	Expansion Set 2
226	0	1	Boardwalk & Park Place	Expansion Set 4
227	0	1	Boats	Junior
228	0	1	Body & Soul	Expansion Set 4
229	0	1	Body Odor	Expansion Set 2
230	0	1	Body Piercing	Expansion Set 2
231	0	1	Body Snatchers	Expansion Set 3
232	0	1	Body Surfing	Basic Set
233	0	1	Bodybuilders	Expansion Set 3
234	0	1	Bonbons	Basic Set
235	0	1	Bongos	Expansion Set 1
236	0	1	Bonnie & Clyde	Expansion Set 4
237	0	1	Bora Bora	Expansion Set 3
238	0	1	Bottled Water	Expansion Set 2
239	0	1	Bow & Arrows	Expansion Set 4
240	0	1	Bowling	Expansion Set 3
241	0	1	Boxing	Expansion Set 2
242	0	1	Boy Scouts	Expansion Set 2
243	0	1	Boyfriends	Expansion Set 2
244	0	1	Boys	Junior
245	0	1	Braces	Junior 9+
246	0	1	Brad Pitt	Basic Set
247	0	1	Brain Surgeons	Expansion Set 1
248	0	1	Brains	Expansion Set 2
249	0	1	Bread & Water	Expansion Set 4
250	0	1	Breaking & Entering	Expansion Set 4
251	0	1	Bride & Groom	Expansion Set 4
252	0	1	Britney Spears	Expansion Set 1
253	0	1	Broadway	Expansion Set 2
254	0	1	Brooks & Dunn	Expansion Set 4
255	0	1	Brothers	Junior 9+
256	0	1	Brothers & Sisters	Expansion Set 4
257	0	1	Bruce Willis	Expansion Set 2
258	0	1	Bruises	Junior 9+
259	0	1	Brushing Your Teeth	Junior 9+
260	0	1	Bubble Bath	Junior 9+
261	0	1	Bubble Gum	Expansion Set 2
262	0	1	Bubbles	Basic Set
263	0	1	Buffalo	Junior 9+
264	0	1	Bugs	Junior
265	0	1	Bugs Bunny	Junior
266	0	1	Bulls & Bears	Expansion Set 4
267	0	1	Bullfighting	Junior 9+
268	0	1	Bullwinkle	Expansion Set 1
269	0	1	Bumble Bees	Junior
270	0	1	Bumper Cars	Expansion Set 3
271	0	1	Bumper Stickers	Expansion Set 1
272	0	1	Bungee Jumping	Basic Set
273	0	1	Bunk Beds	Junior 9+
274	0	1	Burger & Fries	Expansion Set 4
275	0	1	Burned Toast	Junior 9+
276	0	1	Bus Drivers	Junior 9+
277	0	1	Butter	Junior 9+
278	0	1	Buttons & Bows	Expansion Set 4
279	0	1	Butterflies	Junior 9+
280	0	1	Buying A House	Expansion Set 1
281	0	1	Buzz Lightyear	Junior 9+
282	0	1	Cabbage	Expansion Set 2
283	0	1	Cactus	Basic Set
284	0	1	California	Basic Set
285	0	1	Calvin & Hobbs	Expansion Set 4
286	0	1	Camelot	Expansion Set 3
287	0	1	Camels	Junior 9+
288	0	1	Cameras	Junior 9+
289	0	1	Campfire	Junior 9+
290	0	1	Camping	Junior 9+
291	0	1	Camping Trip	Expansion Set 2
292	0	1	Canada	Basic Set
293	0	1	Canadians	Basic Set
294	0	1	Candles	Junior
295	0	1	Candy	Junior
296	0	1	Candy Corn	Junior 9+
297	0	1	Canoes	Junior 9+
298	0	1	Captain Kirk	Basic Set
299	0	1	Car Bombs	Expansion Set 1
300	0	1	Car Crash	Junior 9+
301	0	1	Car Horns	Basic Set
302	0	1	Card Games	Junior 9+
303	0	1	Carl Sagan	Basic Set
304	0	1	Carlos Santana	Expansion Set 3
305	0	1	Carnival Workers	Expansion Set 1
306	0	1	Carpenters	Junior 9+
307	0	1	Carrot & A Stick	Expansion Set 4
308	0	1	Carrots	Junior 9+
309	0	1	Cary Grant	Expansion Set 2
310	0	1	Casablanca	Expansion Set 2
311	0	1	Casinos	Expansion Set 1
312	0	1	Castles	Expansion Set 2
313	0	1	Castles	Junior 9+
314	0	1	Cat & Mouse	Expansion Set 4
315	0	1	Catfish	Junior
316	0	1	Catherine Zeta-Jones	Expansion Set 3
317	0	1	Cats & Dogs	Expansion Set 4
318	0	1	Catsup	Junior 9+
319	0	1	Catsup & Mustard	Expansion Set 4
320	0	1	Cattle Ranch	Junior 9+
321	0	1	Cavities	Junior 9+
322	0	1	Cauliflower	Expansion Set 3
323	0	1	Caves	Expansion Set 1
324	0	1	Caviar	Expansion Set 3
325	0	1	CD Players	Junior 9+
326	0	1	Celine Dion	Basic Set
327	0	1	Cell Phones	Expansion Set 1
328	0	1	Cesar Chavez	Expansion Set 1
329	0	1	Chain Letters	Expansion Set 1
330	0	1	Chain Link Fences	Expansion Set 3
331	0	1	Chains	Basic Set
332	0	1	Challenger Explosion	Basic Set
333	0	1	Chameleons	Expansion Set 1
334	0	1	Charging Rhinos	Basic Set
335	0	1	Charles & Diana	Expansion Set 4
336	0	1	Charlie Brown	Junior
337	0	1	Charlotte's Web	Junior 9+
338	0	1	Chat Rooms	Expansion Set 3
339	0	1	Cheerleaders	Junior 9+
340	0	1	Cheese	Junior
341	0	1	Cheese Sandwich	Junior 9+
342	0	1	Cheesecake	Expansion Set 1
343	0	1	Cher	Basic Set
344	0	1	Cherries	Junior 9+
345	0	1	Cherry Pie	Junior
346	0	1	Chewing Your Fingernails	Junior 9+
347	0	1	Chicken Nuggets	Junior 9+
348	0	1	Chicago	Basic Set
349	0	1	Chicken Pox	Expansion Set 1
350	0	1	Chickens	Expansion Set 2
351	0	1	Chimpanzees	Basic Set
352	0	1	China	Basic Set
353	0	1	Chinatown	Expansion Set 2
354	0	1	Chips & Dip	Expansion Set 4
355	0	1	Chips & Salsa	Expansion Set 4
356	0	1	Chocolate Milk	Junior 9+
357	0	1	Choir Boys	Expansion Set 2
358	0	1	Chopsticks	Junior 9+
359	0	1	Chorus Girls	Expansion Set 2
360	0	1	Christmas	Junior
361	0	1	Churches	Junior 9+
362	0	1	Chutes & Ladders	Expansion Set 4
363	0	1	Cigarette Burns	Expansion Set 2
364	0	1	Cigarettes	Basic Set
365	0	1	Cinco de Mayo	Basic Set
366	0	1	Cinderella	Junior
367	0	1	Cindy Crawford	Basic Set
368	0	1	Circus Peanuts	Expansion Set 3
369	0	1	Clark Gable	Basic Set
370	0	1	Claude Monet	Basic Set
371	0	1	Clay	Junior 9+
372	0	1	Cleaning The Bathroom	Expansion Set 2
373	0	1	Cleaning Your Room	Junior
374	0	1	Cleopatra	Basic Set
375	0	1	Cleveland	Expansion Set 3
376	0	1	Climbing A Ladder	Junior 9+
377	0	1	Climbing A Tree	Junior 9+
378	0	1	Clint Eastwood	Basic Set
379	0	1	Cloned Sheep	Expansion Set 3
380	0	1	Clouds	Junior 9+
381	0	1	Clowns	Expansion Set 1
382	0	1	Cocaine	Basic Set
383	0	1	Cockles & Mussels	Expansion Set 4
384	0	1	Cockroaches	Basic Set
385	0	1	Coconuts	Expansion Set 2
386	0	1	Coffee	Junior 9+
387	0	1	Cold Pizza	Expansion Set 1
388	0	1	Colin Powell	Expansion Set 3
389	0	1	Collection Shells	Junior 9+
390	0	1	Comic Books	Expansion Set 3
391	0	1	Communists	Basic Set
392	0	1	Commuting	Basic Set
393	0	1	Computer Hackers	Expansion Set 2
394	0	1	Computers	Basic Set
395	0	1	Confucius	Basic Set
396	0	1	Conspiracy Theories	Expansion Set 1
397	0	1	Construction Workers	Expansion Set 1
398	0	1	Convenience Stores	Expansion Set 3
399	0	1	Cookies	Junior 9+
400	0	1	Cooking Dinner	Junior 9+
401	0	1	Cops & Robbers	Expansion Set 4
402	0	1	Coral Reef	Junior 9+
403	0	1	Corn Fields	Expansion Set 3
404	0	1	Corn Flakes	Junior 9+
405	0	1	Corn On The Cob	Basic Set
406	0	1	Corned Beef & Cabbage	Expansion Set 4
407	0	1	Corrugated Cardboard	Expansion Set 3
408	0	1	Corvettes	Expansion Set 1
409	0	1	Cottage Cheese	Expansion Set 3
410	0	1	Cotton Candy	Junior
411	0	1	Coughing & Sneezing	Expansion Set 4
412	0	1	Count Dracula	Expansion Set 1
413	0	1	Country Music	Expansion Set 2
414	0	1	Cow-Pies	Basic Set
415	0	1	Cowboys	Expansion Set 3
416	0	1	Cowboys & Indians	Expansion Set 4
417	0	1	Cows	Junior
418	0	1	Crabs	Expansion Set 3
419	0	1	Crash & Burn	Expansion Set 4
420	0	1	Crazy Horse	Expansion Set 1
421	0	1	Cream & Sugar	Expansion Set 4
422	0	1	Creamed Corn	Expansion Set 1
423	0	1	Crime & Punishment	Expansion Set 4
424	0	1	Crying	Junior 9+
425	0	1	Crystal Balls	Expansion Set 2
426	0	1	Cuba	Expansion Set 2
427	0	1	Cults	Expansion Set 1
428	0	1	Cup & Saucer	Expansion Set 4
429	0	1	Cupcakes	Junior 9+
430	0	1	Curds & Whey	Expansion Set 4
431	0	1	Currier & Ives	Expansion Set 4
432	0	1	Custer's Last Stand	Basic Set
433	0	1	Cut & Curl	Expansion Set 4
434	0	1	Cutting The Grass	Junior 9+
435	0	1	D-Day: 1944	Expansion Set 3
436	0	1	Dallas & Fort Worth	Expansion Set 4
437	0	1	Dance Class	Junior 9+
438	0	1	Dancing	Junior
439	0	1	Dandruff	Basic Set
440	0	1	Danielle Steel	Expansion Set 1
441	0	1	Danny DeVito	Expansion Set 2
442	0	1	Dark Alleys	Expansion Set 1
443	0	1	Dark Alleys	Junior 9+
444	0	1	Darth Vader	Expansion Set 1
445	0	1	Dating	Expansion Set 2
446	0	1	David & Goliath	Expansion Set 4
447	0	1	David Letterman	Expansion Set 1
448	0	1	Day Care Centers	Expansion Set 3
449	0	1	Daytime TV	Expansion Set 2
450	0	1	Dead Fish	Junior 9+
451	0	1	Death & Dying	Expansion Set 4
452	0	1	Death & Taxes	Expansion Set 4
453	0	1	Death Valley	Expansion Set 1
454	0	1	Deer Hunting	Expansion Set 1
455	0	1	Demi Moore	Expansion Set 1
456	0	1	Democrats	Basic Set
458	0	1	Dennis Rodman	Basic Set (1999 Printing Only)
459	0	1	Denzel Washington	Expansion Set 2
460	0	1	Detroit	Basic Set
461	0	1	Diamonds	Basic Set
462	0	1	Dictionaries	Junior 9+
463	0	1	Dinner & A Movie	Expansion Set 4
464	0	1	Dinosaurs	Junior
465	0	1	Dirt	Junior 9+
466	0	1	Dirty Diapers	Junior
467	0	1	Dirty Dishes	Junior 9+
468	0	1	Dirty Socks	Junior
469	0	1	Discos	Expansion Set 1
470	0	1	Discovering America	Basic Set
471	0	1	Disneyland	Basic Set
472	0	1	Divorce	Expansion Set 2
473	0	1	Doctors	Expansion Set 2
474	0	1	Doctors & Dentists	Expansion Set 4
475	0	1	Dollars & Cents	Expansion Set 4
476	0	1	Dodo Birds	Expansion Set 3
477	0	1	Dog Days	Expansion Set 3
478	0	1	Dog Food	Junior 9+
479	0	1	Doing The Dishes	Basic Set
480	0	1	Doing The Hokey-Pokey	Expansion Set 3
481	0	1	Dolly Parton	Expansion Set 1
482	0	1	Dolphins	Junior 9+
483	0	1	Donuts	Junior 9+
484	0	1	Doorbells	Junior 9+
485	0	1	Double Thick Malts	Expansion Set 3
486	0	1	Dr. Evil	Expansion Set 3
487	0	1	Dr. Jekyll & Mr. Hyde	Expansion Set 4
488	0	1	Dr. Kevorkin	Basic Set
489	0	1	Dr. Laura	Expansion Set 3
490	0	1	Dr. Seuss	Basic Set
491	0	1	Dragons	Junior
492	0	1	Drew Barrymore	Expansion Set 3
493	0	1	Drew Carey	Expansion Set 3
494	0	1	Drinking & Driving	Expansion Set 4
495	0	1	Driving A Car	Junior 9+
496	0	1	Driving Off A Cliff	Expansion Set 2
497	0	1	Drums	Junior
498	0	1	Drunk Drivers	Expansion Set 3
499	0	1	Ducks	Junior
500	0	1	Duct Tape	Basic Set
501	0	1	Dumb Blonde Jokes	Expansion Set 3
502	0	1	Dumbo	Junior
503	0	1	Dump Trucks	Junior 9+
504	0	1	Dungeons & Dragons	Expansion Set 4
505	0	1	Dustin Hoffman	Expansion Set 3
506	0	1	E-Mail	Expansion Set 1
507	0	1	Ear Wax	Expansion Set 1
508	0	1	Early Morning	Junior 9+
509	0	1	Ears	Junior 9+
510	0	1	Earthquakes	Basic Set
511	0	1	Earwigs	Expansion Set 2
512	0	1	East Coast	Basic Set
513	0	1	Eating Breakfast	Junior 9+
514	0	1	Ebony & Ivory	Expansion Set 4
515	0	1	Eddie Murphy	Expansion Set 1
516	0	1	Egg Rolls	Junior 9+
517	0	1	Eggplant	Expansion Set 3
518	0	1	Eggs	Junior 9+
519	0	1	Eleanor Roosevelt	Basic Set
520	0	1	Electric Eels	Expansion Set 1
521	0	1	Electricity	Basic Set
522	0	1	Elephants	Basic Set
523	0	1	Elevators	Junior 9+
524	0	1	Elizabeth Taylor	Basic Set
525	0	1	Elmo	Junior 9+
526	0	1	Elvis Presley	Basic Set
527	0	1	Emergency Rooms	Expansion Set 3
528	0	1	Emily Dickinson	Basic Set
529	0	1	Erasers	Junior 9+
530	0	1	Ernest Hemingway	Basic Set
531	0	1	Europe	Basic Set
532	0	1	Exorcism	Expansion Set 1
533	0	1	Exterminators	Expansion Set 3
534	0	1	Eyes	Basic Set
535	0	1	Face Paint	Junior
536	0	1	Factories	Junior 9+
537	0	1	Fairies	Expansion Set 3
538	0	1	Faith Hill	Expansion Set 3
539	0	1	Falling Down	Expansion Set 1
540	0	1	Fame & Fortune	Expansion Set 4
541	0	1	Family Reunions	Expansion Set 1
542	0	1	Family Vacations	Expansion Set 1
543	0	1	Family Values	Expansion Set 2
544	0	1	Farmers	Junior 9+
545	0	1	Farms	Junior
546	0	1	Fast Food	Expansion Set 1
547	0	1	Fat	Expansion Set 3
548	0	1	Fear & Loathing	Expansion Set 4
549	0	1	Feathers	Expansion Set 2
550	0	1	Feminists	Expansion Set 2
551	0	1	Ferdinand & Isabella	Expansion Set 4
552	0	1	Fertilizer	Expansion Set 3
553	0	1	Festering Wounds	Expansion Set 1
554	0	1	Fidel Castro	Basic Set
555	0	1	Field & Stream	Expansion Set 4
556	0	1	Finger Painting	Junior
557	0	1	Fire	Junior
558	0	1	Firefighters	Basic Set
559	0	1	Firestorms	Basic Set
560	0	1	Fireworks	Expansion Set 1
561	0	1	First Man On The Moon	Basic Set
562	0	1	Fish & Chips	Expansion Set 4
563	0	1	Fishing	Junior
564	0	1	Flags	Junior 9+
565	0	1	Flannel Shirts	Expansion Set 3
566	0	1	Flash Floods	Expansion Set 3
567	0	1	Flashlights	Junior 9+
568	0	1	Flies	Junior 9+
569	0	1	Flip-Flops	Junior 9+
570	0	1	Flipper	Expansion Set 2
571	0	1	Floods	Junior 9+
572	0	1	Florence Nightengale	Expansion Set 3
573	0	1	Flour	Junior 9+
574	0	1	Flower Gardens	Junior 9+
575	0	1	Flowers & Candy	Expansion Set 4
576	0	1	Fly Fishing	Expansion Set 1
577	0	1	Flying A Kite	Junior
578	0	1	Flying Monkeys	Expansion Set 1
579	0	1	Folk Music	Expansion Set 3
580	0	1	Food & Shelter	Expansion Set 4
581	0	1	Food Poisoning	Expansion Set 3
582	0	1	Foot & Mouth	Expansion Set 4
583	0	1	Football	Junior 9+
584	0	1	Football Players	Junior
585	0	1	Forest Fires	Expansion Set 2
586	0	1	Forever & Ever	Expansion Set 4
587	0	1	Fort Knox	Expansion Set 1
588	0	1	Fortune Cookies	Expansion Set 3
589	0	1	Fortune Teller	Junior 9+
590	0	1	Fourth Of July	Basic Set
591	0	1	Frank Lloyd Wright	Expansion Set 1
592	0	1	Frank Sinatra	Basic Set
593	0	1	Freaks & Geeks	Expansion Set 4
594	0	1	Freckles	Expansion Set 1
595	0	1	Fred & Ginger	Expansion Set 4
596	0	1	Fred & Wilma	Expansion Set 4
597	0	1	Fred Flintstone	Expansion Set 3
598	0	1	Freedom	Expansion Set 1
599	0	1	French Fries	Junior 9+
600	0	1	French Wines	Expansion Set 2
601	0	1	Fresh Water Pearls	Expansion Set 2
602	0	1	Friction	Basic Set
603	0	1	Friends & Family	Expansion Set 4
604	0	1	Frisbees	Expansion Set 3
605	0	1	Frog & Toad	Expansion Set 4
606	0	1	Frogs	Junior 9+
607	0	1	Frosty The Snowman	Junior
608	0	1	Frozen Peas	Junior 9+
609	0	1	Fund Raising	Expansion Set 2
610	0	1	Funerals	Basic Set
611	0	1	Fur	Basic Set
612	0	1	Fuzz	Basic Set
613	0	1	Gall Bladder	Expansion Set 2
614	0	1	Gang Members	Basic Set
615	0	1	Garages	Junior 9+
616	0	1	Garbage Cans	Junior 9+
617	0	1	Gardening	Expansion Set 3
618	0	1	Garrison Keillor	Expansion Set 2
619	0	1	Garth Brooks	Basic Set
620	0	1	Gas Stations	Junior 9+
621	0	1	Geishas	Expansion Set 2
622	0	1	Gen. George S. Patton	Expansion Set 1
623	0	1	Genetic Engineering	Expansion Set 2
624	0	1	George & Jane His Wife	Expansion Set 4
625	0	1	Ghosts & Goblins	Expansion Set 4
627	0	1	George W. Bush	Basic Set (2001 Printing Forward)
628	0	1	George Washington	Expansion Set 2
629	0	1	George Washington	Junior
630	0	1	Georgia O'Keeffe	Expansion Set 1
631	0	1	Getting A Haircut	Junior 9+
632	0	1	Getting A Hug	Basic Set
633	0	1	Getting A Shot	Junior 9+
634	0	1	Getting Head Lice	Junior 9+
635	0	1	Getting Lost	Junior 9+
636	0	1	Getting Mail	Junior
637	0	1	Getting Sick	Junior
638	0	1	Getting Stitches	Junior 9+
639	0	1	Getting The Flu	Junior 9+
640	0	1	Gettysburg 1863	Expansion Set 3
641	0	1	Ghost Towns	Expansion Set 2
642	0	1	Ghosts	Basic Set
643	0	1	GI Joe	Junior 9+
644	0	1	Giant Squid	Basic Set
645	0	1	Gila Monsters	Expansion Set 2
646	0	1	Gilligan's Island	Expansion Set 3
647	0	1	Ginger & Mary Ann	Expansion Set 4
648	0	1	Gingko Trees	Expansion Set 2
649	0	1	Ginseng	Expansion Set 1
650	0	1	Giraffes	Expansion Set 3
651	0	1	Girl Scouts	Expansion Set 1
652	0	1	Girlfriends	Expansion Set 2
653	0	1	Girls	Junior
654	0	1	Giving A Hug	Basic Set
655	0	1	Glaciers	Expansion Set 2
656	0	1	Glass	Junior 9+
657	0	1	Glazed Donuts	Expansion Set 2
658	0	1	Global Warming	Expansion Set 1
659	0	1	Globes	Junior 9+
660	0	1	Glue	Junior
661	0	1	Go Karts	Expansion Set 3
662	0	1	Goats	Junior 9+
663	0	1	Going On A Cruise	Expansion Set 3
664	0	1	Going On A Safari	Junior 9+
665	0	1	Going On Vacation	Junior 9+
666	0	1	Going To A Movie	Junior
667	0	1	Going To Church	Expansion Set 2
668	0	1	Going To Grandma's	Expansion Set 1
669	0	1	Going To School	Basic Set
670	0	1	Going To The Dentist	Basic Set
671	0	1	Going To The Gym	Basic Set
672	0	1	Gold	Junior
673	0	1	Gold & Silver	Expansion Set 4
674	0	1	Gold Chains	Expansion Set 2
675	0	1	Goldfish	Expansion Set 2
676	0	1	Goldie Hawn	Expansion Set 1
677	0	1	Golf-Ball-Sized Hail	Basic Set
678	0	1	Good & Plenty	Expansion Set 4
679	0	1	Goose & The Gander	Expansion Set 4
680	0	1	Gorillas	Junior 9+
681	0	1	Gossip	Expansion Set 1
682	0	1	Gourmet Coffee Shops	Expansion Set 3
683	0	1	Grace Kelly	Expansion Set 2
684	0	1	Graffiti	Expansion Set 1
685	0	1	Grape Jelly	Junior 9+
686	0	1	Grapefruit	Junior 9+
687	0	1	Grapes	Junior
688	0	1	Grass Skirts	Expansion Set 2
689	0	1	Grassy Hill	Junior
690	0	1	Grave Robbers	Expansion Set 1
691	0	1	Gravity	Basic Set
692	0	1	Gravy	Junior 9+
693	0	1	Grease	Expansion Set 3
694	0	1	Grease & Grime	Expansion Set 4
695	0	1	Green Beans	Junior 9+
696	0	1	Greenpeace	Expansion Set 2
697	0	1	Grocery Stores	Junior
698	0	1	Guitars	Junior 9+
699	0	1	Gummi Bears	Junior
700	0	1	Gym Teachers	Expansion Set 2
701	0	1	Gymnastics	Junior 9+
702	0	1	Haiku	Expansion Set 3
703	0	1	Hair Transplants	Expansion Set 2
704	0	1	Hairballs	Basic Set
705	0	1	Halloween	Expansion Set 2
706	0	1	Ham Sandwhich	Junior 9+
707	0	1	Hamburgers	Junior 9+
708	0	1	Hammer & Nails	Expansion Set 4
709	0	1	Hammer & Sickle	Expansion Set 4
710	0	1	Hammerhead Sharks	Junior 9+
711	0	1	Hammers	Junior 9+
712	0	1	Hamsters	Junior 9+
713	0	1	Hand Grenades	Expansion Set 2
714	0	1	Handcuffs	Basic Set
715	0	1	Handguns	Expansion Set 1
716	0	1	Hang Gliding	Expansion Set 3
717	0	1	Hangnails	Basic Set
718	0	1	Hansel & Gretel	Expansion Set 4
719	0	1	Hanukkah	Junior
720	0	1	Hard Boiled Eggs	Expansion Set 3
721	0	1	Harrison Ford	Expansion Set 3
722	0	1	Harry Potter	Expansion Set 3
723	0	1	Harvard & Yale	Expansion Set 4
724	0	1	Haunted House	Junior 9+
725	0	1	Having A Baby	Expansion Set 1
726	0	1	Having A Party	Junior 9+
727	0	1	Having An Operation	Basic Set
728	0	1	Hawaii	Basic Set
729	0	1	Hawks & Doves	Expansion Set 4
730	0	1	Head Lice	Expansion Set 3
731	0	1	Heart & Soul	Expansion Set 4
732	0	1	Heaven & Hell	Expansion Set 4
733	0	1	Helen Keller	Basic Set
734	0	1	Helicopters	Junior 9+
735	0	1	Herb Gardens	Expansion Set 3
736	0	1	Here & There	Expansion Set 4
737	0	1	Hiccups	Expansion Set 1
738	0	1	Hiding Places	Junior 9+
739	0	1	High Heels	Junior 9+
740	0	1	High School	Junior 9+
741	0	1	High School Football	Basic Set
742	0	1	High School Reunions	Expansion Set 1
743	0	1	Hiking In The Woods	Junior 9+
744	0	1	Hillary Rodham Clinton	Basic Set
745	0	1	Hills & Valleys	Expansion Set 4
746	0	1	Hip Hop	Expansion Set 3
747	0	1	Hippopotamus	Junior 9+
748	0	1	Hiroshima - 1945	Basic Set
749	0	1	Hit & Run	Expansion Set 4
750	0	1	Hitting A Home-Run	Junior 9+
751	0	1	HMOs	Expansion Set 2
752	0	1	Hockey	Basic Set
753	0	1	Hockey	Junior 9+
754	0	1	Hollywood	Basic Set
755	0	1	Hollywood & Vine	Expansion Set 4
756	0	1	Homeless Shelters	Expansion Set 2
757	0	1	Homework	Junior
758	0	1	Homer Simpson	Basic Set
759	0	1	Homework	Basic Set
760	0	1	Honey	Junior 9+
761	0	1	Hook & Ladder Trucks	Expansion Set 4
762	0	1	Hooligans	Basic Set
763	0	1	Hootie & The Blowfish	Expansion Set 4
764	0	1	Hopscotch	Junior 9+
765	0	1	Horse & Cart	Expansion Set 4
766	0	1	Horseback Riding	Expansion Set 2
767	0	1	Horses	Junior 9+
768	0	1	Hospital Gowns	Expansion Set 3
769	0	1	Hospitals	Junior 9+
770	0	1	Hot Chocolate	Junior
771	0	1	Hot Lava	Basic Set
772	0	1	Hot Tubs	Junior 9+
773	0	1	Hot Wheels Cars	Junior
774	0	1	Hotdogs	Junior
775	0	1	Hotels & Motels	Expansion Set 4
776	0	1	House & Home	Expansion Set 4
777	0	1	House Guests	Expansion Set 1
778	0	1	Howard Stern	Expansion Set 3
779	0	1	Hugs	Junior
780	0	1	Hummingbirds	Basic Set
781	0	1	Humphrey Bogart	Basic Set
782	0	1	Hunters	Junior 9+
783	0	1	Husbands & Wives	Expansion Set 4
784	0	1	Ice	Junior 9+
785	0	1	Ice & Snow	Expansion Set 4
786	0	1	Ice Cream	Junior
787	0	1	Ice Skating	Junior
788	0	1	Icebergs	Basic Set
789	0	1	In A Coma	Expansion Set 2
790	0	1	In The Attic	Junior 9+
791	0	1	In The Basement	Junior
792	0	1	In The Doghouse	Expansion Set 3
793	0	1	Incense	Expansion Set 1
794	0	1	Inchworm	Junior 9+
795	0	1	India	Expansion Set 2
796	0	1	Indiana Jones	Expansion Set 2
797	0	1	Industrial Revolution	Basic Set
798	0	1	Infomercials	Basic Set
799	0	1	Inside The Sun	Basic Set
800	0	1	Intellectuals	Expansion Set 2
801	0	1	Ireland	Expansion Set 2
802	0	1	Irrational Fears	Expansion Set 3
803	0	1	Israel	Expansion Set 2
804	0	1	Italy	Basic Set
805	0	1	Itchy Clothes	Junior
806	0	1	Jack Nicholson	Expansion Set 1
807	0	1	Jack The Ripper	Expansion Set 1
808	0	1	Jackie Chan	Expansion Set 1
809	0	1	Jacques Cousteau	Basic Set
810	0	1	Jail	Junior
811	0	1	Jamaica	Expansion Set 2
812	0	1	James Bond	Basic Set
813	0	1	James Dean	Basic Set
814	0	1	Japan	Basic Set
815	0	1	Japanese	Basic Set
816	0	1	Jell-O	Junior
817	0	1	Jelly Beans	Expansion Set 1
818	0	1	Jenna & Barbara	Expansion Set 4
819	0	1	Jennifer Lopez	Expansion Set 2
820	0	1	Jerry Springer	Expansion Set 1
821	0	1	Jesse Jackson	Expansion Set 1
822	0	1	Jesse Ventura	Expansion Set 1
823	0	1	Jim Carrey	Expansion Set 1
824	0	1	Jimmy Stewart	Expansion Set 2
825	0	1	Joan Of Arc	Basic Set
826	0	1	Jodie Foster	Expansion Set 2
827	0	1	John F. Kennedy	Basic Set
828	0	1	John Glenn	Expansion Set 2
829	0	1	John Philip Sousa	Expansion Set 2
830	0	1	John Travolta	Expansion Set 1
831	0	1	John Wayne	Expansion Set 3
832	0	1	Johnny Depp	Expansion Set 3
833	0	1	Jonah & The Whale	Expansion Set 4
834	0	1	Judge Judy	Expansion Set 2
835	0	1	Juggling	Junior 9+
836	0	1	Julia Roberts	Expansion Set 2
837	0	1	Jumping Rope	Junior
838	0	1	Junk Mail	Expansion Set 2
839	0	1	Junkyard Dogs	Expansion Set 3
840	0	1	Jupiter	Expansion Set 2
841	0	1	Jurassic Park	Expansion Set 3
842	0	1	Kangaroos	Junior
843	0	1	Katherine Hepburn	Basic Set
844	0	1	Keanu Reeves	Expansion Set 2
845	0	1	Kickball	Junior 9+
846	0	1	Killer Whales	Basic Set
847	0	1	Kilts	Expansion Set 2
848	0	1	Kindergarten	Junior 9+
849	0	1	King Arthur	Expansion Set 1
850	0	1	King Henry VIII	Basic Set
851	0	1	King Tut	Expansion Set 3
852	0	1	Kiss & Tell	Expansion Set 4
853	0	1	Kisses	Junior 9+
854	0	1	Kittens	Junior
855	0	1	Knife & Fork	Expansion Set 4
856	0	1	Knitting Needles	Expansion Set 3
857	0	1	Knock-Knock Jokes	Expansion Set 1
858	0	1	Labor Unions	Expansion Set 1
859	0	1	Lady & The Tramp	Expansion Set 4
860	0	1	Ladybugs	Junior
861	0	1	Lance Armstrong	Expansion Set 3
862	0	1	Large Mouth Bass	Expansion Set 2
863	0	1	Las Vegas	Basic Set
864	0	1	Lassie	Expansion Set 3
865	0	1	Last Night	Expansion Set 3
866	0	1	Last Will & Testament	Expansion Set 4
867	0	1	Laurel & Hardy	Expansion Set 4
868	0	1	Laverne & Shirley	Expansion Set 4
869	0	1	Law & Order	Expansion Set 4
870	0	1	Lawyers	Basic Set
871	0	1	Leaf Blowers	Expansion Set 2
872	0	1	Learning Spanish	Junior 9+
873	0	1	Learning To Ski	Junior 9+
874	0	1	Leather	Basic Set
875	0	1	Leather & Lace	Expansion Set 4
876	0	1	Leeches	Expansion Set 1
877	0	1	Lego Building Blocks	Junior 9+
878	0	1	Legs	Junior 9+
879	0	1	Lemon & Lime	Expansion Set 4
880	0	1	Lemon Meringue Pie	Expansion Set 3
881	0	1	Lemonade	Junior 9+
882	0	1	Lemons	Expansion Set 1
883	0	1	Lemons	Junior
884	0	1	Lenin's Tomb	Expansion Set 2
885	0	1	Leonardo Da Vinci	Basic Set
886	0	1	Lethal Injection	Expansion Set 3
887	0	1	Lewis & Clark	Expansion Set 4
888	0	1	Liberty & Justice	Expansion Set 4
889	0	1	Life Jackets	Junior 9+
890	0	1	Lifeguard	Junior
891	0	1	Lightning	Basic Set
892	0	1	Lightning	Junior
893	0	1	Linguine With Clam Sauce	Expansion Set 3
894	0	1	Lions	Junior
895	0	1	Lions & Tigers	Expansion Set 4
896	0	1	Liposuction	Expansion Set 3
897	0	1	Listening To Music	Junior 9+
898	0	1	Little Brown Mice	Junior 9+
899	0	1	Liver And Onions	Expansion Set 3
900	0	1	Lizards	Junior 9+
901	0	1	Llamas	Junior 9+
902	0	1	Loan Sharks	Expansion Set 2
903	0	1	Lobster	Basic Set
904	0	1	Lobsters	Junior 9+
905	0	1	Local Police	Expansion Set 2
906	0	1	Loch Ness Monster	Expansion Set 3
907	0	1	Lock & Key	Expansion Set 4
908	0	1	Lock & Load	Expansion Set 4
909	0	1	Log Cabins	Expansion Set 2
910	0	1	Lollipops	Basic Set
911	0	1	London	Basic Set
912	0	1	Long Hair	Junior 9+
913	0	1	Looking For A Job	Expansion Set 2
914	0	1	Looney Tunes	Expansion Set 3
915	0	1	Los Angeles	Expansion Set 2
916	0	1	Losing Your Backpack	Junior 9+
917	0	1	Losing Your Job	Expansion Set 1
918	0	1	Love & Marriage	Expansion Set 4
919	0	1	Love Letters	Junior 9+
920	0	1	Lox & Bagels	Expansion Set 4
921	0	1	Lucille Ball	Basic Set
922	0	1	Lucy & Desi	Expansion Set 4
923	0	1	M & M's	Expansion Set 4
924	0	1	Macaroni & Cheese	Expansion Set 4
925	0	1	Macaroni And Cheese	Junior
926	0	1	Machine Guns	Basic Set
927	0	1	Mad Cow Disease	Expansion Set 1
928	0	1	Madame Curie	Expansion Set 2
929	0	1	Madeline	Junior
930	0	1	Madonna	Basic Set
931	0	1	Mae West	Expansion Set 3
932	0	1	Magic Tricks	Junior 9+
933	0	1	Maggots	Expansion Set 3
934	0	1	Magic Tricks	Expansion Set 2
935	0	1	Mahatma Gandhi	Basic Set
936	0	1	Mail Carrier	Junior
937	0	1	Manhattan	Expansion Set 2
938	0	1	Maple Syrup	Expansion Set 3
939	0	1	Mardi Gras	Expansion Set 2
940	0	1	Marilyn Monroe	Basic Set
941	0	1	Marlon Brando	Expansion Set 3
942	0	1	Mars	Expansion Set 1
943	0	1	Mark Twain	Basic Set
944	0	1	Marriage	Basic Set
945	0	1	Martha Stewart	Basic Set
946	0	1	Martin Luther King Jr.	Basic Set
947	0	1	Mary-Kate And Ashley	Junior 9+
948	0	1	Mashed Potatoes	Junior 9+
949	0	1	Math	Junior 9+
950	0	1	Matzo Balls	Expansion Set 3
951	0	1	Maui	Expansion Set 3
952	0	1	Maximum Security Prison	Expansion Set 3
953	0	1	McDonald's	Junior 9+
954	0	1	Me & My Shadow	Expansion Set 4
955	0	1	Meat & Potatoes	Expansion Set 4
956	0	1	Meat Cleavers	Expansion Set 2
957	0	1	Meat Markets	Expansion Set 3
958	0	1	Meatballs	Junior 9+
959	0	1	Meatloaf	Expansion Set 1
960	0	1	Meg Ryan	Expansion Set 2
961	0	1	Mel Gibson	Expansion Set 1
962	0	1	Men	Expansion Set 2
963	0	1	Men In Black	Expansion Set 1
964	0	1	Mensa High IQ Society	Expansion Set 3
965	0	1	Meryl Streep	Expansion Set 2
966	0	1	Mexico	Basic Set
967	0	1	Mice	Basic Set
968	0	1	Michael Jackson	Basic Set
969	0	1	Michael Jordon	Basic Set
970	0	1	Michelangelo	Expansion Set 1
971	0	1	Michelle Pfeiffer	Basic Set
972	0	1	Mickey & Minnie	Expansion Set 4
973	0	1	Mickey Mouse	Junior
974	0	1	Microsoft	Expansion Set 2
975	0	1	Midlife Crisis	Expansion Set 1
976	0	1	Midnight	Junior 9+
977	0	1	Migraine Headaches	Expansion Set 3
978	0	1	Mike Tyson	Basic Set
979	0	1	Miles Davis	Expansion Set 1
980	0	1	Milk	Basic Set
981	0	1	Milk & Cookies	Expansion Set 4
982	0	1	Milk Duds	Expansion Set 2
983	0	1	Milking A Cow	Junior 9+
984	0	1	Milwaukee	Expansion Set 3
985	0	1	Miniature Golf	Junior 9+
986	0	1	Minneapolis & St. Paul	Expansion Set 4
987	0	1	Mirrors	Basic Set
988	0	1	Mittens	Junior
989	0	1	Mold	Basic Set
990	0	1	Mom & Apple Pie	Expansion Set 4
991	0	1	Mom & Pop	Expansion Set 4
992	0	1	Mom's Cooking	Expansion Set 3
993	0	1	Money	Basic Set
994	0	1	Monitor & The Merrimac	Expansion Set 4
995	0	1	Monkeys	Expansion Set 3
996	0	1	Monster Trucks	Junior
997	0	1	Monsters	Junior
998	0	1	Moon & The Stars	Expansion Set 4
999	0	1	Morticians	Basic Set
1000	0	1	Mosquito Bites	Junior 9+
1001	0	1	Mosquitoes	Expansion Set 1
1002	0	1	Motorcycles	Expansion Set 2
1003	0	1	Motorcycles	Junior 9+
1004	0	1	Mount Rushmore	Expansion Set 1
1005	0	1	Mount Vesuvius	Expansion Set 3
1006	0	1	Mountain Bikes	Junior 9+
1007	0	1	Mountains	Junior
1008	0	1	Mr. Potato Head	Junior 9+
1009	0	1	MTV	Expansion Set 1
1010	0	1	Mud	Basic Set
1011	0	1	Muddy Feet	Junior
1012	0	1	Mudslides	Expansion Set 2
1013	0	1	Muffins	Junior 9+
1014	0	1	Muhammad Ali	Expansion Set 1
1015	0	1	Mushrooms	Junior 9+
1016	0	1	Music	Junior 9+
1017	0	1	Music Lessons	Junior 9+
1018	0	1	Musicals	Expansion Set 2
1019	0	1	Mustard	Junior 9+
1020	0	1	Mutual Funds	Expansion Set 3
1021	0	1	My 16th Birthday	Basic Set
1022	0	1	My Baby Blanket	Junior 9+
1023	0	1	My Bank Account	Basic Set
1024	0	1	My Bathroom	Basic Set
1025	0	1	My Bedroom	Basic Set
1026	0	1	My Best Friend	Junior 9+
1027	0	1	My Body	Basic Set
1028	0	1	My Boss	Basic Set
1029	0	1	My Dad	Junior
1030	0	1	My Dreams	Expansion Set 1
1031	0	1	My Family	Basic Set
1032	0	1	My Father	Expansion Set 3
1033	0	1	My First Kiss	Basic Set
1034	0	1	My Friends	Expansion Set 2
1035	0	1	My Future	Basic Set
1036	0	1	My Grandma	Junior
1037	0	1	My Grandpa	Junior
1038	0	1	My Hair	Basic Set
1039	0	1	My High School Prom	Basic Set
1040	0	1	My Home	Junior
1041	0	1	My Job	Basic Set
1042	0	1	My Life	Expansion Set 3
1043	0	1	My Love Life	Basic Set
1044	0	1	My Memories	Expansion Set 3
1045	0	1	My Mind	Basic Set
1046	0	1	My Mom	Junior
1047	0	1	My Mother	Expansion Set 3
1048	0	1	My Neighborhood	Expansion Set 1
1049	0	1	My Past	Basic Set
1050	0	1	My Personality	Expansion Set 1
1051	0	1	My Refrigerator	Expansion Set 1
1052	0	1	My Room	Junior
1053	0	1	My School	Junior 9+
1054	0	1	My Shoes	Junior
1055	0	1	My Stuffed Animals	Junior 9+
1056	0	1	My Teacher	Junior
1057	0	1	My Town	Junior 9+
1058	0	1	Nail Polish	Junior 9+
1059	0	1	Napoleon Bonaparte	Basic Set
1060	0	1	NASA	Expansion Set 3
1061	0	1	NASCAR	Expansion Set 1
1062	0	1	Nashville	Expansion Set 3
1063	0	1	Neighbors	Junior 9+
1064	0	1	Neil Simon	Expansion Set 2
1065	0	1	New Orleans	Basic Set
1066	0	1	New Shoes	Expansion Set 1
1067	0	1	New York City	Basic Set
1068	0	1	New Yorkers	Expansion Set 3
1069	0	1	Niagara Falls	Expansion Set 1
1070	0	1	Nicholas Cage	Expansion Set 2
1071	0	1	Night	Junior
1072	0	1	Ninjas	Expansion Set 1
1073	0	1	Nirvana	Expansion Set 3
1074	0	1	Nobel Peace Prize	Expansion Set 1
1075	0	1	Noisy Neighbors	Expansion Set 2
1076	0	1	Noodles	Junior 9+
1077	0	1	Normal Rockwell	Basic Set
1078	0	1	North & South Dakota	Expansion Set 4
1079	0	1	North Pole	Junior 9+
1080	0	1	Nosebleeds	Expansion Set 3
1081	0	1	*NSYNC	Expansion Set 3
1082	0	1	Nuclear Power Plants	Expansion Set 1
1083	0	1	Nuts & Bolts	Expansion Set 4
1084	0	1	NYPD	Expansion Set 1
1085	0	1	Oatmeal	Junior
1086	0	1	Octopus	Junior 9+
1087	0	1	Odds & Ends	Expansion Set 4
1088	0	1	Oil & Filter	Expansion Set 4
1089	0	1	Oil & Vinegar	Expansion Set 4
1090	0	1	Oil Spills	Expansion Set 1
1091	0	1	Old Age	Expansion Set 3
1092	0	1	Olive Oil	Basic Set
1093	0	1	On The Roof	Junior 9+
1094	0	1	On-Line Shopping	Expansion Set 2
1095	0	1	Onions	Junior
1096	0	1	Oprah Winfrey	Basic Set
1097	0	1	Oral Surgery	Expansion Set 2
1098	0	1	Orange Juice	Junior 9+
1099	0	1	Oranges	Basic Set
1100	0	1	Ordinary People	Expansion Set 3
1101	0	1	Outer Space	Junior
1102	0	1	Owls	Junior
1103	0	1	Oxygen	Basic Set
1104	0	1	Pablo Picasso	Basic Set
1105	0	1	Pacific Ocean	Junior 9+
1106	0	1	Pail & Shovel	Expansion Set 4
1107	0	1	Painting A Fence	Junior 9+
1108	0	1	Pajamas	Junior
1109	0	1	Pancakes	Junior 9+
1110	0	1	Panda Bears	Junior 9+
1111	0	1	Panning For Gold	Expansion Set 3
1112	0	1	Paper Route	Junior 9+
1113	0	1	Parachutes	Junior 9+
1114	0	1	Parenting	Basic Set
1115	0	1	Paris France	Basic Set
1116	0	1	Parties	Junior
1117	0	1	Paul McCartney & Wings	Expansion Set 4
1118	0	1	Paying Bills	Basic Set
1119	0	1	Paying Taxes	Basic Set
1120	0	1	Peace & Love	Expansion Set 4
1121	0	1	Peace & Quiet	Expansion Set 4
1122	0	1	Peaches - Fuzzy fruit.	Junior 9+
1123	0	1	Peaches & Cream	Expansion Set 4
1124	0	1	Peacocks	Junior 9+
1125	0	1	Peanut Butter	Junior
1126	0	1	Peanut Butter & Jelly	Expansion Set 4
1127	0	1	Peanuts	Junior 9+
1128	0	1	Peanuts & Popcorn	Expansion Set 4
1129	0	1	Pearl Earrings	Junior 9+
1130	0	1	Pebbles & Bamm-Bamm	Expansion Set 4
1131	0	1	Pencil & Paper	Expansion Set 4
1132	0	1	Pencils	Junior 9+
1133	0	1	Penguins	Expansion Set 1
1134	0	1	Penn & Teller	Expansion Set 4
1135	0	1	Pennies	Junior 9+
1136	0	1	Peppers	Junior 9+
1137	0	1	Perfume	Junior 9+
1138	0	1	Peter Pan	Junior
1139	0	1	Pez Dispensers	Expansion Set 3
1140	0	1	Phone & Fax	Expansion Set 4
1141	0	1	Picking Your Nose	Basic Set
1142	0	1	Pickles	Junior 9+
1143	0	1	Picnics	Junior
1144	0	1	Pierced Ears	Junior 9+
1145	0	1	Pigeons	Basic Set
1146	0	1	Pigs	Basic Set
1147	0	1	Pillow Fights	Junior 9+
1148	0	1	Pillows	Junior 9+
1149	0	1	Pilots	Junior 9+
1150	0	1	Pimples	Junior 9+
1151	0	1	Pi¤atas	Junior 9+
1152	0	1	Pine Cones	Junior 9+
1153	0	1	Pine Trees	Junior
1154	0	1	Pineapple	Expansion Set 3
1155	0	1	Pineapples	Junior 9+
1156	0	1	Pink Flamingos	Expansion Set 3
1157	0	1	Pinocchio	Junior 9+
1158	0	1	Pins & Needles	Expansion Set 4
1159	0	1	Piranha	Basic Set
1160	0	1	Pirates	Expansion Set 2
1161	0	1	Pit Bulls	Basic Set
1162	0	1	Pizza	Junior
1163	0	1	Plane Crashes	Expansion Set 2
1164	0	1	Planting Flowers	Junior 9+
1165	0	1	Plastic	Basic Set
1166	0	1	Play-Doh	Junior
1167	0	1	Playgrounds	Junior
1168	0	1	Playing Checkers	Junior
1169	0	1	Playing Chess	Basic Set
1170	0	1	Playing Golf	Expansion Set 3
1171	0	1	Pluto	Junior 9+
1172	0	1	Poison Ivy	Expansion Set 1
1173	0	1	Pokemon	Expansion Set 1
1174	0	1	Pole Vaulting	Expansion Set 3
1175	0	1	Pomp & Circumstance	Expansion Set 4
1176	0	1	Pond Scum	Basic Set
1177	0	1	Poodles	Expansion Set 2
1178	0	1	Popcorn	Expansion Set 2
1179	0	1	Porcupines	Expansion Set 3
1180	0	1	Pork & Beans	Expansion Set 4
1181	0	1	Porsche Boxster	Expansion Set 2
1182	0	1	Postal Workers	Expansion Set 1
1183	0	1	Potato Chips	Junior 9+
1184	0	1	Pounding Nails	Junior
1185	0	1	Power & Glory	Expansion Set 4
1186	0	1	Power Drills	Junior 9+
1187	0	1	Power Rangers	Junior 9+
1188	0	1	Power Tools	Expansion Set 1
1189	0	1	President Bush	Expansion Set 3
1190	0	1	Pretzels	Junior 9+
1191	0	1	Pride & Prejudice	Expansion Set 4
1192	0	1	Prince Charming	Expansion Set 2
1193	0	1	Princess Di	Basic Set
1194	0	1	Pro Wrestling	Basic Set
1195	0	1	Psychiatrists	Expansion Set 2
1196	0	1	Psychics	Expansion Set 1
1197	0	1	Public Radio	Basic Set
1198	0	1	Puff Daddy	Basic Set
1199	0	1	Pulling Weeds	Expansion Set 1
1200	0	1	Pumping Iron	Basic Set
1201	0	1	Pumpkins	Junior 9+
1202	0	1	Puppets	Junior 9+
1203	0	1	Puppies	Junior
1204	0	1	Pushups	Expansion Set 2
1205	0	1	Pyramids	Expansion Set 2
1206	0	1	Queen Elizabeth II	Expansion Set 3
1207	0	1	Quentin Terantino	Basic Set
1208	0	1	Quicksand	Basic Set
1209	0	1	R & B	Expansion Set 4
1210	0	1	R & D	Expansion Set 4
1211	0	1	R & R	Expansion Set 4
1212	0	1	Rabbits	Junior
1213	0	1	Raccoons	Junior
1214	0	1	Race Car Drivers	Junior 9+
1215	0	1	Radios	Junior 9+
1216	0	1	Raggedy Ann	Junior
1217	0	1	Ragweed	Expansion Set 2
1218	0	1	Rain	Basic Set
1219	0	1	Rain Forests	Junior 9+
1220	0	1	Rainbows	Expansion Set 1
1221	0	1	Raisins	Junior 9+
1222	0	1	Raking Leaves	Junior 9+
1223	0	1	Ramona	Junior 9+
1224	0	1	Rap Music	Junior 9+
1225	0	1	Rappers	Basic Set
1226	0	1	Rats	Junior
1227	0	1	Raves	Expansion Set 3
1228	0	1	Reading & Writing	Expansion Set 4
1229	0	1	Reading A Book	Junior
1230	0	1	Reading A Good Book	Expansion Set 1
1231	0	1	Recess	Junior
1232	0	1	Recreational Vehicles	Expansion Set 1
1233	0	1	Recycling	Expansion Set 1
1234	0	1	Red Raspberries	Expansion Set 2
1235	0	1	Red Roses	Junior 9+
1236	0	1	Rednecks	Expansion Set 1
1237	0	1	Redwood Forests	Basic Set
1238	0	1	Reggae Music	Expansion Set 1
1239	0	1	Regis & ...	Expansion Set 4
1240	0	1	Regis Philbin	Expansion Set 1
1241	0	1	Remote Controls	Basic Set
1242	0	1	Republicans	Basic Set
1243	0	1	Restaurants	Junior 9+
1244	0	1	Rice	Junior 9+
1245	0	1	Rice & Beans	Expansion Set 4
1246	0	1	Rice Krispies Treats	Expansion Set 3
1247	0	1	Richard Nixon	Expansion Set 2
1248	0	1	Richard Simmons	Expansion Set 3
1249	0	1	Riding A Bike	Junior
1250	0	1	Riding A Horse	Junior
1251	0	1	Riding A Scooter	Junior 9+
1252	0	1	Rio De Janeiro	Expansion Set 3
1253	0	1	Rivers	Junior
1254	0	1	Road Kill	Expansion Set 1
1255	0	1	Road Rage	Expansion Set 3
1256	0	1	Road Trips	Expansion Set 1
1257	0	1	Robert DeNiro	Expansion Set 2
1258	0	1	Robin Hood	Expansion Set 3
1259	0	1	Robin Williams	Basic Set
1260	0	1	Robots	Junior 9+
1261	0	1	Rock & Roll	Expansion Set 4
1262	0	1	Rock And Roll	Expansion Set 2
1263	0	1	Rock Candy	Junior 9+
1264	0	1	Rock Concert	Basic Set
1265	0	1	Rock Concerts	Junior 9+
1266	0	1	Rock Stars	Junior 9+
1267	0	1	Rocket Scientists	Expansion Set 1
1268	0	1	Rocking Chairs	Junior 9+
1269	0	1	Rocks	Junior 9+
1270	0	1	Rocky Mountains	Expansion Set 1
1271	0	1	Rod & Reel	Expansion Set 4
1272	0	1	Rogers & Hammerstein	Expansion Set 4
1273	0	1	Roller Coaster	Junior 9+
1274	0	1	Rollerblading	Junior 9+
1275	0	1	Rolling The Car	Expansion Set 2
1276	0	1	Roman Numerals	Expansion Set 2
1277	0	1	Romeo And Juliet	Expansion Set 2
1278	0	1	Ronald McDonald	Junior
1279	0	1	Roosters	Junior 9+
1280	0	1	Root Beer	Junior
1281	0	1	Root Beer Floats	Expansion Set 1
1282	0	1	Rope Burns	Expansion Set 3
1283	0	1	Rosa Parks	Expansion Set 1
1284	0	1	Rosie O'Donnell	Expansion Set 1
1285	0	1	Rubber Gloves	Expansion Set 2
1286	0	1	Rugrats	Junior
1287	0	1	Running A Marathon	Basic Set
1288	0	1	Running In A Race	Junior 9+
1289	0	1	Rush Limbaugh	Expansion Set 1
1290	0	1	Russia	Expansion Set 1
1291	0	1	Rust	Basic Set
1292	0	1	Rusty Nails	Expansion Set 3
1293	0	1	Saddam Hussein	Basic Set
1294	0	1	Sailors	Expansion Set 1
1295	0	1	Salads	Expansion Set 2
1296	0	1	Salsa Dancing	Expansion Set 2
1297	0	1	Salt	Junior 9+
1298	0	1	Salt 'N Pepa	Expansion Set 4
1299	0	1	Salt & Pepper	Expansion Set 4
1300	0	1	Salvador Dali	Expansion Set 2
1301	0	1	Samuel L. Jackson	Expansion Set 2
1302	0	1	San Francisco	Basic Set
1303	0	1	Sand	Junior 9+
1304	0	1	Sand & Surf	Expansion Set 4
1305	0	1	Sand Castles	Junior 9+
1306	0	1	Sandra Bullock	Expansion Set 3
1307	0	1	Saturday Cartoons	Expansion Set 1
1308	0	1	Saturn	Basic Set
1309	0	1	Scavenger Hunt	Expansion Set 1
1310	0	1	Scene Of The Crime	Basic Set
1311	0	1	Scented Candles	Expansion Set 3
1312	0	1	Schindler's List	Expansion Set 2
1313	0	1	School Buses	Junior
1314	0	1	School Lunch	Junior 9+
1315	0	1	School Pictures	Junior 9+
1316	0	1	Science Experiments	Junior 9+
1317	0	1	Science Fair Projects	Expansion Set 1
1318	0	1	Science Fiction	Expansion Set 1
1319	0	1	Science Tests	Junior 9+
1320	0	1	Scientists	Junior 9+
1321	0	1	Scooby-Doo	Junior 9+
1322	0	1	Screaming	Junior
1323	0	1	Screeching	Expansion Set 1
1324	0	1	Sean Connery	Basic Set
1325	0	1	Seashells	Junior
1326	0	1	Sesame Street	Junior
1327	0	1	Shake & Bake	Expansion Set 4
1328	0	1	Shania Twain	Expansion Set 1
1329	0	1	Sharks	Basic Set
1330	0	1	Sharp Knives	Junior 9+
1331	0	1	Shave & A Haircut	Expansion Set 4
1332	0	1	Ships	Junior 9+
1333	0	1	Shipwrecks	Expansion Set 3
1334	0	1	Shoplifting	Junior 9+
1335	0	1	Shopping	Junior 9+
1336	0	1	Shopping Mall	Expansion Set 1
1337	0	1	Shrimp	Junior 9+
1338	0	1	Sigmund Freud	Expansion Set 3
1339	0	1	Silk	Basic Set
1340	0	1	Silly Putty	Expansion Set 2
1341	0	1	Sin & Redemption	Expansion Set 4
1342	0	1	Singing	Junior
1343	0	1	Sisters	Junior 9+
1344	0	1	Sitcoms	Expansion Set 3
1345	0	1	Skateboarding	Basic Set
1346	0	1	Skateboards	Junior 9+
1347	0	1	Skeletons	Junior 9+
1348	0	1	Skiing	Basic Set
1349	0	1	Skin & Bones	Expansion Set 4
1350	0	1	Skinheads	Basic Set
1351	0	1	Skinned Knees	Junior 9+
1352	0	1	Skunks	Expansion Set 2
1353	0	1	Skydiving	Basic Set
1354	0	1	Slash & Burn	Expansion Set 4
1355	0	1	Slasher Films	Expansion Set 3
1356	0	1	Sledding	Junior
1357	0	1	Sleep	Junior
1358	0	1	Sleeping Pills	Expansion Set 1
1359	0	1	Sleepovers	Junior 9+
1360	0	1	Slice & Dice	Expansion Set 4
1361	0	1	Slip & Fall	Expansion Set 4
1362	0	1	Slivers	Expansion Set 1
1363	0	1	Slobodan Milosevic	Expansion Set 3
1364	0	1	Sloppy Joes	Expansion Set 1
1365	0	1	Smith & Wesson	Expansion Set 4
1366	0	1	Smithsonian Institution	Expansion Set 2
1367	0	1	Smoke	Junior
1368	0	1	Smoke & Mirrors	Expansion Set 4
1369	0	1	Snakes	Basic Set
1370	0	1	Sneezing	Junior 9+
1371	0	1	Snips & Snails	Expansion Set 4
1372	0	1	Snoopy	Junior
1373	0	1	Snoopy & The Red Barron	Expansion Set 4
1374	0	1	Snow	Basic Set
1375	0	1	Snow Cones	Junior 9+
1376	0	1	Snow White	Junior
1377	0	1	Snowballs	Junior
1378	0	1	Snowboarding	Junior 9+
1379	0	1	Snowflakes	Junior 9+
1380	0	1	Snowstorm	Junior
1381	0	1	Soccer	Junior
1382	0	1	Social Security	Expansion Set 2
1383	0	1	Socks	Basic Set
1384	0	1	Soldiers	Junior 9+
1385	0	1	South Africa	Basic Set
1386	0	1	South Park	Expansion Set 2
1387	0	1	Soy Sauce	Expansion Set 2
1388	0	1	Space & Time	Expansion Set 4
1389	0	1	Spaghetti	Junior
1390	0	1	Spam	Expansion Set 1
1391	0	1	Sparklers	Junior 9+
1392	0	1	Speeding Tickets	Expansion Set 1
1393	0	1	Spelling Bees	Junior 9+
1394	0	1	Spider-Man	Junior 9+
1395	0	1	Spiders	Basic Set
1396	0	1	Spiders & Snakes	Expansion Set 4
1397	0	1	Spike Lee	Basic Set
1398	0	1	Spilled Milk	Expansion Set 2
1399	0	1	Spinach	Junior 9+
1400	0	1	Spit	Basic Set
1401	0	1	Spit & Polish	Expansion Set 4
1402	0	1	Spontaneous Combustion	Expansion Set 1
1403	0	1	Sport Utility Vehicles	Expansion Set 2
1404	0	1	Sports Channels	Expansion Set 2
1405	0	1	Square Dancing	Junior 9+
1406	0	1	Squirrels	Junior
1407	0	1	Stalactites & Stalagmites	Expansion Set 4
1408	0	1	Stamp Collecting	Expansion Set 3
1409	0	1	Stanley & Livingston	Expansion Set 4
1410	0	1	Star Fruit	Expansion Set 2
1411	0	1	Starry Night	Expansion Set 1
1412	0	1	Stars & Stripes	Expansion Set 4
1413	0	1	Starfish	Junior 9+
1414	0	1	Stars	Junior
1415	0	1	State Fair	Expansion Set 2
1416	0	1	Steak And Potatoes	Expansion Set 2
1417	0	1	Stephen King	Basic Set
1418	0	1	Steve Martin	Expansion Set 1
1419	0	1	Steven Spielberg	Basic Set
1420	0	1	Sticks & Stones	Expansion Set 4
1421	0	1	Stocks & Bonds	Expansion Set 4
1422	0	1	Stomach Ache	Junior 9+
1423	0	1	Stonehenge	Expansion Set 1
1424	0	1	Stop Signs	Expansion Set 3
1425	0	1	Strained Peas	Expansion Set 3
1426	0	1	Strawberries	Junior 9+
1427	0	1	Strawberry Shortcake	Expansion Set 2
1428	0	1	Street Mimes	Expansion Set 3
1429	0	1	Stretch Limos	Expansion Set 3
1430	0	1	Strip Malls	Expansion Set 3
1431	0	1	Stuart Little	Junior
1432	0	1	Stubbed Toes	Expansion Set 2
1433	0	1	Stunt People	Expansion Set 2
1434	0	1	Substitute Teachers	Junior 9+
1435	0	1	Sugar & Spice	Expansion Set 4
1436	0	1	Suit & Tie	Expansion Set 4
1437	0	1	Summer	Junior
1438	0	1	Summer Camp	Expansion Set 1
1439	0	1	Sumo Wrestlers	Expansion Set 3
1440	0	1	Sunburns	Junior 9+
1441	0	1	Sunday Drivers	Expansion Set 1
1442	0	1	Sunflower	Junior
1443	0	1	Sugar	Junior 9+
1444	0	1	Sunken Ships	Junior 9+
1445	0	1	Sunshine	Junior
1446	0	1	Superman	Basic Set
1447	0	1	Supermarkets	Junior 9+
1448	0	1	Supermodels	Expansion Set 2
1449	0	1	Surf & Turf	Expansion Set 4
1450	0	1	Surfing	Basic Set
1451	0	1	Surprise Parties	Expansion Set 3
1452	0	1	Sushi	Expansion Set 2
1453	0	1	Swamps	Junior 9+
1454	0	1	Swans	Junior 9+
1455	0	1	Swimming	Junior
1456	0	1	Swiss Bank Accounts	Expansion Set 1
1457	0	1	Swiss Cheese	Expansion Set 2
1458	0	1	Swiss Chocolate	Basic Set
1459	0	1	Swordfighting	Junior 9+
1460	0	1	Tacos	Junior 9+
1461	0	1	Taking A Bath	Basic Set
1462	0	1	Taking A Shower	Junior 9+
1463	0	1	Talk Radio	Expansion Set 2
1464	0	1	Tarred & Feathered	Expansion Set 4
1465	0	1	Tarzan & Jane	Expansion Set 4
1466	0	1	Tattoo Parlors	Expansion Set 3
1467	0	1	Tattoos	Junior 9+
1468	0	1	Tea & Crumpets	Expansion Set 4
1469	0	1	Teachers	Basic Set
1470	0	1	Teenagers	Junior 9+
1471	0	1	Teeth	Junior 9+
1472	0	1	Telemarketers	Expansion Set 1
1473	0	1	Teletubbies	Junior
1474	0	1	Televangelists	Expansion Set 1
1475	0	1	Television	Basic Set
1476	0	1	Telling Scary Stories	Junior 9+
1477	0	1	Telling The Truth	Expansion Set 2
1478	0	1	Tents	Junior 9+
1479	0	1	Terrorist Attack	Basic Set
1480	0	1	Texas	Junior 9+
1481	0	1	Thanksgiving Day	Basic Set
1482	0	1	The 1920s	Basic Set
1483	0	1	The 1950s	Basic Set
1484	0	1	The 1960s	Basic Set
1485	0	1	The 1970s	Basic Set
1486	0	1	The 1980s	Basic Set
1487	0	1	The 1990s	Expansion Set 3
1488	0	1	The 21st Century	Basic Set
1489	0	1	The Academy Awards	Basic Set
1490	0	1	The Atlantic & Pacific	Expansion Set 4
1491	0	1	The Baby-Sitters Club	Junior 9+
1492	0	1	The Beach	Basic Set
1493	0	1	The Beatles	Basic Set
1494	0	1	The Big Dipper	Expansion Set 3
1495	0	1	The Birds & The Bees	Expansion Set 4
1496	0	1	The Chicken & The Egg	Expansion Set 4
1497	0	1	The Chicken Dance	Junior 9+
1498	0	1	The CIA	Expansion Set 2
1499	0	1	The Circus	Junior
1500	0	1	The Cold War	Expansion Set 1
1501	0	1	The Common Loon	Expansion Set 1
1502	0	1	The Dalai Lama	Expansion Set 3
1503	0	1	The Dallas Cowboys	Expansion Set 1
1504	0	1	The Dixie Chicks	Expansion Set 3
1505	0	1	The Dump	Basic Set
1506	0	1	The Earth	Junior 9+
1507	0	1	The Eiffel Tower	Basic Set
1508	0	1	The Electric Chair	Basic Set
1509	0	1	The End Of The World	Expansion Set 1
1510	0	1	The Everglades	Expansion Set 1
1511	0	1	The Far Left	Expansion Set 2
1512	0	1	The Far Right	Expansion Set 2
1513	0	1	The FBI	Expansion Set 1
1514	0	1	The First Day Of School	Basic Set
1515	0	1	The French Riviera	Basic Set
1516	0	1	The Godfather	Expansion Set 1
1517	0	1	The Grand Canyon	Basic Set
1518	0	1	The Grateful Dead	Basic Set
1519	0	1	The Graveyard Shift	Expansion Set 3
1520	0	1	The Great Barrier Reef	Expansion Set 3
1521	0	1	The Great Chicago Fire	Expansion Set 1
1522	0	1	The Great Depression	Basic Set
1523	0	1	The Great Wall Of China	Expansion Set 3
1524	0	1	The Green Bay Packers	Basic Set
1525	0	1	The Gulf War	Basic Set
1526	0	1	The Ice Age	Expansion Set 3
1527	0	1	The Indy 500	Basic Set
1528	0	1	The Internet	Expansion Set 2
1529	0	1	The IRS	Expansion Set 1
1530	0	1	The JFK Assassination	Basic Set
1531	0	1	The Judge	Expansion Set 3
1532	0	1	The KKK	Basic Set
1533	0	1	The Land Of Oz	Basic Set
1534	0	1	The Last Day Of School	Junior 9+
1535	0	1	The Library	Junior 9+
1536	0	1	The Little Mermaid	Expansion Set 1
1537	0	1	The Lunchroom	Junior 9+
1538	0	1	The Mafia	Basic Set
1539	0	1	The Mall	Junior 9+
1540	0	1	The Marx Brothers	Basic Set
1541	0	1	The Metric System	Expansion Set 1
1542	0	1	The Midwest	Basic Set
1543	0	1	The Milky Way	Basic Set
1544	0	1	The Mississippi River	Basic Set
1545	0	1	The Moon	Junior 9+
1546	0	1	The Mounties	Expansion Set 3
1547	0	1	The National Enquirer	Expansion Set 1
1548	0	1	The New York Yankees	Basic Set
1549	0	1	The North Pole	Expansion Set 3
1550	0	1	The NRA	Basic Set
1551	0	1	The Ocean	Basic Set
1552	0	1	The Old Man And The Sea	Expansion Set 2
1553	0	1	The Olympics	Expansion Set 1
1554	0	1	The Opera	Basic Set
1555	0	1	The Ozone Layer	Expansion Set 1
1556	0	1	The Pentagon	Expansion Set 1
1557	0	1	The Police	Junior 9+
1558	0	1	The President	Junior 9+
1559	0	1	The Princess & The Pea	Expansion Set 4
1560	0	1	The Pyramids	Basic Set
1561	0	1	The Renaissance	Basic Set
1562	0	1	The Rolling Stones	Basic Set
1563	0	1	The San Andreas Fault	Basic Set
1564	0	1	The Scarlet Letter	Expansion Set 3
1565	0	1	The South	Basic Set
1566	0	1	The Statue Of Liberty	Basic Set
1567	0	1	The Super Bowl	Expansion Set 2
1568	0	1	The Supreme Court	Expansion Set 1
1569	0	1	The Symphony	Expansion Set 3
1570	0	1	The Three Stooges	Expansion Set 3
1571	0	1	The Three Tenors	Expansion Set 2
1572	0	1	The Titanic	Expansion Set 1
1573	0	1	The U.S. Constitution	Expansion Set 3
1574	0	1	The Universe	Basic Set
1575	0	1	The Vatican	Expansion Set 1
1576	0	1	The Vietnam Memorial	Expansion Set 2
1577	0	1	The Williams Sisters	Expansion Set 2
1578	0	1	The Wright Brothers	Basic Set
1579	0	1	The YMCA	Expansion Set 1
1580	0	1	The Young & The Restless	Expansion Set 4
1581	0	1	The Zoo	Junior
1582	0	1	Thelma & Louise	Expansion Set 4
1583	0	1	Thomas Edison	Basic Set
1584	0	1	Three Men & A Baby	Expansion Set 4
1585	0	1	Throwing Rocks	Junior
1586	0	1	Throwing Up	Junior
1587	0	1	Thunder	Basic Set
1588	0	1	Thunder & Lightning	Expansion Set 4
1589	0	1	Thunderstorms	Junior
1590	0	1	Tibet	Expansion Set 1
1591	0	1	Ticks	Expansion Set 2
1592	0	1	Tidal Waves	Expansion Set 1
1593	0	1	Tiger Woods	Expansion Set 2
1594	0	1	Tightrope Walking	Junior 9+
1595	0	1	Timbuktu	Expansion Set 3
1596	0	1	Time Travel	Expansion Set 3
1597	0	1	Timothy McVey	Expansion Set 3
1598	0	1	Toasted Marshmallows	Expansion Set 1
1599	0	1	Toasters	Expansion Set 1
1600	0	1	Tobacco Companies	Expansion Set 2
1601	0	1	Toenails	Junior 9+
1602	0	1	Toes	Expansion Set 1
1603	0	1	Tom & Jerry	Expansion Set 4
1604	0	1	Tom Cruise	Expansion Set 2
1605	0	1	Tom Hanks	Expansion Set 2
1606	0	1	Tomato Soup	Junior 9+
1607	0	1	Tomatoes	Junior
1608	0	1	Tony Blair	Expansion Set 3
1609	0	1	Tooth Fairy	Junior 9+
1610	0	1	Toothpaste	Junior 9+
1611	0	1	Top Of A Rollercoaster	Basic Set
1612	0	1	Tornadoes	Basic Set
1613	0	1	Toy Poodles	Junior 9+
1614	0	1	Toys	Basic Set
1615	0	1	Track & Field	Expansion Set 4
1616	0	1	Tractors	Expansion Set 3
1617	0	1	Trailer Parks	Expansion Set 2
1618	0	1	Training Wheels	Junior 9+
1619	0	1	Trains	Junior
1620	0	1	Trampolines	Expansion Set 2
1621	0	1	Treasure Hunting	Expansion Set 3
1622	0	1	Tree Huggers	Basic Set
1623	0	1	Treehouse	Junior
1624	0	1	Trees	Junior 9+
1625	0	1	Trekkies	Expansion Set 3
1626	0	1	Trinidad & Tobago	Expansion Set 4
1627	0	1	Truck Drivers	Junior 9+
1628	0	1	Truck Stops	Expansion Set 1
1629	0	1	Truth & Justice	Expansion Set 4
1630	0	1	Tulips	Junior 9+
1631	0	1	Turkey & Stuffing	Expansion Set 4
1632	0	1	Turkeys	Junior 9+
1633	0	1	Turtles	Junior
1634	0	1	Tyra Banks	Expansion Set 3
1635	0	1	Tyrannosaurus Rex	Basic Set
1636	0	1	Umbrella Drinks	Expansion Set 3
1637	0	1	Umbrellas	Junior 9+
1638	0	1	Under My Bed	Junior
1639	0	1	Underwear	Basic Set
1640	0	1	Unicorns	Junior 9+
1641	0	1	United Nations	Expansion Set 2
1642	0	1	United States	Junior 9+
1643	0	1	Urban Sprawl	Expansion Set 3
1644	0	1	Vacations	Expansion Set 2
1645	0	1	Vacuum Cleaners	Junior 9+
1646	0	1	Valentine's Day	Junior 9+
1647	0	1	Vampires	Expansion Set 2
1648	0	1	Vanilla Pudding	Junior 9+
1649	0	1	Velcro	Expansion Set 3
1650	0	1	Venus & Mars	Expansion Set 4
1651	0	1	Viagra	Expansion Set 3
1652	0	1	Victorian England	Expansion Set 2
1653	0	1	Video Games	Expansion Set 1
1654	0	1	Vietnam 1968	Expansion Set 2
1655	0	1	Vincent Van Gogh	Expansion Set 2
1656	0	1	Violins	Expansion Set 2
1657	0	1	Volcanoes	Expansion Set 3
1658	0	1	Volleyball	Junior 9+
1659	0	1	VW Beetles	Expansion Set 2
1660	0	1	Waco Texas	Expansion Set 2
1661	0	1	Waffles	Junior 9+
1662	0	1	Walking The Dog	Junior 9+
1663	0	1	Wall Street	Basic Set
1664	0	1	Walt Disney	Basic Set
1665	0	1	War & Peace	Expansion Set 4
1666	0	1	Warts	Expansion Set 2
1667	0	1	Washer & Dryer	Expansion Set 4
1668	0	1	Washington DC	Junior 9+
1669	0	1	Watching Cartoons	Junior 9+
1670	0	1	Watching Football	Basic Set
1671	0	1	Watching TV	Junior
1672	0	1	Water	Junior 9+
1673	0	1	Water Baloons	Junior 9+
1674	0	1	Water Guns	Junior 9+
1675	0	1	Water Parks	Expansion Set 2
1676	0	1	Water Skiing	Junior 9+
1677	0	1	Waterbeds	Expansion Set 1
1678	0	1	Waterfalls	Expansion Set 2
1679	0	1	Watermelon	Junior
1680	0	1	Watermelons	Expansion Set 2
1681	0	1	Waterparks	Junior 9+
1682	0	1	Waxing The Floor	Expansion Set 3
1683	0	1	Weapons Dealers	Expansion Set 1
1684	0	1	Weddings	Basic Set
1685	0	1	Weed & Feed	Expansion Set 4
1686	0	1	Weird Al Yankovic	Expansion Set 3
1687	0	1	Whales	Junior
1688	0	1	Wheat	Basic Set
1689	0	1	Wheel Of Fortune	Expansion Set 2
1690	0	1	Whipped Cream	Expansion Set 1
1691	0	1	Whips	Basic Set
1692	0	1	Whips & Chains	Expansion Set 4
1693	0	1	White Bread	Junior 9+
1694	0	1	White Collar Crime	Expansion Set 3
1695	0	1	Whoopie Goldberg	Basic Set
1696	0	1	Will & Grace	Expansion Set 4
1697	0	1	Will Smith	Basic Set
1698	0	1	William Shakespeare	Basic Set
1699	0	1	Wimbledon	Basic Set
1700	0	1	Windsurfing	Basic Set
1701	0	1	Wine Tasting	Expansion Set 2
1702	0	1	Winnie The Pooh	Junior
1703	0	1	Winning A Trophy	Junior 9+
1704	0	1	Winning The Lottery	Expansion Set 1
1705	0	1	Winter	Junior 9+
1706	0	1	Wishbone	Junior 9+
1707	0	1	Witch Hunts	Expansion Set 1
1708	0	1	Witches	Junior
1709	0	1	Women	Expansion Set 2
1710	0	1	Women's Soccer	Expansion Set 1
1711	0	1	Wood Chippers	Expansion Set 1
1712	0	1	Woodpeckers	Junior 9+
1713	0	1	Woodstock	Expansion Set 1
1714	0	1	Woody Allen	Expansion Set 2
1715	0	1	Woolly Mammoth	Junior 9+
1716	0	1	Working Out	Expansion Set 3
1717	0	1	Worms	Basic Set
1718	0	1	Wrestling	Junior 9+
1719	0	1	Writing A Letter	Junior 9+
1720	0	1	X-Ray Vision	Expansion Set 1
1721	0	1	X-Rays	Expansion Set 2
1722	0	1	Xena Warrior Princess	Expansion Set 3
1723	0	1	Yellowstone Park	Basic Set
1724	0	1	Yin & Yang	Expansion Set 4
1725	0	1	Yo-Yos	Junior
1726	0	1	Zebras	Junior 9+
1727	0	1	Zen	Expansion Set 1
1728	0	1	Zippers	Expansion Set 3
1729	0	1	Zombies	Expansion Set 3
1730	0	1	Zucchini	Expansion Set 1
\.


--
-- TOC entry 2190 (class 0 OID 17742)
-- Dependencies: 186
-- Data for Name: card_set; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set (id, active, base_deck, description, name, weight) FROM stdin;
1	t	f	1	Expansion Set 1	1
3	t	f	3	Junior 9+	1
6	t	f	6	Expansion Set 2	1
8	t	f	8	Expansion Set 3	1
11	t	f	11	Basic Set	1
20	t	f	20	Junior	1
24	t	f	24	Expansion Set 4	1
457	t	f	457	Basic Set (1999 Printing Only)	1
626	t	f	626	Basic Set (2001 Printing Forward)	1
\.


--
-- TOC entry 2191 (class 0 OID 17750)
-- Dependencies: 187
-- Data for Name: card_set_black_card; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set_black_card (card_set_id, black_card_id) FROM stdin;
1	2
3	4
3	5
6	7
8	9
8	10
11	12
11	13
3	14
11	15
3	16
3	17
3	18
1	19
20	21
8	22
11	23
24	25
20	26
8	27
1	28
3	29
20	30
1	31
11	32
8	33
11	34
20	35
3	36
8	37
11	38
3	39
3	40
3	41
8	42
11	43
3	44
8	45
6	46
3	47
3	48
20	49
3	50
3	51
20	52
3	53
8	54
20	55
1	56
6	57
3	58
8	59
3	60
11	61
11	62
20	63
3	64
1	65
11	66
3	67
24	68
11	69
3	70
3	71
3	72
24	73
6	74
11	75
3	76
6	77
1	78
3	79
20	80
1	81
20	82
8	83
3	84
11	85
11	86
1	87
3	88
3	89
24	90
11	91
6	92
8	93
20	94
8	95
11	96
6	97
24	98
8	99
11	100
11	101
6	102
8	103
8	104
24	105
20	106
20	107
1	108
11	109
24	110
8	111
24	112
8	113
6	114
8	115
8	116
24	117
3	118
24	119
6	120
3	121
11	122
6	123
11	124
11	125
1	126
1	127
11	128
6	129
20	130
3	131
11	132
20	133
1	134
3	135
3	136
11	137
20	138
8	139
1	140
6	141
11	142
1	143
1	144
24	145
1	146
20	147
8	148
20	149
3	150
11	151
6	152
1	153
1	154
3	155
24	156
20	157
11	158
11	159
11	160
8	161
3	162
3	163
3	164
6	165
6	166
24	167
1	168
24	169
8	170
3	171
1	172
8	173
1	174
20	175
24	176
6	177
24	178
24	179
3	180
3	181
6	182
24	183
1	184
11	185
6	186
24	187
11	188
1	189
24	190
3	191
6	192
11	193
24	194
20	195
1	196
6	197
8	198
20	199
3	200
6	201
24	202
11	203
11	204
6	205
11	206
8	207
6	208
1	209
20	210
20	211
8	212
11	213
8	214
8	215
6	216
8	217
11	218
11	219
24	220
20	221
20	222
8	223
3	224
6	225
24	226
20	227
24	228
6	229
6	230
8	231
11	232
8	233
11	234
1	235
24	236
8	237
6	238
24	239
8	240
6	241
6	242
6	243
20	244
3	245
11	246
1	247
6	248
24	249
24	250
24	251
1	252
6	253
24	254
3	255
24	256
6	257
3	258
3	259
3	260
6	261
11	262
3	263
20	264
20	265
24	266
3	267
1	268
20	269
8	270
1	271
11	272
3	273
24	274
3	275
3	276
3	277
24	278
3	279
1	280
3	281
6	282
11	283
11	284
24	285
8	286
3	287
3	288
3	289
3	290
6	291
11	292
11	293
20	294
20	295
3	296
3	297
11	298
1	299
3	300
11	301
3	302
11	303
8	304
1	305
3	306
24	307
3	308
6	309
6	310
1	311
6	312
3	313
24	314
20	315
8	316
24	317
3	318
24	319
3	320
3	321
8	322
1	323
8	324
3	325
11	326
1	327
1	328
1	329
8	330
11	331
11	332
1	333
11	334
24	335
20	336
3	337
8	338
3	339
20	340
3	341
1	342
11	343
3	344
20	345
3	346
3	347
11	348
1	349
6	350
11	351
11	352
6	353
24	354
24	355
3	356
6	357
3	358
6	359
20	360
3	361
24	362
6	363
11	364
11	365
20	366
11	367
8	368
11	369
11	370
3	371
6	372
20	373
11	374
8	375
3	376
3	377
11	378
8	379
3	380
1	381
11	382
24	383
11	384
6	385
3	386
1	387
8	388
3	389
8	390
11	391
11	392
6	393
11	394
11	395
1	396
1	397
8	398
3	399
3	400
24	401
3	402
8	403
3	404
11	405
24	406
8	407
1	408
8	409
20	410
24	411
1	412
6	413
11	414
8	415
24	416
20	417
8	418
24	419
1	420
24	421
1	422
24	423
3	424
6	425
6	426
1	427
24	428
3	429
24	430
24	431
11	432
24	433
3	434
8	435
24	436
3	437
20	438
11	439
1	440
6	441
1	442
3	443
1	444
6	445
24	446
1	447
8	448
6	449
3	450
24	451
24	452
1	453
1	454
1	455
11	456
457	458
6	459
11	460
11	461
3	462
24	463
20	464
3	465
20	466
3	467
20	468
1	469
11	470
11	471
6	472
6	473
24	474
24	475
8	476
8	477
3	478
11	479
8	480
1	481
3	482
3	483
3	484
8	485
8	486
24	487
11	488
8	489
11	490
20	491
8	492
8	493
24	494
3	495
6	496
20	497
8	498
20	499
11	500
8	501
20	502
3	503
24	504
8	505
1	506
1	507
3	508
3	509
11	510
6	511
11	512
3	513
24	514
1	515
3	516
8	517
3	518
11	519
1	520
11	521
11	522
3	523
11	524
3	525
11	526
8	527
11	528
3	529
11	530
11	531
1	532
8	533
11	534
20	535
3	536
8	537
8	538
1	539
24	540
1	541
1	542
6	543
3	544
20	545
1	546
8	547
24	548
6	549
6	550
24	551
8	552
1	553
11	554
24	555
20	556
20	557
11	558
11	559
1	560
11	561
24	562
20	563
3	564
8	565
8	566
3	567
3	568
3	569
6	570
3	571
8	572
3	573
3	574
24	575
1	576
20	577
1	578
8	579
24	580
8	581
24	582
3	583
20	584
6	585
24	586
1	587
8	588
3	589
11	590
1	591
11	592
24	593
1	594
24	595
24	596
8	597
1	598
3	599
6	600
6	601
11	602
24	603
8	604
24	605
3	606
20	607
3	608
6	609
11	610
11	611
11	612
6	613
11	614
3	615
3	616
8	617
6	618
11	619
3	620
6	621
1	622
6	623
24	624
24	625
626	627
6	628
20	629
1	630
3	631
11	632
3	633
3	634
3	635
20	636
20	637
3	638
3	639
8	640
6	641
11	642
3	643
11	644
6	645
8	646
24	647
6	648
1	649
8	650
1	651
6	652
20	653
11	654
6	655
3	656
6	657
1	658
3	659
20	660
8	661
3	662
8	663
3	664
3	665
20	666
6	667
1	668
11	669
11	670
11	671
20	672
24	673
6	674
6	675
1	676
11	677
24	678
24	679
3	680
1	681
8	682
6	683
1	684
3	685
3	686
20	687
6	688
20	689
1	690
11	691
3	692
8	693
24	694
3	695
6	696
20	697
3	698
20	699
6	700
3	701
8	702
6	703
11	704
6	705
3	706
3	707
24	708
24	709
3	710
3	711
3	712
6	713
11	714
1	715
8	716
11	717
24	718
20	719
8	720
8	721
8	722
24	723
3	724
1	725
3	726
11	727
11	728
24	729
8	730
24	731
24	732
11	733
3	734
8	735
24	736
1	737
3	738
3	739
3	740
11	741
1	742
3	743
11	744
24	745
8	746
3	747
11	748
24	749
3	750
6	751
11	752
3	753
11	754
24	755
6	756
20	757
11	758
11	759
3	760
24	761
11	762
24	763
3	764
24	765
6	766
3	767
8	768
3	769
20	770
11	771
3	772
20	773
20	774
24	775
24	776
1	777
8	778
20	779
11	780
11	781
3	782
24	783
3	784
24	785
20	786
20	787
11	788
6	789
3	790
20	791
8	792
1	793
3	794
6	795
6	796
11	797
11	798
11	799
6	800
6	801
8	802
6	803
11	804
20	805
1	806
1	807
1	808
11	809
20	810
6	811
11	812
11	813
11	814
11	815
20	816
1	817
24	818
6	819
1	820
1	821
1	822
1	823
6	824
11	825
6	826
11	827
6	828
6	829
1	830
8	831
8	832
24	833
6	834
3	835
6	836
20	837
6	838
8	839
6	840
8	841
20	842
11	843
6	844
3	845
11	846
6	847
3	848
1	849
11	850
8	851
24	852
3	853
20	854
24	855
8	856
1	857
1	858
24	859
20	860
8	861
6	862
11	863
8	864
8	865
24	866
24	867
24	868
24	869
11	870
6	871
3	872
3	873
11	874
24	875
1	876
3	877
3	878
24	879
8	880
3	881
1	882
20	883
6	884
11	885
8	886
24	887
24	888
3	889
20	890
11	891
20	892
8	893
20	894
24	895
8	896
3	897
3	898
8	899
3	900
3	901
6	902
11	903
3	904
6	905
8	906
24	907
24	908
6	909
11	910
11	911
3	912
6	913
8	914
6	915
3	916
1	917
24	918
3	919
24	920
11	921
24	922
24	923
24	924
20	925
11	926
1	927
6	928
20	929
11	930
8	931
3	932
8	933
6	934
11	935
20	936
6	937
8	938
6	939
11	940
8	941
1	942
11	943
11	944
11	945
11	946
3	947
3	948
3	949
8	950
8	951
8	952
3	953
24	954
24	955
6	956
8	957
3	958
1	959
6	960
1	961
6	962
1	963
8	964
6	965
11	966
11	967
11	968
11	969
1	970
11	971
24	972
20	973
6	974
1	975
3	976
8	977
11	978
1	979
11	980
24	981
6	982
3	983
8	984
3	985
24	986
11	987
20	988
11	989
24	990
24	991
8	992
11	993
24	994
8	995
20	996
20	997
24	998
11	999
3	1000
1	1001
6	1002
3	1003
1	1004
8	1005
3	1006
20	1007
3	1008
1	1009
11	1010
20	1011
6	1012
3	1013
1	1014
3	1015
3	1016
3	1017
6	1018
3	1019
8	1020
11	1021
3	1022
11	1023
11	1024
11	1025
3	1026
11	1027
11	1028
20	1029
1	1030
11	1031
8	1032
11	1033
6	1034
11	1035
20	1036
20	1037
11	1038
11	1039
20	1040
11	1041
8	1042
11	1043
8	1044
11	1045
20	1046
8	1047
1	1048
11	1049
1	1050
1	1051
20	1052
3	1053
20	1054
3	1055
20	1056
3	1057
3	1058
11	1059
8	1060
1	1061
8	1062
3	1063
6	1064
11	1065
1	1066
11	1067
8	1068
1	1069
6	1070
20	1071
1	1072
8	1073
1	1074
6	1075
3	1076
11	1077
24	1078
3	1079
8	1080
8	1081
1	1082
24	1083
1	1084
20	1085
3	1086
24	1087
24	1088
24	1089
1	1090
8	1091
11	1092
3	1093
6	1094
20	1095
11	1096
6	1097
3	1098
11	1099
8	1100
20	1101
20	1102
11	1103
11	1104
3	1105
24	1106
3	1107
20	1108
3	1109
3	1110
8	1111
3	1112
3	1113
11	1114
11	1115
20	1116
24	1117
11	1118
11	1119
24	1120
24	1121
3	1122
24	1123
3	1124
20	1125
24	1126
3	1127
24	1128
3	1129
24	1130
24	1131
3	1132
1	1133
24	1134
3	1135
3	1136
3	1137
20	1138
8	1139
24	1140
11	1141
3	1142
20	1143
3	1144
11	1145
11	1146
3	1147
3	1148
3	1149
3	1150
3	1151
3	1152
20	1153
8	1154
3	1155
8	1156
3	1157
24	1158
11	1159
6	1160
11	1161
20	1162
6	1163
3	1164
11	1165
20	1166
20	1167
20	1168
11	1169
8	1170
3	1171
1	1172
1	1173
8	1174
24	1175
11	1176
6	1177
6	1178
8	1179
24	1180
6	1181
1	1182
3	1183
20	1184
24	1185
3	1186
3	1187
1	1188
8	1189
3	1190
24	1191
6	1192
11	1193
11	1194
6	1195
1	1196
11	1197
11	1198
1	1199
11	1200
3	1201
3	1202
20	1203
6	1204
6	1205
8	1206
11	1207
11	1208
24	1209
24	1210
24	1211
20	1212
20	1213
3	1214
3	1215
20	1216
6	1217
11	1218
3	1219
1	1220
3	1221
3	1222
3	1223
3	1224
11	1225
20	1226
8	1227
24	1228
20	1229
1	1230
20	1231
1	1232
1	1233
6	1234
3	1235
1	1236
11	1237
1	1238
24	1239
1	1240
11	1241
11	1242
3	1243
3	1244
24	1245
8	1246
6	1247
8	1248
20	1249
20	1250
3	1251
8	1252
20	1253
1	1254
8	1255
1	1256
6	1257
8	1258
11	1259
3	1260
24	1261
6	1262
3	1263
11	1264
3	1265
3	1266
1	1267
3	1268
3	1269
1	1270
24	1271
24	1272
3	1273
3	1274
6	1275
6	1276
6	1277
20	1278
3	1279
20	1280
1	1281
8	1282
1	1283
1	1284
6	1285
20	1286
11	1287
3	1288
1	1289
1	1290
11	1291
8	1292
11	1293
1	1294
6	1295
6	1296
3	1297
24	1298
24	1299
6	1300
6	1301
11	1302
3	1303
24	1304
3	1305
8	1306
1	1307
11	1308
1	1309
11	1310
8	1311
6	1312
20	1313
3	1314
3	1315
3	1316
1	1317
1	1318
3	1319
3	1320
3	1321
20	1322
1	1323
11	1324
20	1325
20	1326
24	1327
1	1328
11	1329
3	1330
24	1331
3	1332
8	1333
3	1334
3	1335
1	1336
3	1337
8	1338
11	1339
6	1340
24	1341
20	1342
3	1343
8	1344
11	1345
3	1346
3	1347
11	1348
24	1349
11	1350
3	1351
6	1352
11	1353
24	1354
8	1355
20	1356
20	1357
1	1358
3	1359
24	1360
24	1361
1	1362
8	1363
1	1364
24	1365
6	1366
20	1367
24	1368
11	1369
3	1370
24	1371
20	1372
24	1373
11	1374
3	1375
20	1376
20	1377
3	1378
3	1379
20	1380
20	1381
6	1382
11	1383
3	1384
11	1385
6	1386
6	1387
24	1388
20	1389
1	1390
3	1391
1	1392
3	1393
3	1394
11	1395
24	1396
11	1397
6	1398
3	1399
11	1400
24	1401
1	1402
6	1403
6	1404
3	1405
20	1406
24	1407
8	1408
24	1409
6	1410
1	1411
24	1412
3	1413
20	1414
6	1415
6	1416
11	1417
1	1418
11	1419
24	1420
24	1421
3	1422
1	1423
8	1424
8	1425
3	1426
6	1427
8	1428
8	1429
8	1430
20	1431
6	1432
6	1433
3	1434
24	1435
24	1436
20	1437
1	1438
8	1439
3	1440
1	1441
20	1442
3	1443
3	1444
20	1445
11	1446
3	1447
6	1448
24	1449
11	1450
8	1451
6	1452
3	1453
3	1454
20	1455
1	1456
6	1457
11	1458
3	1459
3	1460
11	1461
3	1462
6	1463
24	1464
24	1465
8	1466
3	1467
24	1468
11	1469
3	1470
3	1471
1	1472
20	1473
1	1474
11	1475
3	1476
6	1477
3	1478
11	1479
3	1480
11	1481
11	1482
11	1483
11	1484
11	1485
11	1486
8	1487
11	1488
11	1489
24	1490
3	1491
11	1492
11	1493
8	1494
24	1495
24	1496
3	1497
6	1498
20	1499
1	1500
1	1501
8	1502
1	1503
8	1504
11	1505
3	1506
11	1507
11	1508
1	1509
1	1510
6	1511
6	1512
1	1513
11	1514
11	1515
1	1516
11	1517
11	1518
8	1519
8	1520
1	1521
11	1522
8	1523
11	1524
11	1525
8	1526
11	1527
6	1528
1	1529
11	1530
8	1531
11	1532
11	1533
3	1534
3	1535
1	1536
3	1537
11	1538
3	1539
11	1540
1	1541
11	1542
11	1543
11	1544
3	1545
8	1546
1	1547
11	1548
8	1549
11	1550
11	1551
6	1552
1	1553
11	1554
1	1555
1	1556
3	1557
3	1558
24	1559
11	1560
11	1561
11	1562
11	1563
8	1564
11	1565
11	1566
6	1567
1	1568
8	1569
8	1570
6	1571
1	1572
8	1573
11	1574
1	1575
6	1576
6	1577
11	1578
1	1579
24	1580
20	1581
24	1582
11	1583
24	1584
20	1585
20	1586
11	1587
24	1588
20	1589
1	1590
6	1591
1	1592
6	1593
3	1594
8	1595
8	1596
8	1597
1	1598
1	1599
6	1600
3	1601
1	1602
24	1603
6	1604
6	1605
3	1606
20	1607
8	1608
3	1609
3	1610
11	1611
11	1612
3	1613
11	1614
24	1615
8	1616
6	1617
3	1618
20	1619
6	1620
8	1621
11	1622
20	1623
3	1624
8	1625
24	1626
3	1627
1	1628
24	1629
3	1630
24	1631
3	1632
20	1633
8	1634
11	1635
8	1636
3	1637
20	1638
11	1639
3	1640
6	1641
3	1642
8	1643
6	1644
3	1645
3	1646
6	1647
3	1648
8	1649
24	1650
8	1651
6	1652
1	1653
6	1654
6	1655
6	1656
8	1657
3	1658
6	1659
6	1660
3	1661
3	1662
11	1663
11	1664
24	1665
6	1666
24	1667
3	1668
3	1669
11	1670
20	1671
3	1672
3	1673
3	1674
6	1675
3	1676
1	1677
6	1678
20	1679
6	1680
3	1681
8	1682
1	1683
11	1684
24	1685
8	1686
20	1687
11	1688
6	1689
1	1690
11	1691
24	1692
3	1693
8	1694
11	1695
24	1696
11	1697
11	1698
11	1699
11	1700
6	1701
20	1702
3	1703
1	1704
3	1705
3	1706
1	1707
20	1708
6	1709
1	1710
1	1711
3	1712
1	1713
6	1714
3	1715
8	1716
11	1717
3	1718
3	1719
1	1720
6	1721
8	1722
11	1723
24	1724
20	1725
3	1726
1	1727
8	1728
8	1729
1	1730
\.


--
-- TOC entry 2192 (class 0 OID 17755)
-- Dependencies: 188
-- Data for Name: card_set_white_card; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY card_set_white_card (card_set_id, white_card_id) FROM stdin;
6	1731
6	1732
1	1733
11	1734
6	1735
8	1736
6	1737
11	1738
11	1739
1	1740
6	1741
24	1742
11	1743
8	1744
1	1745
3	1746
11	1747
20	1748
8	1749
3	1750
1	1751
3	1752
20	1753
24	1754
3	1755
24	1756
24	1757
1	1758
11	1759
1	1760
11	1761
24	1762
20	1763
1	1764
24	1765
11	1766
8	1767
3	1768
6	1769
11	1770
3	1771
3	1772
11	1773
6	1774
11	1775
3	1776
11	1777
1	1778
3	1779
1	1780
1	1781
6	1782
1	1783
8	1784
1	1785
8	1786
6	1787
11	1788
6	1789
6	1790
1	1791
8	1792
1	1793
3	1794
8	1795
11	1796
24	1797
11	1798
6	1799
1800	1801
3	1802
11	1803
1	1804
8	1805
6	1806
11	1807
1	1808
11	1809
11	1810
24	1811
8	1812
24	1813
3	1814
1800	1815
24	1816
3	1817
11	1818
3	1819
24	1820
6	1821
24	1822
11	1823
11	1824
3	1825
8	1826
8	1827
24	1828
6	1829
24	1830
1	1831
11	1832
11	1833
1	1834
11	1835
6	1836
11	1837
8	1838
3	1839
1	1840
6	1841
3	1842
11	1843
1	1844
24	1845
24	1846
11	1847
1	1848
24	1849
1800	1850
3	1851
24	1852
6	1853
11	1854
11	1855
6	1856
8	1857
3	1858
6	1859
6	1860
8	1861
8	1862
8	1863
8	1864
8	1865
8	1866
6	1867
6	1868
8	1869
3	1870
1	1871
6	1872
11	1873
1	1874
6	1875
11	1876
11	1877
6	1878
8	1879
1	1880
1	1881
3	1882
8	1883
8	1884
24	1885
24	1886
20	1887
24	1888
3	1889
3	1890
11	1891
11	1892
6	1893
8	1894
8	1895
3	1896
8	1897
8	1898
11	1899
24	1900
1	1901
8	1902
11	1903
3	1904
11	1905
11	1906
6	1907
11	1908
1800	1909
1	1910
8	1911
1	1912
1	1913
3	1914
6	1915
3	1916
3	1917
1	1918
6	1919
6	1920
8	1921
6	1922
20	1923
6	1924
8	1925
8	1926
11	1927
20	1928
8	1929
8	1930
8	1931
20	1932
24	1933
11	1934
8	1935
20	1936
20	1937
11	1938
1	1939
8	1940
6	1941
8	1942
6	1943
1	1944
20	1945
20	1946
24	1947
24	1948
24	1949
11	1950
24	1951
3	1952
11	1953
11	1954
3	1955
11	1956
11	1957
1	1958
24	1959
24	1960
24	1961
24	1962
24	1963
24	1964
8	1965
8	1966
8	1967
8	1968
11	1969
11	1970
11	1971
11	1972
6	1973
6	1974
11	1975
6	1976
1	1977
1	1978
3	1979
6	1980
1	1981
8	1982
1	1983
3	1984
20	1985
6	1986
24	1987
6	1988
24	1989
20	1990
24	1991
3	1992
20	1993
3	1994
24	1995
11	1996
24	1997
1	1998
3	1999
11	2000
20	2001
11	2002
11	2003
11	2004
6	2005
11	2006
8	2007
6	2008
24	2009
1800	2010
8	2011
8	2012
11	2013
6	2014
11	2015
8	2016
3	2017
1	2018
6	2019
1	2020
11	2021
1	2022
24	2023
6	2024
24	2025
6	2026
11	2027
20	2028
24	2029
20	2030
20	2031
11	2032
8	2033
11	2034
8	2035
11	2036
11	2037
8	2038
24	2039
24	2040
24	2041
6	2042
626	2043
6	2044
11	2045
1	2046
1	2047
3	2048
6	2049
11	2050
1	2051
11	2052
8	2053
1	2054
11	2055
457	2056
24	2057
1	2058
3	2059
24	2060
24	2061
3	2062
3	2063
6	2064
11	2065
3	2066
8	2067
24	2068
11	2069
11	2070
11	2071
3	2072
6	2073
11	2074
3	2075
24	2076
6	2077
1	2078
11	2079
1	2080
8	2081
1	2082
1	2083
6	2084
3	2085
6	2086
6	2087
8	2088
11	2089
1	2090
11	2091
11	2092
1	2093
11	2094
24	2095
3	2096
3	2097
11	2098
11	2099
11	2100
1	2101
3	2102
8	2103
11	2104
8	2105
6	2106
11	2107
11	2108
3	2109
11	2110
20	2111
6	2112
6	2113
1	2114
20	2115
1	2116
20	2117
24	2118
24	2119
1	2120
24	2121
24	2122
8	2123
3	2124
3	2125
1	2126
3	2127
3	2128
20	2129
3	2130
3	2131
20	2132
20	2133
20	2134
24	2135
8	2136
20	2137
6	2138
6	2139
11	2140
24	2141
6	2142
3	2143
11	2144
8	2145
20	2146
8	2147
11	2148
24	2149
1	2150
1	2151
1	2152
3	2153
3	2154
1	2155
1	2156
1	2157
11	2158
3	2159
20	2160
3	2161
20	2162
20	2163
11	2164
8	2165
6	2166
3	2167
11	2168
11	2169
24	2170
11	2171
20	2172
6	2173
8	2174
1	2175
11	2176
8	2177
8	2178
3	2179
8	2180
3	2181
24	2182
3	2183
3	2184
11	2185
20	2186
8	2187
24	2188
24	2189
11	2190
1	2191
8	2192
24	2193
24	2194
11	2195
6	2196
20	2197
1800	2198
11	2199
3	2200
6	2201
6	2202
6	2203
11	2204
6	2205
3	2206
24	2207
24	2208
20	2209
1	2210
8	2211
3	2212
1	2213
6	2214
11	2215
6	2216
24	2217
24	2218
24	2219
3	2220
1	2221
20	2222
8	2223
11	2224
3	2225
11	2226
24	2227
8	2228
1	2229
1	2230
20	2231
1	2232
3	2233
3	2234
24	2235
20	2236
11	2237
\.


--
-- TOC entry 2193 (class 0 OID 17760)
-- Dependencies: 189
-- Data for Name: white_cards; Type: TABLE DATA; Schema: public; Owner: pyx
--

COPY white_cards (id, text, watermark) FROM stdin;
1731	Absurd	Expansion Set 2
1732	Abundant	Expansion Set 2
1733	Addictive	Expansion Set 1
1734	Adorable	Basic Set
1735	Aged	Expansion Set 2
1736	Amazing	Expansion Set 3
1737	American	Expansion Set 2
1738	Ancient	Basic Set
1739	Animated	Basic Set
1740	Annoying	Expansion Set 1
1741	Appetizing	Expansion Set 2
1742	Armed & Dangerous	Expansion Set 4
1743	Arrogant	Basic Set
1744	Attractive	Expansion Set 3
1745	Awesome	Expansion Set 1
1746	Awful	Junior 9+
1747	Awkward	Basic Set
1748	Bad	Junior
1749	Bashful	Expansion Set 3
1750	Beautiful	Junior 9+
1751	Believable	Expansion Set 1
1752	Best	Junior 9+
1753	Big	Junior
1754	Big & Tall	Expansion Set 4
1755	Bitter	Junior 9+
1756	Black & Blue	Expansion Set 4
1757	Black & White	Expansion Set 4
1758	Bogus	Expansion Set 1
1759	Boisterous	Basic Set
1760	Bold	Expansion Set 1
1761	Boring	Basic Set
1762	Brains & Brawn	Expansion Set 4
1763	Brave	Junior
1764	Bright	Expansion Set 1
1765	Bright & Shining	Expansion Set 4
1766	Brilliant	Basic Set
1767	Brutal	Expansion Set 3
1768	Bumpy	Junior 9+
1769	Busy	Expansion Set 2
1770	Calm	Basic Set
1771	Careful	Junior 9+
1772	Caring	Junior 9+
1773	Casual	Basic Set
1774	Charismatic	Expansion Set 2
1775	Charming	Basic Set
1776	Cheerful	Junior 9+
1777	Cheesy	Basic Set
1778	Chewy	Expansion Set 1
1779	Chubby	Junior 9+
1780	Chunky	Expansion Set 1
1781	Classic	Expansion Set 1
1782	Clean	Expansion Set 2
1783	Clear	Expansion Set 1
1784	Clever	Expansion Set 3
1785	Clueless	Expansion Set 1
1786	Clumsy	Expansion Set 3
1787	Cold	Expansion Set 2
1788	Colorful	Basic Set
1789	Comfortable	Expansion Set 2
1790	Comical	Expansion Set 2
1791	Complicated	Expansion Set 1
1792	Conceited	Expansion Set 3
1793	Confused	Expansion Set 1
1794	Confusing	Junior 9+
1795	Controversial	Expansion Set 3
1796	Cool	Basic Set
1797	Cool & Collected	Expansion Set 4
1798	Corrupt	Basic Set
1799	Cosmic	Expansion Set 2
1801	Cosmopolitan	Party Set
1802	Costly	Junior 9+
1803	Courageous	Basic Set
1804	Cowardly	Expansion Set 1
1805	Cozy	Expansion Set 3
1806	Cranky	Expansion Set 2
1807	Crazed	Basic Set
1808	Crazy	Expansion Set 1
1809	Creative	Basic Set
1810	Creepy	Basic Set
1811	Creepy & Crawly	Expansion Set 4
1812	Crisp	Expansion Set 3
1813	Crisp & Delicious	Expansion Set 4
1814	Crooked	Junior 9+
1815	Cruel	Party Set
1816	Cruel & Unusual	Expansion Set 4
1817	Crunchy	Junior 9+
1818	Cuddly	Basic Set
1819	Curved	Junior 9+
1820	Cut & Dried	Expansion Set 4
1821	Cute	Expansion Set 2
1822	Cute & Cuddly	Expansion Set 4
1823	Dainty	Basic Set
1824	Dangerous	Basic Set
1825	Daring	Junior 9+
1826	Dark	Expansion Set 3
1827	Dashing	Expansion Set 3
1828	Dazed & Confused	Expansion Set 4
1829	Dead	Expansion Set 2
1830	Dead & Gone	Expansion Set 4
1831	Deadly	Expansion Set 1
1832	Delicate	Basic Set
1833	Delicious	Basic Set
1834	Delightful	Expansion Set 1
1835	Demanding	Basic Set
1836	Depressing	Expansion Set 2
1837	Desperate	Basic Set
1838	Devious	Expansion Set 3
1839	Difficult	Junior 9+
1840	Dignified	Expansion Set 1
1841	Dirty	Expansion Set 2
1842	Disgusting	Junior 9+
1843	Distinguished	Basic Set
1844	Disturbing	Expansion Set 1
1845	Down & Dirty	Expansion Set 4
1846	Down & Out	Expansion Set 4
1847	Dramatic	Basic Set
1848	Dreamy	Expansion Set 1
1849	Drunk & Disorderly	Expansion Set 4
1850	Dull	Party Set
1851	Dumb	Junior 9+
1852	Dumb & Dumber	Expansion Set 4
1853	Dysfunctional	Expansion Set 2
1854	Earthy	Basic Set
1855	Easy	Basic Set
1856	Eccentric	Expansion Set 2
1857	Edgy	Expansion Set 3
1858	Elderly	Junior 9+
1859	Elitist	Expansion Set 2
1860	Emotional	Expansion Set 2
1861	Enchanting	Expansion Set 3
1862	Endangered	Expansion Set 3
1863	Energetic	Expansion Set 3
1864	Enjoyable	Expansion Set 3
1865	Enormous	Expansion Set 3
1866	Entertaining	Expansion Set 3
1867	Eternal	Expansion Set 2
1868	European	Expansion Set 2
1869	Evil	Expansion Set 3
1870	Excellent	Junior 9+
1871	Exciting	Expansion Set 1
1872	Exhausting	Expansion Set 2
1873	Expensive	Basic Set
1874	Explosive	Expansion Set 1
1875	Exquisite	Expansion Set 2
1876	Extreme	Basic Set
1877	Fabulous	Basic Set
1878	Fake	Expansion Set 2
1879	Famous	Expansion Set 3
1880	Fancy	Expansion Set 1
1881	Fantastic	Expansion Set 1
1882	Fascinating	Junior 9+
1883	Fashionable	Expansion Set 3
1884	Fast	Expansion Set 3
1885	Fast & Furious	Expansion Set 4
1886	Fast & Loose	Expansion Set 4
1887	Fat	Junior
1888	Fat & Happy	Expansion Set 4
1889	Favorite	Junior 9+
1890	Fearful	Junior 9+
1891	Feminine	Basic Set
1892	Filthy	Basic Set
1893	Fine	Expansion Set 2
1894	Flaky	Expansion Set 3
1895	Flamboyant	Expansion Set 3
1896	Flat	Junior 9+
1897	Flavorful	Expansion Set 3
1898	Flawed	Expansion Set 3
1899	Flirtatious	Basic Set
1900	Foot Loose & Fancy Free	Expansion Set 4
1901	Foreign	Expansion Set 1
1902	Fragile	Expansion Set 3
1903	Fragrant	Basic Set
1904	Frail	Junior 9+
1905	Frazzled	Basic Set
1906	Fresh	Basic Set
1907	Friendly	Expansion Set 2
1908	Frightening	Basic Set
1909	Frivolous	Party Set
1910	Funky	Expansion Set 1
1911	Fun	Expansion Set 3
1912	Funny	Expansion Set 1
1913	Furious	Expansion Set 1
1914	Furry	Junior 9+
1915	Fuzzy	Expansion Set 2
1916	Gentle	Junior 9+
1917	Gigantic	Junior 9+
1918	Glamorous	Expansion Set 1
1919	Glitzy	Expansion Set 2
1920	Global	Expansion Set 2
1921	Gloomy	Expansion Set 3
1922	Glorious	Expansion Set 2
1923	Good	Junior
1924	Goody-Goody	Expansion Set 2
1925	Goofy	Expansion Set 3
1926	Gorgeous	Expansion Set 3
1927	Graceful	Basic Set
1928	Great	Junior
1929	Grueling	Expansion Set 3
1930	Gruesome	Expansion Set 3
1931	Grungy	Expansion Set 3
1932	Hairy	Junior
1933	Hale & Hearty	Expansion Set 4
1934	Handsome	Basic Set
1935	Handy	Expansion Set 3
1936	Happy	Junior
1937	Hard	Junior
1938	Hardworking	Basic Set
1939	Harmful	Expansion Set 1
1940	Harsh	Expansion Set 3
1941	Haunting	Expansion Set 2
1942	Hazardous	Expansion Set 3
1943	Healthy	Expansion Set 2
1944	Heartless	Expansion Set 1
1945	Heavy	Junior
1946	Helpful	Junior
1947	High & Dry	Expansion Set 4
1948	High & Low	Expansion Set 4
1949	High & Mighty	Expansion Set 4
1950	Hilarious	Basic Set
1951	Hit & Miss	Expansion Set 4
1952	Honest	Junior 9+
1953	Honorable	Basic Set
1954	Hopeless	Basic Set
1955	Horrible	Junior 9+
1956	Horrifying	Basic Set
1957	Hostile	Basic Set
1958	Hot	Expansion Set 1
1959	Hot & Bothered	Expansion Set 4
1960	Hot & Cold	Expansion Set 4
1961	Hot & Heavy	Expansion Set 4
1962	Hot & Muggy	Expansion Set 4
1963	Hot & Spicy	Expansion Set 4
1964	Hot & Sweaty	Expansion Set 4
1965	Huge	Expansion Set 3
1966	Humorous	Expansion Set 3
1967	Icky	Expansion Set 3
1968	Ideal	Expansion Set 3
1969	Idiotic	Basic Set
1970	Important	Basic Set
1971	Industrious	Basic Set
1972	Influential	Basic Set
1973	Innocent	Expansion Set 2
1974	Insane	Expansion Set 2
1975	Inspirational	Basic Set
1976	Insulting	Expansion Set 2
1977	Intelligent	Expansion Set 1
1978	Intense	Expansion Set 1
1979	Interesting	Junior 9+
1980	Irresistible	Expansion Set 2
1981	Irritating	Expansion Set 1
1982	Jolly	Expansion Set 3
1983	Juicy	Expansion Set 1
1984	Kind	Junior 9+
1985	Large	Junior
1986	Lazy	Expansion Set 2
1987	Lean & Mean	Expansion Set 4
1988	Legendary	Expansion Set 2
1989	Lewd & Lascivious	Expansion Set 4
1990	Light	Junior
1991	Light & Fluffy	Expansion Set 4
1992	Little	Junior 9+
1993	Lively	Junior
1994	Long	Junior 9+
1995	Long & Lean	Expansion Set 4
1996	Loud	Basic Set
1997	Loud & Clear	Expansion Set 4
1998	Lovable	Expansion Set 1
1999	Loving	Junior 9+
2000	Lucky	Basic Set
2001	Lumpy	Junior
2002	Luscious	Basic Set
2003	Luxurious	Basic Set
2004	Magical	Basic Set
2005	Manly	Expansion Set 2
2006	Masculine	Basic Set
2007	Mean	Expansion Set 3
2008	Meek	Expansion Set 2
2009	Meek & Mild	Expansion Set 4
2010	Melodramatic	Party Set
2011	Mesmerizing	Expansion Set 3
2012	Messy	Expansion Set 3
2013	Mischievous	Basic Set
2014	Miserable	Expansion Set 2
2015	Misunderstood	Basic Set
2016	Modern	Expansion Set 3
2017	Mushy	Junior 9+
2018	Mysterious	Expansion Set 1
2019	Mystical	Expansion Set 2
2020	Naive	Expansion Set 1
2021	Nasty	Basic Set
2022	Natural	Expansion Set 1
2023	Naughty & Nice	Expansion Set 4
2024	Neat	Expansion Set 2
2025	Neat & Clean	Expansion Set 4
2026	Neglected	Expansion Set 2
2027	Nerdy	Basic Set
2028	New	Junior
2029	New & Improved	Expansion Set 4
2030	Nice	Junior
2031	Noisy	Junior
2032	Normal	Basic Set
2033	Nutty	Expansion Set 3
2034	Obnoxious	Basic Set
2035	Obscene	Expansion Set 3
2036	Odd	Basic Set
2037	Offensive	Basic Set
2038	Old	Expansion Set 3
2039	Old & Cranky	Expansion Set 4
2040	Old & Wise	Expansion Set 4
2041	On The Up & Up	Expansion Set 4
2042	Orderly	Expansion Set 2
2043	Ordinary	Basic Set (2001 Printing Forward)
2044	Organic	Expansion Set 2
2045	Outrageous	Basic Set
2046	Overwhelming	Expansion Set 1
2047	Painful	Expansion Set 1
2048	Pale	Junior 9+
2049	Pathetic	Expansion Set 2
2050	Patriotic	Basic Set
2051	Peaceful	Expansion Set 1
2052	Perfect	Basic Set
2053	Perverse	Expansion Set 3
2054	Philosophical	Expansion Set 1
2055	Phony	Basic Set
2056	Plain	Basic Set (1999 Printing Only)
2057	Plain & Simple	Expansion Set 4
2058	Playful	Expansion Set 1
2059	Pleasant	Junior 9+
2060	Plug & Play	Expansion Set 4
2061	Plump & Tender	Expansion Set 4
2062	Polite	Junior 9+
2063	Poor	Junior 9+
2064	Popular	Expansion Set 2
2065	Powerful	Basic Set
2066	Practical	Junior 9+
2067	Pretty	Expansion Set 3
2068	Prim & Proper	Expansion Set 4
2069	Primitive	Basic Set
2070	Principled	Basic Set
2071	Profound	Basic Set
2072	Proud	Junior 9+
2073	Puffy	Expansion Set 2
2074	Pure	Basic Set
2075	Quick	Junior 9+
2076	Quick & Dirty	Expansion Set 4
2077	Quiet	Expansion Set 2
2078	Radiant	Expansion Set 1
2079	Radical	Basic Set
2080	Rare	Expansion Set 1
2081	Raw	Expansion Set 3
2082	Realistic	Expansion Set 1
2083	Refreshing	Expansion Set 1
2084	Refined	Expansion Set 2
2085	Relaxed	Junior 9+
2086	Relaxing	Expansion Set 2
2087	Repulsive	Expansion Set 2
2088	Respectable	Expansion Set 3
2089	Responsible	Basic Set
2090	Revolutionary	Expansion Set 1
2091	Rich	Basic Set
2092	Ridiculous	Basic Set
2093	Risky	Expansion Set 1
2094	Rough	Basic Set
2095	Rough & Ready	Expansion Set 4
2096	Round	Junior 9+
2097	Sad	Junior 9+
2098	Saintly	Basic Set
2099	Sappy	Basic Set
2100	Scary	Basic Set
2101	Scenic	Expansion Set 1
2102	Scented	Junior 9+
2103	Secretive	Expansion Set 3
2104	Selfish	Basic Set
2105	Sensational	Expansion Set 3
2106	Senseless	Expansion Set 2
2107	Sensitive	Basic Set
2108	Sensual	Basic Set
2109	Serious	Junior 9+
2110	Sexy	Basic Set
2111	Shaggy	Junior
2112	Shallow	Expansion Set 2
2113	Sharp	Expansion Set 2
2114	Shiny	Expansion Set 1
2115	Shiny	Junior
2116	Shocking	Expansion Set 1
2117	Short	Junior
2118	Short & Stout	Expansion Set 4
2119	Short & Sweet	Expansion Set 4
2120	Shy	Expansion Set 1
2121	Sick & Tired	Expansion Set 4
2122	Sick & Twisted	Expansion Set 4
2123	Sickening	Expansion Set 3
2124	Silent	Junior 9+
2125	Silky	Junior 9+
2126	Silly	Expansion Set 1
2127	Simple	Junior 9+
2128	Skillful	Junior 9+
2129	Skinny	Junior
2130	Slender	Junior 9+
2131	Slimy	Junior 9+
2132	Slippery	Junior
2133	Sloppy	Junior
2134	Slow	Junior
2135	Slow & Steady	Expansion Set 4
2136	Sluggish	Expansion Set 3
2137	Small	Junior
2138	Smart	Expansion Set 2
2139	Smelly	Expansion Set 2
2140	Smooth	Basic Set
2141	Smooth & Creamy	Expansion Set 4
2142	Snappy	Expansion Set 2
2143	Sneaky	Junior 9+
2144	Soft	Basic Set
2145	Sophisticated	Expansion Set 3
2146	Sour	Junior
2147	Special	Expansion Set 3
2148	Speedy	Basic Set
2149	Spic & Span	Expansion Set 4
2150	Spicy	Expansion Set 1
2151	Spiritual	Expansion Set 1
2152	Spooky	Expansion Set 1
2153	Sporty	Junior 9+
2154	Spotless	Junior 9+
2155	Spunky	Expansion Set 1
2156	Square	Expansion Set 1
2157	Squeaky Clean	Expansion Set 1
2158	Stereotyped	Basic Set
2159	Sticky	Junior 9+
2160	Stinky	Junior
2161	Straight	Junior 9+
2162	Strange	Junior
2163	Strong	Junior
2164	Stunning	Basic Set
2165	Stupid	Expansion Set 3
2166	Sultry	Expansion Set 2
2167	Surprising	Junior 9+
2168	Sweet	Basic Set
2169	Swift	Basic Set
2170	Swift & Sure	Expansion Set 4
2171	Talented	Basic Set
2172	Tall	Junior
2173	Tame	Expansion Set 2
2174	Tasty	Expansion Set 3
2175	Technological	Expansion Set 1
2176	Temperamental	Basic Set
2177	Tempting	Expansion Set 3
2178	Tender	Expansion Set 3
2179	Terrible	Junior 9+
2180	Terrific	Expansion Set 3
2181	Thick	Junior 9+
2182	Thick & Chunky	Expansion Set 4
2183	Thin	Junior 9+
2184	Thoughtful	Junior 9+
2185	Timeless	Basic Set
2186	Tiny	Junior
2187	Tormenting	Expansion Set 3
2188	Torn & Tattered	Expansion Set 4
2189	Touch & Go	Expansion Set 4
2190	Touchy-Feely	Basic Set
2191	Tough	Expansion Set 1
2192	Trashy	Expansion Set 3
2193	Tried & True	Expansion Set 4
2194	True & Blue	Expansion Set 4
2195	Trustworthy	Basic Set
2196	Twisted	Expansion Set 2
2197	Ugly	Junior
2198	Unbelievable	Party Set
2199	Unforgettable	Basic Set
2200	Unhappy	Junior 9+
2201	Unhealthy	Expansion Set 2
2202	Unnatural	Expansion Set 2
2203	Unreal	Expansion Set 2
2204	Unscrupulous	Basic Set
2205	Unusual	Expansion Set 2
2206	Untamed	Junior 9+
2207	Up & Coming	Expansion Set 4
2208	Up & Down	Expansion Set 4
2209	Useful	Junior
2210	Useless	Expansion Set 1
2211	Vain	Expansion Set 3
2212	Valuable	Junior 9+
2213	Violent	Expansion Set 1
2214	Virtuous	Expansion Set 2
2215	Visionary	Basic Set
2216	Warm	Expansion Set 2
2217	Warm & Cozy	Expansion Set 4
2218	Warm & Fuzzy	Expansion Set 4
2219	Wash & Wear	Expansion Set 4
2220	Weak	Junior 9+
2221	Weird	Expansion Set 1
2222	Wet	Junior
2223	Whimsical	Expansion Set 3
2224	Wicked	Basic Set
2225	Wide	Junior 9+
2226	Wild	Basic Set
2227	Wild & Wooly	Expansion Set 4
2228	Wired	Expansion Set 3
2229	Witty	Expansion Set 1
2230	Woebegone	Expansion Set 1
2231	Wonderful	Junior
2232	Worldly	Expansion Set 1
2233	Worthless	Junior 9+
2234	Young	Junior 9+
2235	Young & Restless	Expansion Set 4
2236	Yucky	Junior
2237	Zany	Basic Set
\.


--
-- TOC entry 2202 (class 0 OID 0)
-- Dependencies: 190
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: pyx
--

SELECT pg_catalog.setval('hibernate_sequence', 2622, true);


--
-- TOC entry 2059 (class 2606 OID 17741)
-- Name: black_cards black_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY black_cards
    ADD CONSTRAINT black_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 2063 (class 2606 OID 17754)
-- Name: card_set_black_card card_set_black_card_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT card_set_black_card_pkey PRIMARY KEY (card_set_id, black_card_id);


--
-- TOC entry 2061 (class 2606 OID 17749)
-- Name: card_set card_set_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set
    ADD CONSTRAINT card_set_pkey PRIMARY KEY (id);


--
-- TOC entry 2065 (class 2606 OID 17759)
-- Name: card_set_white_card card_set_white_card_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT card_set_white_card_pkey PRIMARY KEY (card_set_id, white_card_id);


--
-- TOC entry 2067 (class 2606 OID 17767)
-- Name: white_cards white_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY white_cards
    ADD CONSTRAINT white_cards_pkey PRIMARY KEY (id);


--
-- TOC entry 2069 (class 2606 OID 17773)
-- Name: card_set_black_card fk513da45c3166b76a; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45c3166b76a FOREIGN KEY (black_card_id) REFERENCES black_cards(id);


--
-- TOC entry 2068 (class 2606 OID 17768)
-- Name: card_set_black_card fk513da45c985dacea; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_black_card
    ADD CONSTRAINT fk513da45c985dacea FOREIGN KEY (card_set_id) REFERENCES card_set(id);


--
-- TOC entry 2071 (class 2606 OID 17783)
-- Name: card_set_white_card fkc248727257c340be; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc248727257c340be FOREIGN KEY (white_card_id) REFERENCES white_cards(id);


--
-- TOC entry 2070 (class 2606 OID 17778)
-- Name: card_set_white_card fkc2487272985dacea; Type: FK CONSTRAINT; Schema: public; Owner: pyx
--

ALTER TABLE ONLY card_set_white_card
    ADD CONSTRAINT fkc2487272985dacea FOREIGN KEY (card_set_id) REFERENCES card_set(id);


-- Completed on 2018-02-27 15:12:09

--
-- PostgreSQL database dump complete
--

