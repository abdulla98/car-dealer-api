--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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


ALTER TABLE public.author OWNER TO postgres;

--
-- Name: car; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.car (
    id uuid NOT NULL,
    make text,
    model text,
    description text,
    fuel text,
    image text,
    price integer,
    power text,
    mileage integer,
    date text,
    username text
);


ALTER TABLE public.car OWNER TO postgres;

--
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    username text NOT NULL,
    name text,
    email text,
    phone_number integer,
    address text,
    password text
);


ALTER TABLE public."user" OWNER TO postgres;


--
-- Data for Name: car; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.car (id, make, model, description, fuel, image, price, power, mileage, date, username) FROM stdin;
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c1	Ford	Mondeo	Ford Mondeo Turnier 2.0 TDCi Titanium Leder Navi Xen	Diesel	https://prod.pictures.autoscout24.net/listing-images/2a96c689-454a-4a9f-9b09-cf6cde14d0bd_12edd4ca-e333-4d37-a8c4-2a907a40dd55.jpg/640x480.jpg	7690	120	216683	2014-11-01	abdullabakija
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c2	Renault	Megane	Renault Megane IV 1,6TCe Energy Grandtour GT	Gasoline	https://prod.pictures.autoscout24.net/listing-images/9e993394-926c-42ef-9769-ab93ef38ba96_eab0d653-3215-4355-9478-dd278ac2dd5c.jpg/640x480.jpg	14990	151	92000	2016-08-01	ezaniljazi
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c3	BMW	320	BMW 320 d Touring Efficient Dynamics Navigation PDC	Diesel	https://prod.pictures.autoscout24.net/listing-images/3e073fa0-7dde-475f-8c9e-229c7027a631_783b05e3-63c5-4816-ae7f-fbd90ba46d6a.jpg/640x480.jpg	11900	120	142900	2014-09-01	abdullabakija
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c4	Ford	Mondeo	Ford Mondeo 2.2 TDCi DPF Titanium S Navi+Xenon+RFK+SD	Diesel	https://prod.pictures.autoscout24.net/listing-images/ae485b53-eb1c-4be9-b4b1-12a167ca97d8_e19d44bb-c416-4100-8fcd-817defffa9ae.jpg/640x480.jpg	12799	147	105000	2014-01-01	abdullabakija
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c5	Ford	Grand	Ford Grand C-Max 7 2.0 TDCi 163CV Powershift Plus 7 POSTI	Diesel	https://prod.pictures.autoscout24.net/listing-images/0fad748f-9b92-451a-a588-2f6395546474_4953371d-c3f5-4cc9-95de-022179958323.jpg/640x480.jpg	9500	120	100000	2013-06-01	abdullabakija
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c6	BMW	320	BMW 320 D Touring/Bluetooth/Navi/Klima/Lederlenkrad	Diesel	https://prod.pictures.autoscout24.net/listing-images/00afe1dc-4be8-4a0a-b55d-79d0b3b7e200_15d18bce-f30a-4803-867b-6300d822c265.jpg/640x480.jpg	10950	135	275000	2015-03-01	abdullabakija
d3b889ef-a007-4e04-a7c9-fd64dbcfb9c7	Volkswagen	Golf	Volkswagen Golf VII 2.0 TSI BMT GTI Navi	Gasoline	https://prod.pictures.autoscout24.net/listing-images/7fb820d3-e179-439f-bd8b-7df265b44367_ffebf9c6-879c-4c9f-813d-39e73121903f.jpg/640x480.jpg	16900	162	179000	2017-10-01	ezaniljazi
a3b889ef-a007-4e04-a7c9-fd64dbcfb9c8	BMW	320	BMW 320 D EFFICIENTDYNAMICS EDITION BUSINESS	Diesel	https://prod.pictures.autoscout24.net/listing-images/c09c399a-3d9f-4910-bb8c-ad31bf06eaac_921d743b-9119-40a2-b608-4dd3200f6706.jpg/640x480.jpg	10495	120	257953	2013-07-01	ezaniljazi
b3b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Audi	A4	Audi A4 3.0 TDI DPF Navi Kamera Alcantara TOP Gepflegt	Diesel	https://prod.pictures.autoscout24.net/listing-images/15645916-951f-434f-bd04-58b503fafc82_b43e8695-8d4e-4924-87ee-6ba4fb914422.jpg/640x480.jpg	11790	150	184000	2013-06-01	ezaniljazi
c3b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Volkswagen	Passat	Volkswagen Passat Variant Highline BMT,LED,NAVI,AHK	Diesel	https://prod.pictures.autoscout24.net/listing-images/367b8357-bb80-45c3-93a6-4b0f7a384e36_c8a0888f-e301-4a24-97f8-d5c7ce2daebf.jpg/640x480.jpg	13900	140	165000	2016-05-01	abdullabakija
e3b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Mazda	CX-5	Mazda CX-5 2,2 D - Lederausstattung - Scheckheft	Diesel	https://prod.pictures.autoscout24.net/listing-images/5b81ee94-49d7-063e-e053-e250040acfd3_78ca752b-b397-4537-9897-4cd828289f36.jpg/640x480.jpg	8800	129	114600	2013-02-01	abdullabakija
f3b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Mercedes-Benz	C	Mercedes-Benz C 220 T BlueTEC /d- Exclusive - Navi-LED	Diesel	https://prod.pictures.autoscout24.net/listing-images/16822d0f-f67f-4b67-b3a8-a3d1a6f1bc01_77280552-429f-4a2d-a6fd-4dc62d5d5bc8.jpg/640x480.jpg	14900	125	189501	2015-02-01	abdullabakija
e1b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Audi	A4	Audi A4 Avant 2.0TDI S-line Sportpaket Xenon Navi	Diesel	https://prod.pictures.autoscout24.net/listing-images/bd40b8cf-958b-41b1-8ff0-1dd6cdbc7de2_9b8cc09f-1c94-42d0-9fbc-a60639666e18.jpg/640x480.jpg	11390	130	248028	2013-09-01	ezaniljazi
e3a889ef-a007-4e04-a7c9-fd64dbcfb9c8	BMW	520	BMW 520 Touring d Futura , SOLO PER COMMERCIANTI	Diesel	https://prod.pictures.autoscout24.net/listing-images/5aa7c773-37ca-486f-a4ec-f856c1f46222_8e6dfc49-d37d-4bce-b117-2b9af93a082d.jpg/640x480.jpg	10200	135	191200	2013-06-01	ezaniljazi
e4b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Renault	Clio	Renault Clio R.S. TCe 200 EDC Renaultsport | CUP Paket	Gasoline	https://prod.pictures.autoscout24.net/listing-images/4479ab51-e39b-4761-aea4-089a0212fc0f_ed1e18d7-bb49-4fde-9e1b-e4ec0afe04df.jpg/640x480.jpg	15950	147	45150	2016-05-01	ezaniljazi
e5b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Volkswagen	Passat	Volkswagen Passat Variant Comfortline BMT/+Farbdisplay	Diesel	https://prod.pictures.autoscout24.net/listing-images/4be9e9a4-d17e-4ed6-9f86-0f856c4436bb_cd0b37a3-90a0-422b-916b-92620970a7bd.jpg/640x480.jpg	13650	140	176850	2015-06-09	abdullabakija
e6b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Peugeot	Boxer	Peugeot Boxer HDI 30 Hochraumkasten	Diesel	https://prod.pictures.autoscout24.net/listing-images/418bc709-8f04-45e7-8612-6854b46c2ea9_8f26dab5-fc40-4176-9ea6-eeca4eb11f52.jpg/640x480.jpg	8450	130	342080	2014-06-01	abdullabakija
e7b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Mercedes-Benz	Sprinter	Mercedes-Benz Sprinter 416 2.2 CDI 366 HD Automaat Cruise 1 Eigenaar	Diesel	https://prod.pictures.autoscout24.net/listing-images/c70adae6-a689-4d98-9485-89ac148d0941_dd773264-0c5c-4e69-a25f-63994202bd4c.jpg/640x480.jpg	12999	120	175879	2013-05-01	abdullabakija
e8b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Opel	Astra	Opel Astra ST 2.0 CDTI Exklusiv Navi/Xenon/PDC/SHZ	Diesel	https://prod.pictures.autoscout24.net/listing-images/88ce04ae-9328-4b5a-a82c-a7e33fca1f88_94b44bdd-fd29-405d-9ceb-2dfe06348f38.jpg/640x480.jpg	7980	121	97000	2013-08-02	ezaniljazi
e9b889ef-a007-4e04-a7c9-fd64dbcfb9c8	Renault	Kadjar	Renault Kadjar TCe 165 CROSSBORDER Rückfahrkamera	Gasoline	https://prod.pictures.autoscout24.net/listing-images/0f49c05a-01ec-4bd7-b839-22afec1f2bcf_5ba088e7-3210-4724-8369-3d5c78d2516a.jpg/640x480.jpg	18900	120	17400	2018-02-01	abdullabakija
e3c889ef-a007-4e04-a7c9-fd64dbcfb9c8	Opel	Insignia	Opel Insignia Country Tourer 2,0 BiTurbo CDTI Ecotec Allrad Aut	Diesel	https://prod.pictures.autoscout24.net/listing-images/1efb7923-2481-42c6-9da4-86085206b5cb_e7076d30-46ea-4f86-a099-42375244ccbf.jpg/640x480.jpg	8490	143	264000	2014-01-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27764	Mazda	6	Mazda 6 2.2 CD 163 CV Wagon Executive Plu	Diesel	https://prod.pictures.autoscout24.net/listing-images/595fffe2-807e-424d-b123-13f2cc9fe7eb_812f8a06-d85a-45ad-9c5e-6bca74922edc.jpg/640x480.jpg	7500	120	86400	2013-12-01	abdullabakija
189d2dbd-5562-4d6c-9596-9ceba1f27764	Volkswagen	Tiguan	Volkswagen Tiguan 2.0 TDI 4Motion ABT DSG LIFE Navi PDC	Diesel	https://prod.pictures.autoscout24.net/listing-images/b0fbd6f2-aa09-4387-bc7d-a6cc6f31af35_00b6d166-1a7e-4b94-b730-f95a7b5d77fd.jpg/640x480.jpg	13930	125	119100	2013-04-01	ezaniljazi
389d2dbd-5562-4d6c-9596-9ceba1f27764	Mercedes-Benz	C	Mercedes-Benz C 220 CDI BlueEfficiency Avantgarde-1.Besitz-Scheckheft	Diesel	https://prod.pictures.autoscout24.net/listing-images/fe64638d-ede5-42ec-94c8-228099582383_a5c55b8a-2098-4bfc-91a1-cfd6d0cfada2.jpg/640x480.jpg	11900	125	176000	2013-03-01	abdullabakija
489d2dbd-5562-4d6c-9596-9ceba1f27764	Ford	Mondeo	Ford Mondeo Titanium Turnier 2.0TDCi*Getriebe+Kupplung NEU*AHK	Diesel	https://prod.pictures.autoscout24.net/listing-images/ed6049b2-3cdd-495b-8614-707f0eb20cb7_acb77fb8-7eff-48a0-9662-97bd86d922e3.jpg/640x480.jpg	6990	120	253000	2013-04-01	abdullabakija
589d2dbd-5562-4d6c-9596-9ceba1f27764	Kia	ceed	Kia ceed / Ceed 1.6 TGDI GT-Track *Navi*Pano*Xenon*Cam*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/edc5789c-032c-4a3c-afb2-6dc553745064_d1266215-68b7-48e9-ada2-b763050641ec.jpg/640x480.jpg	16350	150	52503	2017-04-01	abdullabakija
689d2dbd-5562-4d6c-9596-9ceba1f27764	Ford	Mondeo	Ford Mondeo 2.0 TDCI Titanium Powersh*LED*Navi*Leder* Serviceh	Diesel	https://prod.pictures.autoscout24.net/listing-images/f07d4e75-345d-414c-b084-86cc8aedf666_69061c42-057a-4e99-8a8f-bdafe25da5a4.jpg/640x480.jpg	12900	132	167000	2016-08-01	abdullabakija
789d2dbd-5562-4d6c-9596-9ceba1f27764	BMW	520	BMW 520 Touring 5 TOURING DIESEL 520 TOURING	Diesel	https://prod.pictures.autoscout24.net/listing-images/e691d31e-996c-46f9-aad9-0db563dc2b89_ec70fc4b-2a21-48eb-a911-b67a3052c70c.jpg/640x480.jpg	11999	120	227073	2013-01-01	abdullabakija
889d2dbd-5562-4d6c-9596-9ceba1f27764	Volkswagen	Passat	Volkswagen Passat 2.0TDI Highline 4 Motion Xenon/Navi/Leder	Diesel	https://prod.pictures.autoscout24.net/listing-images/3652785b-eef2-4a10-b425-13a41ee81671_10033b24-46c8-4269-8f18-fb1804b66193.jpg/640x480.jpg	12490	125	154998	2013-01-01	ezaniljazi
989d2dbd-5562-4d6c-9596-9ceba1f27764	Fiat	Bravo	Fiat Bravo 1.4 BENZINA/GPL 90cv/ PERFETTA / Uniproprietario	LPG	https://prod.pictures.autoscout24.net/listing-images/e2407c16-c1bf-4c01-8e4d-fd3729d37866_42ebeda6-75bb-44fe-b2a7-e066af8e780b.jpg/640x480.jpg	5500	66	114000	2012-08-01	ezaniljazi
219d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Espace	Renault Espace TCe 200 Zen Energy EDC 147 kW (200 CV)	Gasoline	https://prod.pictures.autoscout24.net/listing-images/ef698328-ea5f-4e54-bdde-35fde70c9a18_26d3aa22-3e8c-431e-9a93-2edaaa885650.jpg/640x480.jpg	18950	147	99950	2015-05-01	ezaniljazi
229d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Megane	Renault Megane 1.6 TCe Energy GT Aut. *Navi*CAM*PDC*SHZ*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/5e5fce21-f2c4-48f1-9249-774f9b66eefb_6c3bf43c-871f-45eb-be2d-320edd19aba9.jpg/640x480.jpg	17790	151	35960	2016-05-01	ezaniljazi
239d2dbd-5562-4d6c-9596-9ceba1f27764	Ford	Focus	Ford Focus Turnier Titanium*ST LINE*NAVI*XEN*KAMERA*	Diesel	https://prod.pictures.autoscout24.net/listing-images/535748e7-0a51-4aad-bb16-2f25232b5e63_83a0ad22-36b3-4ef8-a6a9-4b200012f6a8.jpg/640x480.jpg	8499	120	86500	2013-09-01	ezaniljazi
249d2dbd-5562-4d6c-9596-9ceba1f27764	Peugeot	208	Peugeot 208 1.4 HDi 68 CV 5 porte Active	Diesel	https://prod.pictures.autoscout24.net/listing-images/3ddcc212-1a45-4f4e-b003-f0c9ca80ad80_20ca2413-a58b-430b-a2c5-296497968a2d.jpg/640x480.jpg	5500	50	65764	2015-01-01 	ezaniljazi
259d2dbd-5562-4d6c-9596-9ceba1f27764	Audi	A4	Audi A4 Avant 3.0 V6 TDI 204 CV multitronic B	Diesel	https://prod.pictures.autoscout24.net/listing-images/44fae882-12d9-4931-9a89-104e99a2a700_ccc16f94-0732-419e-b5ef-6e6825bb59cb.jpg/640x480.jpg	11100	150	181000	2013-11-01	ezaniljazi
269d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Clio	Renault Clio 1.6 T 220CV EDC Start&Stop 5 porte R.S. Trophy	Gasoline	https://prod.pictures.autoscout24.net/listing-images/f350601b-3e5e-4306-b9fd-4cdc1d7bb1dd_90a41dc0-be87-4fc9-940c-296eef7ca4e4.jpg/640x480.jpg	14900	162	94630	2015-11-01	ezaniljazi
279d2dbd-5562-4d6c-9596-9ceba1f27764	Volvo	S40	Volvo S40 1.6 D2 Sport	Diesel	https://prod.pictures.autoscout24.net/listing-images/a91a9896-afc0-8f77-e053-e250040a2332_a5fda8f7-eac1-4488-9a16-792d7b36da6b.jpg/640x480.jpg	5500	84	193934	2010-11-05	ezaniljazi
299d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Kadjar	Renault Kadjar 1.6 TCe Energy Bose Edition Kamera uvm.	Gasoline	https://prod.pictures.autoscout24.net/listing-images/54d53a57-a9f7-4c8c-9967-9aa422ee2dcf_bdac4f60-5c8e-4065-bd0e-1768f5e78f85.jpg/640x480.jpg	18890	120	31000	2017-05-01	ezaniljazi
281d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Clio	Renault Clio 4 RS 200 EDC Bastuk Auspuff NAVI LED EU6	Gasoline	https://prod.pictures.autoscout24.net/listing-images/df6abc3b-a360-4f17-a6dd-c1f73eb8c740_211b442a-1ace-4a1e-a66f-a8bb2f14c951.jpg/640x480.jpg	17900	147	16744	2017-05-01	ezaniljazi
282d2dbd-5562-4d6c-9596-9ceba1f27764	Kia	ceed	Kia ceed / Ceed 1.6 TGDI GT-Track *Navi*Pano*Xenon*Cam*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/5807049f-7b60-4051-a2e0-6f0f18164610_0021a684-25ee-4211-8dec-28dced3b88f2.jpg/640x480.jpg	16350	150	52503	2017-04-01	abdullabakija
283d2dbd-5562-4d6c-9596-9ceba1f27764	BMW	116	BMW 116 i *AC SCHNITZER*Navi/PDCvh/RDC/Klimaaut/SHZ/PDC/CD	Gasoline	https://prod.pictures.autoscout24.net/listing-images/32cfec6e-d037-466c-9902-ffd7b73d1580_14cc5582-8f9b-47bd-8e89-0e7915717824.jpg/640x480.jpg	10290	150	99658	2014-01-01	abdullabakija
284d2dbd-5562-4d6c-9596-9ceba1f27764	Mercedes-Benz	E	Mercedes-Benz E 220 T BlueTEC 9G AVANTGARDE+Navi+Comand	Diesel	https://prod.pictures.autoscout24.net/listing-images/cdc31a32-c933-489d-8733-6ba5d4e95a8b_4faa7dad-c859-4ce3-9c1f-f4979f20fa1e.jpg/640x480.jpg	11950	125	369333	2015-04-01	abdullabakija
285d2dbd-5562-4d6c-9596-9ceba1f27764	Renault	Clio	Renault Clio 1.6cc TURBO 200CV EDC 5 porte R.S.	Gasoline	https://prod.pictures.autoscout24.net/listing-images/89adb897-9a97-49ef-a9cb-fd113ec6314a_94ec1f26-800a-48d8-a567-8598d9db3c4f.jpg/640x480.jpg	14800	147	89300	2014-09-01	abdullabakija
286d2dbd-5562-4d6c-9596-9ceba1f27764	BMW	120	BMW 120 D Automaat Leder Navi Pano Pdcx2	Diesel	https://prod.pictures.autoscout24.net/listing-images/8736aaf0-d34d-4edf-be90-7c7a421162ff_99b3ef6a-f798-4001-829a-a61ab428ba68.jpg/640x480.jpg	11950	120	149000	2014-08-01	abdullabakija
287d2dbd-5562-4d6c-9596-9ceba1f27764	Opel	Astra	Opel Astra 1.6 SIDI Turbo Exklusiv*Navi*Xenon*PDC*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/79289d48-0354-4d57-bb7b-7490c147fe11_8622eab7-ae62-4346-a6db-96a20157062b.jpg/640x480.jpg	10350	125	59905	2014-03-01	abdullabakija
288d2dbd-5562-4d6c-9596-9ceba1f27764	Mercedes-Benz	C	Mercedes-Benz C 220 T BlueTEC / d NAVI SHZ BURMESTER	Diesel	https://prod.pictures.autoscout24.net/listing-images/e330745a-5bad-457d-b698-0900faa460c6_0929563a-c271-4319-b929-e9764da2db69.jpg/640x480.jpg	11980	125	210000	2015-05-01	abdullabakija
289a2dbd-5562-4d6c-9596-9ceba1f27764	Opel	Insignia	Opel Insignia 2.0 CDTI 163cv Sports Tourer aut. Business Cosmo	Diesel	https://prod.pictures.autoscout24.net/listing-images/09d613d9-4821-4a9c-8c9f-cf9e104e7c99_d60a0759-7479-41fa-958b-673cae5237d9.jpg/640x480.jpg	10000	120	167000	2015-02-01	abdullabakija
289b2dbd-5562-4d6c-9596-9ceba1f27764	Volkswagen	Crafter	Volkswagen Crafter 35 TDI Comfort *REGALE*STANDHz*SHz*KLIMA	Diesel	https://prod.pictures.autoscout24.net/listing-images/a12dce53-7df8-4d1a-9785-02a415b6f739_ca780398-bd2b-444f-a775-c280ab92e4ed.jpg/640x480.jpg	11781	120	185000	2015-08-01	ezaniljazi
289c2dbd-5562-4d6c-9596-9ceba1f27764	Volkswagen	Golf	Volkswagen Golf Variant GTD*Navi*DSG*ACC*DCC*	Diesel	https://prod.pictures.autoscout24.net/listing-images/a907cbea-bb7b-4ad9-999d-656bb34a4a94_aa52bb34-a182-4161-9b23-0a58d3d878d5.jpg/640x480.jpg	13440	135	188449	2016-06-01	ezaniljazi
289e2dbd-5562-4d6c-9596-9ceba1f27764	Opel	Insignia	Opel Insignia ST 2.0 CDTI Business Edition Navi RFK	Diesel	https://prod.pictures.autoscout24.net/listing-images/ade7dce6-9a9d-42d9-9da0-8a653c51683b_a906e1f5-9208-4a14-918b-23ee1807c3f5.jpg/640x480.jpg	10480	125	129274	2016-07-01	ezaniljazi
289f2dbd-5562-4d6c-9596-9ceba1f27764	Citroen	DS5	Citroen DS5 Chic HDi 165 Nav,Kam,Sitzhzg,GRA,DENON,8xAlu	Diesel	https://prod.pictures.autoscout24.net/listing-images/1c83c8f6-62ef-485e-86f5-097cfdd24de8_537c7a9a-53bd-4324-a7cb-39a7fe68d1ab.jpg/640x480.jpg	8888	120	136000	2013-12-01	ezaniljazi
289d1dbd-5562-4d6c-9596-9ceba1f27764	Mercedes-Benz	C	Mercedes-Benz C 220 T CDI BlueEfficiency Navi Xenon Schiebedac	Diesel	https://prod.pictures.autoscout24.net/listing-images/073b10fe-b1ae-4389-95ef-824de9c9a354_d3eae44c-3faa-4fb4-a6ad-ee283d2e944a.jpg/640x480.jpg	11990	125	176998	2014-04-01	abdullabakija
289d3dbd-5562-4d6c-9596-9ceba1f27764	Mercedes-Benz	B	Mercedes-Benz B 220 CDI BlueEFF.-Navi-Xenon-Totwinkel-PDC-	Diesel	https://prod.pictures.autoscout24.net/listing-images/c974caf3-d7b6-46cb-a08f-b2aac7c5cc2a_4cd5f87c-198e-4062-bdbf-9fc4492e8cf3.jpg/640x480.jpg	14900	125	119900	2014-08-01	abdullabakija
289d4dbd-5562-4d6c-9596-9ceba1f27764	BMW	320	BMW 320 d xDrive Luxury Unicoproprietario	Diesel	https://prod.pictures.autoscout24.net/listing-images/ffe0418f-a83e-437c-bcff-db99637474e7_bdaed04a-3611-46a4-9267-9f17a4cde30f.jpg/640x480.jpg	10500	135	290000	2013-03-01	ezaniljazi
289d5dbd-5562-4d6c-9596-9ceba1f27764	Opel	Insignia	Opel Insignia ST 2.0 CDTI Innovation Leder Navi Xenon	Diesel	https://prod.pictures.autoscout24.net/listing-images/63de8194-1b71-408b-b148-b15bce7b2ed0_ab80183c-a939-46f9-8832-a7c4167062b1.jpg/640x480.jpg	7980	125	261432	2015-04-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27761	BMW	118	BMW 118 i *5-Türig*Klima*EFH*SHZ*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/96d78682-8632-45b6-9c44-a4c7284c6de2_5e2c539c-042c-4ecd-ba23-3955bcae7d7d.jpg/640x480.jpg	11450	125	71000	2013-12-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27762	Volkswagen	Crafter	Volkswagen Crafter 35 2.0 TDI L3H2 *LAADKLEP+AIRCO+CRUISE*	Diesel	https://prod.pictures.autoscout24.net/listing-images/14628f9c-5cc6-4f2a-9657-7c58ab4b660a_92a7b41f-3e18-4e7a-84d1-06bc43047d1d.jpg/640x480.jpg	9445	120	502001	2013-06-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27763	BMW	320	BMW 320 Serie 3 (F30/F31) xDrive Touring Modern	Diesel	https://prod.pictures.autoscout24.net/listing-images/551b5434-f872-46b7-bd54-118cb22e6070_1bf42647-67f6-4c8f-95a2-dcf3fc7af2f1.jpg/640x480.jpg	12000	135	185000	2014-08-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27765	Ford	S-Max	Ford S-Max 2.0TDCI Aut. Titanium >LEDER+PANORAM.+VOLL	Diesel	https://prod.pictures.autoscout24.net/listing-images/b5535e7d-56cf-4a66-951f-748107c2f3cf_4abb1366-53a0-410e-bb9d-530c6e18128f.jpg/640x480.jpg	12750	120	125000	2014-02-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27766	Mercedes-Benz	Sprinter	Mercedes-Benz Sprinter 316 2.2 CDI 432L HD L3 * GEEN BTW VERSCHULDIGD	Diesel	https://prod.pictures.autoscout24.net/listing-images/718471d6-04ba-46cf-b13b-be20f37fdcb5_5fa637ba-97fd-4b46-8e1b-1138e20fb73f.jpg/640x480.jpg	13950	121	148638	2013-05-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27767	Volkswagen	Passat	Volkswagen Passat Alltrack 2.0 TDI DSG 4motion Tetto/Xenon/Navi/PDC	Diesel	https://prod.pictures.autoscout24.net/listing-images/ceaa3fe0-8e2a-4e17-b2de-cab340a5f7cd_02f906fb-2617-4fc0-9d11-96192643b0c1.jpg/640x480.jpg	9500	125	220000	2013-10-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27768	Renault	Megane	Renault Megane Sport Tourer TCe 205 GT Energy EDC 151 kW (2	Gasoline	https://prod.pictures.autoscout24.net/listing-images/6b34dfd3-65d9-43ab-9f4e-7064964a49df_91dab52f-96a4-45f6-864d-ce8fdf374392.jpg/640x480.jpg	19000	151	46259	2017-03-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27769	Audi	A4	Audi A4 Avant 2.0 TDI 177cv multitronic Business..Navi..!!	Diesel	https://prod.pictures.autoscout24.net/listing-images/f542989e-cd57-4a43-afd1-34248ff4fc95_1e03e348-ae76-4406-962b-f9dec58ca888.jpg/640x480.jpg	10600	130	134000	2013-06-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27714	BMW	X1	BMW X1 sDrive 20d X-Line NAVI prof. Shz PDC Ahk	Diesel	https://prod.pictures.autoscout24.net/listing-images/fc89ba46-b5b4-4411-b803-dbd8f63e8859_7796ce0d-8bb3-4df3-b224-011b72d6c6f1.jpg/640x480.jpg	11980	135	179200	2014-12-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27724	BMW	320	BMW 320 Touring 320d EDE Executive Sportline *XENON+NAVI+P	Diesel	https://prod.pictures.autoscout24.net/listing-images/6fe0dead-9595-4c9d-aa5a-981f83e51bf5_1b99cfea-8415-4a2c-8de6-f673575770f4.jpg/640x480.jpg	10445	121	299156	2013-06-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27734	Renault	Kadjar	Renault Kadjar 1.6 TCe Energy Zen	Gasoline	https://prod.pictures.autoscout24.net/listing-images/0bba1ebd-6906-41be-ab5f-a6feb2ec95bc_49a36301-ee19-4f04-814a-adfca98d3733.jpg/640x480.jpg	16800	120	44641	2017-06-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27744	BMW	320	BMW 320 dAT Navi PDC Klimaautomatik	Diesel	https://prod.pictures.autoscout24.net/listing-images/3efa548e-8d3c-4138-bc44-06fd9bf42dea_f381ddd8-9d03-4ecb-8b97-10f9d3185100.jpg/640x480.jpg	10440	135	169200	2013-11-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27754	Audi	A4	Audi A4 allroad 2.0 TDI Quattro * garantie 12 mois * carnet *	Diesel	https://prod.pictures.autoscout24.net/listing-images/0d068f0f-40cf-4d99-8a02-fab6096c2990_8b13355b-f932-4d14-9416-e629201c9ce2.jpg/640x480.jpg	11490	130	219000	2013-05-01	ezaniljazi
289d2dbd-5562-4d6c-9596-9ceba1f27774	Ford	Transit	Ford Transit Custom 2.0 TDCI 170 pk Trend 2.5t Trekverm./Stoelverwarmi	Diesel	https://prod.pictures.autoscout24.net/listing-images/a067123c-2a8b-47fb-8a32-fbc5bf976471_749cd43a-d49d-4f9a-ab4b-cc1be1ae27bd.jpg/640x480.jpg	12744	125	77097	2015-02-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27784	Mercedes-Benz	Vito	Mercedes-Benz Vito 116 CDI 4Matic Long Auto. 3 places	Diesel	https://prod.pictures.autoscout24.net/listing-images/97a4c88d-5bcb-4bcd-8be9-702ad6582c24_02d791cd-dc73-49d2-b873-d9313fcc070d.jpg/640x480.jpg	13980	120	137000	2014-06-01	abdullabakija
289d2dbd-5562-4d6c-9596-9ceba1f27794	Volkswagen	Polo	Volkswagen Polo GTI 1,4 DSG	Gasoline	https://prod.pictures.autoscout24.net/listing-images/236f22c0-3ba1-470a-9b05-442dc3c278e0_526102a0-231c-4d80-8aee-11b42fa90a8b.jpg/640x480.jpg	8999	132	57000	2013-10-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c104	Kia	ceed	Kia ceed / Ceed 1.6 TGDI GT-Track *Navi*Pano*Xenon*Cam*	Gasoline	https://prod.pictures.autoscout24.net/listing-images/dc333352-f885-44ab-b22c-61c49cba6de9_c7b9a998-fbf8-4c99-a1a0-be43bb765287.jpg/640x480.jpg	16350	150	52503	2017-04-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c105	Ford	Kuga	Ford Kuga 2.0 TDCI 163 CV Powershift 4WD Titanium	Diesel	https://prod.pictures.autoscout24.net/listing-images/895b6ef8-bc73-4160-aa57-0eee3b4c974d_d3096e31-71c5-41db-881e-56f9663d4cb1.jpg/640x480.jpg	13750	120	101169	2014-09-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c106	Ford	S-Max	Ford S-Max Titanium S*AUTOMATIK*LEDER*NAVI*XENON*	Diesel	https://prod.pictures.autoscout24.net/listing-images/178c2d91-b6eb-48fe-a908-0c390b08ce37_7f197351-d95e-4a58-92da-82547ff7e554.jpg/640x480.jpg	12799	147	144000	2014-07-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c107	Renault	Kadjar	Renault Kadjar 1.6 TCe 165 Crossborder-S Leder LED 18Z	Gasoline	https://prod.pictures.autoscout24.net/listing-images/a25de28f-3f33-4d4e-a58a-24505bb4f056_3b8d76ff-88f5-47b1-83b8-9c5ab1871a4a.jpg/640x480.jpg	19385	120	32500	2018-08-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c108	Ford	Kuga	Ford Kuga 2.0 TDCI 4x4 Trend Navi Ahk Bluetooth	Diesel	https://prod.pictures.autoscout24.net/listing-images/cb3a5b20-5e65-4d82-94e7-18a985ee44f8_6ed08e8a-9e21-4110-bab1-704ae895d645.jpg/640x480.jpg	9980	120	181225	2014-07-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c109	Chevrolet	Captiva	Chevrolet Captiva 2.2 D LT*7Sitzer*Leder*Navi*AHK*Alu*	Diesel	https://prod.pictures.autoscout24.net/listing-images/d2ae1b71-9b61-4043-a7e6-cd0808e6035f_9eb77efd-abcb-4e58-9cd5-a03318f2b9e0.jpg/640x480.jpg	8890	120	105000	2013-01-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c114	Renault	Grand	Renault Grand Espace 7-SITZER, Initiale Paris Aut. PREIS VERHANDELBAR !	Diesel	https://prod.pictures.autoscout24.net/listing-images/0c171ccf-79f8-477b-90c8-c11f1e3a9180_15ea4359-0011-486c-b363-d585dced9f82.jpg/640x480.jpg	15900	127	121000	2014-10-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c124	Audi	A4	Audi A4 Avant 2.0 TDI Attraction XENON+LEDER+ALU	Diesel	https://prod.pictures.autoscout24.net/listing-images/c8eb4ef1-bd57-4915-9310-01b71e9314aa_dbaf2c33-8e60-4abb-8320-c11da0cee222.jpg/640x480.jpg	12199	130	113600	2013-01-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c134	BMW	525	BMW 525 d Touring Aut. Leder Navi Virtual Cockpit HUD	Diesel	https://prod.pictures.autoscout24.net/listing-images/62040f74-562f-49eb-a693-15f5650aad97_f5853c8e-cba1-4a7e-8def-955e12e50904.jpg/640x480.jpg	10950	160	298443	2013-01-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c144	Renault	Megane	Renault Megane Sport Tourer TCe 205 GT Energy EDC 151 kW (2	Gasoline	https://prod.pictures.autoscout24.net/listing-images/5a572c44-6588-44f5-8a7e-0a6ccc58f6a1_59511495-cda3-4761-8fbc-69eb34570ec6.jpg/640x480.jpg	19000	151	46259	2017-03-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c154	Mercedes-Benz	C	Mercedes-Benz C 250 T CDI 7G-Tronic+Navi+Standhzg+Sitzhzg+PDC	Diesel	https://prod.pictures.autoscout24.net/listing-images/c3e13b66-2d50-47d8-92c9-2cf6f2b68bf7_f720a055-04e5-47d7-8022-42fa223b0f72.jpg/640x480.jpg	14695	150	147651	2014-02-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c164	Ford	Grand	Ford Grand C-Max Titan Autom Navi Keyless Xen Shz	Diesel	https://prod.pictures.autoscout24.net/listing-images/f18dbc0c-5ddd-4ab4-8a18-c56dcb5c595e_34e22ed5-b184-4c25-91cf-78d44c6342bb.jpg/640x480.jpg	11400	120	106972	2013-11-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c174	BMW	320	BMW 320 d Touring xDrive Aut. Modern Line-Navi-Xenon	Diesel	https://prod.pictures.autoscout24.net/listing-images/39ff7015-9103-458e-a5d6-f833759049b6_3a397d3a-0c08-42c4-9a57-ba0469145e33.jpg/640x480.jpg	11350	135	196000	2014-08-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c184	Hyundai	i10	Hyundai i10 1.0i Blackline	Gasoline	https://prod.pictures.autoscout24.net/listing-images/974f7096-8737-7e72-e053-e250040a66ca_2d52da7e-1c73-49cf-a776-5b60b823873e.jpg/640x480.jpg	5500	48	73060	2015-09-01	ezaniljazi
5ecbdbe5-1307-4c80-9c4c-5f205eb5c194	Mercedes-Benz	Sprinter	Mercedes-Benz Sprinter 516 2.2 CDI | Aut. | L3H2 | Camera | Cruise | Airc	Diesel	https://prod.pictures.autoscout24.net/listing-images/caeab334-2ef1-4577-b222-9803b9f1e211_6de1ddd9-1aa9-4926-9f82-4e6f9b717893.jpg/640x480.jpg	10950	121	234125	2013-02-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5c111	Mercedes-Benz	C	Mercedes-Benz C 300 C-Klasse Lim. C 300 CDI 4-Matic BlueEfficiency	Diesel	https://prod.pictures.autoscout24.net/listing-images/cbbf7ce7-65ef-4954-9bc9-30e037aaf644_4eeab6bc-04f9-434a-997f-e82fd2e2e2f9.jpg/640x480.jpg	12990	170	154250	2013-01-01	abdullabakija
5ecbdbe5-1307-4c80-9c4c-5f205eb5a104	Opel	Astra	Opel Astra 2.0 CDTI 165CV 5 porte Cosmo Fleet	Diesel	https://prod.pictures.autoscout24.net/listing-images/6f302886-019e-fb16-e053-e250040a7278_396b6d6f-e5bc-4ed1-80bd-86ce429e7986.jpg/640x480.jpg	8000	121	122000	2014-01-01	ezaniljazi
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce1	Mercedes-Benz	C	Mercedes-Benz C 250 T CDI BE Avantgarde Comand Xenon ILS	Diesel	https://prod.pictures.autoscout24.net/listing-images/301d5856-0c20-47e8-9217-7d00c57a51df_0bcd01e5-d06a-416d-8abb-e0ed5d481790.jpg/640x480.jpg	10950	150	179980	2013-02-01	abdullabakija
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce0	Mercedes-Benz	B	Mercedes-Benz B 220 CDI 2.HD*StandHzg*Eur6*Leder*Panorama*AHK	Diesel	https://prod.pictures.autoscout24.net/listing-images/ba678d0a-4ca4-4d28-bf4f-42fa8f8311e2_021668c6-13f3-47d3-a618-b4ba86ef79d2.jpg/640x480.jpg	13980	125	189000	2013-06-01	abdullabakija
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce2	Renault	Megane	Renault Megane IV Gandtour TCe 205 GT Navi SHZ BOSE RFK	Gasoline	https://prod.pictures.autoscout24.net/listing-images/acaf98d5-fcc8-40d6-824a-8993d1a74a17_c7c45fdf-e949-47a4-9bb0-ddde565a3eba.jpg/640x480.jpg	19380	151	44750	2016-08-01	ezaniljazi
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce3	Volkswagen	Passat	Volkswagen Passat Variant 2.0 TDI Highline Leder Navi LED	Diesel	https://prod.pictures.autoscout24.net/listing-images/60d7cc4e-06fe-4570-a6dd-08e5e78931bd_00b62e34-4dec-495d-b4f7-3bb950ebad03.jpg/640x480.jpg	13290	140	186319	2015-05-01	ezaniljazi
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce4	Ford	Grand	Ford Grand C-Max 2.0TDCi Titanium Navi Kamera S	Diesel	https://prod.pictures.autoscout24.net/listing-images/e0610177-8f01-434f-bc8b-be57edaacf9b_0a259b37-830a-4d3b-b44a-f705b3326ca9.jpg/640x480.jpg	12900	120	63335	2014-03-01	abdullabakija
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce5	Opel	Astra	Opel Astra 2.0 CDTI ECOFL. EXKLUSIV S/S SPORTS T. 5 Türen KOM	Diesel	https://prod.pictures.autoscout24.net/listing-images/96d9dbcf-1325-4838-b89d-841144b2aa49_0024adf3-300a-4ffb-8f4e-d1fcd66d6416.jpg/640x480.jpg	8260	121	113147	2015-07-01	ezaniljazi
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce6	Ford	Fiesta	Ford Fiesta 1.5 TDCi 120 CV 5 porte ST-Line	Diesel	https://prod.pictures.autoscout24.net/listing-images/c6c46096-160b-343e-e053-e250040a1640_7aad2d19-3d1e-41fd-91c0-1634359332ae.jpg/640x480.jpg	13800	88	25000	2018-12-01	abdullabakija
4d3b0f0c-1509-4701-8d14-aa1dc0c79ce7	Volkswagen	Passat	Volkswagen Passat Variant Highline BlueMotion/Navi/Leder/	Diesel	https://prod.pictures.autoscout24.net/listing-images/06316aa8-7987-4a3b-8bb9-357fb4daf913_0ab82d57-f8a5-4cf4-9abc-f06ccf2700de.jpg/640x480.jpg	8990	125	241250	2013-02-01	ezaniljazi
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (username, name, email, phone_number, address, password) FROM stdin;
abdullabakija	Abdulla Bakija	a.bakija09@gmail.com	78390649	Mala Recica	abdulla123
ezaniljazi	Ezan Iljazi	ezan.iljazi@gmail.com	111111111	Gostivar	ezan123
\.

--
-- Name: car car_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (id);


--
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (username);


--
-- Name: fki_user_fk; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_user_fk ON public.car USING btree (username);


--
-- Name: car user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.car
    ADD CONSTRAINT user_fk FOREIGN KEY (username) REFERENCES public."user"(username) NOT VALID;


--
-- PostgreSQL database dump complete
--

