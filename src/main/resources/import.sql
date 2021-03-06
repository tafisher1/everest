-- This SQL script is automatically injected into the application database upon startup by the Hibernate
-- library. Intended for development purposes only, this feature can be disabled by removing the 
-- line for 'spring.jpa.hibernate.ddl-auto' in application.properties.

INSERT INTO locale_theme(name, description) VALUES("basic", "Basic theme");
INSERT INTO locale_theme(name, description) VALUES("modern", "Modern theme");

INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("A", "Atlanta", "US/Eastern", "USGA0028", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("K", "Kearney", "US/Central", "USNE0265", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("P", "Pune", "IST", "INXX0102", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("I", "Ames", "US/Central", "USIA0026", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("C", "Aliso Viejo", "US/Pacific", "USCA0014", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("M", "Manhattan", "US/Central", "USKS0358", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");
INSERT INTO locale(code, name, time_zone, weather_code, theme, stock_symbols, news_keywords) VALUES("FC", "Fort Collins", "US/Mountain", "USCO0105", 1, "CAB,ASPS,RHT,PRI,EFX,FISV,KO,CRD.B", "Xpanxion,UST Global,Rural Outsourcing,rural sourcing");

INSERT INTO locale_alias(locale_code, alias) VALUES("K", "nebraska");
INSERT INTO locale_alias(locale_code, alias) VALUES("K", "kearney");
INSERT INTO locale_alias(locale_code, alias) VALUES("I", "iowa");

INSERT INTO employee(first_name, last_name, locale_code, title, email_address, work_phone, cell_phone, biography, profile_image_url) VALUES ("Cookie", "Monster", "K", "QA", "cookiemonster@mailinator.com", "111-111-1111", "444-444-4444", "blurb here", null);
INSERT INTO employee(first_name, last_name, locale_code, title, email_address, work_phone, cell_phone, biography, profile_image_url) VALUES ("Big", "Bird", "K", "QA", "bigbird@mailinator.com", "222-222-2222", "555-555-5555", "blurb here", null);
INSERT INTO employee(first_name, last_name, locale_code, title, email_address, work_phone, cell_phone, biography, profile_image_url) VALUES ("Bert", "B", "I", "QA", "bertb@mailinator.com", "333-333-3333", "666-666-6666", "blurb here", null);

INSERT INTO system_role(id, name) VALUES(1, "ROLE_API_ADMIN");
INSERT INTO system_role(id, name) VALUES(2, "ROLE_API_USER");

-- Test Admin Token (ad3dfe-1d5a8d7e-d8a7d8e9-dadadw)
INSERT INTO api_token(value, description, enabled, locked) VALUES ("ad3dfe-1d5a8d7e-d8a7d8e9-dadadw", "dev-admin", true, false);
-- Test dev token (5d89az-x8a7q264-115z9fpq-91acq4)
INSERT INTO api_token(value, description, enabled, locked) VALUES ("5d89az-x8a7q264-115z9fpq-91acq4", "dev-user", true, false);

INSERT INTO api_token_roles(api_token, roles) VALUES (1, 1);
INSERT INTO api_token_roles(api_token, roles) VALUES (1, 2);
INSERT INTO api_token_roles(api_token, roles) VALUES (2, 2);