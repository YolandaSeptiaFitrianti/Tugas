PGDMP                  	    |            keuangan    10.23    16.4 *    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            <           1262    16393    keuangan    DATABASE        CREATE DATABASE keuangan WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE keuangan;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            =           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    6            �            1259    16417    barang    TABLE     �   CREATE TABLE public.barang (
    id integer NOT NULL,
    nama "char" NOT NULL,
    harga integer NOT NULL,
    stok integer NOT NULL
);
    DROP TABLE public.barang;
       public            postgres    false    6            �            1259    16412    detail_penerimaan    TABLE     �   CREATE TABLE public.detail_penerimaan (
    id integer NOT NULL,
    id_penerimaan integer NOT NULL,
    id_barang integer NOT NULL,
    jumlah integer NOT NULL,
    harga integer NOT NULL
);
 %   DROP TABLE public.detail_penerimaan;
       public            postgres    false    6            �            1259    16422    detail_penjualan    TABLE     �   CREATE TABLE public.detail_penjualan (
    id integer NOT NULL,
    id_transaksi integer NOT NULL,
    id_barang integer NOT NULL,
    jumlah integer NOT NULL,
    harga "char" NOT NULL
);
 $   DROP TABLE public.detail_penjualan;
       public            postgres    false    6            �            1259    16427    kasir    TABLE     Q   CREATE TABLE public.kasir (
    id integer NOT NULL,
    nama "char" NOT NULL
);
    DROP TABLE public.kasir;
       public            postgres    false    6            �            1259    16455 
   keuntungan    TABLE     �   CREATE TABLE public.keuntungan (
    id integer NOT NULL,
    periode "char" NOT NULL,
    total_pendapatan integer NOT NULL,
    total_biaya integer NOT NULL,
    keutungan integer NOT NULL
);
    DROP TABLE public.keuntungan;
       public            postgres    false    6            �            1259    16450    laporan_keuangan    TABLE     �   CREATE TABLE public.laporan_keuangan (
    id integer NOT NULL,
    periode "char" NOT NULL,
    total_pendapatan integer NOT NULL,
    total_biaya integer NOT NULL,
    total_keutungan integer NOT NULL
);
 $   DROP TABLE public.laporan_keuangan;
       public            postgres    false    6            �            1259    16437 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    id integer NOT NULL,
    nama "char" NOT NULL,
    alamat text NOT NULL,
    no_telepon integer NOT NULL
);
    DROP TABLE public.pelanggan;
       public            postgres    false    6            �            1259    16399    pemasok    TABLE     �   CREATE TABLE public.pemasok (
    id integer NOT NULL,
    nama "char" NOT NULL,
    alamat text NOT NULL,
    no_telepon integer NOT NULL
);
    DROP TABLE public.pemasok;
       public            postgres    false    6            �            1259    16445 
   pendapatan    TABLE     �   CREATE TABLE public.pendapatan (
    id integer NOT NULL,
    tanggal date NOT NULL,
    total integer NOT NULL,
    id_transaksi integer NOT NULL
);
    DROP TABLE public.pendapatan;
       public            postgres    false    6            �            1259    16407    penerimaan_barang    TABLE     �   CREATE TABLE public.penerimaan_barang (
    id integer NOT NULL,
    tanggal date NOT NULL,
    id_pemasok integer NOT NULL,
    total integer NOT NULL
);
 %   DROP TABLE public.penerimaan_barang;
       public            postgres    false    6            �            1259    16432    transaksi_penjualan    TABLE     �   CREATE TABLE public.transaksi_penjualan (
    id integer NOT NULL,
    tanggal date NOT NULL,
    total integer NOT NULL,
    id_pelanggan integer NOT NULL,
    id_kasir integer NOT NULL
);
 '   DROP TABLE public.transaksi_penjualan;
       public            postgres    false    6            �            1259    16394    user    TABLE     t   CREATE TABLE public."user" (
    id integer NOT NULL,
    username "char" NOT NULL,
    password "char" NOT NULL
);
    DROP TABLE public."user";
       public            postgres    false    6            /          0    16417    barang 
   TABLE DATA           7   COPY public.barang (id, nama, harga, stok) FROM stdin;
    public          postgres    false    200   �-       .          0    16412    detail_penerimaan 
   TABLE DATA           X   COPY public.detail_penerimaan (id, id_penerimaan, id_barang, jumlah, harga) FROM stdin;
    public          postgres    false    199   �-       0          0    16422    detail_penjualan 
   TABLE DATA           V   COPY public.detail_penjualan (id, id_transaksi, id_barang, jumlah, harga) FROM stdin;
    public          postgres    false    201   �-       1          0    16427    kasir 
   TABLE DATA           )   COPY public.kasir (id, nama) FROM stdin;
    public          postgres    false    202   .       6          0    16455 
   keuntungan 
   TABLE DATA           [   COPY public.keuntungan (id, periode, total_pendapatan, total_biaya, keutungan) FROM stdin;
    public          postgres    false    207   5.       5          0    16450    laporan_keuangan 
   TABLE DATA           g   COPY public.laporan_keuangan (id, periode, total_pendapatan, total_biaya, total_keutungan) FROM stdin;
    public          postgres    false    206   R.       3          0    16437 	   pelanggan 
   TABLE DATA           A   COPY public.pelanggan (id, nama, alamat, no_telepon) FROM stdin;
    public          postgres    false    204   o.       ,          0    16399    pemasok 
   TABLE DATA           ?   COPY public.pemasok (id, nama, alamat, no_telepon) FROM stdin;
    public          postgres    false    197   �.       4          0    16445 
   pendapatan 
   TABLE DATA           F   COPY public.pendapatan (id, tanggal, total, id_transaksi) FROM stdin;
    public          postgres    false    205   �.       -          0    16407    penerimaan_barang 
   TABLE DATA           K   COPY public.penerimaan_barang (id, tanggal, id_pemasok, total) FROM stdin;
    public          postgres    false    198   �.       2          0    16432    transaksi_penjualan 
   TABLE DATA           Y   COPY public.transaksi_penjualan (id, tanggal, total, id_pelanggan, id_kasir) FROM stdin;
    public          postgres    false    203   �.       +          0    16394    user 
   TABLE DATA           8   COPY public."user" (id, username, password) FROM stdin;
    public          postgres    false    196    /       �
           2606    16421    barang barang_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    200            �
           2606    16416 (   detail_penerimaan detail_penerimaan_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.detail_penerimaan
    ADD CONSTRAINT detail_penerimaan_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.detail_penerimaan DROP CONSTRAINT detail_penerimaan_pkey;
       public            postgres    false    199            �
           2606    16426 &   detail_penjualan detail_penjualan_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.detail_penjualan
    ADD CONSTRAINT detail_penjualan_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.detail_penjualan DROP CONSTRAINT detail_penjualan_pkey;
       public            postgres    false    201            �
           2606    16431    kasir kasir_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.kasir
    ADD CONSTRAINT kasir_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.kasir DROP CONSTRAINT kasir_pkey;
       public            postgres    false    202            �
           2606    16459    keuntungan keuntungan_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.keuntungan
    ADD CONSTRAINT keuntungan_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.keuntungan DROP CONSTRAINT keuntungan_pkey;
       public            postgres    false    207            �
           2606    16454 &   laporan_keuangan laporan_keuangan_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.laporan_keuangan
    ADD CONSTRAINT laporan_keuangan_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.laporan_keuangan DROP CONSTRAINT laporan_keuangan_pkey;
       public            postgres    false    206            �
           2606    16444    pelanggan pelanggan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    204            �
           2606    16406    pemasok pemasok_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.pemasok
    ADD CONSTRAINT pemasok_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.pemasok DROP CONSTRAINT pemasok_pkey;
       public            postgres    false    197            �
           2606    16449    pendapatan pendapatan_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pendapatan
    ADD CONSTRAINT pendapatan_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pendapatan DROP CONSTRAINT pendapatan_pkey;
       public            postgres    false    205            �
           2606    16411 (   penerimaan_barang penerimaan_barang_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.penerimaan_barang
    ADD CONSTRAINT penerimaan_barang_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.penerimaan_barang DROP CONSTRAINT penerimaan_barang_pkey;
       public            postgres    false    198            �
           2606    16436 ,   transaksi_penjualan transaksi_penjualan_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.transaksi_penjualan
    ADD CONSTRAINT transaksi_penjualan_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.transaksi_penjualan DROP CONSTRAINT transaksi_penjualan_pkey;
       public            postgres    false    203            �
           2606    16398    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    196            /      x������ � �      .      x������ � �      0      x������ � �      1      x������ � �      6      x������ � �      5      x������ � �      3      x������ � �      ,      x������ � �      4      x������ � �      -      x������ � �      2      x������ � �      +      x������ � �     