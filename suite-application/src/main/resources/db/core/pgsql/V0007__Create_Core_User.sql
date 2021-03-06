CREATE TABLE tb_core_user (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	val_name VARCHAR(100) NOT NULL,
	val_username VARCHAR(100) NOT NULL,
	val_email VARCHAR(100) NOT NULL,
	val_password VARCHAR(100) NOT NULL,
	ind_firstAccess BOOLEAN,
	val_hash INT NULL,
	ind_receive_notify BOOLEAN NULL,
	ind_view_notify BOOLEAN NULL,
	ind_send_notify BOOLEAN NULL,
	sts_record BOOLEAN NOT NULL,
	cod_profile_fk BIGINT NOT NULL,
	cod_business_unit_fk BIGINT NOT NULL,
	CONSTRAINT "fk_tbCoreUser_tbCoreProfile" FOREIGN KEY (cod_profile_fk) REFERENCES tb_core_profile(cod_record),
	CONSTRAINT "fk_tbCoreUser_tbCoreBusinessUnit" FOREIGN KEY (cod_business_unit_fk) REFERENCES tb_core_business_unit(cod_record)
);


CREATE TABLE tb_core_user_sector (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	cod_user BIGINT NOT NULL,
	cod_sector BIGINT NOT NULL,
	FOREIGN KEY (cod_user) REFERENCES tb_core_user(cod_record),
	FOREIGN KEY (cod_sector) REFERENCES tb_core_sector(cod_record)
 );