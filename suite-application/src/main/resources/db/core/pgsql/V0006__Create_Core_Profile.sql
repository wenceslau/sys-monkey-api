CREATE TABLE tb_core_profile (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	nam_profile VARCHAR(100) NOT NULL,
	typ_profile INT NOT NULL,
	sts_record BOOLEAN NOT NULL	,
	cod_business_unit_fk  BIGINT NULL,
	CONSTRAINT "fk_tbCoreProfile_tbCoreBusinessUnit" FOREIGN KEY (cod_business_unit_fk) REFERENCES tb_core_business_unit(cod_record)
);


CREATE TABLE tb_core_profile_permisions (
	cod_profile BIGINT NOT NULL,
	cod_permission BIGINT NOT NULL,
	PRIMARY KEY (cod_profile, cod_permission),
	FOREIGN KEY (cod_profile) REFERENCES tb_core_profile(cod_record),
	FOREIGN KEY (cod_permission) REFERENCES tb_core_permission(cod_record)
);