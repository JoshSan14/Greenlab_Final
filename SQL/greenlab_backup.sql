PGDMP  8        
        
    {            lab_fito_tec    16.0    16.0 H    /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    32930    lab_fito_tec    DATABASE     �   CREATE DATABASE lab_fito_tec WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Costa Rica.1252';
    DROP DATABASE lab_fito_tec;
                postgres    false                        2615    32937    account    SCHEMA        CREATE SCHEMA account;
    DROP SCHEMA account;
                postgres    false                        2615    32931 
   laboratory    SCHEMA        CREATE SCHEMA laboratory;
    DROP SCHEMA laboratory;
                postgres    false            �            1259    33010    analysis    TABLE     �   CREATE TABLE laboratory.analysis (
    lab_id character varying NOT NULL,
    header_id integer NOT NULL,
    field_id character varying(50) NOT NULL
);
     DROP TABLE laboratory.analysis;
    
   laboratory         heap    postgres    false    7            �            1259    33046    complete_chemical    TABLE     B  CREATE TABLE laboratory.complete_chemical (
    lab_id character varying(20) NOT NULL,
    potassium numeric NOT NULL,
    magnesium numeric NOT NULL,
    phosphorus numeric NOT NULL,
    copper numeric NOT NULL,
    manganese numeric NOT NULL,
    iron numeric NOT NULL,
    zinc numeric NOT NULL,
    calcium numeric
);
 )   DROP TABLE laboratory.complete_chemical;
    
   laboratory         heap    postgres    false    7            �            1259    33022    foliar    TABLE     �   CREATE TABLE laboratory.foliar (
    lab_id character varying(20) NOT NULL,
    n_total numeric NOT NULL,
    protein numeric NOT NULL
);
    DROP TABLE laboratory.foliar;
    
   laboratory         heap    postgres    false    7            �            1255    33326 �   insert_foliar_cc(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     �  CREATE PROCEDURE laboratory.insert_foliar_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 INSERT INTO laboratory.analysis (lab_id, header_id, field_id)
   VALUES (insert_foliar_cc.lab_id_param, insert_foliar_cc.header_id_param, insert_foliar_cc.field_id_param);
 INSERT INTO laboratory.foliar (lab_id, n_total, protein)
   VALUES (insert_foliar_cc.lab_id_param, insert_foliar_cc.n_total_param, insert_foliar_cc.protein_param);
 INSERT INTO laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium)
   VALUES (insert_foliar_cc.lab_id_param, insert_foliar_cc.potassium_param, insert_foliar_cc.magnesium_param, insert_foliar_cc.phosphorus_param, insert_foliar_cc.copper_param, insert_foliar_cc.manganese_param, insert_foliar_cc.iron_param, insert_foliar_cc.zinc_param, insert_foliar_cc.calcium_param);
END;
 �  DROP PROCEDURE laboratory.insert_foliar_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric);
    
   laboratory          postgres    false    224    7    224    221    224    224    224    224    222    224    224    221    222    221    224    222            �            1259    33058    boron    TABLE     i   CREATE TABLE laboratory.boron (
    lab_id character varying(20) NOT NULL,
    boron numeric NOT NULL
);
    DROP TABLE laboratory.boron;
    
   laboratory         heap    postgres    false    7            �            1259    33082    sulfur    TABLE     �   CREATE TABLE laboratory.sulfur (
    lab_id character varying(20) NOT NULL,
    carbon numeric NOT NULL,
    sulfur numeric NOT NULL
);
    DROP TABLE laboratory.sulfur;
    
   laboratory         heap    postgres    false    7            �            1255    33329 �   insert_foliar_ccbs(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     F  CREATE PROCEDURE laboratory.insert_foliar_ccbs(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN carbon_param numeric, IN sulfur_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN boron_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 INSERT INTO laboratory.analysis (lab_id, header_id, field_id)
   VALUES (insert_foliar_ccbs.lab_id_param, insert_foliar_ccbs.header_id_param, insert_foliar_ccbs.field_id_param);
 INSERT INTO laboratory.foliar (lab_id, n_total, protein)
   VALUES (insert_foliar_ccbs.lab_id_param, insert_foliar_ccbs.n_total_param, insert_foliar_ccbs.protein_param);
 INSERT INTO laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium)
   VALUES (insert_foliar_ccbs.lab_id_param, insert_foliar_ccbs.potassium_param, insert_foliar_ccbs.magnesium_param, insert_foliar_ccbs.phosphorus_param, insert_foliar_ccbs.copper_param, insert_foliar_ccbs.manganese_param, insert_foliar_ccbs.iron_param, insert_foliar_ccbs.zinc_param, insert_foliar_ccbs.calcium_param);
 INSERT INTO laboratory.boron (lab_id, boron)
   VALUES (insert_foliar_ccbs.lab_id_param, insert_foliar_ccbs.boron_param);
 INSERT INTO laboratory.sulfur (lab_id, carbon, sulfur)
   VALUES (insert_foliar_ccbs.lab_id_param, insert_foliar_ccbs.carbon_param, insert_foliar_ccbs.sulfur_param);
END;
 �  DROP PROCEDURE laboratory.insert_foliar_ccbs(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN carbon_param numeric, IN sulfur_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN boron_param numeric);
    
   laboratory          postgres    false    221    222    222    222    224    224    224    224    224    7    225    227    225    224    227    227    224    224    224    221    221            �            1259    33029    ground    TABLE     �   CREATE TABLE laboratory.ground (
    lab_id character varying(20) NOT NULL,
    "pH" numeric NOT NULL,
    ext_acid numeric NOT NULL
);
    DROP TABLE laboratory.ground;
    
   laboratory         heap    postgres    false    7            �            1255    33333 �   insert_ground_cc(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     �  CREATE PROCEDURE laboratory.insert_ground_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 INSERT INTO laboratory.analysis (lab_id, header_id, field_id)
   VALUES (insert_ground_cc.lab_id_param, insert_ground_cc.header_id_param, insert_ground_cc.field_id_param);
 INSERT INTO laboratory.ground (lab_id, "pH", ext_acid)
   VALUES (insert_ground_cc.lab_id_param, insert_ground_cc.ph_param, insert_ground_cc.ext_acid_param);
 INSERT INTO laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium)
   VALUES (insert_ground_cc.lab_id_param, insert_ground_cc.potassium_param, insert_ground_cc.magnesium_param, insert_ground_cc.phosphorus_param, insert_ground_cc.copper_param, insert_ground_cc.manganese_param, insert_ground_cc.iron_param, insert_ground_cc.zinc_param, insert_ground_cc.calcium_param);
END;
 �  DROP PROCEDURE laboratory.insert_ground_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric);
    
   laboratory          postgres    false    223    7    224    224    224    224    224    224    224    224    224    223    223    221    221    221            �            1259    33131    organic_matter    TABLE     q   CREATE TABLE laboratory.organic_matter (
    lab_id character varying NOT NULL,
    nitrogen numeric NOT NULL
);
 &   DROP TABLE laboratory.organic_matter;
    
   laboratory         heap    postgres    false    7            �            1255    33336 �   insert_ground_ccom(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     N  CREATE PROCEDURE laboratory.insert_ground_ccom(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN nitrogen_param numeric, IN carbon_param numeric, IN sulfur_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 INSERT INTO laboratory.analysis (lab_id, header_id, field_id)
   VALUES (insert_ground_ccom.lab_id_param, insert_ground_ccom.header_id_param, insert_ground_ccom.field_id_param);
 INSERT INTO laboratory.ground (lab_id, "pH", ext_acid)
   VALUES (insert_ground_ccom.lab_id_param, insert_ground_ccom.ph_param, insert_ground_ccom.ext_acid_param);
 INSERT INTO laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium)
   VALUES (insert_ground_ccom.lab_id_param, insert_ground_ccom.potassium_param, insert_ground_ccom.magnesium_param, insert_ground_ccom.phosphorus_param, insert_ground_ccom.copper_param, insert_ground_ccom.manganese_param, insert_ground_ccom.iron_param, insert_ground_ccom.zinc_param, insert_ground_ccom.calcium_param);
 INSERT INTO laboratory.organic_matter (lab_id, nitrogen)
   VALUES (insert_ground_ccom.lab_id_param, insert_ground_ccom.nitrogen_param);
 INSERT INTO laboratory.sulfur (lab_id, carbon, sulfur)
   VALUES (insert_ground_ccom.lab_id_param, insert_ground_ccom.carbon_param, insert_ground_ccom.sulfur_param);
END;
 �  DROP PROCEDURE laboratory.insert_ground_ccom(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN nitrogen_param numeric, IN carbon_param numeric, IN sulfur_param numeric);
    
   laboratory          postgres    false    224    224    224    224    224    224    224    227    227    227    229    221    229    221    221    223    7    223    223    224    224            �            1259    33124    texture    TABLE     �   CREATE TABLE laboratory.texture (
    lab_id character varying NOT NULL,
    sand numeric NOT NULL,
    silt numeric NOT NULL,
    clay numeric,
    textural_name character varying(200) NOT NULL
);
    DROP TABLE laboratory.texture;
    
   laboratory         heap    postgres    false    7            �            1255    33340 �   insert_ground_cctxt(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, character varying) 	   PROCEDURE     F  CREATE PROCEDURE laboratory.insert_ground_cctxt(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN sand_param numeric, IN clay_param numeric, IN silt_param numeric, IN txt_name_param character varying)
    LANGUAGE sql
    BEGIN ATOMIC
 INSERT INTO laboratory.analysis (lab_id, header_id, field_id)
   VALUES (insert_ground_cctxt.lab_id_param, insert_ground_cctxt.header_id_param, insert_ground_cctxt.field_id_param);
 INSERT INTO laboratory.ground (lab_id, "pH", ext_acid)
   VALUES (insert_ground_cctxt.lab_id_param, insert_ground_cctxt.ph_param, insert_ground_cctxt.ext_acid_param);
 INSERT INTO laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium)
   VALUES (insert_ground_cctxt.lab_id_param, insert_ground_cctxt.potassium_param, insert_ground_cctxt.magnesium_param, insert_ground_cctxt.phosphorus_param, insert_ground_cctxt.copper_param, insert_ground_cctxt.manganese_param, insert_ground_cctxt.iron_param, insert_ground_cctxt.zinc_param, insert_ground_cctxt.calcium_param);
 INSERT INTO laboratory.texture (lab_id, sand, clay, silt, textural_name)
   VALUES (insert_ground_cctxt.lab_id_param, insert_ground_cctxt.sand_param, insert_ground_cctxt.clay_param, insert_ground_cctxt.silt_param, insert_ground_cctxt.txt_name_param);
END;
 �  DROP PROCEDURE laboratory.insert_ground_cctxt(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN sand_param numeric, IN clay_param numeric, IN silt_param numeric, IN txt_name_param character varying);
    
   laboratory          postgres    false    224    224    224    224    228    7    224    228    221    221    228    224    224    224    228    223    221    228    223    223    224            �            1255    33327 �   update_foliar_cc(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE       CREATE PROCEDURE laboratory.update_foliar_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 UPDATE laboratory.analysis SET header_id = update_foliar_cc.header_id_param, field_id = update_foliar_cc.field_id_param
   WHERE ((analysis.lab_id)::text = (update_foliar_cc.lab_id_param)::text);
 UPDATE laboratory.foliar SET n_total = update_foliar_cc.n_total_param, protein = update_foliar_cc.protein_param
   WHERE ((foliar.lab_id)::text = (update_foliar_cc.lab_id_param)::text);
 UPDATE laboratory.complete_chemical SET potassium = update_foliar_cc.potassium_param, magnesium = update_foliar_cc.magnesium_param, phosphorus = update_foliar_cc.phosphorus_param, copper = update_foliar_cc.copper_param, manganese = update_foliar_cc.manganese_param, iron = update_foliar_cc.iron_param, zinc = update_foliar_cc.zinc_param, calcium = update_foliar_cc.calcium_param
   WHERE ((complete_chemical.lab_id)::text = (update_foliar_cc.lab_id_param)::text);
END;
 �  DROP PROCEDURE laboratory.update_foliar_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric);
    
   laboratory          postgres    false    222    221    221    221    7    224    224    224    224    224    224    224    224    224    222    222            �            1255    33331 �   update_foliar_ccbs(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     �  CREATE PROCEDURE laboratory.update_foliar_ccbs(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN carbon_param numeric, IN sulfur_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN boron_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 UPDATE laboratory.analysis SET header_id = update_foliar_ccbs.header_id_param, field_id = update_foliar_ccbs.field_id_param
   WHERE ((analysis.lab_id)::text = (update_foliar_ccbs.lab_id_param)::text);
 UPDATE laboratory.foliar SET n_total = update_foliar_ccbs.n_total_param, protein = update_foliar_ccbs.protein_param
   WHERE ((foliar.lab_id)::text = (update_foliar_ccbs.lab_id_param)::text);
 UPDATE laboratory.complete_chemical SET potassium = update_foliar_ccbs.potassium_param, magnesium = update_foliar_ccbs.magnesium_param, phosphorus = update_foliar_ccbs.phosphorus_param, copper = update_foliar_ccbs.copper_param, manganese = update_foliar_ccbs.manganese_param, iron = update_foliar_ccbs.iron_param, zinc = update_foliar_ccbs.zinc_param, calcium = update_foliar_ccbs.calcium_param
   WHERE ((complete_chemical.lab_id)::text = (update_foliar_ccbs.lab_id_param)::text);
 UPDATE laboratory.boron SET boron = update_foliar_ccbs.boron_param
   WHERE ((boron.lab_id)::text = (update_foliar_ccbs.lab_id_param)::text);
 UPDATE laboratory.sulfur SET carbon = update_foliar_ccbs.carbon_param, sulfur = update_foliar_ccbs.sulfur_param
   WHERE ((sulfur.lab_id)::text = (update_foliar_ccbs.lab_id_param)::text);
END;
 �  DROP PROCEDURE laboratory.update_foliar_ccbs(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN n_total_param numeric, IN protein_param numeric, IN carbon_param numeric, IN sulfur_param numeric, IN potassium_param numeric, IN calcium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN boron_param numeric);
    
   laboratory          postgres    false    222    224    224    222    225    225    227    227    227    7    224    224    224    224    221    224    222    221    224    224    221            �            1255    33334 �   update_ground_cc(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE       CREATE PROCEDURE laboratory.update_ground_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 UPDATE laboratory.analysis SET header_id = update_ground_cc.header_id_param, field_id = update_ground_cc.field_id_param
   WHERE ((analysis.lab_id)::text = (update_ground_cc.lab_id_param)::text);
 UPDATE laboratory.ground SET "pH" = update_ground_cc.ph_param, ext_acid = update_ground_cc.ext_acid_param
   WHERE ((ground.lab_id)::text = (update_ground_cc.lab_id_param)::text);
 UPDATE laboratory.complete_chemical SET potassium = update_ground_cc.potassium_param, magnesium = update_ground_cc.magnesium_param, phosphorus = update_ground_cc.phosphorus_param, copper = update_ground_cc.copper_param, manganese = update_ground_cc.manganese_param, iron = update_ground_cc.iron_param, zinc = update_ground_cc.zinc_param, calcium = update_ground_cc.calcium_param
   WHERE ((complete_chemical.lab_id)::text = (update_ground_cc.lab_id_param)::text);
END;
 �  DROP PROCEDURE laboratory.update_ground_cc(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric);
    
   laboratory          postgres    false    224    7    224    224    224    224    224    224    224    221    221    221    223    223    223    224            �            1255    33338 �   update_ground_ccom(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric) 	   PROCEDURE     �  CREATE PROCEDURE laboratory.update_ground_ccom(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN nitrogen_param numeric, IN carbon_param numeric, IN sulfur_param numeric)
    LANGUAGE sql
    BEGIN ATOMIC
 UPDATE laboratory.analysis SET header_id = update_ground_ccom.header_id_param, field_id = update_ground_ccom.field_id_param
   WHERE ((analysis.lab_id)::text = (update_ground_ccom.lab_id_param)::text);
 UPDATE laboratory.ground SET "pH" = update_ground_ccom.ph_param, ext_acid = update_ground_ccom.ext_acid_param
   WHERE ((ground.lab_id)::text = (update_ground_ccom.lab_id_param)::text);
 UPDATE laboratory.complete_chemical SET potassium = update_ground_ccom.potassium_param, magnesium = update_ground_ccom.magnesium_param, phosphorus = update_ground_ccom.phosphorus_param, copper = update_ground_ccom.copper_param, manganese = update_ground_ccom.manganese_param, iron = update_ground_ccom.iron_param, zinc = update_ground_ccom.zinc_param, calcium = update_ground_ccom.calcium_param
   WHERE ((complete_chemical.lab_id)::text = (update_ground_ccom.lab_id_param)::text);
 UPDATE laboratory.organic_matter SET nitrogen = update_ground_ccom.nitrogen_param
   WHERE ((organic_matter.lab_id)::text = (update_ground_ccom.lab_id_param)::text);
 UPDATE laboratory.sulfur SET carbon = update_ground_ccom.carbon_param, sulfur = update_ground_ccom.sulfur_param
   WHERE ((sulfur.lab_id)::text = (update_ground_ccom.lab_id_param)::text);
END;
 �  DROP PROCEDURE laboratory.update_ground_ccom(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN nitrogen_param numeric, IN carbon_param numeric, IN sulfur_param numeric);
    
   laboratory          postgres    false    224    7    229    229    227    227    221    221    221    223    227    224    223    224    224    223    224    224    224    224    224            �            1255    33342 �   update_ground_cctxt(character varying, numeric, character varying, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, numeric, character varying) 	   PROCEDURE     �  CREATE PROCEDURE laboratory.update_ground_cctxt(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN sand_param numeric, IN clay_param numeric, IN silt_param numeric, IN txt_name_param character varying)
    LANGUAGE sql
    BEGIN ATOMIC
 UPDATE laboratory.analysis SET header_id = update_ground_cctxt.header_id_param, field_id = update_ground_cctxt.field_id_param
   WHERE ((analysis.lab_id)::text = (update_ground_cctxt.lab_id_param)::text);
 UPDATE laboratory.ground SET "pH" = update_ground_cctxt.ph_param, ext_acid = update_ground_cctxt.ext_acid_param
   WHERE ((ground.lab_id)::text = (update_ground_cctxt.lab_id_param)::text);
 UPDATE laboratory.complete_chemical SET potassium = update_ground_cctxt.potassium_param, magnesium = update_ground_cctxt.magnesium_param, phosphorus = update_ground_cctxt.phosphorus_param, copper = update_ground_cctxt.copper_param, manganese = update_ground_cctxt.manganese_param, iron = update_ground_cctxt.iron_param, zinc = update_ground_cctxt.zinc_param, calcium = update_ground_cctxt.calcium_param
   WHERE ((complete_chemical.lab_id)::text = (update_ground_cctxt.lab_id_param)::text);
 UPDATE laboratory.texture SET sand = update_ground_cctxt.sand_param, clay = update_ground_cctxt.clay_param, silt = update_ground_cctxt.silt_param, textural_name = update_ground_cctxt.txt_name_param
   WHERE ((texture.lab_id)::text = (update_ground_cctxt.lab_id_param)::text);
END;
 �  DROP PROCEDURE laboratory.update_ground_cctxt(IN lab_id_param character varying, IN header_id_param numeric, IN field_id_param character varying, IN ph_param numeric, IN ext_acid_param numeric, IN potassium_param numeric, IN magnesium_param numeric, IN phosphorus_param numeric, IN copper_param numeric, IN manganese_param numeric, IN iron_param numeric, IN zinc_param numeric, IN calcium_param numeric, IN sand_param numeric, IN clay_param numeric, IN silt_param numeric, IN txt_name_param character varying);
    
   laboratory          postgres    false    7    224    224    223    223    221    223    224    228    221    224    224    228    228    228    228    224    221    224    224    224            �            1259    32985    client    TABLE     9  CREATE TABLE account.client (
    client_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    company character varying(50) DEFAULT 'Ninguna'::character varying NOT NULL,
    legal_id boolean NOT NULL,
    email character varying(50) NOT NULL,
    phone_number character varying(10)
);
    DROP TABLE account.client;
       account         heap    postgres    false    6            �            1259    32938    employee    TABLE     �   CREATE TABLE account.employee (
    employee_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(100) NOT NULL,
    phone_number character varying(10)
);
    DROP TABLE account.employee;
       account         heap    postgres    false    6            �            1259    33070 
   dry_matter    TABLE     �   CREATE TABLE laboratory.dry_matter (
    lab_id character varying(20) NOT NULL,
    protein numeric NOT NULL,
    dry_matter_55c numeric NOT NULL,
    fresh_weight numeric NOT NULL
);
 "   DROP TABLE laboratory.dry_matter;
    
   laboratory         heap    postgres    false    7            �            1259    32992    form_header    TABLE     X  CREATE TABLE laboratory.form_header (
    header_id integer NOT NULL,
    client_id character varying(10) NOT NULL,
    employee_id character varying(10) NOT NULL,
    date date DEFAULT CURRENT_DATE NOT NULL,
    province character varying(50) NOT NULL,
    canton character varying(50) NOT NULL,
    district character varying(50) NOT NULL
);
 #   DROP TABLE laboratory.form_header;
    
   laboratory         heap    postgres    false    7            �            1259    33198    foliar_analysis_cc_view    VIEW       CREATE VIEW laboratory.foliar_analysis_cc_view AS
 SELECT fh.header_id,
    an.lab_id,
    an.field_id,
    fol.n_total,
    fol.protein,
    cc.potassium,
    cc.calcium,
    cc.magnesium,
    cc.phosphorus,
    cc.copper,
    cc.manganese,
    cc.iron,
    cc.zinc
   FROM (((laboratory.form_header fh
     JOIN laboratory.analysis an ON ((fh.header_id = an.header_id)))
     JOIN laboratory.foliar fol ON (((an.lab_id)::text = (fol.lab_id)::text)))
     JOIN laboratory.complete_chemical cc ON (((an.lab_id)::text = (cc.lab_id)::text)));
 .   DROP VIEW laboratory.foliar_analysis_cc_view;
    
   laboratory          postgres    false    224    224    224    224    224    224    224    224    224    222    222    222    221    221    221    220    7            �            1259    33251    foliar_analysis_ccbs_view    VIEW     �  CREATE VIEW laboratory.foliar_analysis_ccbs_view AS
 SELECT fh.header_id,
    an.lab_id,
    an.field_id,
    fol.n_total,
    fol.protein,
    su.carbon,
    su.sulfur,
    cc.potassium,
    cc.calcium,
    cc.magnesium,
    cc.phosphorus,
    cc.copper,
    cc.manganese,
    cc.iron,
    cc.zinc,
    bo.boron
   FROM (((((laboratory.form_header fh
     JOIN laboratory.analysis an ON ((fh.header_id = an.header_id)))
     JOIN laboratory.foliar fol ON (((an.lab_id)::text = (fol.lab_id)::text)))
     JOIN laboratory.complete_chemical cc ON (((an.lab_id)::text = (cc.lab_id)::text)))
     JOIN laboratory.boron bo ON (((an.lab_id)::text = (bo.lab_id)::text)))
     JOIN laboratory.sulfur su ON (((an.lab_id)::text = (su.lab_id)::text)));
 0   DROP VIEW laboratory.foliar_analysis_ccbs_view;
    
   laboratory          postgres    false    227    227    224    225    224    224    224    220    221    221    221    222    222    222    224    224    224    224    224    227    225    7            �            1259    32991    form_header_header_id_seq    SEQUENCE     �   CREATE SEQUENCE laboratory.form_header_header_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE laboratory.form_header_header_id_seq;
    
   laboratory          postgres    false    220    7            3           0    0    form_header_header_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE laboratory.form_header_header_id_seq OWNED BY laboratory.form_header.header_id;
       
   laboratory          postgres    false    219            �            1259    33236    ground_analysis_cc_view    VIEW       CREATE VIEW laboratory.ground_analysis_cc_view AS
 SELECT fh.header_id,
    an.lab_id,
    an.field_id,
    gr."pH",
    gr.ext_acid,
    cc.calcium,
    cc.magnesium,
    cc.potassium,
    cc.copper,
    cc.manganese,
    cc.iron,
    cc.zinc,
    cc.phosphorus
   FROM (((laboratory.form_header fh
     JOIN laboratory.analysis an ON ((fh.header_id = an.header_id)))
     JOIN laboratory.ground gr ON (((an.lab_id)::text = (gr.lab_id)::text)))
     JOIN laboratory.complete_chemical cc ON (((an.lab_id)::text = (cc.lab_id)::text)));
 .   DROP VIEW laboratory.ground_analysis_cc_view;
    
   laboratory          postgres    false    224    224    224    224    224    224    224    224    224    223    223    223    221    221    221    220    7            �            1259    33241    ground_analysis_ccom_view    VIEW     �  CREATE VIEW laboratory.ground_analysis_ccom_view AS
 SELECT fh.header_id,
    an.lab_id,
    an.field_id,
    gr."pH",
    gr.ext_acid,
    cc.calcium,
    cc.magnesium,
    cc.potassium,
    cc.copper,
    cc.manganese,
    cc.iron,
    cc.zinc,
    cc.phosphorus,
    om.nitrogen,
    su.carbon,
    su.sulfur
   FROM (((((laboratory.form_header fh
     JOIN laboratory.analysis an ON ((fh.header_id = an.header_id)))
     JOIN laboratory.ground gr ON (((an.lab_id)::text = (gr.lab_id)::text)))
     JOIN laboratory.complete_chemical cc ON (((an.lab_id)::text = (cc.lab_id)::text)))
     JOIN laboratory.organic_matter om ON (((an.lab_id)::text = (om.lab_id)::text)))
     JOIN laboratory.sulfur su ON (((an.lab_id)::text = (su.lab_id)::text)));
 0   DROP VIEW laboratory.ground_analysis_ccom_view;
    
   laboratory          postgres    false    227    227    229    229    221    221    220    221    223    223    223    224    224    224    224    224    224    224    224    224    227    7            �            1259    33262    ground_analysis_cctxt_view    VIEW     �  CREATE VIEW laboratory.ground_analysis_cctxt_view AS
 SELECT fh.header_id,
    an.lab_id,
    an.field_id,
    gr."pH",
    gr.ext_acid,
    cc.calcium,
    cc.magnesium,
    cc.potassium,
    cc.copper,
    cc.manganese,
    cc.iron,
    cc.zinc,
    cc.phosphorus,
    txt.sand,
    txt.clay,
    txt.silt,
    txt.textural_name AS txt_name
   FROM ((((laboratory.form_header fh
     JOIN laboratory.analysis an ON ((fh.header_id = an.header_id)))
     JOIN laboratory.ground gr ON (((an.lab_id)::text = (gr.lab_id)::text)))
     JOIN laboratory.complete_chemical cc ON (((an.lab_id)::text = (cc.lab_id)::text)))
     JOIN laboratory.texture txt ON (((an.lab_id)::text = (txt.lab_id)::text)));
 1   DROP VIEW laboratory.ground_analysis_cctxt_view;
    
   laboratory          postgres    false    221    228    224    224    224    224    224    224    224    224    224    223    223    223    221    221    220    228    228    228    228    7            g           2604    32995    form_header header_id    DEFAULT     �   ALTER TABLE ONLY laboratory.form_header ALTER COLUMN header_id SET DEFAULT nextval('laboratory.form_header_header_id_seq'::regclass);
 H   ALTER TABLE laboratory.form_header ALTER COLUMN header_id DROP DEFAULT;
    
   laboratory          postgres    false    219    220    220            !          0    32985    client 
   TABLE DATA           Z   COPY account.client (client_id, name, company, legal_id, email, phone_number) FROM stdin;
    account          postgres    false    218   ��                  0    32938    employee 
   TABLE DATA           U   COPY account.employee (employee_id, name, email, password, phone_number) FROM stdin;
    account          postgres    false    217   F�       $          0    33010    analysis 
   TABLE DATA           C   COPY laboratory.analysis (lab_id, header_id, field_id) FROM stdin;
 
   laboratory          postgres    false    221   J�       (          0    33058    boron 
   TABLE DATA           2   COPY laboratory.boron (lab_id, boron) FROM stdin;
 
   laboratory          postgres    false    225   ��       '          0    33046    complete_chemical 
   TABLE DATA           �   COPY laboratory.complete_chemical (lab_id, potassium, magnesium, phosphorus, copper, manganese, iron, zinc, calcium) FROM stdin;
 
   laboratory          postgres    false    224   Ի       )          0    33070 
   dry_matter 
   TABLE DATA           W   COPY laboratory.dry_matter (lab_id, protein, dry_matter_55c, fresh_weight) FROM stdin;
 
   laboratory          postgres    false    226   K�       %          0    33022    foliar 
   TABLE DATA           >   COPY laboratory.foliar (lab_id, n_total, protein) FROM stdin;
 
   laboratory          postgres    false    222   h�       #          0    32992    form_header 
   TABLE DATA           n   COPY laboratory.form_header (header_id, client_id, employee_id, date, province, canton, district) FROM stdin;
 
   laboratory          postgres    false    220   ��       &          0    33029    ground 
   TABLE DATA           <   COPY laboratory.ground (lab_id, "pH", ext_acid) FROM stdin;
 
   laboratory          postgres    false    223   �       ,          0    33131    organic_matter 
   TABLE DATA           >   COPY laboratory.organic_matter (lab_id, nitrogen) FROM stdin;
 
   laboratory          postgres    false    229   %�       *          0    33082    sulfur 
   TABLE DATA           <   COPY laboratory.sulfur (lab_id, carbon, sulfur) FROM stdin;
 
   laboratory          postgres    false    227   L�       +          0    33124    texture 
   TABLE DATA           N   COPY laboratory.texture (lab_id, sand, silt, clay, textural_name) FROM stdin;
 
   laboratory          postgres    false    228   ��       4           0    0    form_header_header_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('laboratory.form_header_header_id_seq', 5, true);
       
   laboratory          postgres    false    219            l           2606    32989    client client_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY account.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (client_id);
 =   ALTER TABLE ONLY account.client DROP CONSTRAINT client_pkey;
       account            postgres    false    218            j           2606    32942    employee employee_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY account.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);
 A   ALTER TABLE ONLY account.employee DROP CONSTRAINT employee_pkey;
       account            postgres    false    217            p           2606    33016    analysis analysis_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY laboratory.analysis
    ADD CONSTRAINT analysis_pkey PRIMARY KEY (lab_id);
 D   ALTER TABLE ONLY laboratory.analysis DROP CONSTRAINT analysis_pkey;
    
   laboratory            postgres    false    221            x           2606    33064    boron boron_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY laboratory.boron
    ADD CONSTRAINT boron_pkey PRIMARY KEY (lab_id);
 >   ALTER TABLE ONLY laboratory.boron DROP CONSTRAINT boron_pkey;
    
   laboratory            postgres    false    225            v           2606    33052 (   complete_chemical complete_chemical_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY laboratory.complete_chemical
    ADD CONSTRAINT complete_chemical_pkey PRIMARY KEY (lab_id);
 V   ALTER TABLE ONLY laboratory.complete_chemical DROP CONSTRAINT complete_chemical_pkey;
    
   laboratory            postgres    false    224            z           2606    33076    dry_matter dry_matter_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY laboratory.dry_matter
    ADD CONSTRAINT dry_matter_pkey PRIMARY KEY (lab_id);
 H   ALTER TABLE ONLY laboratory.dry_matter DROP CONSTRAINT dry_matter_pkey;
    
   laboratory            postgres    false    226            r           2606    33028    foliar foliarQC_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY laboratory.foliar
    ADD CONSTRAINT "foliarQC_pkey" PRIMARY KEY (lab_id);
 D   ALTER TABLE ONLY laboratory.foliar DROP CONSTRAINT "foliarQC_pkey";
    
   laboratory            postgres    false    222            n           2606    32998    form_header form_header_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY laboratory.form_header
    ADD CONSTRAINT form_header_pkey PRIMARY KEY (header_id);
 J   ALTER TABLE ONLY laboratory.form_header DROP CONSTRAINT form_header_pkey;
    
   laboratory            postgres    false    220            t           2606    33035    ground ground_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY laboratory.ground
    ADD CONSTRAINT ground_pkey PRIMARY KEY (lab_id);
 @   ALTER TABLE ONLY laboratory.ground DROP CONSTRAINT ground_pkey;
    
   laboratory            postgres    false    223            �           2606    33137 "   organic_matter organic_matter_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY laboratory.organic_matter
    ADD CONSTRAINT organic_matter_pkey PRIMARY KEY (lab_id);
 P   ALTER TABLE ONLY laboratory.organic_matter DROP CONSTRAINT organic_matter_pkey;
    
   laboratory            postgres    false    229            |           2606    33088    sulfur sulfur_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY laboratory.sulfur
    ADD CONSTRAINT sulfur_pkey PRIMARY KEY (lab_id);
 @   ALTER TABLE ONLY laboratory.sulfur DROP CONSTRAINT sulfur_pkey;
    
   laboratory            postgres    false    227            ~           2606    33130    texture texture_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY laboratory.texture
    ADD CONSTRAINT texture_pkey PRIMARY KEY (lab_id);
 B   ALTER TABLE ONLY laboratory.texture DROP CONSTRAINT texture_pkey;
    
   laboratory            postgres    false    228            �           2606    33017     analysis analysis_header_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.analysis
    ADD CONSTRAINT analysis_header_id_fkey FOREIGN KEY (header_id) REFERENCES laboratory.form_header(header_id) NOT VALID;
 N   ALTER TABLE ONLY laboratory.analysis DROP CONSTRAINT analysis_header_id_fkey;
    
   laboratory          postgres    false    221    220    4718            �           2606    33350    boron boron_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.boron
    ADD CONSTRAINT boron_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 E   ALTER TABLE ONLY laboratory.boron DROP CONSTRAINT boron_lab_id_fkey;
    
   laboratory          postgres    false    4720    221    225            �           2606    33355 /   complete_chemical complete_chemical_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.complete_chemical
    ADD CONSTRAINT complete_chemical_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 ]   ALTER TABLE ONLY laboratory.complete_chemical DROP CONSTRAINT complete_chemical_lab_id_fkey;
    
   laboratory          postgres    false    224    4720    221            �           2606    33360 !   dry_matter dry_matter_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.dry_matter
    ADD CONSTRAINT dry_matter_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 O   ALTER TABLE ONLY laboratory.dry_matter DROP CONSTRAINT dry_matter_lab_id_fkey;
    
   laboratory          postgres    false    4720    221    226            �           2606    33365    foliar foliar_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.foliar
    ADD CONSTRAINT foliar_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY laboratory.foliar DROP CONSTRAINT foliar_lab_id_fkey;
    
   laboratory          postgres    false    222    221    4720            �           2606    33000 &   form_header form_header_client_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.form_header
    ADD CONSTRAINT form_header_client_id_fkey FOREIGN KEY (client_id) REFERENCES account.client(client_id) NOT VALID;
 T   ALTER TABLE ONLY laboratory.form_header DROP CONSTRAINT form_header_client_id_fkey;
    
   laboratory          postgres    false    220    218    4716            �           2606    33005 (   form_header form_header_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.form_header
    ADD CONSTRAINT form_header_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES account.employee(employee_id) NOT VALID;
 V   ALTER TABLE ONLY laboratory.form_header DROP CONSTRAINT form_header_employee_id_fkey;
    
   laboratory          postgres    false    217    220    4714            �           2606    33370    ground ground_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.ground
    ADD CONSTRAINT ground_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY laboratory.ground DROP CONSTRAINT ground_lab_id_fkey;
    
   laboratory          postgres    false    4720    221    223            �           2606    33375 )   organic_matter organic_matter_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.organic_matter
    ADD CONSTRAINT organic_matter_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 W   ALTER TABLE ONLY laboratory.organic_matter DROP CONSTRAINT organic_matter_lab_id_fkey;
    
   laboratory          postgres    false    4720    229    221            �           2606    33380    sulfur sulfur_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.sulfur
    ADD CONSTRAINT sulfur_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 G   ALTER TABLE ONLY laboratory.sulfur DROP CONSTRAINT sulfur_lab_id_fkey;
    
   laboratory          postgres    false    221    4720    227            �           2606    33385    texture texture_lab_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY laboratory.texture
    ADD CONSTRAINT texture_lab_id_fkey FOREIGN KEY (lab_id) REFERENCES laboratory.analysis(lab_id) ON UPDATE CASCADE ON DELETE CASCADE NOT VALID;
 I   ALTER TABLE ONLY laboratory.texture DROP CONSTRAINT texture_lab_id_fkey;
    
   laboratory          postgres    false    4720    228    221            !   :   x�34c ��)�,V�9�� ��3�ՙ3�3(���;��&�%qH=W� ��          �   x���r�0 E��+�Ț��t� *�8(�� Xy4M�����3gu.�M��]T]���V�H_�J��Zù�={~O�A�﷙�/q��n4���X���D���$�e�M��(�-"W��\t����-PA�<l��m�#���촖�?4�"��yڧ�����n���6pJ���	�j�aZ+$)���o��u�=��E�G�0��6�_�Ƃ��#s�N��.I��D�W��n���,I�/�qR*      $   L   x�q�urv�4����C"B�0��50�I�@T�B�����}aF@y�2N��rN�`Y_�)1z\\\ f�!p      (      x�qQp��Qtv
�44����� ?H�      '   g   x�t��4�4�44�4�4���4�
q�50�4�4�43 R h�p҅�2Gץ�����g
�m�,���K�6�4+��G�H@������ ��      )      x������ � �      %   #   x�qQp��Qt�4�4�
A��"1z\\\ �j&      #   ?   x�3�44c �4�4202�54�50�t�I�*M�I�N�SpN,��/�,M-NLI����� ���      &   +   x�t��4�4�
q�50�!l� ]d9_03F��� E      ,      x�q���44����� y�      *   *   x�q���44�44�
r��}���9�9M�b���� ��u      +   @   x�q�u���44�44�44�q�	r�Q�s�u�
tF�,I-.��K�M�7����� %�(     