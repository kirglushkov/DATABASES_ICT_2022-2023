PGDMP                         {            postgres    15.2    15.2 B    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Pakistan.1252';
    DROP DATABASE postgres;
                postgres    false            f           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3429                        2615    17165    Аэропорт    SCHEMA     "   CREATE SCHEMA "Аэропорт";
     DROP SCHEMA "Аэропорт";
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            g           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    17166    airport    TABLE     �   CREATE TABLE "Аэропорт".airport (
    id bigint NOT NULL,
    city character varying(300) NOT NULL,
    name character varying(100) NOT NULL
);
 '   DROP TABLE "Аэропорт".airport;
       Аэропорт         heap    postgres    false    6            �            1259    17169    airport_id_seq    SEQUENCE     �   ALTER TABLE "Аэропорт".airport ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "Аэропорт".airport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 9999999
    CACHE 1
);
            Аэропорт          postgres    false    215    6            �            1259    17170    aviacompany    TABLE     �   CREATE TABLE "Аэропорт".aviacompany (
    name character(40) NOT NULL,
    country character(40) NOT NULL,
    terminal character(40) NOT NULL,
    owner character(120) NOT NULL,
    licence_num character(40) NOT NULL
);
 +   DROP TABLE "Аэропорт".aviacompany;
       Аэропорт         heap    postgres    false    6            �            1259    17173    crew    TABLE     �   CREATE TABLE "Аэропорт".crew (
    id bigint NOT NULL,
    passport bigint NOT NULL,
    id_flight character(40) NOT NULL,
    health_check boolean NOT NULL,
    access boolean NOT NULL,
    health_check_date date NOT NULL
);
 $   DROP TABLE "Аэропорт".crew;
       Аэропорт         heap    postgres    false    6            �            1259    17176    flight    TABLE     �   CREATE TABLE "Аэропорт".flight (
    id character(40) NOT NULL,
    date date NOT NULL,
    variant character(12) NOT NULL
);
 &   DROP TABLE "Аэропорт".flight;
       Аэропорт         heap    postgres    false    6            �            1259    17179 	   passenger    TABLE     �   CREATE TABLE "Аэропорт".passenger (
    passport character(40) NOT NULL,
    email character(40) NOT NULL,
    phone character(40) NOT NULL,
    full_name character(321) NOT NULL
);
 )   DROP TABLE "Аэропорт".passenger;
       Аэропорт         heap    postgres    false    6            �            1259    17182    plane    TABLE     �   CREATE TABLE "Аэропорт".plane (
    number bigint NOT NULL,
    id_type bigint NOT NULL,
    fix_date date NOT NULL,
    mileage bigint NOT NULL,
    age date
);
 %   DROP TABLE "Аэропорт".plane;
       Аэропорт         heap    postgres    false    6            �            1259    17185 
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
       Аэропорт         heap    postgres    false    6            �            1259    17188    rank    TABLE     �   CREATE TABLE "Аэропорт".rank (
    id_crew bigint NOT NULL,
    rank character varying(111) NOT NULL,
    salary bigint NOT NULL
);
 $   DROP TABLE "Аэропорт".rank;
       Аэропорт         heap    postgres    false    6            �            1259    17191    schedule    TABLE     F  CREATE TABLE "Аэропорт".schedule (
    day character(40) NOT NULL,
    "Время прибытия" timestamp with time zone NOT NULL,
    "Время вылета" timestamp with time zone NOT NULL,
    id_flight bigint NOT NULL,
    airport_from bigint NOT NULL,
    airport_to bigint NOT NULL,
    plane bigint
);
 (   DROP TABLE "Аэропорт".schedule;
       Аэропорт         heap    postgres    false    6            �            1259    17194    seat    TABLE     �   CREATE TABLE "Аэропорт".seat (
    type character(10) NOT NULL,
    "row" character(2) NOT NULL,
    class character(20) NOT NULL,
    available boolean NOT NULL,
    id_flight character(40),
    id bigint NOT NULL
);
 $   DROP TABLE "Аэропорт".seat;
       Аэропорт         heap    postgres    false    6            �            1259    17197    staff    TABLE     �   CREATE TABLE "Аэропорт".staff (
    id bigint NOT NULL,
    passport bigint NOT NULL,
    company character(40) NOT NULL,
    phone integer,
    full_name character(120) NOT NULL,
    airport_id bigint NOT NULL
);
 %   DROP TABLE "Аэропорт".staff;
       Аэропорт         heap    postgres    false    6            �            1259    17200    ticket    TABLE     :  CREATE TABLE "Аэропорт".ticket (
    id character(40) NOT NULL,
    registration_status boolean NOT NULL,
    buy_date date NOT NULL,
    price integer NOT NULL,
    passport character(40) NOT NULL,
    id_flight character(40) NOT NULL,
    seat bigint,
    plane bigint,
    "Касса" character(40)
);
 &   DROP TABLE "Аэропорт".ticket;
       Аэропорт         heap    postgres    false    6            �            1259    17203    ticket_office    TABLE     �   CREATE TABLE "Аэропорт".ticket_office (
    id character(40) NOT NULL,
    type character(40) NOT NULL,
    adress character(40) NOT NULL
);
 -   DROP TABLE "Аэропорт".ticket_office;
       Аэропорт         heap    postgres    false    6            �            1259    17206    transit    TABLE     �   CREATE TABLE "Аэропорт".transit (
    id bigint NOT NULL,
    id_airport bigint NOT NULL,
    fly_time time with time zone NOT NULL
);
 '   DROP TABLE "Аэропорт".transit;
       Аэропорт         heap    postgres    false    6            Q          0    17166    airport 
   TABLE DATA           =   COPY "Аэропорт".airport (id, city, name) FROM stdin;
    Аэропорт          postgres    false    215   *W       S          0    17170    aviacompany 
   TABLE DATA           ^   COPY "Аэропорт".aviacompany (name, country, terminal, owner, licence_num) FROM stdin;
    Аэропорт          postgres    false    217   �W       T          0    17173    crew 
   TABLE DATA           l   COPY "Аэропорт".crew (id, passport, id_flight, health_check, access, health_check_date) FROM stdin;
    Аэропорт          postgres    false    218   Y       U          0    17176    flight 
   TABLE DATA           ?   COPY "Аэропорт".flight (id, date, variant) FROM stdin;
    Аэропорт          postgres    false    219   �Y       V          0    17179 	   passenger 
   TABLE DATA           R   COPY "Аэропорт".passenger (passport, email, phone, full_name) FROM stdin;
    Аэропорт          postgres    false    220   �Z       W          0    17182    plane 
   TABLE DATA           T   COPY "Аэропорт".plane (number, id_type, fix_date, mileage, age) FROM stdin;
    Аэропорт          postgres    false    221   �[       X          0    17185 
   plane_type 
   TABLE DATA           i   COPY "Аэропорт".plane_type (id, capacity, load, speed, fuel_rate, seat_number, made) FROM stdin;
    Аэропорт          postgres    false    222   ?]       Y          0    17188    rank 
   TABLE DATA           A   COPY "Аэропорт".rank (id_crew, rank, salary) FROM stdin;
    Аэропорт          postgres    false    223   �]       Z          0    17191    schedule 
   TABLE DATA           �   COPY "Аэропорт".schedule (day, "Время прибытия", "Время вылета", id_flight, airport_from, airport_to, plane) FROM stdin;
    Аэропорт          postgres    false    224   @^       [          0    17194    seat 
   TABLE DATA           X   COPY "Аэропорт".seat (type, "row", class, available, id_flight, id) FROM stdin;
    Аэропорт          postgres    false    225   �^       \          0    17197    staff 
   TABLE DATA           `   COPY "Аэропорт".staff (id, passport, company, phone, full_name, airport_id) FROM stdin;
    Аэропорт          postgres    false    226   �_       ]          0    17200    ticket 
   TABLE DATA           �   COPY "Аэропорт".ticket (id, registration_status, buy_date, price, passport, id_flight, seat, plane, "Касса") FROM stdin;
    Аэропорт          postgres    false    227   W`       ^          0    17203    ticket_office 
   TABLE DATA           E   COPY "Аэропорт".ticket_office (id, type, adress) FROM stdin;
    Аэропорт          postgres    false    228   a       _          0    17206    transit 
   TABLE DATA           G   COPY "Аэропорт".transit (id, id_airport, fly_time) FROM stdin;
    Аэропорт          postgres    false    229   �a       h           0    0    airport_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Аэропорт".airport_id_seq', 21, true);
          Аэропорт          postgres    false    216            �           2606    17210    airport airport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".airport
    ADD CONSTRAINT airport_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Аэропорт".airport DROP CONSTRAINT airport_pkey;
       Аэропорт            postgres    false    215            �           2606    17212    plane plane_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".plane
    ADD CONSTRAINT plane_pkey PRIMARY KEY (number);
 F   ALTER TABLE ONLY "Аэропорт".plane DROP CONSTRAINT plane_pkey;
       Аэропорт            postgres    false    221            �           2606    17214    seat seat_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY "Аэропорт".seat
    ADD CONSTRAINT seat_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY "Аэропорт".seat DROP CONSTRAINT seat_pkey;
       Аэропорт            postgres    false    225            �           2606    17216    transit transit_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "Аэропорт".transit
    ADD CONSTRAINT transit_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY "Аэропорт".transit DROP CONSTRAINT transit_pkey;
       Аэропорт            postgres    false    229            �           2606    17218 )   aviacompany Авиакомпания_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "Аэропорт".aviacompany
    ADD CONSTRAINT "Авиакомпания_pkey" PRIMARY KEY (name);
 a   ALTER TABLE ONLY "Аэропорт".aviacompany DROP CONSTRAINT "Авиакомпания_pkey";
       Аэропорт            postgres    false    217            �           2606    17313    ticket Билет_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "Билет_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "Билет_pkey";
       Аэропорт            postgres    false    227            �           2606    17319    ticket_office Касса_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Аэропорт".ticket_office
    ADD CONSTRAINT "Касса_pkey" PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Аэропорт".ticket_office DROP CONSTRAINT "Касса_pkey";
       Аэропорт            postgres    false    228            �           2606    17224    passenger Пассажир_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "Аэропорт".passenger
    ADD CONSTRAINT "Пассажир_pkey" PRIMARY KEY (passport);
 W   ALTER TABLE ONLY "Аэропорт".passenger DROP CONSTRAINT "Пассажир_pkey";
       Аэропорт            postgres    false    220            �           2606    17226    staff Персоналp_key 
   CONSTRAINT     q   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT "Персоналp_key" PRIMARY KEY (id, passport);
 S   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT "Персоналp_key";
       Аэропорт            postgres    false    226    226            �           2606    17228 "   schedule Расписание_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT "Расписание_pkey" PRIMARY KEY (id_flight, day);
 Z   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT "Расписание_pkey";
       Аэропорт            postgres    false    224    224            �           2606    17230    flight Рейс_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY "Аэропорт".flight
    ADD CONSTRAINT "Рейс_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY "Аэропорт".flight DROP CONSTRAINT "Рейс_pkey";
       Аэропорт            postgres    false    219            �           2606    17232 '   plane_type Тип самолёта_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "Аэропорт".plane_type
    ADD CONSTRAINT "Тип самолёта_pkey" PRIMARY KEY (id);
 _   ALTER TABLE ONLY "Аэропорт".plane_type DROP CONSTRAINT "Тип самолёта_pkey";
       Аэропорт            postgres    false    222            �           2606    17234    crew Экипаж_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY "Аэропорт".crew
    ADD CONSTRAINT "Экипаж_pkey" PRIMARY KEY (id);
 N   ALTER TABLE ONLY "Аэропорт".crew DROP CONSTRAINT "Экипаж_pkey";
       Аэропорт            postgres    false    218            �           2606    17240    seat id рейса    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".seat
    ADD CONSTRAINT "id рейса" FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 J   ALTER TABLE ONLY "Аэропорт".seat DROP CONSTRAINT "id рейса";
       Аэропорт          postgres    false    219    225    3233            �           2606    17337    schedule plane    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT plane FOREIGN KEY (plane) REFERENCES "Аэропорт".plane(number) NOT VALID;
 D   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT plane;
       Аэропорт          postgres    false    224    221    3237            �           2606    17245    plane plane_id_type_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".plane
    ADD CONSTRAINT plane_id_type_fkey FOREIGN KEY (id_type) REFERENCES "Аэропорт".plane_type(id);
 N   ALTER TABLE ONLY "Аэропорт".plane DROP CONSTRAINT plane_id_type_fkey;
       Аэропорт          postgres    false    221    222    3239            �           2606    17250    rank rank_id_crew_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".rank
    ADD CONSTRAINT rank_id_crew_fkey FOREIGN KEY (id_crew) REFERENCES "Аэропорт".crew(id) NOT VALID;
 L   ALTER TABLE ONLY "Аэропорт".rank DROP CONSTRAINT rank_id_crew_fkey;
       Аэропорт          postgres    false    3231    218    223            �           2606    17255 #   schedule schedule_airport_from_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT schedule_airport_from_fkey FOREIGN KEY (airport_from) REFERENCES "Аэропорт".airport(id) NOT VALID;
 Y   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT schedule_airport_from_fkey;
       Аэропорт          postgres    false    3227    215    224            �           2606    17260 !   schedule schedule_airport_to_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".schedule
    ADD CONSTRAINT schedule_airport_to_fkey FOREIGN KEY (airport_to) REFERENCES "Аэропорт".airport(id) NOT VALID;
 W   ALTER TABLE ONLY "Аэропорт".schedule DROP CONSTRAINT schedule_airport_to_fkey;
       Аэропорт          postgres    false    224    3227    215            �           2606    17265    staff staff_airport_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT staff_airport_id_fkey FOREIGN KEY (airport_id) REFERENCES "Аэропорт".airport(id) NOT VALID;
 Q   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT staff_airport_id_fkey;
       Аэропорт          postgres    false    215    226    3227            �           2606    17270    ticket ticket_id_flight_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_id_flight_fkey FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 R   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_id_flight_fkey;
       Аэропорт          postgres    false    3233    227    219            �           2606    17275    ticket ticket_plane_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_plane_fkey FOREIGN KEY (plane) REFERENCES "Аэропорт".plane(number) NOT VALID;
 N   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_plane_fkey;
       Аэропорт          postgres    false    221    227    3237            �           2606    17280    ticket ticket_seat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT ticket_seat_fkey FOREIGN KEY (seat) REFERENCES "Аэропорт".seat(id) NOT VALID;
 M   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT ticket_seat_fkey;
       Аэропорт          postgres    false    3243    225    227            �           2606    17285    transit transit_id_airport_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".transit
    ADD CONSTRAINT transit_id_airport_fkey FOREIGN KEY (id_airport) REFERENCES "Аэропорт".airport(id);
 U   ALTER TABLE ONLY "Аэропорт".transit DROP CONSTRAINT transit_id_airport_fkey;
       Аэропорт          postgres    false    215    3227    229            �           2606    17332    ticket Касса    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "Касса" FOREIGN KEY ("Касса") REFERENCES "Аэропорт".ticket_office(id) NOT VALID;
 I   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "Касса";
       Аэропорт          postgres    false    227    228    3249            �           2606    17290 ;   ticket Паспортные данные пассажира    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".ticket
    ADD CONSTRAINT "Паспортные данные пассажира" FOREIGN KEY (passport) REFERENCES "Аэропорт".passenger(passport) NOT VALID;
 s   ALTER TABLE ONLY "Аэропорт".ticket DROP CONSTRAINT "Паспортные данные пассажира";
       Аэропорт          postgres    false    227    220    3235            �           2606    17295 $   crew Экипаж_ID рейса_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".crew
    ADD CONSTRAINT "Экипаж_ID рейса_fkey" FOREIGN KEY (id_flight) REFERENCES "Аэропорт".flight(id) NOT VALID;
 \   ALTER TABLE ONLY "Аэропорт".crew DROP CONSTRAINT "Экипаж_ID рейса_fkey";
       Аэропорт          postgres    false    218    219    3233            �           2606    17300    staff компания    FK CONSTRAINT     �   ALTER TABLE ONLY "Аэропорт".staff
    ADD CONSTRAINT "компания" FOREIGN KEY (company) REFERENCES "Аэропорт".aviacompany(name) NOT VALID;
 N   ALTER TABLE ONLY "Аэропорт".staff DROP CONSTRAINT "компания";
       Аэропорт          postgres    false    3229    226    217            Q   �   x�u�;
�@��z�*f!g�T�l�b������Y�͎l���O�A�����W�9[��*(��\�BͩT��~���䑇/�{I��+���&��1#@tB�B�B�B�"�EL�1��y��^�և�Z��ӋD��sv�K�������9�y.>t�K�����      S     x����n�0�g�)�*�8���h~���v�B�J-���i������� 5z��t'n[O�.A*�D&h<H����#4�I @�h2O�p�&��gWIF�.U�l��2�`�������'�9iu��q&v���Rea���Η9`%�{�8�#����[�l��.�He;�'��0�V׵�#ץ���i���ݨW��*�a�(�N$���r�
W�I�׀Q�9��̀Wyu�P�z��Д�P�8w:)���d�\I��x�Z� ���      T   �   x���;N0D��)�@���˕ ���@M�'���BDPF�q���!�iOxT		u����"ʬ�]����	�!�"2"UzHaH�)�sH�`f�p�!F��r�q�1�!<�19&x���d��YCM�<�`���>/�^þ�t��&��#�T��^v[i��t��u�Kx���"y���ϕd	�k=m����2�.ug]��Gۉ��n�ϭ�o��      U   �   x��ӱ
1�y��@$M[{7VTo��I8�=P|[��Hɔ���[JVvR���}~���`-�@�Q��@����v@ǂ�� #�2f3���f�/�!�1D�M6��E������3Y�1u�� �á����	bIp:#y�X� �� |G��K      V   �   x���=�0�9���U��fU�f����6b��^t2�X�9<��[��Ɠp��!�*~Vb)i}��U��� �0�
���b�"�(���\��Lw�%ې2m�/�
���b�⿼��Lw�%ېLe�����ޫ<Tم[\��%Z�4A�C��9n�%ې�����x����*U@v�#-�؊�'�a�jk��g�6$/���wY��{��* �ŵ�ш]��e�SJ�aG�      W   �  x�MS٭#1����D[>z���x��+x¡H�651������G~?S�%si�')�)Y�%q)�C��+��(R�����yґS\|!��D=�!�h!�o�=�%�mD��6	b�:!����M�/�6YA�x"�־�f�DL!p1�Jjh�N���ȪR�"ნ�qc��*�	�$Gވ�t,�~-��g
���-H���]L��T*u//���<Lw����]��b?���#1���6,/�í�-��ȷ"��N��r9��rkQ����,Z%�S��.� Dd$�b���q�ʽ4��R�@���e�:7G��o�9�ܙ:�quh�컟�Ƶ
��a[�C�_�^>��^6��[x^����W��-	�o�����\`��      X   V   x����0�x��v�4}�R&���Q���@�c�����X"x��I���q[C5�Q2�bYgTK�l��k��
�k�Av�������      Y   �   x�]���0Cg�+��h��X@��%BI{R�T!�?�!���>�
���R�����=�g�g���T�x�~�a��
n��/��3:v�0qS�f����$�-������L��qKv-�%��f$�������V��8�      Z   �   x����
�P���)�K%ɽ�?���
..B�T�t��.Q+x�پ�|��N��N?�U+�J��́3����EAX�_�[�������O�ay�Ӱ�a��7ͺZ`88!� `^�	�Ib�����54O�n����DR����q�:D<n�P�T�      [   �   x�sM���ϭTPP�40���tq�qU@�%�.>��F�
�!�Siqf^jq1�<#�pO?�p4Ei�����(5�2Tp�I4Ϙ��3�y �k�1�+�Mp���B����g�˿&Ěg����� �-A�      \   �   x����
�0E痯�m�Zǀ-� �]�4�@�B�����f�H�|�py	$i���r���B�̜�i�~+�	IaWn���^h�4�7ʊ���'_��l���CJ2`8��/��'��4���šT&��ܝ�4���h�շ('�[��}=�.��W %9pB�.��KK���A�	;s����i�nCy>Y�+      ]   �   x���;�0�z}�\�h����N
$(�HJjN��Ų���+���ѓ�6/�ir�IX$rҏ3-��$�z���z�n�����~tv?�蕩ݣ�O^X�A��ё�N���@ϔ��\���^X�A�g�#��^���)T��n���	���ҋё�N����ꕪ��k49{M`��^��T��B��U      ^   �   x���K� ൜bN`���XZ�NS�t��DC)�����2��'_��6�#�k��N�X8I���R�o��]P���5軴�`Y��`�������M[����i`��g�tI��q�=-�#��s�ڦ.CW�h?J�W�p�3���K����e�      _   Q   x�m��	�0C�oy�B�#mf��s4���0��Щzh��Ɏ w$91�'.��%w�RF)�KtX|���n"� �\)A     