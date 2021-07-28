CREATE TABLE tb_core_data_list(
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	nam_list VARCHAR(50),
	sts_record BOOLEAN NOT NULL
);

CREATE TABLE tb_core_item_data_list(
	cod_record BIGINT PRIMARY KEY  NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
	val_group VARCHAR(50),
	val_label_item VARCHAR(50),
	val_value_item VARCHAR(50),
	sts_record BOOLEAN NOT NULL,
	cod_data_list_fk BIGINT NOT NULL,	
	CONSTRAINT "fk_tbCoreItemDataList_tbCoreDataList" FOREIGN KEY (cod_data_list_fk) REFERENCES tb_core_data_list(cod_record)	
);