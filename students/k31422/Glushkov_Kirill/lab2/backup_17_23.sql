PGDMP     4    1                {            postgres    15.2    15.2 A    a           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            b           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            c           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            d           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Pakistan.1252';
    DROP DATABASE postgres;
                postgres    false            e           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3428                        2615    16768    Аэропорт    SCHEMA     "   CREATE SCHEMA "Аэропорт";
     DROP SCHEMA "Аэропорт";
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            f           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16890    airport    TABLE     �   CREATE TABLE "Аэропорт".airport (
    id bigint NOT NULL,
    city character varying(300) NOT NULL,
    name character varying(100) NOT NULL
);
 '   DROP TABLE "Аэропорт".airport;
       Аэропорт         heap    postgres    false    6            �            1259    16889    airport_id_seq    SEQUENCE     �   ALTER TABLE "Аэропорт".airport ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Аэропорт".airport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            Аэропорт          postgres    false    6    226            �            1259    16769    aviacompany    TABLE     �   CREATE TABLE "Аэропорт".aviacompany (
    name character(40) NOT NULL,
    country character(40) NOT NULL,
    terminal character(40) NOT NULL,
    owner character(120) NOT NULL,
    licence_num character(40) NOT NULL
);
 +   DROP TABLE "Аэропорт".aviacompany;
       Аэропорт         heap    postgres    false    6            �            1259    16805    crew    TABLE     �   CREATE TABLE "Аэропорт".crew (
    id bigint NOT NULL,
    passport bigint NOT NULL,
    id_flight character(40) NOT NULL,
    health_check boolean NOT NULL,
    access boolean NOT NULL,
    health_check_date date NOT NULL
);
 $   DROP TABLE "Аэропорт".crew;
       Аэропорт         heap    postgres    false    6            �            1259    16793    flight    TABLE     �   CREATE TABLE "Аэропорт".flight (
    id character(40) NOT NULL,
    date date NOT NULL,
    variant character(12) NOT NULL
);
 &   DROP TABLE "Аэропорт".flight;
       Аэропорт         heap    postgres    false    6            �            1259    16784 	   passenger    TABLE     �   CREATE TABLE "Аэропорт".passenger (
    passport character(40) NOT NULL,
    email character(40) NOT NULL,
    phone character(40) NOT NULL,
    full_name character(321) NOT NULL
);
 )   DROP TABLE "Аэропорт".passenger;
       Аэропорт         heap    postgres    false    6            �            1259    16909    plane    TABLE     �   CREATE TABLE "Аэропорт".plane (
    number bigint NOT NULL,
    id_type bigint NOT NULL,
    fix_date date NOT NULL,
    mileage bigint NOT NULL
);
 %   DROP TABLE "Аэропорт".plane;
       Аэропорт         heap    postgres    false    6            �            1259    16799 
   plane_type    TABLE     �   CREATE TABLE "Аэропорт".plane_type (
    id bigint NOT NULL,
    capacity bigint NOT NULL,
    load bigint NOT NULL,
    speed bigint NOT NULL,
    fuel_rate bigint NOT NULL,
    seat_number bigint NOT NULL,
    made "char" NOT NULL
);
 *   DROP TABLE "Аэропорт".plane_type;
       Аэропорт         heap    postgres    false    6            �            1259    16901    rank    TABLE     �   CREATE TABLE "Аэропорт".rank (
    id_crew bigint NOT NULL,
    rank character varying(111) NOT NULL,
    salary bigint NOT NULL
);
 $   DROP TABLE "Аэропорт".rank;
       Аэропорт         heap    postgres    false    6            �            1259    16790    schedule    TABLE       CREATE TABLE "Аэропорт".schedule (
    day character(40) NOT NULL,
    "Время прибытия" date NOT NULL,
    "Время вылета" date NOT NULL,
    id_flight bigint NOT NULL,
    airport_from bigint NOT NULL,
    airport_to bigint NOT NULL
);
 (   DROP TABLE "Аэропорт".schedule;
       Аэропорт         heap    postgres    false    6            �            1259    16781    seat    TABLE     �   CREATE TABLE "Аэропорт".seat (
    type character(10) NOT NULL,
    "row" character(2) NOT NULL,
    class character(20) NOT NULL,
    available boolean NOT NULL,
    id_flight character(40),
    id bigint NOT NULL
);
 $   DROP TABLE "Аэропорт".seat;
       Аэропорт         heap    postgres    false    6            �            1259    16787    staff    TABLE     �   CREATE TABLE "Аэропорт".staff (
    id bigint NOT NULL,
    passport bigint NOT NULL,
    company character(40) NOT NULL,
    phone integer,
    full_name character(120) NOT NULL,
    airport_id bigint NOT NULL
);
 %   DROP TABLE "Аэропорт".staff;
       Аэропорт         heap    postgres    false    6            �            1259    16775    ticket    TABLE     9  CREATE TABLE "Аэропорт".ticket (
    id "char" NOT NULL,
    id_ticket_office "char" NOT NULL,
    registration_status boolean NOT NULL,
    buy_date date NOT NULL,
    price integer NOT NULL,
    passport character(40) NOT NULL,
    id_flight character(40) NOT NULL,
    seat bigint,
    plane bigint
);
 &   DROP TABLE "Аэропорт".ticket;
       Аэропорт         heap    postgres    false    6            �            1259    16778    ticket_office    TABLE     �   CREATE TABLE "Аэропорт".ticket_office (
    id "char" NOT NULL,
    type "char" NOT NULL,
    adress "char" NOT NULL
);
 -   DROP TABLE "Аэропорт".ticket_office;
       Аэропорт         heap    postgres    false    6            �            1259    16962    transit    TABLE     �   CREATE TABLE "Аэропорт".transit (
    id bigint NOT NULL,
    id_airport bigint NOT NULL,
    fly_time time with time zone NOT NULL
);
 '   DROP TABLE "Аэропорт".transit;
       Аэропорт         heap    postgres    false    6            [          0    16890    airport 
   TABLE DATA           =   COPY "Аэропорт".airport (id, city, name) FROM stdin;
    Аэропорт          postgres    false    226   ?U       P          0    16769    aviacompany 
   TABLE DATA           ^   COPY "Аэропорт".aviacompany (name, country, terminal, owner, licence_num) FROM stdin;
    Аэропорт          postgres    false    215   �U       Y          0    16805    crew 
   TABLE DATA           l   COPY "Аэропорт".crew (id, passport, id_flight, health_check, access, health_check_date) FROM stdin;
    Аэропорт          postgres    false    224   �U       W          0    16793    flight 
   TABLE DATA           ?   COPY "Аэропорт".flight (id, date, variant) FROM stdin;
    Аэропорт          postgres    false    222   xV       T          0    16784 	   passenger 
   TABLE DATA           R   COPY "Аэропорт".passenger (passport, email, phone, full_name) FROM stdin;
    Аэропорт          postgres    false    219   �V       ]          0    16909    plane 
   TABLE DATA           O   COPY "Аэропорт".plane (number, id_type, fix_date, mileage) FROM stdin;
    Аэропорт          postgres    false    228   �V       X          0    16799 
   plane_type 
   TABLE DATA           i   COPY "Аэропорт".plane_type (id, capacity, load, speed, fuel_rate, seat_number, made) FROM stdin;
    Аэропорт          postgres    false    223   W       \          0    16901    rank 
   TABLE DATA           A   COPY "Аэропорт".rank (id_crew, rank, salary) FROM stdin;
    Аэропорт          postgres    false    227   "W       V          0    16790    schedule 
   TABLE DATA           �   COPY "Аэропорт".schedule (day, "Время прибытия", "Время вылета", id_flight, airport_from, airport_to) FROM stdin;
    Аэропорт          postgres    false    221   ?W       S          0    16781    seat 
   TABLE DATA           X   COPY "Аэропорт".seat (type, "row", class, available, id_flight, id) FROM stdin;
    Аэропорт          postgres    false    218   \W       U          0    16787    staff 
   TABLE DATA           `   COPY "Аэропорт".staff (id, passport, company, phone, full_name, airport_id) FROM stdin;
    Аэропорт          postgres    false    220   yW       Q          0    16775    ticket 
   TABLE DATA           �   COPY "Аэропорт".ticket (id, id_ticket_office, registration_status, buy_date, price, passport, id_flight, seat, plane) FROM stdin;
    Аэропорт          postgres    false    216   �W       R          0    16778    ticket_office 
   TABLE DATA           E   COPY "Аэропорт".ticket_office (id, type, adress) FROM stdin;
    Аэропорт          postgres    false    217   �W       ^          0    16962    transit 
   TABLE DATA           G   COPY "Аэропорт".transit (id, id_airport, fly_time) FROM stdin;
    Аэропорт          postgres    false    229   �W       g           0    0    airport_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Аэропорт".airport_id_seq', 20, true);
          Аэропорт          postgres    false    225            �           2606    16894    airport airport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".airport
    ADD CONSTRAINT airport_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Аэропорт".airport DROP CONSTRAINT airport_pkey;
       Аэропорт            postgres    false    226            �           2606    16913    plane plane_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".plane
    ADD CONSTRAINT plane_pkey PRIMARY KEY (number);
 F   ALTER TABLE ONLY "Аэропорт".plane DROP CONSTRAINT plane_pkey;
       Аэропорт            postgres    false    228            �           2606    16945    seat seat_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY "Аэропорт".seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Аэропорт".seat DROP CONSTRAINT seat_pkey;
       Аэропорт            postgres    false    218            �           2606    16966    transit transit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".transit
    ADD CONSTRAINT transit_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Аэропорт".transit DROP CONSTRAINT transit_pkey;
       Аэропорт            postgres    false    229            �           2606    16809 )   aviacompany Авиакомпания_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "Аэропорт".aviacompany
    ADD CONSTRAINT "Авиакомпания_pkey" PRIMARY KEY (name);
 a   ALTER TABLE ONLY "Аэропорт".aviacompany DROP CONSTRAINT "Авиакомпания_pkey";
       Аэропорт            postgres    false    215            �           2606    16813    ticket Билет_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "Билет_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "Билет_pkey";
       Аэропорт            postgres    false    216            �           2606    16815    ticket_office Касса_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Аэропорт".ticket_office
    ADD CONSTRAINT "Касса_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Аэропорт".ticket_office DROP CONSTRAINT "Касса_pkey";
       Аэропорт            postgres    false    217            �           2606    16819    passenger Пассажир_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Аэропорт".passenger
    ADD CONSTRAINT "Пассажир_pkey" PRIMARY KEY (passport);
 W   ALTER TABLE ONLY "Аэропорт".passenger DROP CONSTRAINT "Пассажир_pkey";
       Аэропорт            postgres    false    219            �           2606    16821    staff Персоналp_key 
   CONSTRAINT     q   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT "Персоналp_key" PRIMARY KEY (id, passport);
 S   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT "Персоналp_key";
       Аэропорт            postgres    false    220    220            �           2606    16823 "   schedule Расписание_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT "Расписание_pkey" PRIMARY KEY (id_flight, day);
 Z   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT "Расписание_pkey";
       Аэропорт            postgres    false    221    221            �           2606    16825    flight Рейс_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Аэропорт".flight
    ADD CONSTRAINT "Рейс_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "Аэропорт".flight DROP CONSTRAINT "Рейс_pkey";
       Аэропорт            postgres    false    222            �           2606    16827 '   plane_type Тип самолёта_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "Аэропорт".plane_type
    ADD CONSTRAINT "Тип самолёта_pkey" PRIMARY KEY (id);
 _   ALTER TABLE ONLY "Аэропорт".plane_type DROP CONSTRAINT "Тип самолёта_pkey";
       Аэропорт            postgres    false    223            �           2606    16896    crew Экипаж_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Аэропорт".crew
    ADD CONSTRAINT "Экипаж_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Аэропорт".crew DROP CONSTRAINT "Экипаж_pkey";
       Аэропорт            postgres    false    224            �           2606    16847    ticket ID кассы    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "ID кассы" FOREIGN KEY (id_ticket_office) REFERENCES "Аэропорт".ticket_office(id);
 L   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "ID кассы";
       Аэропорт          postgres    false    3231    217    216            �           2606    16857    seat id рейса    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".seat
    ADD CONSTRAINT "id рейса" FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 J   ALTER TABLE ONLY "Аэропорт".seat DROP CONSTRAINT "id рейса";
       Аэропорт          postgres    false    3241    218    222            �           2606    16914    plane plane_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".plane
    ADD CONSTRAINT plane_id_type_fkey FOREIGN KEY (id_type) REFERENCES "Аэропорт".plane_type(id);
 N   ALTER TABLE ONLY "Аэропорт".plane DROP CONSTRAINT plane_id_type_fkey;
       Аэропорт          postgres    false    3243    228    223            �           2606    16904    rank rank_id_crew_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".rank
    ADD CONSTRAINT rank_id_crew_fkey FOREIGN KEY (id_crew) REFERENCES "Аэропорт".crew(id) NOT VALID;
 L   ALTER TABLE ONLY "Аэропорт".rank DROP CONSTRAINT rank_id_crew_fkey;
       Аэропорт          postgres    false    227    3245    224            �           2606    16919 #   schedule schedule_airport_from_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT schedule_airport_from_fkey FOREIGN KEY (airport_from) REFERENCES "Аэропорт".airport(id) NOT VALID;
 Y   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT schedule_airport_from_fkey;
       Аэропорт          postgres    false    226    221    3247            �           2606    16924 !   schedule schedule_airport_to_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT schedule_airport_to_fkey FOREIGN KEY (airport_to) REFERENCES "Аэропорт".airport(id) NOT VALID;
 W   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT schedule_airport_to_fkey;
       Аэропорт          postgres    false    3247    221    226            �           2606    16929    staff staff_airport_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT staff_airport_id_fkey FOREIGN KEY (airport_id) REFERENCES "Аэропорт".airport(id) NOT VALID;
 Q   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT staff_airport_id_fkey;
       Аэропорт          postgres    false    220    226    3247            �           2606    16934    ticket ticket_id_flight_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_id_flight_fkey FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 R   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_id_flight_fkey;
       Аэропорт          postgres    false    222    216    3241            �           2606    16951    ticket ticket_plane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_plane_fkey FOREIGN KEY (plane) REFERENCES "Аэропорт".plane(number) NOT VALID;
 N   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_plane_fkey;
       Аэропорт          postgres    false    3249    216    228            �           2606    16946    ticket ticket_seat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_seat_fkey FOREIGN KEY (seat) REFERENCES "Аэропорт".seat(id) NOT VALID;
 M   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_seat_fkey;
       Аэропорт          postgres    false    218    216    3233            �           2606    16967    transit transit_id_airport_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".transit
    ADD CONSTRAINT transit_id_airport_fkey FOREIGN KEY (id_airport) REFERENCES "Аэропорт".airport(id);
 U   ALTER TABLE ONLY "Аэропорт".transit DROP CONSTRAINT transit_id_airport_fkey;
       Аэропорт          postgres    false    229    3247    226            �           2606    16862 ;   ticket Паспортные данные пассажира    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "Паспортные данные пассажира" FOREIGN KEY (passport) REFERENCES "Аэропорт".passenger(passport) NOT VALID;
 s   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "Паспортные данные пассажира";
       Аэропорт          postgres    false    3235    216    219            �           2606    16872 $   crew Экипаж_ID рейса_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".crew
    ADD CONSTRAINT "Экипаж_ID рейса_fkey" FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 \   ALTER TABLE ONLY "Аэропорт".crew DROP CONSTRAINT "Экипаж_ID рейса_fkey";
       Аэропорт          postgres    false    3241    224    222            �           2606    16882    staff компания    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT "компания" FOREIGN KEY (company) REFERENCES "Аэропорт".aviacompany(name) NOT VALID;
 N   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT "компания";
       Аэропорт          postgres    false    215    220    3227            [   {   x�uϭ�PDQ���T�a���DDBI����DP���`�k�äI��ӦUK���Q �J��fT���M��$�Z�ﵿv�w���ޠ��Eo{��AZ'=�^JO��2�2�2�2����z8o2�      P      x������ � �      Y   �   x��ϻ1К�"\ �gi��3A�G\�<H��O���>'**��EY����>����M(<�S5�C�!;��6T8Z���p�� �dDb�H�����C�S#���CG����QCG��"%���~��~� c*      W   C   x�3P p�X�pf���Ĺ)5��R�)5��RL)5��R�)5��R,)5 F��� �nb8      T      x������ � �      ]      x������ � �      X      x������ � �      \      x������ � �      V      x������ � �      S      x������ � �      U      x������ � �      Q      x������ � �      R      x������ � �      ^   Q   x�m��	�0C�oy�B�#mf��s4���0��Щzh��Ɏ w$91�'.��%w�RF)�KtX|���n"� �\)A     