CREATE TABLE tb_core_sector (
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	nam_sector VARCHAR(100) NOT NULL,
	des_sector VARCHAR(250) NOT NULL,
	val_unique_id VARCHAR(100) NOT NULL,
	val_image VARCHAR(100) NULL,
	nam_external_database VARCHAR(100) NULL,
	dtt_create_database TIMESTAMP(6) NULL,
	sts_record BOOLEAN NOT NULL,
	cod_data_service_fk BIGINT NULL,
	cod_business_unit_fk BIGINT NULL,
	CONSTRAINT "fk_tbCoreSector_tbCoreDataService" FOREIGN KEY (cod_data_service_fk) REFERENCES tb_core_data_service(cod_record),
	CONSTRAINT "fk_tbCoreSector_tbCoreBusinessUnit" FOREIGN KEY (cod_business_unit_fk) REFERENCES tb_core_business_unit(cod_record)
 );
