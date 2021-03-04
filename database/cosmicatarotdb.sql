PGDMP     ,                    y            cosmicaTarotdb    13.2    13.1 '    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    cosmicaTarotdb    DATABASE     p   CREATE DATABASE "cosmicaTarotdb" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Argentina.1252';
     DROP DATABASE "cosmicaTarotdb";
                postgres    false            �            1259    32823    comenthoroscopo    TABLE     �   CREATE TABLE public.comenthoroscopo (
    id integer NOT NULL,
    iduser integer NOT NULL,
    idsigno integer NOT NULL,
    text character varying(200),
    fechcreation timestamp with time zone NOT NULL,
    idtiposigno integer NOT NULL
);
 #   DROP TABLE public.comenthoroscopo;
       public         heap    postgres    false            �            1259    24586    comentspost    TABLE     F  CREATE TABLE public.comentspost (
    "IdComent" bigint NOT NULL,
    "fechaComent" timestamp without time zone NOT NULL,
    "textComent" character varying(200) NOT NULL,
    iduser integer NOT NULL,
    fechacoment timestamp with time zone NOT NULL,
    text character varying(500) NOT NULL,
    idsigno integer NOT NULL
);
    DROP TABLE public.comentspost;
       public         heap    postgres    false            �            1259    24603    comprasesion    TABLE     {   CREATE TABLE public.comprasesion (
    id integer NOT NULL,
    price real NOT NULL,
    "idComrpador" integer NOT NULL
);
     DROP TABLE public.comprasesion;
       public         heap    postgres    false            �            1259    24621 	   horoscopo    TABLE     �   CREATE TABLE public.horoscopo (
    id integer NOT NULL,
    nombre character varying(20) NOT NULL,
    idtipo integer NOT NULL,
    startfecha date NOT NULL,
    endfecha date NOT NULL
);
    DROP TABLE public.horoscopo;
       public         heap    postgres    false            �            1259    16406    posteos    TABLE     I  CREATE TABLE public.posteos (
    "Idposteo" integer NOT NULL,
    title character varying(100) NOT NULL,
    subtitle character varying(200),
    img character varying(300),
    contenido character varying(1000) NOT NULL,
    fechcreation date NOT NULL,
    idtags integer,
    idsigno integer NOT NULL,
    idcoment integer
);
    DROP TABLE public.posteos;
       public         heap    postgres    false            �            1259    16414    tags    TABLE     ^   CREATE TABLE public.tags (
    "IdTags" integer NOT NULL,
    nombre character varying(50)
);
    DROP TABLE public.tags;
       public         heap    postgres    false            �            1259    24611 	   tiposigno    TABLE     e   CREATE TABLE public.tiposigno (
    id integer NOT NULL,
    signo character varying(20) NOT NULL
);
    DROP TABLE public.tiposigno;
       public         heap    postgres    false            �            1259    16398    users    TABLE     �  CREATE TABLE public.users (
    "nameUser" character varying(50) NOT NULL,
    "fechaNac" date NOT NULL,
    "rolUser" character varying(100) NOT NULL,
    nation character varying(100) NOT NULL,
    "fotoUser" character varying(200),
    description character varying(300),
    id integer NOT NULL,
    idsigno integer NOT NULL,
    idtiposigno integer NOT NULL,
    password character varying(200) NOT NULL,
    mail character varying(100) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    32823    comenthoroscopo 
   TABLE DATA           _   COPY public.comenthoroscopo (id, iduser, idsigno, text, fechcreation, idtiposigno) FROM stdin;
    public          postgres    false    207   30       �          0    24586    comentspost 
   TABLE DATA           r   COPY public.comentspost ("IdComent", "fechaComent", "textComent", iduser, fechacoment, text, idsigno) FROM stdin;
    public          postgres    false    203   P0       �          0    24603    comprasesion 
   TABLE DATA           @   COPY public.comprasesion (id, price, "idComrpador") FROM stdin;
    public          postgres    false    204   m0       �          0    24621 	   horoscopo 
   TABLE DATA           M   COPY public.horoscopo (id, nombre, idtipo, startfecha, endfecha) FROM stdin;
    public          postgres    false    206   �0       �          0    16406    posteos 
   TABLE DATA           w   COPY public.posteos ("Idposteo", title, subtitle, img, contenido, fechcreation, idtags, idsigno, idcoment) FROM stdin;
    public          postgres    false    201   c1       �          0    16414    tags 
   TABLE DATA           0   COPY public.tags ("IdTags", nombre) FROM stdin;
    public          postgres    false    202   �1       �          0    24611 	   tiposigno 
   TABLE DATA           .   COPY public.tiposigno (id, signo) FROM stdin;
    public          postgres    false    205   �1       �          0    16398    users 
   TABLE DATA           �   COPY public.users ("nameUser", "fechaNac", "rolUser", nation, "fotoUser", description, id, idsigno, idtiposigno, password, mail) FROM stdin;
    public          postgres    false    200   �1       F           2606    24590    comentspost ComentsPost_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT "ComentsPost_pkey" PRIMARY KEY ("IdComent");
 H   ALTER TABLE ONLY public.comentspost DROP CONSTRAINT "ComentsPost_pkey";
       public            postgres    false    203            J           2606    24625    horoscopo Horoscopo_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT "Horoscopo_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.horoscopo DROP CONSTRAINT "Horoscopo_pkey";
       public            postgres    false    206            B           2606    16413    posteos Posteos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "Posteos_pkey" PRIMARY KEY ("Idposteo");
 @   ALTER TABLE ONLY public.posteos DROP CONSTRAINT "Posteos_pkey";
       public            postgres    false    201            D           2606    16418    tags Tags_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY ("IdTags");
 :   ALTER TABLE ONLY public.tags DROP CONSTRAINT "Tags_pkey";
       public            postgres    false    202            H           2606    24615    tiposigno TipoSigno_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tiposigno
    ADD CONSTRAINT "TipoSigno_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tiposigno DROP CONSTRAINT "TipoSigno_pkey";
       public            postgres    false    205            L           2606    32827 $   comenthoroscopo comenthoroscopo_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT comenthoroscopo_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.comenthoroscopo DROP CONSTRAINT comenthoroscopo_pkey;
       public            postgres    false    207            @           2606    24597    users id 
   CONSTRAINT     F   ALTER TABLE ONLY public.users
    ADD CONSTRAINT id PRIMARY KEY (id);
 2   ALTER TABLE ONLY public.users DROP CONSTRAINT id;
       public            postgres    false    200            O           2606    32778    posteos idComent    FK CONSTRAINT     �   ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "idComent" FOREIGN KEY (idcoment) REFERENCES public.comentspost("IdComent") NOT VALID;
 <   ALTER TABLE ONLY public.posteos DROP CONSTRAINT "idComent";
       public          postgres    false    201    2886    203            T           2606    24606    comprasesion idComprador    FK CONSTRAINT        ALTER TABLE ONLY public.comprasesion
    ADD CONSTRAINT "idComprador" FOREIGN KEY ("idComrpador") REFERENCES public.users(id);
 D   ALTER TABLE ONLY public.comprasesion DROP CONSTRAINT "idComprador";
       public          postgres    false    200    2880    204            Q           2606    32788    posteos idSigno    FK CONSTRAINT     ~   ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT "idSigno" FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;
 ;   ALTER TABLE ONLY public.posteos DROP CONSTRAINT "idSigno";
       public          postgres    false    2890    201    206            U           2606    24626    horoscopo idTipo    FK CONSTRAINT     t   ALTER TABLE ONLY public.horoscopo
    ADD CONSTRAINT "idTipo" FOREIGN KEY (idtipo) REFERENCES public.tiposigno(id);
 <   ALTER TABLE ONLY public.horoscopo DROP CONSTRAINT "idTipo";
       public          postgres    false    2888    206    205            M           2606    32793    users idsigno    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;
 7   ALTER TABLE ONLY public.users DROP CONSTRAINT idsigno;
       public          postgres    false    2890    206    200            R           2606    32818    comentspost idsigno    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.horoscopo(id) NOT VALID;
 =   ALTER TABLE ONLY public.comentspost DROP CONSTRAINT idsigno;
       public          postgres    false    203    2890    206            W           2606    32833    comenthoroscopo idsigno    FK CONSTRAINT     v   ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idsigno FOREIGN KEY (idsigno) REFERENCES public.users(id);
 A   ALTER TABLE ONLY public.comenthoroscopo DROP CONSTRAINT idsigno;
       public          postgres    false    207    2880    200            P           2606    32783    posteos idtag    FK CONSTRAINT     z   ALTER TABLE ONLY public.posteos
    ADD CONSTRAINT idtag FOREIGN KEY (idtags) REFERENCES public.tags("IdTags") NOT VALID;
 7   ALTER TABLE ONLY public.posteos DROP CONSTRAINT idtag;
       public          postgres    false    2884    201    202            N           2606    32798    users idtiposigno    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.tiposigno(id) NOT VALID;
 ;   ALTER TABLE ONLY public.users DROP CONSTRAINT idtiposigno;
       public          postgres    false    200    2888    205            X           2606    32838    comenthoroscopo idtiposigno    FK CONSTRAINT     �   ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT idtiposigno FOREIGN KEY (idtiposigno) REFERENCES public.users(id) NOT VALID;
 E   ALTER TABLE ONLY public.comenthoroscopo DROP CONSTRAINT idtiposigno;
       public          postgres    false    2880    200    207            V           2606    32828    comenthoroscopo iduser    FK CONSTRAINT     t   ALTER TABLE ONLY public.comenthoroscopo
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.comenthoroscopo DROP CONSTRAINT iduser;
       public          postgres    false    200    207    2880            S           2606    32843    comentspost iduser    FK CONSTRAINT     z   ALTER TABLE ONLY public.comentspost
    ADD CONSTRAINT iduser FOREIGN KEY (iduser) REFERENCES public.users(id) NOT VALID;
 <   ALTER TABLE ONLY public.comentspost DROP CONSTRAINT iduser;
       public          postgres    false    200    2880    203            �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m���0�g�]�b�?����P�U�.)B�C���5��n��.��U3['0�a�ELrD%�p���	⠲�0V�*'��.����� zL?�k��^�S!S�ζoZ*�곹"P�C(���X�S\�(������v6�_�d� �ej7��GZ3w��w�e�;>��"���NtT/[�Z���N����T�      �      x������ � �      �      x������ � �      �   ,   x�3��L-*J�2�t�,J�2�tL/M�2�t+MM������ ��	      �      x������ � �     