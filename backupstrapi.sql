PGDMP                         {           vccopenbadgesdb    15.4    15.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16398    vccopenbadgesdb    DATABASE     �   CREATE DATABASE vccopenbadgesdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Polish_Poland.1250';
    DROP DATABASE vccopenbadgesdb;
                postgres    false            �            1259    16434    admin_permissions    TABLE     J  CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.admin_permissions;
       public         heap    postgres    false            �            1259    16433    admin_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.admin_permissions_id_seq;
       public          postgres    false    223            �           0    0    admin_permissions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;
          public          postgres    false    222            �            1259    16590    admin_permissions_role_links    TABLE     �   CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 0   DROP TABLE public.admin_permissions_role_links;
       public         heap    postgres    false            �            1259    16589 #   admin_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.admin_permissions_role_links_id_seq;
       public          postgres    false    249            �           0    0 #   admin_permissions_role_links_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;
          public          postgres    false    248            �            1259    16456    admin_roles    TABLE     ;  CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_roles;
       public         heap    postgres    false            �            1259    16455    admin_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_roles_id_seq;
       public          postgres    false    227            �           0    0    admin_roles_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;
          public          postgres    false    226            �            1259    16445    admin_users    TABLE     B  CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.admin_users;
       public         heap    postgres    false            �            1259    16444    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public          postgres    false    225            �           0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public          postgres    false    224            �            1259    16602    admin_users_roles_links    TABLE     �   CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);
 +   DROP TABLE public.admin_users_roles_links;
       public         heap    postgres    false            �            1259    16601    admin_users_roles_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.admin_users_roles_links_id_seq;
       public          postgres    false    251            �           0    0    admin_users_roles_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;
          public          postgres    false    250                       1259    16937    certificates    TABLE     �  CREATE TABLE public.certificates (
    id integer NOT NULL,
    name character varying(255),
    date date,
    cer_id character varying(255),
    url character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
     DROP TABLE public.certificates;
       public         heap    postgres    false            
           1259    16936    certificates_id_seq    SEQUENCE     �   CREATE SEQUENCE public.certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.certificates_id_seq;
       public          postgres    false    267            �           0    0    certificates_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.certificates_id_seq OWNED BY public.certificates.id;
          public          postgres    false    266                       1259    16962    certificates_user_links    TABLE     �   CREATE TABLE public.certificates_user_links (
    id integer NOT NULL,
    certificate_id integer,
    user_id integer,
    certificate_order double precision
);
 +   DROP TABLE public.certificates_user_links;
       public         heap    postgres    false                       1259    16961    certificates_user_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.certificates_user_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.certificates_user_links_id_seq;
       public          postgres    false    269            �           0    0    certificates_user_links_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.certificates_user_links_id_seq OWNED BY public.certificates_user_links.id;
          public          postgres    false    268                       1259    17009    components_licencje_vr_druk_3ds    TABLE     �   CREATE TABLE public.components_licencje_vr_druk_3ds (
    id integer NOT NULL,
    kwalifikacja character varying(255),
    url character varying(255),
    custom_style jsonb,
    expiration_date date
);
 3   DROP TABLE public.components_licencje_vr_druk_3ds;
       public         heap    postgres    false                       1259    17008 &   components_licencje_vr_druk_3ds_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_licencje_vr_druk_3ds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.components_licencje_vr_druk_3ds_id_seq;
       public          postgres    false    273            �           0    0 &   components_licencje_vr_druk_3ds_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.components_licencje_vr_druk_3ds_id_seq OWNED BY public.components_licencje_vr_druk_3ds.id;
          public          postgres    false    272                       1259    17018 .   components_licencje_vr_przygotowywanie_potraws    TABLE     �   CREATE TABLE public.components_licencje_vr_przygotowywanie_potraws (
    id integer NOT NULL,
    kwalifikacja character varying(255),
    url character varying(255),
    custom_style jsonb,
    expiration_date date
);
 B   DROP TABLE public.components_licencje_vr_przygotowywanie_potraws;
       public         heap    postgres    false                       1259    17017 5   components_licencje_vr_przygotowywanie_potraws_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_licencje_vr_przygotowywanie_potraws_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public.components_licencje_vr_przygotowywanie_potraws_id_seq;
       public          postgres    false    275            �           0    0 5   components_licencje_vr_przygotowywanie_potraws_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.components_licencje_vr_przygotowywanie_potraws_id_seq OWNED BY public.components_licencje_vr_przygotowywanie_potraws.id;
          public          postgres    false    274                       1259    17027     components_licencje_vr_stolarkas    TABLE     �   CREATE TABLE public.components_licencje_vr_stolarkas (
    id integer NOT NULL,
    kwalifikacja character varying(255),
    url character varying(255),
    custom_style jsonb,
    expiration_date date
);
 4   DROP TABLE public.components_licencje_vr_stolarkas;
       public         heap    postgres    false                       1259    17026 '   components_licencje_vr_stolarkas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.components_licencje_vr_stolarkas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.components_licencje_vr_stolarkas_id_seq;
       public          postgres    false    277            �           0    0 '   components_licencje_vr_stolarkas_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.components_licencje_vr_stolarkas_id_seq OWNED BY public.components_licencje_vr_stolarkas.id;
          public          postgres    false    276            �            1259    16516    files    TABLE     �  CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.files;
       public         heap    postgres    false                       1259    16651    files_folder_links    TABLE     �   CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);
 &   DROP TABLE public.files_folder_links;
       public         heap    postgres    false                       1259    16650    files_folder_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.files_folder_links_id_seq;
       public          postgres    false    259            �           0    0    files_folder_links_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;
          public          postgres    false    258            �            1259    16515    files_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.files_id_seq;
       public          postgres    false    237            �           0    0    files_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;
          public          postgres    false    236                       1259    16639    files_related_morphs    TABLE     �   CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);
 (   DROP TABLE public.files_related_morphs;
       public         heap    postgres    false                        1259    16638    files_related_morphs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.files_related_morphs_id_seq;
       public          postgres    false    257                        0    0    files_related_morphs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;
          public          postgres    false    256            �            1259    16579    i18n_locale    TABLE       CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.i18n_locale;
       public         heap    postgres    false            �            1259    16578    i18n_locale_id_seq    SEQUENCE     �   CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.i18n_locale_id_seq;
       public          postgres    false    247                       0    0    i18n_locale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;
          public          postgres    false    246                       1259    17046    licences    TABLE     l  CREATE TABLE public.licences (
    id integer NOT NULL,
    expiration_date date,
    licence_number character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.licences;
       public         heap    postgres    false                       1259    17059    licences_components    TABLE     �   CREATE TABLE public.licences_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);
 '   DROP TABLE public.licences_components;
       public         heap    postgres    false                       1259    17058    licences_components_id_seq    SEQUENCE     �   CREATE SEQUENCE public.licences_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.licences_components_id_seq;
       public          postgres    false    281                       0    0    licences_components_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.licences_components_id_seq OWNED BY public.licences_components.id;
          public          postgres    false    280                       1259    17045    licences_id_seq    SEQUENCE     �   CREATE SEQUENCE public.licences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.licences_id_seq;
       public          postgres    false    279                       0    0    licences_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.licences_id_seq OWNED BY public.licences.id;
          public          postgres    false    278                       1259    17073 &   licences_users_permissions_users_links    TABLE     �   CREATE TABLE public.licences_users_permissions_users_links (
    id integer NOT NULL,
    licence_id integer,
    user_id integer,
    user_order double precision,
    licence_order double precision
);
 :   DROP TABLE public.licences_users_permissions_users_links;
       public         heap    postgres    false                       1259    17072 -   licences_users_permissions_users_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.licences_users_permissions_users_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.licences_users_permissions_users_links_id_seq;
       public          postgres    false    283                       0    0 -   licences_users_permissions_users_links_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.licences_users_permissions_users_links_id_seq OWNED BY public.licences_users_permissions_users_links.id;
          public          postgres    false    282                       1259    16986    qualifications    TABLE     ~  CREATE TABLE public.qualifications (
    id integer NOT NULL,
    name character varying(255),
    "desc" text,
    share_url character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.qualifications;
       public         heap    postgres    false                       1259    16985    qualifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.qualifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.qualifications_id_seq;
       public          postgres    false    271                       0    0    qualifications_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.qualifications_id_seq OWNED BY public.qualifications.id;
          public          postgres    false    270            �            1259    16478    strapi_api_token_permissions    TABLE       CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 0   DROP TABLE public.strapi_api_token_permissions;
       public         heap    postgres    false            �            1259    16477 #   strapi_api_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.strapi_api_token_permissions_id_seq;
       public          postgres    false    231                       0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;
          public          postgres    false    230            �            1259    16615 (   strapi_api_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);
 <   DROP TABLE public.strapi_api_token_permissions_token_links;
       public         heap    postgres    false            �            1259    16614 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.strapi_api_token_permissions_token_links_id_seq;
       public          postgres    false    253                       0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;
          public          postgres    false    252            �            1259    16467    strapi_api_tokens    TABLE     �  CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 %   DROP TABLE public.strapi_api_tokens;
       public         heap    postgres    false            �            1259    16466    strapi_api_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_api_tokens_id_seq;
       public          postgres    false    229                       0    0    strapi_api_tokens_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;
          public          postgres    false    228            �            1259    16416    strapi_core_store_settings    TABLE     �   CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);
 .   DROP TABLE public.strapi_core_store_settings;
       public         heap    postgres    false            �            1259    16415 !   strapi_core_store_settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.strapi_core_store_settings_id_seq;
       public          postgres    false    219            	           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;
          public          postgres    false    218            �            1259    16407    strapi_database_schema    TABLE     �   CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);
 *   DROP TABLE public.strapi_database_schema;
       public         heap    postgres    false            �            1259    16406    strapi_database_schema_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_database_schema_id_seq;
       public          postgres    false    217            
           0    0    strapi_database_schema_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;
          public          postgres    false    216            �            1259    16400    strapi_migrations    TABLE     �   CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);
 %   DROP TABLE public.strapi_migrations;
       public         heap    postgres    false            �            1259    16399    strapi_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.strapi_migrations_id_seq;
       public          postgres    false    215                       0    0    strapi_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;
          public          postgres    false    214            �            1259    16498 !   strapi_transfer_token_permissions    TABLE     
  CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 5   DROP TABLE public.strapi_transfer_token_permissions;
       public         heap    postgres    false            �            1259    16497 (   strapi_transfer_token_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.strapi_transfer_token_permissions_id_seq;
       public          postgres    false    235                       0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;
          public          postgres    false    234            �            1259    16627 -   strapi_transfer_token_permissions_token_links    TABLE     �   CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);
 A   DROP TABLE public.strapi_transfer_token_permissions_token_links;
       public         heap    postgres    false            �            1259    16626 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 K   DROP SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq;
       public          postgres    false    255                       0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;
          public          postgres    false    254            �            1259    16487    strapi_transfer_tokens    TABLE     �  CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 *   DROP TABLE public.strapi_transfer_tokens;
       public         heap    postgres    false            �            1259    16486    strapi_transfer_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.strapi_transfer_tokens_id_seq;
       public          postgres    false    233                       0    0    strapi_transfer_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;
          public          postgres    false    232            �            1259    16425    strapi_webhooks    TABLE     �   CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);
 #   DROP TABLE public.strapi_webhooks;
       public         heap    postgres    false            �            1259    16424    strapi_webhooks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.strapi_webhooks_id_seq;
       public          postgres    false    221                       0    0    strapi_webhooks_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;
          public          postgres    false    220            �            1259    16548    up_permissions    TABLE     �   CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.up_permissions;
       public         heap    postgres    false            �            1259    16547    up_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.up_permissions_id_seq;
       public          postgres    false    241                       0    0    up_permissions_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;
          public          postgres    false    240                       1259    16675    up_permissions_role_links    TABLE     �   CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);
 -   DROP TABLE public.up_permissions_role_links;
       public         heap    postgres    false                       1259    16674     up_permissions_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.up_permissions_role_links_id_seq;
       public          postgres    false    263                       0    0     up_permissions_role_links_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;
          public          postgres    false    262            �            1259    16557    up_roles    TABLE     8  CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
    DROP TABLE public.up_roles;
       public         heap    postgres    false            �            1259    16556    up_roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_roles_id_seq;
       public          postgres    false    243                       0    0    up_roles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;
          public          postgres    false    242            �            1259    16568    up_users    TABLE     �  CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    lastname character varying(255),
    phone bigint,
    education character varying(255),
    region character varying(255),
    type_of_education character varying(255),
    firstname character varying(255),
    profile_image character varying(255),
    user_id character varying(255),
    user_role character varying(255),
    course_id character varying(255),
    resume jsonb,
    vr_enable boolean,
    access_expiration_date date,
    vr_config_file character varying(255)
);
    DROP TABLE public.up_users;
       public         heap    postgres    false            �            1259    16567    up_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.up_users_id_seq;
       public          postgres    false    245                       0    0    up_users_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;
          public          postgres    false    244            	           1259    16687    up_users_role_links    TABLE     �   CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);
 '   DROP TABLE public.up_users_role_links;
       public         heap    postgres    false                       1259    16686    up_users_role_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.up_users_role_links_id_seq;
       public          postgres    false    265                       0    0    up_users_role_links_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;
          public          postgres    false    264            �            1259    16533    upload_folders    TABLE     +  CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);
 "   DROP TABLE public.upload_folders;
       public         heap    postgres    false            �            1259    16532    upload_folders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.upload_folders_id_seq;
       public          postgres    false    239                       0    0    upload_folders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;
          public          postgres    false    238                       1259    16663    upload_folders_parent_links    TABLE     �   CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);
 /   DROP TABLE public.upload_folders_parent_links;
       public         heap    postgres    false                       1259    16662 "   upload_folders_parent_links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.upload_folders_parent_links_id_seq;
       public          postgres    false    261                       0    0 "   upload_folders_parent_links_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;
          public          postgres    false    260                       2604    16437    admin_permissions id    DEFAULT     |   ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);
 C   ALTER TABLE public.admin_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                        2604    16593    admin_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);
 N   ALTER TABLE public.admin_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    248    249    249                       2604    16459    admin_roles id    DEFAULT     p   ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);
 =   ALTER TABLE public.admin_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227                       2604    16448    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225            !           2604    16605    admin_users_roles_links id    DEFAULT     �   ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);
 I   ALTER TABLE public.admin_users_roles_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    250    251    251            )           2604    16940    certificates id    DEFAULT     r   ALTER TABLE ONLY public.certificates ALTER COLUMN id SET DEFAULT nextval('public.certificates_id_seq'::regclass);
 >   ALTER TABLE public.certificates ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    267    266    267            *           2604    16965    certificates_user_links id    DEFAULT     �   ALTER TABLE ONLY public.certificates_user_links ALTER COLUMN id SET DEFAULT nextval('public.certificates_user_links_id_seq'::regclass);
 I   ALTER TABLE public.certificates_user_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    268    269    269            ,           2604    17012 "   components_licencje_vr_druk_3ds id    DEFAULT     �   ALTER TABLE ONLY public.components_licencje_vr_druk_3ds ALTER COLUMN id SET DEFAULT nextval('public.components_licencje_vr_druk_3ds_id_seq'::regclass);
 Q   ALTER TABLE public.components_licencje_vr_druk_3ds ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    273    272    273            -           2604    17021 1   components_licencje_vr_przygotowywanie_potraws id    DEFAULT     �   ALTER TABLE ONLY public.components_licencje_vr_przygotowywanie_potraws ALTER COLUMN id SET DEFAULT nextval('public.components_licencje_vr_przygotowywanie_potraws_id_seq'::regclass);
 `   ALTER TABLE public.components_licencje_vr_przygotowywanie_potraws ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    274    275    275            .           2604    17030 #   components_licencje_vr_stolarkas id    DEFAULT     �   ALTER TABLE ONLY public.components_licencje_vr_stolarkas ALTER COLUMN id SET DEFAULT nextval('public.components_licencje_vr_stolarkas_id_seq'::regclass);
 R   ALTER TABLE public.components_licencje_vr_stolarkas ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    276    277    277                       2604    16519    files id    DEFAULT     d   ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);
 7   ALTER TABLE public.files ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            %           2604    16654    files_folder_links id    DEFAULT     ~   ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);
 D   ALTER TABLE public.files_folder_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    259    258    259            $           2604    16642    files_related_morphs id    DEFAULT     �   ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);
 F   ALTER TABLE public.files_related_morphs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    257    256    257                       2604    16582    i18n_locale id    DEFAULT     p   ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);
 =   ALTER TABLE public.i18n_locale ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    246    247    247            /           2604    17049    licences id    DEFAULT     j   ALTER TABLE ONLY public.licences ALTER COLUMN id SET DEFAULT nextval('public.licences_id_seq'::regclass);
 :   ALTER TABLE public.licences ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    279    278    279            0           2604    17062    licences_components id    DEFAULT     �   ALTER TABLE ONLY public.licences_components ALTER COLUMN id SET DEFAULT nextval('public.licences_components_id_seq'::regclass);
 E   ALTER TABLE public.licences_components ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    280    281    281            1           2604    17076 )   licences_users_permissions_users_links id    DEFAULT     �   ALTER TABLE ONLY public.licences_users_permissions_users_links ALTER COLUMN id SET DEFAULT nextval('public.licences_users_permissions_users_links_id_seq'::regclass);
 X   ALTER TABLE public.licences_users_permissions_users_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    283    282    283            +           2604    16989    qualifications id    DEFAULT     v   ALTER TABLE ONLY public.qualifications ALTER COLUMN id SET DEFAULT nextval('public.qualifications_id_seq'::regclass);
 @   ALTER TABLE public.qualifications ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    271    270    271                       2604    16481    strapi_api_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);
 N   ALTER TABLE public.strapi_api_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            "           2604    16618 +   strapi_api_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);
 Z   ALTER TABLE public.strapi_api_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    252    253    253                       2604    16470    strapi_api_tokens id    DEFAULT     |   ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);
 C   ALTER TABLE public.strapi_api_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                       2604    16419    strapi_core_store_settings id    DEFAULT     �   ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);
 L   ALTER TABLE public.strapi_core_store_settings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    16410    strapi_database_schema id    DEFAULT     �   ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);
 H   ALTER TABLE public.strapi_database_schema ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217                       2604    16403    strapi_migrations id    DEFAULT     |   ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);
 C   ALTER TABLE public.strapi_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    16501 $   strapi_transfer_token_permissions id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);
 S   ALTER TABLE public.strapi_transfer_token_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            #           2604    16630 0   strapi_transfer_token_permissions_token_links id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);
 _   ALTER TABLE public.strapi_transfer_token_permissions_token_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    255    254    255                       2604    16490    strapi_transfer_tokens id    DEFAULT     �   ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);
 H   ALTER TABLE public.strapi_transfer_tokens ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    16428    strapi_webhooks id    DEFAULT     x   ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);
 A   ALTER TABLE public.strapi_webhooks ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    16551    up_permissions id    DEFAULT     v   ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);
 @   ALTER TABLE public.up_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            '           2604    16678    up_permissions_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);
 K   ALTER TABLE public.up_permissions_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    262    263    263                       2604    16560    up_roles id    DEFAULT     j   ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);
 :   ALTER TABLE public.up_roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243                       2604    16571    up_users id    DEFAULT     j   ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);
 :   ALTER TABLE public.up_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    245    245            (           2604    16690    up_users_role_links id    DEFAULT     �   ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);
 E   ALTER TABLE public.up_users_role_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    265    264    265                       2604    16536    upload_folders id    DEFAULT     v   ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);
 @   ALTER TABLE public.upload_folders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            &           2604    16666    upload_folders_parent_links id    DEFAULT     �   ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);
 M   ALTER TABLE public.upload_folders_parent_links ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    260    261    261            �          0    16434    admin_permissions 
   TABLE DATA           �   COPY public.admin_permissions (id, action, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    223   ''      �          0    16590    admin_permissions_role_links 
   TABLE DATA           d   COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    249   �-      �          0    16456    admin_roles 
   TABLE DATA           x   COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    227   �/      �          0    16445    admin_users 
   TABLE DATA           �   COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    225   �0      �          0    16602    admin_users_roles_links 
   TABLE DATA           _   COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
    public          postgres    false    251   R1      �          0    16937    certificates 
   TABLE DATA           �   COPY public.certificates (id, name, date, cer_id, url, type, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    267   t1      �          0    16962    certificates_user_links 
   TABLE DATA           a   COPY public.certificates_user_links (id, certificate_id, user_id, certificate_order) FROM stdin;
    public          postgres    false    269   R3      �          0    17009    components_licencje_vr_druk_3ds 
   TABLE DATA           o   COPY public.components_licencje_vr_druk_3ds (id, kwalifikacja, url, custom_style, expiration_date) FROM stdin;
    public          postgres    false    273   3      �          0    17018 .   components_licencje_vr_przygotowywanie_potraws 
   TABLE DATA           ~   COPY public.components_licencje_vr_przygotowywanie_potraws (id, kwalifikacja, url, custom_style, expiration_date) FROM stdin;
    public          postgres    false    275   �3      �          0    17027     components_licencje_vr_stolarkas 
   TABLE DATA           p   COPY public.components_licencje_vr_stolarkas (id, kwalifikacja, url, custom_style, expiration_date) FROM stdin;
    public          postgres    false    277   �4      �          0    16516    files 
   TABLE DATA           �   COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    237   �4      �          0    16651    files_folder_links 
   TABLE DATA           P   COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
    public          postgres    false    259   5      �          0    16639    files_related_morphs 
   TABLE DATA           e   COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
    public          postgres    false    257   15      �          0    16579    i18n_locale 
   TABLE DATA           k   COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    247   N5      �          0    17046    licences 
   TABLE DATA           �   COPY public.licences (id, expiration_date, licence_number, description, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    279   �5      �          0    17059    licences_components 
   TABLE DATA           j   COPY public.licences_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
    public          postgres    false    281   -6      �          0    17073 &   licences_users_permissions_users_links 
   TABLE DATA           t   COPY public.licences_users_permissions_users_links (id, licence_id, user_id, user_order, licence_order) FROM stdin;
    public          postgres    false    283   �6      �          0    16986    qualifications 
   TABLE DATA           �   COPY public.qualifications (id, name, "desc", share_url, type, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    271   �6      �          0    16478    strapi_api_token_permissions 
   TABLE DATA           x   COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    231   �;      �          0    16615 (   strapi_api_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
    public          postgres    false    253   �;      �          0    16467    strapi_api_tokens 
   TABLE DATA           �   COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    229   �;      �          0    16416    strapi_core_store_settings 
   TABLE DATA           \   COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
    public          postgres    false    219   �;      �          0    16407    strapi_database_schema 
   TABLE DATA           J   COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
    public          postgres    false    217   �W      �          0    16400    strapi_migrations 
   TABLE DATA           =   COPY public.strapi_migrations (id, name, "time") FROM stdin;
    public          postgres    false    215   b      �          0    16498 !   strapi_transfer_token_permissions 
   TABLE DATA           }   COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    235   :b      �          0    16627 -   strapi_transfer_token_permissions_token_links 
   TABLE DATA           �   COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
    public          postgres    false    255   Wb      �          0    16487    strapi_transfer_tokens 
   TABLE DATA           �   COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    233   tb      �          0    16425    strapi_webhooks 
   TABLE DATA           R   COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
    public          postgres    false    221   �b      �          0    16548    up_permissions 
   TABLE DATA           j   COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    241   �b      �          0    16675    up_permissions_role_links 
   TABLE DATA           a   COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
    public          postgres    false    263   Le      �          0    16557    up_roles 
   TABLE DATA           u   COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    243   f      �          0    16568    up_users 
   TABLE DATA           j  COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id, lastname, phone, education, region, type_of_education, firstname, profile_image, user_id, user_role, course_id, resume, vr_enable, access_expiration_date, vr_config_file) FROM stdin;
    public          postgres    false    245   �f      �          0    16687    up_users_role_links 
   TABLE DATA           O   COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
    public          postgres    false    265   0r      �          0    16533    upload_folders 
   TABLE DATA           w   COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
    public          postgres    false    239   �r      �          0    16663    upload_folders_parent_links 
   TABLE DATA           a   COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
    public          postgres    false    261   �r                 0    0    admin_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.admin_permissions_id_seq', 115, true);
          public          postgres    false    222                       0    0 #   admin_permissions_role_links_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 115, true);
          public          postgres    false    248                       0    0    admin_roles_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);
          public          postgres    false    226                       0    0    admin_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);
          public          postgres    false    224                       0    0    admin_users_roles_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);
          public          postgres    false    250                       0    0    certificates_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.certificates_id_seq', 6, false);
          public          postgres    false    266                       0    0    certificates_user_links_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.certificates_user_links_id_seq', 8, true);
          public          postgres    false    268                       0    0 &   components_licencje_vr_druk_3ds_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.components_licencje_vr_druk_3ds_id_seq', 2, false);
          public          postgres    false    272                       0    0 5   components_licencje_vr_przygotowywanie_potraws_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.components_licencje_vr_przygotowywanie_potraws_id_seq', 2, false);
          public          postgres    false    274                        0    0 '   components_licencje_vr_stolarkas_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.components_licencje_vr_stolarkas_id_seq', 2, false);
          public          postgres    false    276            !           0    0    files_folder_links_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);
          public          postgres    false    258            "           0    0    files_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.files_id_seq', 1, false);
          public          postgres    false    236            #           0    0    files_related_morphs_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 1, false);
          public          postgres    false    256            $           0    0    i18n_locale_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);
          public          postgres    false    246            %           0    0    licences_components_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.licences_components_id_seq', 3, true);
          public          postgres    false    280            &           0    0    licences_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.licences_id_seq', 3, false);
          public          postgres    false    278            '           0    0 -   licences_users_permissions_users_links_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.licences_users_permissions_users_links_id_seq', 2, true);
          public          postgres    false    282            (           0    0    qualifications_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.qualifications_id_seq', 5, false);
          public          postgres    false    270            )           0    0 #   strapi_api_token_permissions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);
          public          postgres    false    230            *           0    0 /   strapi_api_token_permissions_token_links_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    252            +           0    0    strapi_api_tokens_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);
          public          postgres    false    228            ,           0    0 !   strapi_core_store_settings_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 29, true);
          public          postgres    false    218            -           0    0    strapi_database_schema_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 14, true);
          public          postgres    false    216            .           0    0    strapi_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);
          public          postgres    false    214            /           0    0 (   strapi_transfer_token_permissions_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);
          public          postgres    false    234            0           0    0 4   strapi_transfer_token_permissions_token_links_id_seq    SEQUENCE SET     c   SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);
          public          postgres    false    254            1           0    0    strapi_transfer_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);
          public          postgres    false    232            2           0    0    strapi_webhooks_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);
          public          postgres    false    220            3           0    0    up_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.up_permissions_id_seq', 98, false);
          public          postgres    false    240            4           0    0     up_permissions_role_links_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 209, true);
          public          postgres    false    262            5           0    0    up_roles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.up_roles_id_seq', 3, false);
          public          postgres    false    242            6           0    0    up_users_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.up_users_id_seq', 172, false);
          public          postgres    false    244            7           0    0    up_users_role_links_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 176, true);
          public          postgres    false    264            8           0    0    upload_folders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);
          public          postgres    false    238            9           0    0 "   upload_folders_parent_links_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);
          public          postgres    false    260            <           2606    16441 (   admin_permissions admin_permissions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_pkey;
       public            postgres    false    223            ~           2606    16595 >   admin_permissions_role_links admin_permissions_role_links_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_pkey;
       public            postgres    false    249            �           2606    16599 @   admin_permissions_role_links admin_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_unique;
       public            postgres    false    249    249            D           2606    16463    admin_roles admin_roles_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_pkey;
       public            postgres    false    227            @           2606    16452    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public            postgres    false    225            �           2606    16607 4   admin_users_roles_links admin_users_roles_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_pkey;
       public            postgres    false    251            �           2606    16611 6   admin_users_roles_links admin_users_roles_links_unique 
   CONSTRAINT     }   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_unique;
       public            postgres    false    251    251            �           2606    16946 '   certificates certificates_cer_id_unique 
   CONSTRAINT     d   ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_cer_id_unique UNIQUE (cer_id);
 Q   ALTER TABLE ONLY public.certificates DROP CONSTRAINT certificates_cer_id_unique;
       public            postgres    false    267            �           2606    16944    certificates certificates_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.certificates DROP CONSTRAINT certificates_pkey;
       public            postgres    false    267            �           2606    16967 4   certificates_user_links certificates_user_links_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.certificates_user_links
    ADD CONSTRAINT certificates_user_links_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.certificates_user_links DROP CONSTRAINT certificates_user_links_pkey;
       public            postgres    false    269            �           2606    16971 6   certificates_user_links certificates_user_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.certificates_user_links
    ADD CONSTRAINT certificates_user_links_unique UNIQUE (certificate_id, user_id);
 `   ALTER TABLE ONLY public.certificates_user_links DROP CONSTRAINT certificates_user_links_unique;
       public            postgres    false    269    269            �           2606    17014 D   components_licencje_vr_druk_3ds components_licencje_vr_druk_3ds_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_licencje_vr_druk_3ds
    ADD CONSTRAINT components_licencje_vr_druk_3ds_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY public.components_licencje_vr_druk_3ds DROP CONSTRAINT components_licencje_vr_druk_3ds_pkey;
       public            postgres    false    273            �           2606    17023 b   components_licencje_vr_przygotowywanie_potraws components_licencje_vr_przygotowywanie_potraws_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_licencje_vr_przygotowywanie_potraws
    ADD CONSTRAINT components_licencje_vr_przygotowywanie_potraws_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.components_licencje_vr_przygotowywanie_potraws DROP CONSTRAINT components_licencje_vr_przygotowywanie_potraws_pkey;
       public            postgres    false    275            �           2606    17034 F   components_licencje_vr_stolarkas components_licencje_vr_stolarkas_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.components_licencje_vr_stolarkas
    ADD CONSTRAINT components_licencje_vr_stolarkas_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY public.components_licencje_vr_stolarkas DROP CONSTRAINT components_licencje_vr_stolarkas_pkey;
       public            postgres    false    277            �           2606    16656 *   files_folder_links files_folder_links_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_pkey;
       public            postgres    false    259            �           2606    16660 ,   files_folder_links files_folder_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_unique;
       public            postgres    false    259    259            X           2606    16523    files files_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.files DROP CONSTRAINT files_pkey;
       public            postgres    false    237            �           2606    16646 .   files_related_morphs files_related_morphs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_pkey;
       public            postgres    false    257            x           2606    16586    i18n_locale i18n_locale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_pkey;
       public            postgres    false    247            �           2606    17066 ,   licences_components licences_components_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.licences_components
    ADD CONSTRAINT licences_components_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.licences_components DROP CONSTRAINT licences_components_pkey;
       public            postgres    false    281            �           2606    17055 '   licences licences_licence_number_unique 
   CONSTRAINT     l   ALTER TABLE ONLY public.licences
    ADD CONSTRAINT licences_licence_number_unique UNIQUE (licence_number);
 Q   ALTER TABLE ONLY public.licences DROP CONSTRAINT licences_licence_number_unique;
       public            postgres    false    279            �           2606    17053    licences licences_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.licences
    ADD CONSTRAINT licences_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.licences DROP CONSTRAINT licences_pkey;
       public            postgres    false    279            �           2606    17071 #   licences_components licences_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.licences_components
    ADD CONSTRAINT licences_unique UNIQUE (entity_id, component_id, field, component_type);
 M   ALTER TABLE ONLY public.licences_components DROP CONSTRAINT licences_unique;
       public            postgres    false    281    281    281    281            �           2606    17078 R   licences_users_permissions_users_links licences_users_permissions_users_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.licences_users_permissions_users_links
    ADD CONSTRAINT licences_users_permissions_users_links_pkey PRIMARY KEY (id);
 |   ALTER TABLE ONLY public.licences_users_permissions_users_links DROP CONSTRAINT licences_users_permissions_users_links_pkey;
       public            postgres    false    283            �           2606    17082 T   licences_users_permissions_users_links licences_users_permissions_users_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.licences_users_permissions_users_links
    ADD CONSTRAINT licences_users_permissions_users_links_unique UNIQUE (licence_id, user_id);
 ~   ALTER TABLE ONLY public.licences_users_permissions_users_links DROP CONSTRAINT licences_users_permissions_users_links_unique;
       public            postgres    false    283    283            �           2606    16993 "   qualifications qualifications_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.qualifications DROP CONSTRAINT qualifications_pkey;
       public            postgres    false    271            L           2606    16483 >   strapi_api_token_permissions strapi_api_token_permissions_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_pkey;
       public            postgres    false    231            �           2606    16620 V   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_pkey;
       public            postgres    false    253            �           2606    16624 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_unique;
       public            postgres    false    253    253            H           2606    16474 (   strapi_api_tokens strapi_api_tokens_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_pkey;
       public            postgres    false    229            7           2606    16423 :   strapi_core_store_settings strapi_core_store_settings_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.strapi_core_store_settings DROP CONSTRAINT strapi_core_store_settings_pkey;
       public            postgres    false    219            5           2606    16414 2   strapi_database_schema strapi_database_schema_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_database_schema DROP CONSTRAINT strapi_database_schema_pkey;
       public            postgres    false    217            3           2606    16405 (   strapi_migrations strapi_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.strapi_migrations DROP CONSTRAINT strapi_migrations_pkey;
       public            postgres    false    215            T           2606    16503 H   strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_pkey;
       public            postgres    false    235            �           2606    16632 `   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_pkey;
       public            postgres    false    255            �           2606    16636 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_unique;
       public            postgres    false    255    255            P           2606    16494 2   strapi_transfer_tokens strapi_transfer_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_pkey;
       public            postgres    false    233            9           2606    16432 $   strapi_webhooks strapi_webhooks_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.strapi_webhooks DROP CONSTRAINT strapi_webhooks_pkey;
       public            postgres    false    221            j           2606    16553 "   up_permissions up_permissions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_pkey;
       public            postgres    false    241            �           2606    16680 8   up_permissions_role_links up_permissions_role_links_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_pkey;
       public            postgres    false    263            �           2606    16684 :   up_permissions_role_links up_permissions_role_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_unique;
       public            postgres    false    263    263            n           2606    16564    up_roles up_roles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_pkey;
       public            postgres    false    243            r           2606    16575    up_users up_users_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_pkey;
       public            postgres    false    245            �           2606    16692 ,   up_users_role_links up_users_role_links_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_pkey;
       public            postgres    false    265            �           2606    16696 .   up_users_role_links up_users_role_links_unique 
   CONSTRAINT     u   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_unique;
       public            postgres    false    265    265            u           2606    16931     up_users up_users_user_id_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_user_id_unique UNIQUE (user_id);
 J   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_user_id_unique;
       public            postgres    false    245            �           2606    16668 <   upload_folders_parent_links upload_folders_parent_links_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_pkey;
       public            postgres    false    261            �           2606    16672 >   upload_folders_parent_links upload_folders_parent_links_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_unique;
       public            postgres    false    261    261            b           2606    16542 +   upload_folders upload_folders_path_id_index 
   CONSTRAINT     i   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);
 U   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_id_index;
       public            postgres    false    239            d           2606    16544 (   upload_folders upload_folders_path_index 
   CONSTRAINT     c   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);
 R   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_path_index;
       public            postgres    false    239            f           2606    16540 "   upload_folders upload_folders_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_pkey;
       public            postgres    false    239            :           1259    16442 "   admin_permissions_created_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);
 6   DROP INDEX public.admin_permissions_created_by_id_fk;
       public            postgres    false    223            z           1259    16596    admin_permissions_role_links_fk    INDEX     q   CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);
 3   DROP INDEX public.admin_permissions_role_links_fk;
       public            postgres    false    249            {           1259    16597 #   admin_permissions_role_links_inv_fk    INDEX     o   CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);
 7   DROP INDEX public.admin_permissions_role_links_inv_fk;
       public            postgres    false    249            |           1259    16600 )   admin_permissions_role_links_order_inv_fk    INDEX     ~   CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);
 =   DROP INDEX public.admin_permissions_role_links_order_inv_fk;
       public            postgres    false    249            =           1259    16443 "   admin_permissions_updated_by_id_fk    INDEX     i   CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);
 6   DROP INDEX public.admin_permissions_updated_by_id_fk;
       public            postgres    false    223            B           1259    16464    admin_roles_created_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);
 0   DROP INDEX public.admin_roles_created_by_id_fk;
       public            postgres    false    227            E           1259    16465    admin_roles_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);
 0   DROP INDEX public.admin_roles_updated_by_id_fk;
       public            postgres    false    227            >           1259    16453    admin_users_created_by_id_fk    INDEX     ]   CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);
 0   DROP INDEX public.admin_users_created_by_id_fk;
       public            postgres    false    225            �           1259    16608    admin_users_roles_links_fk    INDEX     a   CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);
 .   DROP INDEX public.admin_users_roles_links_fk;
       public            postgres    false    251            �           1259    16609    admin_users_roles_links_inv_fk    INDEX     e   CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);
 2   DROP INDEX public.admin_users_roles_links_inv_fk;
       public            postgres    false    251            �           1259    16612     admin_users_roles_links_order_fk    INDEX     j   CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);
 4   DROP INDEX public.admin_users_roles_links_order_fk;
       public            postgres    false    251            �           1259    16613 $   admin_users_roles_links_order_inv_fk    INDEX     n   CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);
 8   DROP INDEX public.admin_users_roles_links_order_inv_fk;
       public            postgres    false    251            A           1259    16454    admin_users_updated_by_id_fk    INDEX     ]   CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);
 0   DROP INDEX public.admin_users_updated_by_id_fk;
       public            postgres    false    225            �           1259    16947    certificates_created_by_id_fk    INDEX     _   CREATE INDEX certificates_created_by_id_fk ON public.certificates USING btree (created_by_id);
 1   DROP INDEX public.certificates_created_by_id_fk;
       public            postgres    false    267            �           1259    16948    certificates_updated_by_id_fk    INDEX     _   CREATE INDEX certificates_updated_by_id_fk ON public.certificates USING btree (updated_by_id);
 1   DROP INDEX public.certificates_updated_by_id_fk;
       public            postgres    false    267            �           1259    16968    certificates_user_links_fk    INDEX     h   CREATE INDEX certificates_user_links_fk ON public.certificates_user_links USING btree (certificate_id);
 .   DROP INDEX public.certificates_user_links_fk;
       public            postgres    false    269            �           1259    16969    certificates_user_links_inv_fk    INDEX     e   CREATE INDEX certificates_user_links_inv_fk ON public.certificates_user_links USING btree (user_id);
 2   DROP INDEX public.certificates_user_links_inv_fk;
       public            postgres    false    269            �           1259    16972 $   certificates_user_links_order_inv_fk    INDEX     u   CREATE INDEX certificates_user_links_order_inv_fk ON public.certificates_user_links USING btree (certificate_order);
 8   DROP INDEX public.certificates_user_links_order_inv_fk;
       public            postgres    false    269            V           1259    16530    files_created_by_id_fk    INDEX     Q   CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);
 *   DROP INDEX public.files_created_by_id_fk;
       public            postgres    false    237            �           1259    16657    files_folder_links_fk    INDEX     W   CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);
 )   DROP INDEX public.files_folder_links_fk;
       public            postgres    false    259            �           1259    16658    files_folder_links_inv_fk    INDEX     ]   CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);
 -   DROP INDEX public.files_folder_links_inv_fk;
       public            postgres    false    259            �           1259    16661    files_folder_links_order_inv_fk    INDEX     d   CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);
 3   DROP INDEX public.files_folder_links_order_inv_fk;
       public            postgres    false    259            �           1259    16647    files_related_morphs_fk    INDEX     [   CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);
 +   DROP INDEX public.files_related_morphs_fk;
       public            postgres    false    257            �           1259    16649 $   files_related_morphs_id_column_index    INDEX     k   CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);
 8   DROP INDEX public.files_related_morphs_id_column_index;
       public            postgres    false    257            �           1259    16648     files_related_morphs_order_index    INDEX     d   CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");
 4   DROP INDEX public.files_related_morphs_order_index;
       public            postgres    false    257            Y           1259    16531    files_updated_by_id_fk    INDEX     Q   CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);
 *   DROP INDEX public.files_updated_by_id_fk;
       public            postgres    false    237            v           1259    16587    i18n_locale_created_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);
 0   DROP INDEX public.i18n_locale_created_by_id_fk;
       public            postgres    false    247            y           1259    16588    i18n_locale_updated_by_id_fk    INDEX     ]   CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);
 0   DROP INDEX public.i18n_locale_updated_by_id_fk;
       public            postgres    false    247            �           1259    17068    licences_component_type_index    INDEX     g   CREATE INDEX licences_component_type_index ON public.licences_components USING btree (component_type);
 1   DROP INDEX public.licences_component_type_index;
       public            postgres    false    281            �           1259    17056    licences_created_by_id_fk    INDEX     W   CREATE INDEX licences_created_by_id_fk ON public.licences USING btree (created_by_id);
 -   DROP INDEX public.licences_created_by_id_fk;
       public            postgres    false    279            �           1259    17069    licences_entity_fk    INDEX     W   CREATE INDEX licences_entity_fk ON public.licences_components USING btree (entity_id);
 &   DROP INDEX public.licences_entity_fk;
       public            postgres    false    281            �           1259    17067    licences_field_index    INDEX     U   CREATE INDEX licences_field_index ON public.licences_components USING btree (field);
 (   DROP INDEX public.licences_field_index;
       public            postgres    false    281            �           1259    17057    licences_updated_by_id_fk    INDEX     W   CREATE INDEX licences_updated_by_id_fk ON public.licences USING btree (updated_by_id);
 -   DROP INDEX public.licences_updated_by_id_fk;
       public            postgres    false    279            �           1259    17079 )   licences_users_permissions_users_links_fk    INDEX     �   CREATE INDEX licences_users_permissions_users_links_fk ON public.licences_users_permissions_users_links USING btree (licence_id);
 =   DROP INDEX public.licences_users_permissions_users_links_fk;
       public            postgres    false    283            �           1259    17080 -   licences_users_permissions_users_links_inv_fk    INDEX     �   CREATE INDEX licences_users_permissions_users_links_inv_fk ON public.licences_users_permissions_users_links USING btree (user_id);
 A   DROP INDEX public.licences_users_permissions_users_links_inv_fk;
       public            postgres    false    283            �           1259    17083 /   licences_users_permissions_users_links_order_fk    INDEX     �   CREATE INDEX licences_users_permissions_users_links_order_fk ON public.licences_users_permissions_users_links USING btree (user_order);
 C   DROP INDEX public.licences_users_permissions_users_links_order_fk;
       public            postgres    false    283            �           1259    17084 3   licences_users_permissions_users_links_order_inv_fk    INDEX     �   CREATE INDEX licences_users_permissions_users_links_order_inv_fk ON public.licences_users_permissions_users_links USING btree (licence_order);
 G   DROP INDEX public.licences_users_permissions_users_links_order_inv_fk;
       public            postgres    false    283            �           1259    16994    qualifications_created_by_id_fk    INDEX     c   CREATE INDEX qualifications_created_by_id_fk ON public.qualifications USING btree (created_by_id);
 3   DROP INDEX public.qualifications_created_by_id_fk;
       public            postgres    false    271            �           1259    16995    qualifications_updated_by_id_fk    INDEX     c   CREATE INDEX qualifications_updated_by_id_fk ON public.qualifications USING btree (updated_by_id);
 3   DROP INDEX public.qualifications_updated_by_id_fk;
       public            postgres    false    271            J           1259    16484 -   strapi_api_token_permissions_created_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_created_by_id_fk;
       public            postgres    false    231            �           1259    16621 +   strapi_api_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);
 ?   DROP INDEX public.strapi_api_token_permissions_token_links_fk;
       public            postgres    false    253            �           1259    16622 /   strapi_api_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);
 C   DROP INDEX public.strapi_api_token_permissions_token_links_inv_fk;
       public            postgres    false    253            �           1259    16625 5   strapi_api_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);
 I   DROP INDEX public.strapi_api_token_permissions_token_links_order_inv_fk;
       public            postgres    false    253            M           1259    16485 -   strapi_api_token_permissions_updated_by_id_fk    INDEX        CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);
 A   DROP INDEX public.strapi_api_token_permissions_updated_by_id_fk;
       public            postgres    false    231            F           1259    16475 "   strapi_api_tokens_created_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);
 6   DROP INDEX public.strapi_api_tokens_created_by_id_fk;
       public            postgres    false    229            I           1259    16476 "   strapi_api_tokens_updated_by_id_fk    INDEX     i   CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);
 6   DROP INDEX public.strapi_api_tokens_updated_by_id_fk;
       public            postgres    false    229            R           1259    16504 2   strapi_transfer_token_permissions_created_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_created_by_id_fk;
       public            postgres    false    235            �           1259    16633 0   strapi_transfer_token_permissions_token_links_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);
 D   DROP INDEX public.strapi_transfer_token_permissions_token_links_fk;
       public            postgres    false    255            �           1259    16634 4   strapi_transfer_token_permissions_token_links_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);
 H   DROP INDEX public.strapi_transfer_token_permissions_token_links_inv_fk;
       public            postgres    false    255            �           1259    16637 :   strapi_transfer_token_permissions_token_links_order_inv_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);
 N   DROP INDEX public.strapi_transfer_token_permissions_token_links_order_inv_fk;
       public            postgres    false    255            U           1259    16505 2   strapi_transfer_token_permissions_updated_by_id_fk    INDEX     �   CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);
 F   DROP INDEX public.strapi_transfer_token_permissions_updated_by_id_fk;
       public            postgres    false    235            N           1259    16495 '   strapi_transfer_tokens_created_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_created_by_id_fk;
       public            postgres    false    233            Q           1259    16496 '   strapi_transfer_tokens_updated_by_id_fk    INDEX     s   CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);
 ;   DROP INDEX public.strapi_transfer_tokens_updated_by_id_fk;
       public            postgres    false    233            h           1259    16554    up_permissions_created_by_id_fk    INDEX     c   CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);
 3   DROP INDEX public.up_permissions_created_by_id_fk;
       public            postgres    false    241            �           1259    16681    up_permissions_role_links_fk    INDEX     k   CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);
 0   DROP INDEX public.up_permissions_role_links_fk;
       public            postgres    false    263            �           1259    16682     up_permissions_role_links_inv_fk    INDEX     i   CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);
 4   DROP INDEX public.up_permissions_role_links_inv_fk;
       public            postgres    false    263            �           1259    16685 &   up_permissions_role_links_order_inv_fk    INDEX     x   CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);
 :   DROP INDEX public.up_permissions_role_links_order_inv_fk;
       public            postgres    false    263            k           1259    16555    up_permissions_updated_by_id_fk    INDEX     c   CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);
 3   DROP INDEX public.up_permissions_updated_by_id_fk;
       public            postgres    false    241            l           1259    16565    up_roles_created_by_id_fk    INDEX     W   CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);
 -   DROP INDEX public.up_roles_created_by_id_fk;
       public            postgres    false    243            o           1259    16566    up_roles_updated_by_id_fk    INDEX     W   CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);
 -   DROP INDEX public.up_roles_updated_by_id_fk;
       public            postgres    false    243            p           1259    16576    up_users_created_by_id_fk    INDEX     W   CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);
 -   DROP INDEX public.up_users_created_by_id_fk;
       public            postgres    false    245            �           1259    16693    up_users_role_links_fk    INDEX     Y   CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);
 *   DROP INDEX public.up_users_role_links_fk;
       public            postgres    false    265            �           1259    16694    up_users_role_links_inv_fk    INDEX     ]   CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);
 .   DROP INDEX public.up_users_role_links_inv_fk;
       public            postgres    false    265            �           1259    16697     up_users_role_links_order_inv_fk    INDEX     f   CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);
 4   DROP INDEX public.up_users_role_links_order_inv_fk;
       public            postgres    false    265            s           1259    16577    up_users_updated_by_id_fk    INDEX     W   CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);
 -   DROP INDEX public.up_users_updated_by_id_fk;
       public            postgres    false    245            Z           1259    16525    upload_files_created_at_index    INDEX     U   CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);
 1   DROP INDEX public.upload_files_created_at_index;
       public            postgres    false    237            [           1259    16529    upload_files_ext_index    INDEX     G   CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);
 *   DROP INDEX public.upload_files_ext_index;
       public            postgres    false    237            \           1259    16524    upload_files_folder_path_index    INDEX     W   CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);
 2   DROP INDEX public.upload_files_folder_path_index;
       public            postgres    false    237            ]           1259    16527    upload_files_name_index    INDEX     I   CREATE INDEX upload_files_name_index ON public.files USING btree (name);
 +   DROP INDEX public.upload_files_name_index;
       public            postgres    false    237            ^           1259    16528    upload_files_size_index    INDEX     I   CREATE INDEX upload_files_size_index ON public.files USING btree (size);
 +   DROP INDEX public.upload_files_size_index;
       public            postgres    false    237            _           1259    16526    upload_files_updated_at_index    INDEX     U   CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);
 1   DROP INDEX public.upload_files_updated_at_index;
       public            postgres    false    237            `           1259    16545    upload_folders_created_by_id_fk    INDEX     c   CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);
 3   DROP INDEX public.upload_folders_created_by_id_fk;
       public            postgres    false    239            �           1259    16669    upload_folders_parent_links_fk    INDEX     k   CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);
 2   DROP INDEX public.upload_folders_parent_links_fk;
       public            postgres    false    261            �           1259    16670 "   upload_folders_parent_links_inv_fk    INDEX     s   CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);
 6   DROP INDEX public.upload_folders_parent_links_inv_fk;
       public            postgres    false    261            �           1259    16673 (   upload_folders_parent_links_order_inv_fk    INDEX     x   CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);
 <   DROP INDEX public.upload_folders_parent_links_order_inv_fk;
       public            postgres    false    261            g           1259    16546    upload_folders_updated_by_id_fk    INDEX     c   CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);
 3   DROP INDEX public.upload_folders_updated_by_id_fk;
       public            postgres    false    239            �           2606    16698 4   admin_permissions admin_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_created_by_id_fk;
       public          postgres    false    223    3392    225            �           2606    16838 <   admin_permissions_role_links admin_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_fk;
       public          postgres    false    3388    249    223            �           2606    16843 @   admin_permissions_role_links admin_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.admin_permissions_role_links DROP CONSTRAINT admin_permissions_role_links_inv_fk;
       public          postgres    false    3396    227    249            �           2606    16703 4   admin_permissions admin_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.admin_permissions DROP CONSTRAINT admin_permissions_updated_by_id_fk;
       public          postgres    false    225    223    3392            �           2606    16718 (   admin_roles admin_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_created_by_id_fk;
       public          postgres    false    225    3392    227            �           2606    16723 (   admin_roles admin_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_roles DROP CONSTRAINT admin_roles_updated_by_id_fk;
       public          postgres    false    3392    227    225            �           2606    16708 (   admin_users admin_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_created_by_id_fk;
       public          postgres    false    225    225    3392                        2606    16848 2   admin_users_roles_links admin_users_roles_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_fk;
       public          postgres    false    225    3392    251                       2606    16853 6   admin_users_roles_links admin_users_roles_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.admin_users_roles_links DROP CONSTRAINT admin_users_roles_links_inv_fk;
       public          postgres    false    251    227    3396            �           2606    16713 (   admin_users admin_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_updated_by_id_fk;
       public          postgres    false    3392    225    225                       2606    16949 *   certificates certificates_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.certificates DROP CONSTRAINT certificates_created_by_id_fk;
       public          postgres    false    3392    267    225                       2606    16954 *   certificates certificates_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificates
    ADD CONSTRAINT certificates_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 T   ALTER TABLE ONLY public.certificates DROP CONSTRAINT certificates_updated_by_id_fk;
       public          postgres    false    3392    267    225                       2606    16973 2   certificates_user_links certificates_user_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificates_user_links
    ADD CONSTRAINT certificates_user_links_fk FOREIGN KEY (certificate_id) REFERENCES public.certificates(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.certificates_user_links DROP CONSTRAINT certificates_user_links_fk;
       public          postgres    false    269    3516    267                       2606    16978 6   certificates_user_links certificates_user_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.certificates_user_links
    ADD CONSTRAINT certificates_user_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.certificates_user_links DROP CONSTRAINT certificates_user_links_inv_fk;
       public          postgres    false    3442    269    245            �           2606    16778    files files_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_created_by_id_fk;
       public          postgres    false    225    237    3392                       2606    16883 (   files_folder_links files_folder_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_fk;
       public          postgres    false    237    3416    259                       2606    16888 ,   files_folder_links files_folder_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_folder_links DROP CONSTRAINT files_folder_links_inv_fk;
       public          postgres    false    239    3430    259                       2606    16878 ,   files_related_morphs files_related_morphs_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.files_related_morphs DROP CONSTRAINT files_related_morphs_fk;
       public          postgres    false    3416    237    257            �           2606    16783    files files_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 F   ALTER TABLE ONLY public.files DROP CONSTRAINT files_updated_by_id_fk;
       public          postgres    false    3392    237    225            �           2606    16828 (   i18n_locale i18n_locale_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_created_by_id_fk;
       public          postgres    false    3392    247    225            �           2606    16833 (   i18n_locale i18n_locale_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.i18n_locale DROP CONSTRAINT i18n_locale_updated_by_id_fk;
       public          postgres    false    225    3392    247                       2606    17085 "   licences licences_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.licences
    ADD CONSTRAINT licences_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.licences DROP CONSTRAINT licences_created_by_id_fk;
       public          postgres    false    225    279    3392                       2606    17095 &   licences_components licences_entity_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.licences_components
    ADD CONSTRAINT licences_entity_fk FOREIGN KEY (entity_id) REFERENCES public.licences(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.licences_components DROP CONSTRAINT licences_entity_fk;
       public          postgres    false    281    279    3539                       2606    17090 "   licences licences_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.licences
    ADD CONSTRAINT licences_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.licences DROP CONSTRAINT licences_updated_by_id_fk;
       public          postgres    false    279    3392    225                       2606    17100 P   licences_users_permissions_users_links licences_users_permissions_users_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.licences_users_permissions_users_links
    ADD CONSTRAINT licences_users_permissions_users_links_fk FOREIGN KEY (licence_id) REFERENCES public.licences(id) ON DELETE CASCADE;
 z   ALTER TABLE ONLY public.licences_users_permissions_users_links DROP CONSTRAINT licences_users_permissions_users_links_fk;
       public          postgres    false    279    3539    283                       2606    17105 T   licences_users_permissions_users_links licences_users_permissions_users_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.licences_users_permissions_users_links
    ADD CONSTRAINT licences_users_permissions_users_links_inv_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.licences_users_permissions_users_links DROP CONSTRAINT licences_users_permissions_users_links_inv_fk;
       public          postgres    false    245    3442    283                       2606    16996 .   qualifications qualifications_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.qualifications DROP CONSTRAINT qualifications_created_by_id_fk;
       public          postgres    false    271    3392    225                       2606    17001 .   qualifications qualifications_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.qualifications
    ADD CONSTRAINT qualifications_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.qualifications DROP CONSTRAINT qualifications_updated_by_id_fk;
       public          postgres    false    3392    271    225            �           2606    16738 J   strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_created_by_id_fk;
       public          postgres    false    3392    225    231                       2606    16858 T   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;
 ~   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_fk;
       public          postgres    false    231    253    3404                       2606    16863 X   strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_api_token_permissions_token_links DROP CONSTRAINT strapi_api_token_permissions_token_links_inv_fk;
       public          postgres    false    229    253    3400            �           2606    16743 J   strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 t   ALTER TABLE ONLY public.strapi_api_token_permissions DROP CONSTRAINT strapi_api_token_permissions_updated_by_id_fk;
       public          postgres    false    231    3392    225            �           2606    16728 4   strapi_api_tokens strapi_api_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_created_by_id_fk;
       public          postgres    false    225    229    3392            �           2606    16733 4   strapi_api_tokens strapi_api_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ^   ALTER TABLE ONLY public.strapi_api_tokens DROP CONSTRAINT strapi_api_tokens_updated_by_id_fk;
       public          postgres    false    225    3392    229            �           2606    16758 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk;
       public          postgres    false    225    3392    235                       2606    16868 ^   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk    FK CONSTRAINT        ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_fk;
       public          postgres    false    255    235    3412                       2606    16873 b   strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;
 �   ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links DROP CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk;
       public          postgres    false    255    3408    233            �           2606    16763 T   strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 ~   ALTER TABLE ONLY public.strapi_transfer_token_permissions DROP CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk;
       public          postgres    false    3392    235    225            �           2606    16748 >   strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_created_by_id_fk;
       public          postgres    false    225    3392    233            �           2606    16753 >   strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 h   ALTER TABLE ONLY public.strapi_transfer_tokens DROP CONSTRAINT strapi_transfer_tokens_updated_by_id_fk;
       public          postgres    false    225    233    3392            �           2606    16798 .   up_permissions up_permissions_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_created_by_id_fk;
       public          postgres    false    225    3392    241                       2606    16903 6   up_permissions_role_links up_permissions_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_fk;
       public          postgres    false    263    241    3434                       2606    16908 :   up_permissions_role_links up_permissions_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.up_permissions_role_links DROP CONSTRAINT up_permissions_role_links_inv_fk;
       public          postgres    false    243    3438    263            �           2606    16803 .   up_permissions up_permissions_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.up_permissions DROP CONSTRAINT up_permissions_updated_by_id_fk;
       public          postgres    false    3392    225    241            �           2606    16808 "   up_roles up_roles_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_created_by_id_fk;
       public          postgres    false    243    3392    225            �           2606    16813 "   up_roles up_roles_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_roles DROP CONSTRAINT up_roles_updated_by_id_fk;
       public          postgres    false    3392    243    225            �           2606    16818 "   up_users up_users_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_created_by_id_fk;
       public          postgres    false    245    225    3392                       2606    16913 *   up_users_role_links up_users_role_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_fk;
       public          postgres    false    265    245    3442                       2606    16918 .   up_users_role_links up_users_role_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.up_users_role_links DROP CONSTRAINT up_users_role_links_inv_fk;
       public          postgres    false    243    3438    265            �           2606    16823 "   up_users up_users_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 L   ALTER TABLE ONLY public.up_users DROP CONSTRAINT up_users_updated_by_id_fk;
       public          postgres    false    3392    225    245            �           2606    16788 .   upload_folders upload_folders_created_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_created_by_id_fk;
       public          postgres    false    239    225    3392            	           2606    16893 :   upload_folders_parent_links upload_folders_parent_links_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_fk;
       public          postgres    false    239    261    3430            
           2606    16898 >   upload_folders_parent_links upload_folders_parent_links_inv_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;
 h   ALTER TABLE ONLY public.upload_folders_parent_links DROP CONSTRAINT upload_folders_parent_links_inv_fk;
       public          postgres    false    261    3430    239            �           2606    16793 .   upload_folders upload_folders_updated_by_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;
 X   ALTER TABLE ONLY public.upload_folders DROP CONSTRAINT upload_folders_updated_by_id_fk;
       public          postgres    false    225    239    3392            �   �  x��Z�n�6}N�"�s-�Ƌ����ۢ�[w(2�h#K*%%���I�G�7�^�<Y:���p����E]twy��uuQ�{��t���ſ�]���"��h�'[�^h��y(@\|���K2%ͪ�6��8�>��i���@O��iӰ��2�{�V�#������1���﫧Rޯ� ���T���ˇq��^R�&��[y���Q�`W�^�"��h�/�DJ�H7%�/�:����ĕ����& �,M$�ee�=�ezǸ�>�\\�Y���Oƛm��!o��*�d�ە'���( �h��`���f�Yz���$����լ*
��"�/�loW��ˇ�*2�Y��U׮X��F"qe5�Y��mo�������"�����vH��rmE
'v�Z%��[!�J�����ї0З��K��\v8H�(	jzn-S�H�.��q�-S���.�x���*��ޥ%���)�9�L�=Z�>Z茼*���@���Z����.!qe��q.��u!qe�R;ϲ!{����35�s����.�KA��u2�|���%��%��޻m١.�)��B@���0�choW&����1-3�ߞQ�$��L��Y&�� �DZ8��C�^Qei�����Ǻ Pl%wX��;6~#+�Ӣ �od��Vr�� �~��~�\�s�!���͜��툙�ąb~b7�U����	0�3��dF��/r�u�?�u�0�3��`F�;,�!VD�궼��F̘��SV�������SF�e��iU���:�)0�3��^���,���09euX��41��SN�U�'��)9etYQ��;���#9SWi�o���$�XӬQ���aX�]2F{mI\Q����Q`6�f6"���)w���H\Q�V��X��:}xϑ��I#!�yh<7U'��O,k�,(0�P3�pHjd�E�+zS�-O��q��%d*(�؝�C������� �Ѣ���X����Q�P'��d�I�ؾ�I\��C]�v�>/e�sшtn&�|���]�x!A �̠3����htn�⃙9?I}D|��6��3�(ot=�!�wمD��!�+�uwS����;�@\9A֝P����6gž���ޔ�m~���ڑ������|���O4{\G���0�.�ǽg� ���]��0�em��_D|����B��o���8���VI�ӥ��8�{'w�X��!��m�SήU<}6��h�|/ P�����������G�:�X=_��i:��}�f8nȋ�ÎL{�����'�ĵ'��**����i�������u���	������Z�b�.�Í�*�<���m��R��ޯO}�i�)=yC��ܿ隶:��>���T�bz�Qk\1��	���5gu*��]�E��1�}����2yb�V(�Ł�S5q-��M�`�ߩtY�ς�@�G��u�4O�7
��)�w�%G�~����C�d��n�*{.�I]m>z��W�M����rph��3�SW���v�v���5�>�n�����Q�t���A��Ӂu�w��2�>1��������?t���bM���ȷ9 �?�8�?�%�Õ��JS\K�a
�%�Z��}���Y���l��j�Nm�%�Õ<�N�G\�����D�Z��}ѣ�Y��|;�2�g�Y���10b���pN<9�c����>x�����w��      �   �  x���q�0���0=K|j��?G�ޑ1�����j4.���u�X]�O���Aq��s�Pyx�@��g��8�P��[?U�WwU�s�Y��ǡw��oƅ�#�Py	��`*�!�]C��l��u9��2?(T>�AZ��"�����{���v�YHk7���v�9Hk����v�����>���Xe->�EY���f-.+Q�"X���j��(֠�E�e-��P�b��Z<�A[ˏ��i-[��Z^v��e�m-��hkY�A[�f/�Z����r>��|���VGCc�G��Z]Nb�Up
c���kU͛���-�Z�a��r?��z\�����Mk}��/k}�����-��N��s9�����<�|�qk�)�<�FF��yL�{<����v�PC�6��Z:�%-�ԩMi���Զ����ϻ''V��@]��˿mW�N�vp�;�|�;�H�"��      �   �   x�u�1��  k����-ۉOI�i�I�f�1�����r�+�(�Ab:u�8��u�%�bk^Q���A�Ԛ���:��<�H(1P�L"�ݹQ}����X��S۝�������Vի�����Cy�0Wl�d[��ly흐��M
 �<��L��)��]�稝:�t�;
�Ῠ��b��&�M$�/"S�E������S�~�      �   �   x�3�H,O=���_�������Y ��˃8�%'W���꥖r�%���Y''���V��������f�Vx������9%%gz�D��&�附��������4ed`d�k`�k`�`hje`heb�g`l�S��+F��� "�2!      �      x�3�4�@�=... �      �   �  x����j�0�k�)��u�$;�]H��m킳��:Z�ص���$�{��O�
M��6+l��H�$��u�3�5ao]��B[9�V���6_�	�	b0Ɖ��*�`�\��(���ݶs恚M�7$�}��E����E�>1�rӺ�[d�ܛ)�e��͆tyV�]7���|U�|W��Ձ� ���������0E B`ZJ��1���D�!����?�Oؘ��bq\Ј���"6x^/9
8`!�����l��\]fma��͢�ˬ2�cV�ˑ��d1�p�*|(�+�*�V\����>���7��.�����ǵ��L��h� ���x�>���m�6��,mش�s�|�]�_�rs
Ʒ`.�\�Yi���=�X��4�D��������h�q4?2�ܦ_���l��|��j�~'�Q:I���Zp
ϗ�,`xZ��):�/����'m5\�      �      x�3�4�443�4��4���b���� -s]      �   m   x�%ɻ�  ��`��!�� \���p����������l�q�v��=� ��Cs��rt�$|��D��RJ�N)�e��o O������Mi6��h�T�������'#      �   �   x�%�A� @�5���VL\x���IZ�0�8�[�e���'u/���B�h2I�jz �e7R0yآ���/�/T1�y�Z��"��H��83�cO~E{,7�,���#伢�o�M�<L��9=[����1�      �   Z   x�%���  �7L����)�D�E������&�T�:�2�Z�:�	=�Q�pW�H��9`F	�RA{����젵�ʯ�������      �      x������ � �      �      x������ � �      �      x������ � �      �   ;   x�3�t�K��,�P�H���L��4202�5��5�P04�20�22�31�%�D\1z\\\ �.�      �   �   x�m�A
�0E��)r��g2���	�)�B��pe{z���>��',9E7O�xF��ǹ��vY�}Y?$J�U�*��V{�K���*R�yS��v^戯[U�+v��F!F��T,��y���5(      �   l   x�e�A
�0@�uz�
�=��:QIJZ�tNo�����0�N�H���ǆ`��� �X
K��妿+ٷE-Z[Ea�I�a�v���M��3L?8=��]Y��s-�s��.�      �      x�3�4�443�\1z\\\ #5      �   �  x��V�R�6]���`'q wՖE7�� �(���#[�XK�L���1ز��{�Hv������Ȋ�����S4!J�HCg�ndIU��ZgҔT�|r-kN3�Z�2մ7���&�XZ(Vk�=\�Ǯ'd%V����Not�{ ������&��5��"�j�i���!���@t������VP�Vo�`����f��yh��[܀]����ǔ��;, SE��Q��8Lե��2�P�ڰ-m�, �YӲ�Ѥ��ĹfiM��%$pn8�Hb�%�H��ߏ1P�ۯ��ym���FY�0d��_��F�q�P����dR�JY����z�{z�������ͽLjD��Z�c�&��I��m�TurvV 9!�9�NӺ�A��� &/�;�4,�A��l:��e0�$Q���|���~�<�bM�(J��0������X$��0�/'���w2�\+�AY�N��\{���R2u"̔.4�_}���9��}g.q]"gu�J �Ke�ۙ����B���A�P	�ۥ���M�KY��iC���䚳���d��mGG��]�b&�P���'x�JUn+�0�Ur���6Z�z������TԒ-�m��f�B*�������^���w�]�_�����^�Sl�|9':Ӏ�,w�j��] �a��[��9'/\���
%B�^nen����w5{��a�HB�:=y��U��rqͷE��Q�v�ȅDa����H�D��ҥ��ߵ���Z�x�G%!
^�#Cu��R:.���hhJ���b����e@�� ��&�y���<���*�y8;��8���^��	�B0����!���	��~�AN���#�'Fyv��?�Eֻ'^2P��#�6u�Xֵ�ԢЇޠ�i.��w�i�SՊB����ĚK�:B����t��������=퟽�o���(��t�!_,0�!_nQv�sF�
Z���c�`v6�"���#�$>O�3���[M�8�����x.�QϠ�z_����n����D�<.����w�Ͽ�����[�Q�h�cD��O�
�q5��7,s��Z7LџRV5Z����a��m��G`05�=���C
]rA�j|�7�_�v���n�ۻ�ilpH[0�;�-8x��ٳ�A)�B����1(J��d��Q�v��
�f��_�g-zf���� ip�8      �      x������ � �      �      x������ � �      �      x������ � �      �      x��]��Fv�=~���O0���fy�u"��B�VRt��ȃ�����MR�L�%,v��������"y�ԝu9d����\���aU�:�:���ԍ�7򤾈�i��J��"H�T���㋺�8kR�U�ʓV��Γ,�&�q�ޏ�8������DU�������N��~|R5:�,*�'%
�p�>ɱR/�w�����E�?�(!����T��N�YQ}�?-"T���/���TQPT%���1��
����$��Ip�\�CZ�Xl��.H�mDIR�2,✴)~��I�Y�0���˸����[3.�E��4s�;��D�T��f�!4��pQ>���"ie�.J.㨚A*��!�]ԛ��b�;OBA)�E��XU	�(��б��*y$��%}@2(�n��iD&إ	[F�P��}/b��!T�]t+�k�u�χЍvѭ.H5�x͘\��]�h�
�OIBMM����eL��t�i�h*���s*J��M�!5Wkq�s^+��N � �'�-�2?`����N��@A��� �7��t���)� ,��um�U�^W" Xe5� L�kF�9Ӷ�������^�~�Iϩ�{u( ��6��iI�̏����5�HT���n�e9װ*lWSxZ��ps���XEt`*S�#Y-�=l�t������� ;{�����'��/no<т��%*dЬ<4X>���j��[Ү%lnꆐWSl���HwQ5	�5�iC(�w�ܒ���L�@6�l� �d	��,\��r���L�|5�]�,F�g���l��� � N���5.�(�oaf�%�j\�!.�įC�˴!LF���Y����pM]T�X�%Y8G�hIC�l#�10>G��E�}qKx��(H6+���*Qܼ��Pd�����d ɪ��y�p��V��UP���ˑnT�P��VN��6��}Z⺎*�&;�S��~Q����m��!4��;�!*��
\�����)�]C�We�*�C�;R���E�".K�Hj��S� �r �U�Fq�/y��3��M�0�9�t'��Q��ȓi�G#��=$4�gP���L�� )�p�B�@�F����2*��1
�b��� ��8jt5�	�gP��Q�f)Pµ�^1�Wc R���U۔F�c��1���Sړ襦 �l���-�ͭ�ҭm@��s&�g>0ڋ�(�"P7�|��rL�g���0�`	;��fj�ey�=��\�"�>�Тy� �f��js�eKY������,���¦e8C� ;/�ƌ�!̒Q�}�},�5����d�
=S9�կ%v�uOL�i�c7�X)t<�%����
�o_2Ƽ�S�h�_���s�H7%� X�$Ggu,vl	���">�+�Z԰lR+���ߘ��L���:���P�@okLEҀ˚�����[�E�����\䛒6��I"H˲V��.�u+y�O���!�,_�$��B�<����^fOSD��Q�M�2(����"�U����Z@:/��JI��R$�4��\��_q�=0���,N_j��"��zI{⯱�jb=�qQ|X��z8�rp�N=y(�����I���B�U͍���-Ζ"n���Դrl�"?�H�� yD��'�t�V!�}D
�b��W%����o��'#m�Q��=̴�y�Ш��m���F#E�S7�|u/����5.N��+��uF>�a�3u��KY��U䊀��u3��r`uNҁ=^��n��2�2�;�2!���f�mR.*9��_����);���6���2��Q�yuh#�SGYFu�g���涌��?��������?W��}����P�ݡ��W���A_l�4@�9�u���V}��\��|
��M4�����:��M:�e��K6��V]��tR���E��|l�>)��DտbJ��z�js-��t�ܖ�z8�p�I����@������nJ ���fD�����L�p���#y�N��lc�{0��!�	������?@T�1m4&�	��z�
a��/�I ���(Kb��u��M�����d����5u7"��c;hD(V��7���}�GG�1߲Uw=��-��A�z�`��S7���*��B�|������9�� ���xK���Uk�I7��(�@`�Gk����׽����G�F�6ⴘ��G]�s@>�m:J�qM�VK�<f�����c��;�w躎zoMk�7�nV3n�� "g+��3�Qz�Rͺ�Tۮ-�����\D&���N{��Ojn�3<�z��0�0�=����Fs7�#؜�h�8g4�}t���tYU~uFB���ph�pȰH�?�J��?����F��]a���5���A�"y|r����q��D�M��mhY�I)��c���7�v�@+����Q�W���Y}���STb��1 �6�ʼ- � ��G�~j�_W�D��x�o�^�(&�_X�ގ�.^$I�Di���AA$�6"�$��o:d�GPG1�q꺎Y�p���;:>.0�.�4[����_��Qy⌧�p�cJ~���WS�l�]�60Uف�͙���b'�ߥ_�=�xl�9�l��u����]n�zaP���u+e�����U�N"]	���!JC4���r�L�`R�����c����N7)>�ۡ�w>ohF��.t��
��<���3������X�����0[��ӊ�Z�=���M�P�:�,&QQϏn�J�`HF�j{�e�a��LS�D�iD<n����x��Ȫl�Zi����१�x��(��(�=�h�w=�0ݽJ*�g
�x�d\O&��A���9���E,��W����}�e�&�e���<����+KtJ���$�qh�
욛{O�=���ذ����=��u���)�K�7�P�c�t(O� ���Wte���r���"����r~
�C�V��,�	"�=�*��17�;�"������w���?��;��[����޸*v}s�7Q�!*q.ka�k��o+?@�E��7���:S톛��*+򙌮��)�����$>��EgaL |]^=����.�������Q��ا��r��Nwj/SjSf��e�T�H)OQ�J��I������7*H\��&��r��&�Myɡy�$��$P�t��!@�^/��v�C<�<���3�>0�0��B���M�=�C�W�EV ���`��p"4G�����]3���KH���h��E۴�`�~'P����Yy8ï]��Al]�1�Sv���H;����R˹4��� ���^��
0x�Q@T���K�]M,
��9����������ҽ�2 �R��ݸ���^:I�0`��m[!Xs'}Z��=`2��#!��))��>��E����΍����ϵW|z'�Wj�kӅ���cg{����*~*LC}K�Oev��{�;X!��ZkΡ�y���ϙ�]|�nON��s-�/�V�-Ȓ�a�6���c�컚�.����t<n�V�m:��J��|�'ɍ��=�6T�M�|�� ��]���[������v�^���J���n��߇�q۲�S���:xW�?jn�J=�x��T`g{���ɑ�<gS�����h�-����h����}��m�m�I��}ı�f:o��?��i9�&�C�\��3������ۈ��B�Իm��	�������xg��vm��#+���cbp��~Z}���i���5Nc��?�ea���gYTV��%;�D>� 5ʒ4���䷿�s*q^�	��<;ʳEV��I}���w�~����w��^���ȵ�e���/%!ϢyP�A(�ĭ'~75�*}��2���*��V��2�F��oDO\S-J���Rٻ �e���F������C����m��j�lSۊ�3��y��/(bi�t]��{�	�Y=Z��^��?��7Xs�y.jTV� [�i2��0֚�tgN�,�l����+q���u�l/�t�'���/�g>k�Px����<&�d`���S�"�����JM�U�n�h�DaG�%?��{#�ʃ�� �#>%����s}��y�籞�z�y�� �  ���z�{��4a��6�&l8�Fӄ��\dgop�??��}q|�ɛr��|�|*���)SI��''�����'v��6!ڙgu2W���B��D���
V�=�t|�tb����TMG���YQ�ε?-(���v$?DU�� Ď�&��J�$[\&�ƐV%��M�F�%Huv��f�f�4�x�}V���`k���f,@�*��Ch��wQX,~��Vl��^E.�E7cq�T�����������z�=U_C���E�dP�K�edh/*t�[�i0uo{��k[k&�x[�f=�v���誊_�+%Ы�f�]���� �#������漋�%
�w��+
���æ��VQü��҄Dک��l�������w�z����رl�y>�n\��n�>
~�.j��z�nǗ�_�Y9��i)�oe�㡋��(s�i�%�>^��s
��U���1�"��~eTJ�뀆�����j
'�?$0a�Z
6�����
��ӑ���rLR#@�%J2;Eq�C����-r� �|f���"�c�~clM΂p�»/q�̾�E��i�HH*��.>'q!S��`���C��|[꣎(
��(q�e,�nQ�g�Q3+��޸��g]��}�%�zy K�9itX�a���yա���ٲ죇۪�{�f��qU�i�D�
�"M�Wd���<TU5yzT&���Oi���2��y��/��6i�p��mq��M�Z_��t�baI��1��:�,=�e@=�iWH�9F�)�'�"��%��H�*��*h7��>�2�Ɍ�j"���٢E_^_Gw��`�R��ZK�"��[���T��UH1V���Ճd�ѡ�[[a&�}��-�D����#�Km��Q�ݨ��a\XZ�
#n��v@��C�ʺ̿�f\Zwwʟ����c�ݼ��&h��2=U��,V�!�3��"'��L�����U��e��"[(+��Z1�V�1z�(�]��_vT�<Y����$��|<!ih*��*����ω*#uy��0�&��'4�a���YP�0;%YI��d�#�b5
�0y���͗��?���������(K��?�FK���ǂ� �����<#�e�k�N��lD[H��K�"���F��?���&��O��O|�?��~9�y9!���8m������O@v�W��
˺�>��Y�V#C1����;ϊY�+���M�w�Yp�H�sq��i�#�&�g	
pg�I�G�-H�Ѿ¡N��h2��i4�������;�y��#/�.�4D�Ϡ�Dk� ��T����M2�1�i*�3Fq!�HX.>�1e���	d	�\��oFO�|�����-b���*-NIx�Dh��^`��jZ��;����;���wg̖���^��+O�w��}�ս[��ܸu��l��&�7�0�.��e2��^L1�5���h7l��R���rSW%ue5��*�[��[4�C��*��@��[�!�1�F�����y菸��aPP���ᴱb�W�&����mÞZ?�l���o0Ǯ8&��
J����	a{�����D[�F]��p2�S�նE�a�X�X�=�^�^�k��B(�ͭ�|7���v<� �� T�|��VQ$�c#ۉ�YN��"��7�C���w�ĕ�Xj[X���YC羚8Waj�v��>Hn��.h]P3liw��?ʠص>����r��F���n�Y���1M�,�A�O��{��*{.��ySs���C��ܲ���L��.�+�>���6�����{ҍ+y���ǟ6mn϶�K�A	�n�[�m�E�k�{Y��+�}[x/ҮIq�>7�*�75��L��Een:���!+̆���O���O������Sc��X`oLUF��U�v2���b]�������xo#by8t
�ĝy�NǭVno6�q$����>�색�LD�P����u� �.D�;���4�B�0ȼ��4���� �1�.���S5�0�rB����}4�P�H�=���;�w��Ht�
��Drd�e���߾pzzF[\U���6܅I���:H���9&�_:;����^0�����"D3&�͏��A�B��eԵ�fA��-�I�	���V��>�D\3�������$1v�"���83k�m���)��5IцrR�ڎ
N�g���	�����"�E��p��ٙ�G`�3���D^
�6ai�`�"�m5�9Ph���c{C��H�Ns��ͧ���k�F�q�x�b��cd���x���āv&I�.�*ƚ���!�ld������]�>�4�Z�[4��~J̯)�X\�k�1M��d'��^Gk�^�8��U��y��=y�JJѮ��q�/��Y�
��:\��.�7�)U�#�n0Y�>�`�W���8��
�r�3��󝸯-���W�e�6[�iÐ)ܑ���h�)����E�+�M-e�z*���Kۗ{�;F�|Ý��*ry�r�ݕ�a�^��'G\C������8�rϺ�Eڎ�W�Al������S��<��0j�Vh�U����O�t�A�A��T"e`�R	Qyj��"}�S���3�J��,b�R��%fm�J�	,�ӳ�TSv{���^��@��0�Մ�N����j�6���	���	�WЧ}ϙ�	�E��!�J�5�7�貘�U��<�s�P�xș��t�z�o��=;ߞ���vL� ��Rp׌�����O���6�xQ�`v�&��.��e/���h�*��E��3����i�=��-A���͵��|  ����_m�y�nu�U�r���YUK�$=Hz�� �� yw;���z~t+Q��y�0�a���^��כo�6>�o����8�w��Pؚzm�ڠOZ�,^AY��|���=���4�g��9#�07�U|��E�$���y�0��R��9������"i=َw^(ȕ��(.gmW�y�i`��Z�/�E�P���A.3�6|mpI�:H!��(2A���8��kc�or;s����_|��Z���      �   O
  x��]_��6N>E�g�s�K���:i:����S�ad�m�Qw�t��+��r���\�`���߮�eY�z񟓠M�c������s��	Cq=ʰ'�'N�bg��ǟ�Ǖ��7�.�?<�ǰ����U���C��#��b��0b�ؓs����?9���W���[���܇i���&�_2��vis]���oQ㯫�
����J%������)�$�sR�w�ĥ��� �����0fRL�v���	(�o����j���!e�F����,�D}�i�1j�ųf�5��P`��Z�I�F�I6�VM�r�D	��͓K|w{p��4�:��4�{85�rN��dJǕ��3z����_�2�sS���Mi�3p���������;�:m^�o����D�8�|������:!<�$)�,��b���xe���&Nv���×��a�dv���8l�>��ϪD-j�$�;�挹�8��	�bq�!J�3?�a�'��:zE�%,N�c� ��Ȟ�|D$ �S(�)�!e0���n)�M���w�w$[�e�^��,by�ف�0���	�w Y
�c�1��p���e۰���
F�V��aE��lX1A/��bBG�(�����A��8�����v/v��쟈{��!��]N��x���p<����4�Ͽ���8v���5qfbό��sD���y����Y͆�~�����^��>D�ka�	����|I�l�4�4�����+�A�3����Yz�h�B_��aЛ��p7��Wt����\�~�B����A�̬��\=����>ծ#�:��#0>zY��x\^
�iH��<HZ���l>�h��!n9*a����VN��w��|��ǵ	:F�5�%��_�Ӷ-4����:�S�X�	H�n5.�'�ˀQ���n�����2��$qdB'��S>q�F��pZ�����<�m�y1�e3����7�o��<�W�C5i&��Sb�v�~bNw��[,q4S�{�<�#�]���.Ǻ�~��%ʗC�(���cF�ni��%L���+h��Y��M�\�L�F�j�*㖱�����Je�j6��-�&�#h�8�䋔Cv]��A���;6 h��8`�.��B��7�)$�;��ۙn���&_
>���ITnK��)�O@E�y{D�es�(�C>`C:�I!\A��@刂J��fuk z���y|�@�#t�1�@|�M%������`ɮl�>)p/�EaK|NS�,�,nU�e�ݪ��\
4� �|��-6�"�9�A��s�kcY��Z��Y�`�t�@�oC7�
��+�&�o��)䝬$�N��ܳ)�a���0�����43BR���9����6!_mB��� �S­�;��o��0Pٲmϝ�q�,�^8��*p+��Kj�S��Sq�����xW���7V�{Z��/����zXYۣ�d���T�.�aت�KT�^�}��a�9H�
�y&3�U��\�u��"<�������a붗��ro�f�E,Ԥ,��j�uZ�����?
fE�������`'T�*ˮ�&���ǈ�H0��~�.�-����?ׯ5��E�}B���i�qB�n�<�	Z��/O;��ǧG�F4a��Z���%��w3@쀬�Y{3jo�ϛf!;���8>�k��o���{��lH��a%n�a"�^m곪��d��
�,K̖�[%�F~ WP{7)U�����V����|��Ͽh@�Zyt)S���a������Xn�?4�W�����7�#�A��w��%�(��㰦۾�g�t9��"խD]&�N
%u�iĘO���y��|��B�=���������P��[�w-�+=p�ۺc���"���e��j5��6Uj�Z�z�T[��Z���5��jӏ��a��g��j���ƀ/"gјp���.t������4���N��,�2L���J&~]5�QC�Z)m�y�Ӡ��� Z�k�~L���Px�Ρ �;��	[���ĳ�~�����}*ʥ�f{E�����bV	�*jث���c8r������դ�2R�ZV�Y!Pǈ�����]S�Ė�L���K�+'�-���.����x�䊜2YE��0GNI���,(.����B-A��ɪ���3��J��	�԰2B��V���&n}��&T�A. �ݖ��,�;��r��Tq�'��kۙ^e�s% �r�~4��}_@;Ҕ%?�hBL�)���a���h'�ŕ_�=���`�;Z���Qe8٢Gʢ�Oe���s�euh[Kd�u (�9)/�9�����N5����	\�g>��[v�T�zNH���&2�-{�.�Th4��ɂ`��,T�̶Ʀ'R��UG0��p�2fxBɜ����VZhk�N5��BXVFO���l)�=4'{�%�k�9I���Z\�TU�I道��0�LP�Im�]�,���%�gT��|D���nR�����w�C��r��Ƙ����f�Rg�ij��g����6��ί��4鴝��.�:;+}����1�W�����"���ۛۻ�o�}�^���}{���7��/Л��;��^�7[����w����+�7w���~x����nGT      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x���M��0���)|�Ԓ!mS�&9�l�*~*׏0f<��T�ʠ���[ݯ�s��ʘ��MKζ9m[�UK���E�,f��g\�	Kw����H%���oQ~]U6�^�c��c�����o��_TIc*��嗺:�)����BIL�����ltL�����'e�����͋|x��8aH0(���f���W��	=����^�Bl�saLn��8y�Y:>��{��	G��H5[�+�t9���Y9]���۠�k��t>UE�c�p��\y��9���C��a8��A�p9�f�%���/�1�v���]a���A�O�j�ӵ~���/���5���ߟ��?�xE�M%7r Q�:$����~����*` �RVS��9�u�L��UG\����-�(�h�X[�����z�������跛xf;�P9�E���Q��m�u_u��Թ0eI�ͽK��٩���8��1�t�Fr��$��1�0���1m�A�\m!�y$�<����O0�a�tJ%��7��j�|^�f%��4.�D׮�jw��i.��N� Ԏ�F$�;��K@1}�ȵ��`�����0bz�
����j����u�d,GY��-���h%}�jH"�J��	����2��T�6�F���?��Bo      �   �   x��ۍE1��bVCH���_�ʇG(������<8�b"7/j��nަa5��ܛ���h
f�Oӡx6%-���.�kz���nE+ĸ�Qbd��ll%�t�qf�8��X-��a���ȭ>�!�YQ�;s��}x5h�^d4�.�h���Q�)�5G���G�%+�      �   �   x�u�A
�0�ur��@�LƁ���Z<@7�F�Vj���(�`�>���ڷCɽڦSl��4��|O��[����>�t�vK�U��ġc�k�HRpb��ž�=�Im�/��O7+Π�Y�0t" "a�,����dEE@      �   �  x��X�r�����*�\���4��$k�Vk_f��h$̢mj.�W��ɼJ.��$[XK�j�T���n����s���
{�d0C��{l>�Wذ�Y��[��8�`���]{Q�'l�Y�+Rc��	�j����gÊ�q�<����f`�J�̏��2z�c9��{ ��˳0����Q?��t(ؼ(�y��Yt�9 ~@<.#�(J����<���X�B,ߤg�Ps6����t&�Ȅ>�2�r==���	��x��"\?��a�'�ښE����;z�C�d��a׵� ���������(N`�g3�uc$��5X=�E֜�[���uVv5��x��z�R�8<�m�<��p^�=�I�H���y6(U|^����,
#���~b��&�QL�=�b��ψ�S�bFQ���ѽ����E$71�9��tG{���Ġp�,t�5+�݊
�]�+�zQ����8�#�>�<�ĈH��$�ǻ׿�{�B�ʑ,N��RÌk8����"��b^�Mq��:,��Z�������ԕ��h.b)����m[��Q��w	\]��c��"
y^b �.r"�R�I�~%�9/ϑ�W�}ȧ��2��t,B� 89}x;=c��WsNC��h ���
U$vC~<��F��ȵ��Pi��qwPjm�O=���� ��a�+��'y;�Gۮp�D��\�w$xz~��m;�M#�:�t� �
�=��nibI �e��a݇�c�%�U}w��e�<�6t�!\f	$�	���:J�K�(�2�p~�$�憈����x, SB�z�䎟su�R���:B�6�@ϰ�I�ĞPp�)��]Al���.�z����t!�B$�Kݰ�o7�;�)\�6g�j���<����@�{�RD�t��f�@��Ȟ�V����<�ׇR�4�^y�-�jy���h�n�e���}�����#��z)���6�Y�x�R�8�r/��9d�{RD��_�
�s�7�����$3h�񌘌k�)�ƀ%S��n͐�65���{��Lƶ����^�F�������10wN5��H�Ҳ���I,#��P�J�ӊ=�E?���?I�1ѪG����Jq3X枬�7l�]}�2*�7[�®<7��3^6J�`6����l�N��F����.+HUIB�ȋ<BaY�tMװ�(�$
�vY�Q�b��|9Hs�q����Q&�Ů�=l��>4S�'����3Y�����
�xeFl�f�^t��b]��=e;���C�(K"$,�)P%^�X�4�B��;�H�8����p4<�nx�ŧ�P�PiJT<U(g*���|��1L�N
�]):Z^e.��ٚ���@+T;�ȍk�����s��ύ�Cu�/s�1#5�����huE��!#�˂��&k>�G
(mS���yH��l�E>�����ji߾1��,��2W�7}�Ơ�f,/��J*����M��Ͷ��?I�cߘ�D��!S��?�w�o�.�p��!�.��1���R�n� f=){�^ЮhT�:�<&7�Gu��9-�ێ�3
1z�M�Z�z�;$
N�d8�/WZ��]�_i�%� �(3��֧�듭;�
;uO��r����観��r�Q����
�����X����dJ���i�T�9bu#��mU3ೣ�����la;�4����C��B9��Dw -6/�s�qm���Z�gj���+�3)Q�gӧ(�l�dI���l(�'L\Iq��I��f5�Ֆ��k�d)�f3�_a���)ɺ��ם������\T�s$G�-�.��8�Z�>�Qj�Dz$�nI�i�uF�{f��5��ՁSzjm�'N0��FE0��reQf6|Xo
�IC�Z��kaX�xUmS�v����c�����0(=I�;N,J������K���|\q�1���/\I����k�*<�H�-n��#�gd��k�^��d�3�������ԟ.�m{^_�t�]~�a��q����7��DL��c6f��*������ӽ���F�'L��:֣aWx2�c��L�rg�ӻm������oV�u�\���^N%
�1�(��q��Z�>#�^�a�x�w2�GRhC�{�MYe����bSlK�eNCa>Z�Tmxp�z��j�nհ��G��Z�KI��O,�����7�����xXs|o��O��[c)�\\�V��K�����)4�ǝ��j�a�����B�\�*����#](E�|�(G����W�)~>
�_�t�"w��ݑ?�k��]ˡr#7�Kg�����XY`\{~�}�+NDw��O�~5��jX�j/�&;�̳�y�%���IO6�M�~�C��ChD�,�>�;�����5k�I�7pz{]�zT%d�x���~����/w6^�H{�z�~ś�s�`�4��h,j�NT��f��t��3�1~z{38ل��Q|# �:V��8�M��D3�6u��p�v��~�|�mxxp�c���~�݆_��4ڭc�'��Z�ܦi���?�r7��Y!�a��=�f�l���M	��n�ʪ�˰�����&y�͎1����������B�/����ŇG�L�.�����w6荭�eK�vE7i<���]�s��C�s�࡫E�a_�����+�����r�d����H���?����g��;�ڜs?�����~=�ؐ��(�@Q�89MEę%29����e;�"�*U���<�՚�<��\u��{~���j�+�����H�eu��c9�N�<@��'������J7����ʈ����~���^�=,z?�J��*�E�Ӵ����ϒ��:��>FV�ד#
��x�k���@4��V�0v��L}N?���e�9�9 ��>�%�Ԭo�~�����,�߳��dL���8R��=�}Ў���sDd����pl�
�(�����˺�f��W"���Z�G�˗/� ��F      �   �   x���� �V17�`���:N�����"��3XC4�D�cAwJyZ�<[tE��n7.��<��ڮ����)����Цy�:���-d�R.+�Aͮm>���/R�~H�|?�>y�2)�+'��?��$�      �      x������ � �      �      x������ � �     