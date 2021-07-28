CREATE TABLE tb_core_application (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	nam_application VARCHAR(100) NOT NULL,
	val_display_name VARCHAR(250) NOT NULL,
	val_main_color VARCHAR(100) NOT NULL,
	val_header_logo VARCHAR(100) NOT NULL,
	val_header_login VARCHAR(100) NULL,
	ind_main BOOLEAN NULL,
	sts_record BOOLEAN NOT NULL
);
