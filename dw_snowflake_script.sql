CREATE  TABLE PUBLIC.DIM_DATE ( 
	DATE_ID              BIGINT NOT NULL   ,
	YEAR_NUMBER          INT    ,
	MONTH_NUMBER         INT    ,
	QUARTER_NUMBER       INT    ,
	DAY_NUMBER           DATE    ,
	HOUR_NUMBER          DATE    ,
	DAY_NAME             VARCHAR(100)    ,
	MONTH_NAME           VARCHAR(100)    ,
	WEEK_OF_MONTH        VARCHAR(100)    ,
	WEEK_OF_YEAR         VARCHAR(100)    ,
	IS_HOLIDAY           DATE    ,
	CONSTRAINT PK_DIM_DATE PRIMARY KEY ( DATE_ID )
 );

CREATE  TABLE PUBLIC.DIM_OTC_TIER ( 
	OTC_TIER_ID          INT NOT NULL   ,
	OTC_TIER             VARCHAR(100)    ,
	CONSTRAINT PK_DIM_OTC_TIER PRIMARY KEY ( OTC_TIER_ID )
 );

CREATE  TABLE PUBLIC.DIM_PRICE_SOURCE ( 
	PRICE_SOURCE_ID      INT NOT NULL   ,
	PRICE_SOURCE_NAME    VARCHAR(100)    ,
	CONSTRAINT PK_DIM_PRICE_SOURCE PRIMARY KEY ( PRICE_SOURCE_ID )
 );

CREATE  TABLE PUBLIC.DIM_SECURITY ( 
	SECURITY_ID          INT NOT NULL   ,
	COMPANY_ID           INT    ,
	TRADING_SYMBOL       CHAR(10)    ,
	CUSIP_NUMBER         CHAR(9)    ,
	SECURITY_NAME        CHAR(50)    ,
	SECURITY_TYPE        VARCHAR(75)    ,
	SECURITY_CLASS       CHAR(1)    ,
	SECURITY_STATUS      VARCHAR(20)    ,
	FINRAISSUERIDENTIFIER INT    ,
	SECURITY_DESCRIPTION VARCHAR(100)    ,
	COMPANY_NAME         VARCHAR(100)    ,
	COUNTRY              CHAR(2)    ,
	STATE                CHAR(2)    ,
	CONSTRAINT PK_DIM_SECURITY PRIMARY KEY ( SECURITY_ID )
 );

CREATE  TABLE PUBLIC.DIM_TRADING_VENUE ( 
	TRADING_VENUE_ID     INT NOT NULL   ,
	TRADING_VENUE        CHAR(20)    ,
	CONSTRAINT PK_DIM_TRADING_VENUE PRIMARY KEY ( TRADING_VENUE_ID )
 );

CREATE  TABLE PUBLIC.FACTS_OTC ( 
	FACT_ID              BIGINT NOT NULL   ,
	CLOSING_INSIDE_BID_DATE_ID INT NOT NULL   ,
	CLOSING_INSIDE_ASK_DATE_ID INT NOT NULL   ,
	CLOSING_BEST_BID_DATE_ID INT NOT NULL   ,
	CLOSING_BEST_ASK_DATE_ID INT NOT NULL   ,
	PREVIOUS_CLOSE_DATE_ID INT NOT NULL   ,
	SHORT_INTEREST_DATE_ID INT NOT NULL   ,
	OTC_TIER_ID          INT NOT NULL   ,
	SECURITY_ID          INT NOT NULL   ,
	PRICE_SOURCE_ID      INT NOT NULL   ,
	TRADING_VENUE_ID     INT NOT NULL   ,
	CLOSING_INSIDE_BID   DECIMAL(11,5)    ,
	CLOSING_INSIDE_ASK   DECIMAL(11,5)    ,
	CLOSING_MID_PRICE    DECIMAL(11,5)    ,
	CLOSING_BEST_BID     DECIMAL(11,5)    ,
	CLOSING_BEST_ASK     DECIMAL(11,5)    ,
	CLOSING_SPREAD_INSIDE DECIMAL(11,5)    ,
	CLOSING_SPREAD_BEST  DECIMAL(11,5)    ,
	CAVEAT_EMPTOR_FLAG   CHAR(1)    ,
	REG_SHO_STATUS_FLAG  CHAR(1)    ,
	RULE_3210_STATUS_FLAG CHAR(1)    ,
	PRICE_OPEN           DECIMAL(11,5)    ,
	PRICE_HIGH           DECIMAL(11,5)    ,
	PRICE_LOW            DECIMAL(11,5)    ,
	PRICE_LAST           DECIMAL(11,5)    ,
	PIVOT_POINT          DECIMAL(11,5)    ,
	SHARE_VOLUME         INT    ,
	DOLLAR_VOLUME        DECIMAL(30,20)    ,
	TRADE_COUNT          INT    ,
	OTC_LINK_SHARE_VOLUME INT    ,
	OTC_LINK_DOLLAR_VOLUME DECIMAL(30,20) NOT NULL   ,
	OTC_LINK_TRADE_COUNT INT    ,
	NUMBER_OF_MARKET_MAKERS INT    ,
	BONA_FIDE_CONTINUOUS INT    ,
	TOTAL_SHARES_OUTSTANDING DECIMAL(16,1)    ,
	CONSTRAINT PK_FACTS_OTC PRIMARY KEY ( FACT_ID, OTC_TIER_ID )
 );

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE FOREIGN KEY ( CLOSING_INSIDE_BID_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE_0 FOREIGN KEY ( CLOSING_INSIDE_ASK_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE_1 FOREIGN KEY ( CLOSING_BEST_BID_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE_2 FOREIGN KEY ( CLOSING_BEST_ASK_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE_3 FOREIGN KEY ( PREVIOUS_CLOSE_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_DATE_4 FOREIGN KEY ( SHORT_INTEREST_DATE_ID ) REFERENCES PUBLIC.DIM_DATE( DATE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_OTC_TIER FOREIGN KEY ( OTC_TIER_ID ) REFERENCES PUBLIC.DIM_OTC_TIER( OTC_TIER_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_SECURITY FOREIGN KEY ( SECURITY_ID ) REFERENCES PUBLIC.DIM_SECURITY( SECURITY_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_PRICE_SOURCE FOREIGN KEY ( PRICE_SOURCE_ID ) REFERENCES PUBLIC.DIM_PRICE_SOURCE( PRICE_SOURCE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE PUBLIC.FACTS_OTC ADD CONSTRAINT FK_FACTS_OTC_DIM_TRADING_VENUE FOREIGN KEY ( TRADING_VENUE_ID ) REFERENCES PUBLIC.DIM_TRADING_VENUE( TRADING_VENUE_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE PUBLIC.DIM_DATE IS 'month_number\nquarter_number\nday_number\nhour_number\nday_name\nmonth_name\nweek_of_month\nweek_of_year';

COMMENT ON TABLE PUBLIC.DIM_TRADING_VENUE IS 'trading_venue';

COMMENT ON TABLE PUBLIC.FACTS_OTC IS 'The flags are part of the facts';

COMMENT ON COLUMN PUBLIC.FACTS_OTC.CLOSING_SPREAD_INSIDE IS 'Difference of Ask and BId\n(Ask - Bid) / Ask';

COMMENT ON COLUMN PUBLIC.FACTS_OTC.PIVOT_POINT IS '(High + Low + Close) / 3';
