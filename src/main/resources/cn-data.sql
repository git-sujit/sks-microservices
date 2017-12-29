-- CN_PRPODUCT
CREATE TABLE "CN_PRODUCT"(
	"PRODUCT_KEY" CHAR(32 BYTE) NOT NULL ENABLE,
	"PRODUCT_ID" CHAR(64 BYTE) NOT NULL ENABLE,
	"PRODUCT_NAME" VARCHAR2(128 BYTE) NOT NULL ENABLE,
	"PRODUCT_DESCRIPTION" VARCHAR2(512 BYTE) NOT NULL ENABLED,
	"PRODUCT_GROUP" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"PRODUCT_STATUS" CHAR(16 BYTE) NOT NULL ENABLED,
	"UNIT_OF_MEASURE" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"ORGANIZATION_CODE" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"UNIT_COST" NUMBER(19,6) DEFAULT 0 NOT NULL ENABLE,
	"COST_CURRENCY" VARCHAR2(20 BYTE) DEFAULT 'USD' NOT NULL ENABLE,
	"TAXABLE_FLAG" CHAR(1 BYTE) DEFAULT ' ' NOT NULL ENABLE,
	"TAX_PRODUCT_CODE" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE,
	"RETURN_PERIOD" NUMBER(5,0),
	"IS_RETURNABLE" CHAR(1 BYTE),
	"IS_PERISHABLE" CHAR(1 BYTE),
	"IS_HAZMAT" CHAR(1 BYTE),
	"HAS_INFINITE_INVENTORY" CHAR(1 BYTE),
	"CREATED_DATE" TIMESTAMP (6),
	"MODIFIED_DATE" TIMESTAMP (6),
	"CREATED_USER_ID" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE, 
	"MODIFIED_USER_ID" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE, 
	CONSTRAINT "CN_PRODUCT_PK" PRIMARY KEY ("PRODUCT_KEY")
);
CREATE UNIQUE INDEX "CN_PRODUCT_I1" ON "CN_PRODUCT"("PRODUCT_ID", "ORGANIZATION_CODE", "UOM") ;
CREATE UNIQUE INDEX "CN_PRODUCT_I2" ON "CN_PRODUCT"("ORGANIZATION_CODE", "PRODUCT_GROUP") ;

-- CN_CATEGORY
CREATE TABLE "CN_PRODUCT"(
	"PRODUCT_KEY" CHAR(32 BYTE) NOT NULL ENABLE,
	"PRODUCT_ID" CHAR(64 BYTE) NOT NULL ENABLE,
	"PRODUCT_NAME" VARCHAR2(128 BYTE) NOT NULL ENABLE,
	"PRODUCT_DESCRIPTION" VARCHAR2(512 BYTE) NOT NULL ENABLED,
	"PRODUCT_GROUP" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"PRODUCT_STATUS" CHAR(16 BYTE) NOT NULL ENABLED,
	"UNIT_OF_MEASURE" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"ORGANIZATION_CODE" VARCHAR2(32 BYTE) NOT NULL ENABLED,
	"UNIT_COST" NUMBER(19,6) DEFAULT 0 NOT NULL ENABLE,
	"COST_CURRENCY" VARCHAR2(20 BYTE) DEFAULT 'USD' NOT NULL ENABLE,
	"TAXABLE_FLAG" CHAR(1 BYTE) DEFAULT ' ' NOT NULL ENABLE,
	"TAX_PRODUCT_CODE" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE,
	"RETURN_PERIOD" NUMBER(5,0),
	"IS_RETURNABLE" CHAR(1 BYTE),
	"IS_PERISHABLE" CHAR(1 BYTE),
	"IS_HAZMAT" CHAR(1 BYTE),
	"HAS_INFINITE_INVENTORY" CHAR(1 BYTE),
	"CREATED_DATE" TIMESTAMP (6),
	"MODIFIED_DATE" TIMESTAMP (6),
	"CREATED_USER_ID" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE, 
	"MODIFIED_USER_ID" VARCHAR2(64 BYTE) DEFAULT ' ' NOT NULL ENABLE, 
	CONSTRAINT "CN_PRODUCT_PK" PRIMARY KEY ("PRODUCT_KEY")
);
CREATE UNIQUE INDEX "CN_PRODUCT_I1" ON "CN_PRODUCT"("PRODUCT_ID", "ORGANIZATION_CODE", "UOM") ;
CREATE UNIQUE INDEX "CN_PRODUCT_I2" ON "CN_PRODUCT"("ORGANIZATION_CODE", "PRODUCT_GROUP") ;