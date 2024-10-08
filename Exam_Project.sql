PGDMP                        |           Exam_Project    15.7    16.3 0    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    16909    Exam_Project    DATABASE        CREATE DATABASE "Exam_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Hebrew_Israel.1255';
    DROP DATABASE "Exam_Project";
                postgres    false            έ            1259    16941    answer    TABLE     s   CREATE TABLE public.answer (
    aid integer NOT NULL,
    qid integer,
    astring text,
    iscorrect boolean
);
    DROP TABLE public.answer;
       public         heap    postgres    false            ά            1259    16940    answer_aid_seq    SEQUENCE        CREATE SEQUENCE public.answer_aid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.answer_aid_seq;
       public          postgres    false    221            3           0    0    answer_aid_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.answer_aid_seq OWNED BY public.answer.aid;
          public          postgres    false    220            ί            1259    16955    exam    TABLE     Y   CREATE TABLE public.exam (
    eid integer NOT NULL,
    uid integer,
    pid integer
);
    DROP TABLE public.exam;
       public         heap    postgres    false            ή            1259    16954    exam_eid_seq    SEQUENCE        CREATE SEQUENCE public.exam_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.exam_eid_seq;
       public          postgres    false    223            4           0    0    exam_eid_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.exam_eid_seq OWNED BY public.exam.eid;
          public          postgres    false    222            ΰ            1259    16971    examquestion    TABLE     Y   CREATE TABLE public.examquestion (
    eid integer NOT NULL,
    qid integer NOT NULL
);
     DROP TABLE public.examquestion;
       public         heap    postgres    false            Ω            1259    16920 
   profession    TABLE     W   CREATE TABLE public.profession (
    pid integer NOT NULL,
    pname character(255)
);
    DROP TABLE public.profession;
       public         heap    postgres    false            Ψ            1259    16919    profession_pid_seq    SEQUENCE        CREATE SEQUENCE public.profession_pid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.profession_pid_seq;
       public          postgres    false    217            5           0    0    profession_pid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.profession_pid_seq OWNED BY public.profession.pid;
          public          postgres    false    216            Ϋ            1259    16927    question    TABLE        CREATE TABLE public.question (
    pid integer,
    qid integer NOT NULL,
    qstring text,
    qtype numeric(1,0),
    difficulty text
);
    DROP TABLE public.question;
       public         heap    postgres    false            Ϊ            1259    16926    question_qid_seq    SEQUENCE        CREATE SEQUENCE public.question_qid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.question_qid_seq;
       public          postgres    false    219            6           0    0    question_qid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.question_qid_seq OWNED BY public.question.qid;
          public          postgres    false    218            Χ            1259    16911    users    TABLE     r   CREATE TABLE public.users (
    uid integer NOT NULL,
    uname text,
    upassword text,
    phonenumber text
);
    DROP TABLE public.users;
       public         heap    postgres    false            Φ            1259    16910    users_uid_seq    SEQUENCE        CREATE SEQUENCE public.users_uid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.users_uid_seq;
       public          postgres    false    215            7           0    0    users_uid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.users_uid_seq OWNED BY public.users.uid;
          public          postgres    false    214                       2604    16944 
   answer aid    DEFAULT     h   ALTER TABLE ONLY public.answer ALTER COLUMN aid SET DEFAULT nextval('public.answer_aid_seq'::regclass);
 9   ALTER TABLE public.answer ALTER COLUMN aid DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    16958    exam eid    DEFAULT     d   ALTER TABLE ONLY public.exam ALTER COLUMN eid SET DEFAULT nextval('public.exam_eid_seq'::regclass);
 7   ALTER TABLE public.exam ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    222    223    223            ~           2604    16923    profession pid    DEFAULT     p   ALTER TABLE ONLY public.profession ALTER COLUMN pid SET DEFAULT nextval('public.profession_pid_seq'::regclass);
 =   ALTER TABLE public.profession ALTER COLUMN pid DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    16930    question qid    DEFAULT     l   ALTER TABLE ONLY public.question ALTER COLUMN qid SET DEFAULT nextval('public.question_qid_seq'::regclass);
 ;   ALTER TABLE public.question ALTER COLUMN qid DROP DEFAULT;
       public          postgres    false    219    218    219            }           2604    16914 	   users uid    DEFAULT     f   ALTER TABLE ONLY public.users ALTER COLUMN uid SET DEFAULT nextval('public.users_uid_seq'::regclass);
 8   ALTER TABLE public.users ALTER COLUMN uid DROP DEFAULT;
       public          postgres    false    214    215    215            )          0    16941    answer 
   TABLE DATA           >   COPY public.answer (aid, qid, astring, iscorrect) FROM stdin;
    public          postgres    false    221   Σ2       +          0    16955    exam 
   TABLE DATA           -   COPY public.exam (eid, uid, pid) FROM stdin;
    public          postgres    false    223   χ9       ,          0    16971    examquestion 
   TABLE DATA           0   COPY public.examquestion (eid, qid) FROM stdin;
    public          postgres    false    224   :       %          0    16920 
   profession 
   TABLE DATA           0   COPY public.profession (pid, pname) FROM stdin;
    public          postgres    false    217   !:       '          0    16927    question 
   TABLE DATA           H   COPY public.question (pid, qid, qstring, qtype, difficulty) FROM stdin;
    public          postgres    false    219   R>       #          0    16911    users 
   TABLE DATA           C   COPY public.users (uid, uname, upassword, phonenumber) FROM stdin;
    public          postgres    false    215   ΞE       8           0    0    answer_aid_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.answer_aid_seq', 69, true);
          public          postgres    false    220            9           0    0    exam_eid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.exam_eid_seq', 1, false);
          public          postgres    false    222            :           0    0    profession_pid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.profession_pid_seq', 4, true);
          public          postgres    false    216            ;           0    0    question_qid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.question_qid_seq', 25, true);
          public          postgres    false    218            <           0    0    users_uid_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_uid_seq', 3, true);
          public          postgres    false    214                       2606    16948    answer answer_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_pkey PRIMARY KEY (aid);
 <   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_pkey;
       public            postgres    false    221                       2606    16960    exam exam_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pkey PRIMARY KEY (eid);
 8   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pkey;
       public            postgres    false    223                       2606    16975    examquestion examquestion_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_pkey PRIMARY KEY (eid, qid);
 H   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_pkey;
       public            postgres    false    224    224                       2606    16925    profession profession_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.profession
    ADD CONSTRAINT profession_pkey PRIMARY KEY (pid);
 D   ALTER TABLE ONLY public.profession DROP CONSTRAINT profession_pkey;
       public            postgres    false    217                       2606    16934    question question_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pkey PRIMARY KEY (qid);
 @   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pkey;
       public            postgres    false    219                       2606    16918    users users_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (uid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215                       2606    16949    answer answer_qid_fkey    FK CONSTRAINT     u   ALTER TABLE ONLY public.answer
    ADD CONSTRAINT answer_qid_fkey FOREIGN KEY (qid) REFERENCES public.question(qid);
 @   ALTER TABLE ONLY public.answer DROP CONSTRAINT answer_qid_fkey;
       public          postgres    false    3207    219    221                       2606    16966    exam exam_pid_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_pid_fkey FOREIGN KEY (pid) REFERENCES public.profession(pid);
 <   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_pid_fkey;
       public          postgres    false    3205    223    217                       2606    16961    exam exam_uid_fkey    FK CONSTRAINT     n   ALTER TABLE ONLY public.exam
    ADD CONSTRAINT exam_uid_fkey FOREIGN KEY (uid) REFERENCES public.users(uid);
 <   ALTER TABLE ONLY public.exam DROP CONSTRAINT exam_uid_fkey;
       public          postgres    false    223    215    3203                       2606    16976 "   examquestion examquestion_eid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_eid_fkey FOREIGN KEY (eid) REFERENCES public.exam(eid) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_eid_fkey;
       public          postgres    false    3211    223    224                       2606    16981 "   examquestion examquestion_qid_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.examquestion
    ADD CONSTRAINT examquestion_qid_fkey FOREIGN KEY (qid) REFERENCES public.question(qid) ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.examquestion DROP CONSTRAINT examquestion_qid_fkey;
       public          postgres    false    224    3207    219                       2606    16935    question question_pid_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.question
    ADD CONSTRAINT question_pid_fkey FOREIGN KEY (pid) REFERENCES public.profession(pid);
 D   ALTER TABLE ONLY public.question DROP CONSTRAINT question_pid_fkey;
       public          postgres    false    217    219    3205            )      1	1	Pulp Fiction	t
    2	1	The Godfather	f
    3	1	Inception	f
    4	1	The Shawshank Redemption	f
    5	2	Schindlers List	f
    6	2	The Silence of the Lambs	f
    7	2	Braveheart	f
    8	2	Forrest Gump	t
    9	3	The Lord of the Rings	f
     10	3	Pirates of the Caribbean	t
    11	3	Harry Potter	f
    12	3	Gladiator	f
    13	4	Wakanda	t
    14	5	Forrest Gump	t
    15	6	Dan Krichley	t
    16	6	Izik Galanti	f
    17	6	Nir Geron	f
 	   18	7	2	t
 	   19	7	4	f
 	   20	7	7	t
 	   21	7	9	f
 	   22	8	1	t
 	   23	8	2	t
 	   24	8	3	f
 	   25	8	6	f
    26	9	Two equal sides	t
    27	9	Three equal angles	f
    28	9	Two equal angles	t
 #   29	9	All angles are right angles	f
    30	10	98	t
    31	11	720	t
    32	12	12	t
    33	13	Messi	t
    34	13	Ronaldo	f
    35	13	Neymar Jr	f
    36	13	Eran Zahavi	f
    37	14	France	f
    38	14	Brazil	f
    39	14	Argentina	t
    40	14	Israel	f
    41	15	Michael Jordan	f
    42	15	Bill Russell	t
    43	15	Steph Curry	f
    44	15	Lebron James	f
    45	16	1857	f
    46	16	1875	t
    47	16	1892	f
    48	16	1905	f
    49	17	France	f
    50	17	USA	f
    51	17	Germany	f
    52	17	Greece	t
    53	18	Nadia ComΔneci	t
    54	19	France	t
    55	20	147	t
    56	21	Leon Trotsky	f
    57	21	Nikita Khrushchev	f
    58	21	Vladimir Lenin	f
    59	21	Joseph Stalin	t
    60	22	Titanic	t
    61	23	George Washington	t
    62	23	Thomas Jefferson	f
    63	23	Abraham Lincoln	f
    64	23	John Adams	f
 U   65	24	Margaret Thatcher was the first female Prime Minister of the United Kingdom.	t
 .   66	25	They needed a really big paperweight.	f
 +   67	25	It was the ultimate game of Jenga.	t
 :   68	25	Pharaohs were just showing off their Lego skills.	f
 I   69	25	Because their architects misunderstood the concept of pointless.	f
    \.


      +      \.


      ,      \.


      %     1	Movies                                                                                                                                                                                                                                                         
   2	Math                                                                                                                                                                                                                                                           
   3	History                                                                                                                                                                                                                                                        
   4	Sport                                                                                                                                                                                                                                                          
    \.


      '   L   1	1	Which of the following movies was directed by Quentin Tarantino?	1	Easy
 N   1	2	Which film won the Academy Award for Best Picture in 1994?	1	Intermediate
 <   1	3	Which movie features the character Jack Sparrow?	1	Easy
 Y   1	4	What is the name of the fictional African country in the movie Black Panther?	2	Easy
 u   1	5	In which movie does the character "Forrest Gump" say the famous line, "Life is like a box of chocolates"?	2	Easy
    1	6	Who is Hagrid?	1	Hard
 5   2	7	Which of the following are prime numbers?	1	Hard
 T   2	8	Which of these are solutions to the quadratic equation x^2 - 5x + 6 = 0?	1	Hard
 K   2	9	Which of the following are properties of an isosceles triangle?	1	Hard
 -   2	10	What is the result of 5^3 - 3^2?	2	Hard
 8   2	11	What is the sum of the angles in a hexagon?	2	Hard
 V   2	12	What is the smallest positive integer that is both a multiple of 4 and 6?	2	Hard
 8   4	13	Who is the best soccer player in the world?	1	Easy
 7   4	14	Which team won the last World Cup?	1	Intermediate
 U   4	15	Who holds the record for winning the most NBA championships as a player?	1	Hard
 =   4	16	In what year was modern ice hockey first played?	1	Hard
 Q   4	17	Which country hosted the first modern Olympic Games in 1896?	1	Intermediate
 T   4	18	Who was the first female gymnast to score a perfect 10 in the Olympics?	2	Easy
 B   4	19	Which country has won the most Tour de France titles?	2	Easy
 D   4	20	What is the maximum score in a single frame of snooker?	2	Hard
 P   3	21	Who was the leader of the Soviet Union during World War II?	1	Intermediate
 R   3	22	What was the name of the ship that sank on its maiden voyage in 1912?	2	Easy
 >   3	23	Who was the first President of the United States?	1	Easy
 S   3	24	Who was the first female Prime Minister of the United Kingdom?	2	Intermediate
 >   3	25	Why did the ancient Egyptians build the pyramids?	1	Easy
    \.


      #      1	nir	nir	0526384562
    2	dan	dan	0525564333
    3	itzik	itzik	0546265147
    \.


     