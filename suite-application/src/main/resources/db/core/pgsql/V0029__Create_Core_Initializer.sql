CREATE TABLE tb_core_initializer(
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	dat_initializer TIMESTAMP(6) NOT NULL,
	nam_initializer VARCHAR(50) NOT NULL,
	des_initializer VARCHAR(1000) NOT NULL
);

