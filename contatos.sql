CREATE ROLE postgres WITH LOGIN ENCRYPTED PASSWORD 'contatos123';

-- DROP TABLE IF EXISTS public.contatos CASCADE;
CREATE TABLE public.contatos(
	id SERIAL PRIMARY KEY,
	username varchar(20),
	password varchar(200),
	nome varchar(60),
	canal varchar(15),
	valor varchar(50),
	obs text,
	created_on timestamp DEFAULT CURRENT_TIMESTAMP
);
-- ddl-end --
ALTER TABLE public.contatos OWNER TO postgres;
-- ddl-end --
