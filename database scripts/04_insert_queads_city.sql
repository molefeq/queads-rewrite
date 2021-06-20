DO $$ 
DECLARE
   prov_id integer := 1;
BEGIN 
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'GP';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    ('Johannesburg', 'JHB', '2001', prov_id),
    ('Benoni', 'BEN', '1500', prov_id),
    ('Boksburg', 'BOKB', '1459', prov_id),
    ('Brakpan', 'BRK', '2001', prov_id),
    ('Carletonville', 'CARLNV', '2499', prov_id),
    ('Germiston', 'GM', '1401', prov_id),
    ('Krugersdorp', 'KRUGD', '1724', prov_id),
    ('Pretoria', 'PTA', '0081', prov_id),
    ('Randburg', 'RND', '2188', prov_id),
    ('Randfontein', 'RANDF', '1759', prov_id),
    ('Roodepoort', 'RODP', '1724', prov_id),
    ('Soweto', 'SOW', '1804', prov_id),
    ('Springs', 'SPRING', '1575', prov_id),
    ('Vanderbijlpark', 'VANDBP', '1911', prov_id),
    ('Vereeniging', 'VERG', '2001', prov_id),
    ('KATLEHONG', 'KATLH', '1434', prov_id),
    ('BRONKHORSTSPRUIT', 'BRONP', '1034', prov_id),
    ('DAVEYTON', 'DAVT', '1507', prov_id),
    ('DUDUZA', 'DUDZ', '1496', prov_id),
    ('ELDORADOPARK', 'ELDOS', '1813', prov_id),
    ('BRYANSTON', 'BRYAN', '2191', prov_id),
    ('KEMPTON PARK', 'KEMP', '1620', prov_id),
    ('HAMMANSKRAAL', 'HAMMK', '0400', prov_id),
    ('TEMBISA', 'TEM', '1632', prov_id),
    ('Arcadia', 'ARC', '0083', prov_id),
    ('Balfour', 'BALF', '2410', prov_id),
    ('Atteridgeville', 'ATTRVL', '0008', prov_id),
    ('Berea', 'BER', '2198', prov_id),
    ('Birchleigh', 'BIRCL', '1618', prov_id),
    ('Boipatong', 'BIOP', '1901', prov_id),
    ('Brixton', 'BRIXT', '2092', prov_id),
    ('Centurion', 'CENTR', '0157', prov_id),
    ('Cosmo City', 'COSMC', '2087', prov_id),
    ('Yeoville', 'YEOV', '2143', prov_id),
    ('Wynberg', 'WYB', '2090', prov_id),
    ('Woodmead', 'WOODM', '2191', prov_id),
    ('Witpoortjie', 'WITP', '1794', prov_id),
    ('Windsor', 'WINDS', '2194', prov_id),
    ('Vrede', 'VRED', '9835', prov_id),
    ('Turffontein', 'TURFF', '2140', prov_id),
    ('Tsakane', 'TSAK', '1548', prov_id),
    ('Southdale', 'SOUTD', '2135', prov_id),
    ('Soshanguve', 'SOSHA', '0164', prov_id),
    ('Sebokeng', 'SEB', '1984', prov_id),
    ('Sedibeng', 'SED', '1635', prov_id),
    ('Sandton', 'SANDT', '2196', prov_id),
    ('Rosebank', 'ROS', '2196', prov_id),
    ('Robertsham', 'ROBS', '2175', prov_id),
    ('Rivonia', 'RIV', '2128', prov_id),
    ('Randpark Ridge', 'RNPR', '2194', prov_id),
    ('Protea Glen', 'PROTG', '1819', prov_id),
    ('Pretoria North', 'PTAN', '0116', prov_id),
    ('Northgate', 'NORG', '2162', prov_id),
    ('Mulbarton', 'MULB', '2059', prov_id),
    ('Midrand', 'MID', '1662', prov_id),
    ('Mamelodi', 'MAML', '0122', prov_id),
    ('Lenasia', 'LEN', '1821', prov_id),
    ('Hillbrow', 'HILLB', '2038', prov_id),
    ('Greenside', 'GREENS', '2034', prov_id),
    ('Gezina', 'GEZ', '0031', prov_id),
    ('Fourways', 'FOURW', '2191', prov_id),
    ('Ferndale', 'FERN', '2160', prov_id),
    ('Eastgate', 'EASG', '2103', prov_id),
    ('Diepsloot', 'DIPS', '2069', prov_id),
    ('Croydon', 'CROD', '1619', prov_id),
    ('Cresta', 'CRE', '2118', prov_id),
    ('Constantia Park', 'CONSTP', '0010', prov_id),
    ('Alexandra', 'ALEX', '2090', prov_id),
    ('ZWARTKOP', 'ZWART', '0157', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'EC';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    ('East London', 'EC_EAL', '5241', prov_id),
    ('Port Elizabeth', 'EC_PE', '6001', prov_id),
    ('Bhisho', 'EC_BHS', '5605', prov_id),
    ('Umtata', 'EC_UMT', '6001', prov_id),
    ('Queenstown', 'EC_QTN', '5319', prov_id),
    ('Uitenhage', 'EC_UITH', '6229', prov_id),
    ('Grahamstown', 'EC_GRTW', '6139', prov_id),
    ('Graaff-Reinet', 'EC_GRARN', '6280', prov_id),
    ('Aliwal North', 'EC_ALN', '9750', prov_id),
    ('Cradock', 'EC_CRAD', '5880', prov_id),
    ('Jeffrey’s Bay', 'EC_JEFB', '6332', prov_id),
    ('Middelburg', 'EC_MDB', '5900', prov_id),
    ('Port Alfred', 'EC_PORTA', '6170', prov_id),
    ('Port Saint John’s', 'EC_PSTJ', '4820', prov_id),
    ('Adelaide', 'EC_ADL', '5760', prov_id),
    ('Alice', 'EC_AL', '5700', prov_id),
    ('Barkly East', 'EC_BAKE', '9786', prov_id),
    ('Bizana', 'EC_BIZ', '4800', prov_id),
    ('Burgersdorp', 'EC_BUGD', '9744', prov_id),
    ('Willowvale', 'EC_WLLV', '5041', prov_id),
    ('Willowmore', 'EC_WLLM', '6445', prov_id),
    ('Somerset East', 'EC_SMSE', '7130', prov_id),
    ('Other Eastern Cape', 'EC_OEC', '6001', prov_id),
    ('Mdantsane', 'EC_MD', '5221', prov_id),
    ('Fort Beaufort', 'EC_FB', '5720', prov_id),
    ('Steytlerville', 'EC_STVIL', '6250', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'FS';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    ('Bethlehem', 'FS_BETHL', '9701', prov_id),
    ('Bloemfontein', 'FS_BLOEMF', '9301', prov_id),
    ('Botshabelo', 'FS_BOTSH', '9781', prov_id),
    ('Brandfort', 'FS_BRF', '9400', prov_id),
    ('Bultfontein', 'FS_BUFON', '9670', prov_id),
    ('Clocolan', 'FS_CLOL', '9735', prov_id),
    ('Deneysville', 'FS_DAYSV', '1932', prov_id),
    ('Frankfort', 'FS_FRANF', '9830', prov_id),
    ('Harrismith', 'FS_HARS', '9880', prov_id),
    ('Heilbron', 'FS_HEILB', '9650', prov_id),
    ('Hennenman', 'FS_HENM', '9445', prov_id),
    ('Hoopstad', 'FS_HOPST', '9670', prov_id),
    ('Koffiefontein', 'FS_KOFOT', '9986', prov_id),
    ('Koppies', 'FS_KOP', '9540', prov_id),
    ('Kroonstad', 'FS_KRONS', '9499', prov_id),
    ('Ladybrand', 'FS_LDYB', '9745', prov_id),
    ('Other Free State', 'FS_OFS', '9301', prov_id),
    ('Parys', 'FS_PARY', '9585', prov_id),
    ('Phuthaditjhaba', 'FS_PHUDH', '9870', prov_id),
    ('Reitz', 'FS_REIT', '9810', prov_id),
    ('Sasolburg', 'FS_SASOLB', '1949', prov_id),
    ('Senekal', 'FS_SENK', '9600', prov_id),
    ('Springfontein', 'FS_SPRINGF', '9917', prov_id),
    ('Thaba Nchu', 'FS_THANC', '9770', prov_id),
    ('Theunissen', 'FS_THES', '9410', prov_id),
    ('Viljoenskroon', 'FS_VILSKR', '9660', prov_id),
    ('Vrede', 'FS_VREDE', '9850', prov_id),
    ('Vredefort', 'FS_VREDF', '9595', prov_id),
    ('Welkom', 'FS_WELK', '9459', prov_id),
    ('Wesselsbron', 'FS_WESBR', '9682', prov_id),
    ('Winburg', 'FS_WNB', '9420', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'KZN';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    	('Ulundi' ,'KZN_UL', '3838', prov_id),
		('Umzinyathi - Dundee' ,'KZN_UMDE', '4000', prov_id),
		('Uthukela - Ladysmith' ,'KZN_UTH', '3370', prov_id),
		('Vryheid' ,'KZN_VRY', '3100', prov_id),
		('Zululand' ,'KZN_ZULL', '4000', prov_id),		
		('Berea & Musgrave' ,'KZN_BERMUS', '4000', prov_id),
		('Chatsworth' ,'KZN_CHATS', '4092', prov_id),
		('City Centre' ,'KZN_CICE', '4000', prov_id),
		('Golden Mile' ,'KZN_GOLDM', '4000', prov_id),
		('Greyville' ,'KZN_GREYV', '4000', prov_id),
		('Inanda' ,'KZN_INAD', '4309', prov_id),
		('KwaMashu' ,'KZN_KWMAS', '4359', prov_id),
		('Morningside' ,'KZN_MORNS', '4000', prov_id),
		('Other' ,'KZN_OTHER', '4000', prov_id),
		('Phoenix' ,'KZN_PHON', '4068', prov_id),
		('Point & Harbour' ,'KZN_POHAB', '4000', prov_id),
		('Umlazi' ,'KZN_NUZ', '4066', prov_id),		
		('Estcourt' ,'KZN_ESOUT', '3360', prov_id),
		('Greytown' ,'KZN_GREYT', '3500', prov_id),
		('Howick' ,'KZN_HOWK', '3224', prov_id),
		('Kokstad' ,'KZN_KOKT', '4700', prov_id),
		('Pietermaritzburg' ,'KZN_PMB', '3201', prov_id),
		('Richmond' ,'KZN_RICHM', '3781', prov_id),
		('Ballitoville' ,'KZN_BALLIV', '4000', prov_id),
		('Empangeni' ,'KZN_EMPG', '3880', prov_id),
		('Eshowe' ,'KZN_ESH', '3815', prov_id),
		('Ilembe (Dolphin Coast)' ,'KZN_ILEDC', '3900', prov_id),
		('Richards Bay' ,'KZN_RNB', '3900', prov_id),
		('Stanger' ,'KZN_STNG', '4449', prov_id),
		('Umkhanyakude' ,'KZN_UMHNK', '3900', prov_id),
		('Durban North' ,'KZN_DBN', '4051', prov_id),
		('Mount Edgecombe' ,'KZN_MTEDG', '4068', prov_id),
		('Tongaat' ,'KZN_TONGT', '4399', prov_id),
		('Umdloti Beach' ,'KZN_UMDB', '4000', prov_id),
		('Umhlanga' ,'KZN_UMHL', '4319', prov_id),
		('Verulam' ,'KZN_VER', '4339', prov_id),
		('Hibiscus Coast' ,'KZN_HIBIC', '4000', prov_id),
		('Margate' ,'KZN_MARG', '4275', prov_id),
		('Port Edward' ,'KZN_PE', '4295', prov_id),
		('Port Shepstone' ,'KZN_PS', '4240', prov_id),
		('Scottburgh' ,'KZN_SCBH', '4180', prov_id),
		('Umdoni' ,'KZN_UMD', '4000', prov_id),
		('Umzumbe' ,'KZN_UMZ', '4225', prov_id),
		('Amanzimtoti' ,'KZN_AMNT', '4126', prov_id),
		('Bluff' ,'KZN_BLU', '4052', prov_id),
		('Glenmore' ,'KZN_GLENM', '4000', prov_id),
		('Glenwood' ,'KZN_GLENW', '4000', prov_id),
		('Isipingo Beach' ,'KZN_ISIPB', '4133', prov_id),
		('Kingsborough' ,'KZN_KIBR', '4000', prov_id),
		('South Beach' ,'KZN_SB', '4000', prov_id),
		('Umkomaas' ,'KZN_UMKS', '4170', prov_id),
		('Drummond' ,'KZN_DRMN', '4000', prov_id),
		('Gillitts' ,'KZN_GILT', '3610', prov_id),
		('Hillcrest' ,'KZN_HLC', '3610', prov_id),
		('Kloof' ,'KZN_KL', '3610', prov_id),
		('New Germany' ,'KZN_NGER', '3610', prov_id),
		('Pinetown' ,'KZN_PN', '3610', prov_id),
		('Queensburgh' ,'KZN_QUNB', '4093', prov_id),
		('Reservoir Hills' ,'KZN_RESHIL', '4152', prov_id),
		('Waterfall' ,'KZN_WATF', '4000', prov_id),
		('Westville', 'KZN_WESTV', '3629', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'LP';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    	('Bela-Bela / Warmbad' ,'LP_BEL', '0489', prov_id),
		('Dendron' ,'LP_DEND', '0715', prov_id),
		('Giyani' ,'LP_GIY', '0826', prov_id),
		('Lebowakgomo' ,'LP_LBKG', '0555', prov_id),
		('Lephalale / Ellisras' ,'LP_LEP', '0555', prov_id),
		('Louis Trichardt' ,'LP_LOUTR', '0909', prov_id),
		('Lulekani' ,'LP_LULK', 'Lulekani', prov_id),
		('Mankweng' ,'LP_MAK', '0510', prov_id),
		('Marblehall' ,'LP_MARB', '0510', prov_id),
		('Modimolle / Nylstroom' ,'LP_MOD', '0510', prov_id),
		('Modjadji / Duiwelskloof' ,'LP_MODJ', '0601', prov_id),
		('Mokopane / Potgietersrus' ,'LP_MOKP', '0601', prov_id),
		('Musina / Messina' ,'LP_MUSI', '0900', prov_id),
		('Mutale' ,'LP_MUTL', '0956', prov_id),
		('Nkowankowa' ,'LP_NKAKW', '0884', prov_id),
		('Other Limpopo' ,'LP_OTHER', '0884', prov_id),
		('Phalaborwa' ,'LP_PHAL', '1392', prov_id),
		('Polokwane / Pietersburg' ,'LP_POL', '0884', prov_id),
		('Soekmekaar' ,'LP_SOEKM', '0810', prov_id),
		('Thabazimbi' ,'LP_THAB', '0362', prov_id),
		('Thohoyandou' ,'LP_THOY', '0985', prov_id),
		('Thulamela' ,'LP_THLM', '0850', prov_id),
		('Tzaneen' ,'LP_TZ', '0850', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'MP';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    ('Balfour', 'MP_BALF', '2410', prov_id),
	('Barberton', 'MP_BARBT', '1300', prov_id),
	('Bethal', 'MP_BETH', '2309', prov_id),
	('Breyten', 'MP_BREY', '2330', prov_id),
	('Bushbuckridge', 'MP_BSHBR', '1280', prov_id),
	('Carolina', 'MP_CARLN', '1185', prov_id),
	('Delmas', 'MP_DELM', '2210', prov_id),
	('Dullstroom', 'MP_DLSTR', '1500', prov_id),
	('Ekangala', 'MP_EKNG', '1021', prov_id),
	('eMakhazeni / Belfast', 'MP_BELF', '1500', prov_id),
	('Embalenhle', 'MP_MBLH', '2285', prov_id),
	('Empuluzi', 'MP_EMPL', '1500', prov_id),
	('Ermelo', 'MP_ERM', '2375', prov_id),
	('Greylingstad', 'MP_GEYLS', '2415', prov_id),
	('Groblersdal', 'MP_GROBD', '1030', prov_id),
	('Hazyview', 'MP_HAZYV', '1240', prov_id),
	('Hendrina', 'MP_HENDR', '1095', prov_id),
	('Komatipoort', 'MP_KOMPT', '1340', prov_id),
	('Kriel', 'MP_KRL', '2271', prov_id),
	('KwaNgema', 'MP_KWNG', '1500', prov_id),
	('Leslie / Lebogang', 'MP_LESL', '2265', prov_id),
	('Lydenburg', 'MP_LYDB', '1120', prov_id),
	('Machadodorp', 'MP_MACHD', '1170', prov_id),
	('Malelane', 'MP_MELL', '1321', prov_id),
	('Mbombela / Nelspruit', 'MP_MB', '1200', prov_id),
	('Middelburg', 'MP_MID', '1055', prov_id),
	('New-Location', 'MP_NWL', '1500', prov_id),
	('Ogies / Phola', 'MP_OGIES', '2233', prov_id),
	('Other Mpumalanga', 'MP_OTHER', '1034', prov_id),
	('Piet Retief', 'MP_PIETR', '3180', prov_id),
	('Sabie', 'MP_SABIE', '1150', prov_id),
	('Secunda', 'MP_SEC', '2302', prov_id),
	('Siyabuswa', 'MP_SIY', '0475', prov_id),
	('Standerton', 'MP_STD', '2430', prov_id),
	('Volksrust', 'MP_VOLKR', '2471', prov_id),
	('Wakkerstroom', 'MP_WAKRSTR', '2480', prov_id),
	('Witbank', 'MP_WIT', '1034', prov_id),
	('Witrivier', 'MP_WITR', '1034', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'NW';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    ('Bloemhof', 'NW_BLOM', '2660', prov_id),
	('Bray', 'NW_BRY', '2660', prov_id),
	('Brits', 'NW_BRIT', '0269', prov_id),
	('Christiana', 'NW_CHRIS', '2680', prov_id),
	('Delareyville', 'NW_DELV', '2770', prov_id),
	('Fochville', 'NW_FOCHV', '2515', prov_id),
	('Hartbeespoort', 'NW_HARTES', '0216', prov_id),
	('Klerksdorp', 'NW_KKD', '2571', prov_id),
	('Koster', 'NW_KOST', '0348', prov_id),
	('Lichtenburg', 'NW_LITCB', '2742', prov_id),
	('Mabopane', 'NW_MABP', '0190', prov_id),
	('Magaliesburg', 'NW_MAGLI', '0190', prov_id),
	('Mahikeng / Mafikeng', 'NW_MAFK', '2745', prov_id),
	('Mmbatho', 'NW_MMB', '2745', prov_id),
	('Mogwase', 'NW_MOGW', '0388', prov_id),
	('Mothibistad', 'NW_MOTHB', '0388', prov_id),
	('Orkney', 'NW_OKNY', '2619', prov_id),
	('Other North West', 'NW_OTHER', '2619', prov_id),
	('Ottosdal / Letsopa', 'NW_OTTOD', '2610', prov_id),
	('Pomfret', 'NW_POFR', '8620', prov_id),
	('Potchefstroom', 'NW_POTCH', '2531', prov_id),
	('Reivilo', 'NW_REIV', '2531', prov_id),
	('Rustenburg', 'NW_RUST', '0337', prov_id),
	('Schweizer-Reneke', 'NW_SCHW', '2786', prov_id),
	('Stella', 'NW_STEL', '8650', prov_id),
	('Stilfontein', 'NW_STILF', '2551', prov_id),
	('Ventersdorp', 'NW_VENTSD', '2710', prov_id),
	('Vryburg', 'NW_VRYB', '8476', prov_id),
	('Wolmaransstad', 'NW_WOLMR', '2630', prov_id),
	('Zeerust', 'NW_ZEER', '2867', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'NC';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES
    	('Alexander Bay', 'NC_AB', '8290', prov_id),
		('Barkly West', 'NC_BW', '9786', prov_id),
		('Beeshoek', 'NC_BEESH', '8301', prov_id),
		('Calvinia', 'NC_CLAN', '8915', prov_id),
		('Carnarvon', 'NC_CARV', '8925', prov_id),
		('Colesberg', 'NC_COLB', '9795', prov_id),
		('Danielskuil', 'NC_DANSK', '8405', prov_id),
		('De Aar', 'NC_DAAR', '7000', prov_id),
		('Fraserburg', 'NC_FRB', '6960', prov_id),
		('Garies', 'CD_GAR', '8220', prov_id),
		('Griekwastad', 'NC_GRWST', '8301', prov_id),
		('Groblershoop', 'NC_GRBSH', '8943', prov_id),
		('Hartswater', 'NC_HWTR', '8570', prov_id),
		('Jan Kempdorp', 'NC_JANK', '8550', prov_id),
		('Kathu', 'NC_KATHU', '8446', prov_id),
		('Keimoes', 'NC_KEM', '8660', prov_id),
		('Kimberley', 'NC_KMB', '8301', prov_id),
		('Kuruman', 'NC_KURM', '8463', prov_id),
		('Mier', 'NC_MIER', '8811', prov_id),
		('Other Northern Cape', 'NC_ONC', '8000', prov_id),
		('Pampierstad', 'NC_PMPS', '8566', prov_id),
		('Pofadder', 'NC_PFD', '8890', prov_id),
		('Port Nolloth', 'NC_PTN', '8283', prov_id),
		('Postmasburg', 'NC_PSTMB', '8405', prov_id),
		('Prieska', 'NC_PRK', '8940', prov_id),
		('Ritchie', 'NC_RTC', '8701', prov_id),
		('Springbok', 'NC_SPRB', '8240', prov_id),
		('Strydenburg', 'NC_STRYD', '8765', prov_id),
		('Sutherland', 'NC_SL', '6960', prov_id),
		('Upington', 'NC_UP', '8801', prov_id),
		('Vanderkloof', 'NC_VK', '8771', prov_id),
		('Victoria West', 'NC_VW', '7070', prov_id),
		('Warrenton', 'NC_WT', '8530', prov_id);
	
	SELECT id into prov_id
	FROM que_ads.province
	WHERE code = 'WC';
	
	DELETE FROM que_ads.city
	WHERE province_id = prov_id;
	
	INSERT INTO que_ads.city
    (name, code, postal_code, province_id)
    VALUES	
    ('Cape Town', 'CPT', '7764', prov_id),
    ('George', 'GEORGE', '6529', prov_id),
    ('Paarl', 'PAARL', '7646', prov_id),
    ('Worcester', 'WORC', '6730', prov_id),
    ('Saldanha', 'SALDH', '7395', prov_id),
    ('Oudtshoorn', 'OUDH', '6625', prov_id),
    ('Mossel Bay', 'MOSBAY', '6506', prov_id),
    ('Knysna', 'KNYS', '6571', prov_id),
    ('Beaufort West', 'BEUW', '6970', prov_id),
    ('Vredenburg', 'VREDB', '7390', prov_id),
    ('Malmesbury', 'MALB', '7299', prov_id),
    ('Hermanus', 'HERM', '7200', prov_id),
    ('Swellendam', 'SWELDAM', '6740', prov_id),
    ('Montagu', 'MONTG', '6720', prov_id),
    ('Bredasdorp', 'BREDD', '7280', prov_id),
    ('Caledon', 'CALD', '7230', prov_id),
    ('Moorreesburg', 'MOORB', '7312', prov_id),
    ('Piketberg', 'PIKBE', '8115', prov_id),
    ('Velddrif', 'VELD', '7365', prov_id),
    ('Saint Helena Bay', 'STHELB', '6660', prov_id),
    ('Darling', 'DARL', '7351', prov_id),
    ('Villiersdorp', 'WC_VLD', '6848', prov_id),
    ('Tulbagh', 'WC_TB', '6820', prov_id),
    ('Saron', 'SARON', '1500', prov_id),
    ('Clanwilliam', 'WC_CW', '8135', prov_id),
    ('Citrusdal', 'WC_CD', '7340', prov_id),
    ('Porterville', 'WC_PV', '6810', prov_id),
    ('Kleinmond', 'WC_KM', '7195', prov_id),
    ('Hopefield', 'WC_HF', '7355', prov_id),
    ('Vanrhynsdorp', 'WC_VD', '8170', prov_id),
    ('Klawer', 'WC_KW', '8145', prov_id),
    ('Lambert’s Bay', 'WC_LABB', '8130', prov_id),
    ('Genadendal', 'WC_GDL', '7764', prov_id),
    ('Riviersonderend', 'WC_RSD', '7250', prov_id),
    ('Onrus', 'WC_ON', '7201', prov_id),
    ('Barrydale', 'WC_BD', '7764', prov_id),
    ('Rawsonville', 'WC_RWV', '7764', prov_id),
    ('Suurbraak', 'WC_SB', '7764', prov_id);
   
END $$;