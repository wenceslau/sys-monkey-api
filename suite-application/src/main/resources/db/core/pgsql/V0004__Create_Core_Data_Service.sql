CREATE TABLE tb_core_data_service (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	val_type VARCHAR(100) NOT NULL,
	nam_data_service VARCHAR(100) NOT NULL,
	des_data_service VARCHAR(250) NOT NULL,	
	sts_record BOOLEAN NOT NULL,
	cod_business_unit_fk  BIGINT NOT NULL,
	CONSTRAINT "fk_tbCoreDataService_tbCoreBusinessUnit" FOREIGN KEY (cod_business_unit_fk) REFERENCES tb_core_business_unit(cod_record)
);

CREATE TABLE tb_core_property (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	val_data_type VARCHAR(100) NOT NULL,
	nam_property VARCHAR(100) NOT NULL,
	val_property VARCHAR(250) NOT NULL,
	des_property VARCHAR(250) NOT NULL,
	sts_record BOOLEAN NOT NULL,
	cod_data_service_fk  BIGINT NOT NULL,
	CONSTRAINT "fk_tbCoreProperty_tbCoreDataService" FOREIGN KEY (cod_data_service_fk) REFERENCES tb_core_data_service(cod_record)
);
