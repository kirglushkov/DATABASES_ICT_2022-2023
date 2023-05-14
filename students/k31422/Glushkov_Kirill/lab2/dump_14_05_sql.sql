PGDMP                         {            postgres    15.2    15.2     b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    5    postgres    DATABASE     ~   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Pakistan.1252';
    DROP DATABASE postgres;
                postgres    false            \          0    16890    airport 
   TABLE DATA           =   COPY "Аэропорт".airport (id, city, name) FROM stdin;
    Аэропорт          postgres    false    226   E       Q          0    16769    aviacompany 
   TABLE DATA           ^   COPY "Аэропорт".aviacompany (name, country, terminal, owner, licence_num) FROM stdin;
    Аэропорт          postgres    false    215          Z          0    16805    crew 
   TABLE DATA           l   COPY "Аэропорт".crew (id, passport, id_flight, health_check, access, health_check_date) FROM stdin;
    Аэропорт          postgres    false    224           X          0    16793    flight 
   TABLE DATA           ?   COPY "Аэропорт".flight (id, date, variant) FROM stdin;
    Аэропорт          postgres    false    222          U          0    16784 	   passenger 
   TABLE DATA           R   COPY "Аэропорт".passenger (passport, email, phone, full_name) FROM stdin;
    Аэропорт          postgres    false    219   �       ^          0    16909    plane 
   TABLE DATA           T   COPY "Аэропорт".plane (number, id_type, fix_date, mileage, age) FROM stdin;
    Аэропорт          postgres    false    228   �       Y          0    16799 
   plane_type 
   TABLE DATA           i   COPY "Аэропорт".plane_type (id, capacity, load, speed, fuel_rate, seat_number, made) FROM stdin;
    Аэропорт          postgres    false    223   Z       ]          0    16901    rank 
   TABLE DATA           A   COPY "Аэропорт".rank (id_crew, rank, salary) FROM stdin;
    Аэропорт          postgres    false    227   �       W          0    16790    schedule 
   TABLE DATA           �   COPY "Аэропорт".schedule (day, "Время прибытия", "Время вылета", id_flight, airport_from, airport_to, plane) FROM stdin;
    Аэропорт          postgres    false    221   [       T          0    16781    seat 
   TABLE DATA           X   COPY "Аэропорт".seat (type, "row", class, available, id_flight, id) FROM stdin;
    Аэропорт          postgres    false    218          V          0    16787    staff 
   TABLE DATA           `   COPY "Аэропорт".staff (id, passport, company, phone, full_name, airport_id) FROM stdin;
    Аэропорт          postgres    false    220   �       R          0    16775    ticket 
   TABLE DATA           �   COPY "Аэропорт".ticket (id, registration_status, buy_date, price, passport, id_flight, seat, plane, id_ticket_office) FROM stdin;
    Аэропорт          postgres    false    216   s       S          0    16778    ticket_office 
   TABLE DATA           E   COPY "Аэропорт".ticket_office (id, type, adress) FROM stdin;
    Аэропорт          postgres    false    217   9       _          0    16962    transit 
   TABLE DATA           G   COPY "Аэропорт".transit (id, id_airport, fly_time) FROM stdin;
    Аэропорт          postgres    false    229   �       h           0    0    airport_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('"Аэропорт".airport_id_seq', 21, true);
          Аэропорт          postgres    false    225            \   �   x�u�;
�@��z�*f!g�T�l�b������Y�͎l���O�A�����W�9[��*(��\�BͩT��~���䑇/�{I��+���&��1#@tB�B�B�B�"�EL�1��y��^�և�Z��ӋD��sv�K�������9�y.>t�K�����      Q     x����n�0�g�)�*�8���h~���v�B�J-���i������� 5z��t'n[O�.A*�D&h<H����#4�I @�h2O�p�&��gWIF�.U�l��2�`�������'�9iu��q&v���Rea���Η9`%�{�8�#����[�l��.�He;�'��0�V׵�#ץ���i���ݨW��*�a�(�N$���r�
W�I�׀Q�9��̀Wyu�P�z��Д�P�8w:)���d�\I��x�Z� ���      Z   �   x���;N0D��)�@���˕ ���@M�'���BDPF�q���!�iOxT		u����"ʬ�]����	�!�"2"UzHaH�)�sH�`f�p�!F��r�q�1�!<�19&x���d��YCM�<�`���>/�^þ�t��&��#�T��^v[i��t��u�Kx���"y���ϕd	�k=m����2�.ug]��Gۉ��n�ϭ�o��      X   �   x��ӱ
1�y��@$M[{7VTo��I8�=P|[��Hɔ���[JVvR���}~���`-�@�Q��@����v@ǂ�� #�2f3���f�/�!�1D�M6��E������3Y�1u�� �á����	bIp:#y�X� �� |G��K      U   �   x���=�0�9���U��fU�f����6b��^t2�X�9<��[��Ɠp��!�*~Vb)i}��U��� �0�
���b�"�(���\��Lw�%ې2m�/�
���b�⿼��Lw�%ېLe�����ޫ<Tم[\��%Z�4A�C��9n�%ې�����x����*U@v�#-�؊�'�a�jk��g�6$/���wY��{��* �ŵ�ш]��e�SJ�aG�      ^   �  x�MS٭#1����D[>z���x��+x¡H�651������G~?S�%si�')�)Y�%q)�C��+��(R�����yґS\|!��D=�!�h!�o�=�%�mD��6	b�:!����M�/�6YA�x"�־�f�DL!p1�Jjh�N���ȪR�"ნ�qc��*�	�$Gވ�t,�~-��g
���-H���]L��T*u//���<Lw����]��b?���#1���6,/�í�-��ȷ"��N��r9��rkQ����,Z%�S��.� Dd$�b���q�ʽ4��R�@���e�:7G��o�9�ܙ:�quh�컟�Ƶ
��a[�C�_�^>��^6��[x^����W��-	�o�����\`��      Y   V   x����0�x��v�4}�R&���Q���@�c�����X"x��I���q[C5�Q2�bYgTK�l��k��
�k�Av�������      ]   �   x�]���0Cg�+��h��X@��%BI{R�T!�?�!���>�
���R�����=�g�g���T�x�~�a��
n��/��3:v�0qS�f����$�-������L��qKv-�%��f$�������V��8�      W   �   x����
�PE��+�.�$/�����
..B�T�t��DL+�5��pO.9���<��B"q�8fM�hCq�9Gza�`bl����I���O�a���ښ��]ۯQxR,_&oA!� bs�5<I���T�\�@���)��?�Is\z�;�M�x�"�P,T�      T   �   x�sM���ϭTPP�40���tq�qU@�%�.>��F�
�!�Siqf^jq1�<#�pO?�p4Ei�����(5�2Tp�I4Ϙ��3�y �k�1�+�Mp���B����g�˿&Ěg����� �-A�      V   �   x����
�0E痯�m�Zǀ-� �]�4�@�B�����f�H�|�py	$i���r���B�̜�i�~+�	IaWn���^h�4�7ʊ���'_��l���CJ2`8��/��'��4���šT&��ܝ�4���h�շ('�[��}=�.��W %9pB�.��KK���A�	;s����i�nCy>Y�+      R   �   x���11k�|��v�ʃ	
$.%5/���qH��F[��w�Ab��F��,��2C#�~l���%�j��\ [<�w����������Go���=�,m�熞~��?���_{�x�����ݷ��~��?������5��+�����=�fh���]�=���>���v��      S   �   x���K
�0@��)��iZ?KwJ�tm��4�4-x{k�
+��Kx3e�$�0�v� b*� ��SJE�����>;%��~{4�*����s������lAY�/�R��X���֝r-���� �N�؎�_�����خ�=�CvN�Ѿ1S�U����k� ?�8�O�O      _   Q   x�m��	�0C�oy�B�#mf��s4���0��Щzh��Ɏ w$91�'.��%w�RF)�KtX|���n"� �\)A     