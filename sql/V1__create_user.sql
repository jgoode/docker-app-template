CREATE SEQUENCE public.mvw_user_id_seq;
CREATE TABLE public.mvw_user (
  id integer NOT NULL DEFAULT nextval('mvw_user_id_seq' :: regclass),
  username character varying(80) COLLATE pg_catalog."default" NOT NULL,
  password character varying(60) COLLATE pg_catalog."default" NOT NULL,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  CONSTRAINT users_pkey PRIMARY KEY (id),
  CONSTRAINT users_username_unique UNIQUE (username)
) WITH (OIDS = FALSE) TABLESPACE pg_default;