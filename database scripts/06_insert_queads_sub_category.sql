DO $$ 
DECLARE
   cat_id integer := 1;
BEGIN 
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Vehicle';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
	('Cars', cat_id),
	('Spare Parts & Accessories', cat_id),
	('Motorcycles & Scooters', cat_id),
	('Agricultural & Industrial Vehicles', cat_id),
	('Trucks & Buses', cat_id),
	('Boats & Ships', cat_id),
	('Motor Service & Repair', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Real Estate';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
	('Houses & Flats For Sale', cat_id),
	('Houses & Flats For Rent', cat_id),
	('Land For Sale', cat_id),
	('Land For Rent', cat_id),
	('Office & Commercial Space', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Pets';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
	('Pets Adoption', cat_id),
	('Cats', cat_id),
	('Dogs', cat_id),
	('Birds', cat_id),
	('Fish', cat_id),
	('Rabbits', cat_id),
	('Horses', cat_id),
	('Reptiles', cat_id),
	('Food For Pets', cat_id),
	('Accessories & Equipment', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Jobs';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
	('Job Wanted', cat_id),
	('Looking For A Job', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Services';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
	('Arts & Design', cat_id),
	('Atrology & Numerology', cat_id),
	('Business Offers', cat_id),
	('Car Rentals & Taxi Services', cat_id),
	('Carpenters & Upholstery', cat_id),
	('Catering & Tiffin Services', cat_id),
	('Computer & Web Services', cat_id),
	('Electronices & Appliances Repair', cat_id),
	('Event & Party Planners', cat_id),
	('Health & Fitness', cat_id),
	('Hotels & Resorts', cat_id),
	('Household Repairs', cat_id),
	('Interior Designers & Architects', cat_id),
	('Investment & Financial Planning', cat_id),
	('Loans & Insurance', cat_id),
	('Motor Service Repair', cat_id),
	('Nusery & Play Schools & Creches', cat_id),
	('Packers & Movers & Courier', cat_id),
	('Parlours & Salons', cat_id),
	('Placements & Recruitment Agencies', cat_id),
	('Plumnber & Electricians', cat_id),
	('Real Estate Services', cat_id),
	('Restaurants & Coffee Shops', cat_id),
	('Taxation & Audit', cat_id),
	('Education & Learning', cat_id),
	('Travel Agents', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Community';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
    ('Carpool', cat_id),
	('Community Activities', cat_id),
	('Events', cat_id),
	('Musicians & Artists & Bands', cat_id),
	('Volunteers', cat_id),
	('Lost & Found', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Education & Learning';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
    ('Computer & Mutlimedia Classes', cat_id),
	('Language Classes', cat_id),
	('Music & Theatre & Dance Classes', cat_id),
	('Tutoring & Private Lessons', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Electronics & Computers';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES
    ('Cellphone', cat_id),
	('Gaming & Consoles', cat_id),
	('TV, Audio & Visual', cat_id),
	('Computer & Laptops', cat_id),
	('Computer Hardware & Accessories', cat_id),
	('iPads & Tablets', cat_id),
	('Cameras', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Home, Garden & Tools';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES	
    ('Furniture & Decor', cat_id),
	('Homeware & Appliances', cat_id),
	('Tools & DIY', cat_id),
	('Garden & Braai', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Kids & Baby';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES	
    ('Prams, Cots & Equipment', cat_id),
	('Toddler''s Clothing & Accessories', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Farming & Industrial';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES	
    ('Business & Industrial Equipment', cat_id),
	('Farming Equipment & Vehicles', cat_id),
	('Livestock', cat_id),
	('Feeds, Supplements & Seeds', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Fashion & Beauty';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES	
    ('Clothing & Shoes', cat_id),
	('Health, Beauty & Cosmetics', cat_id),
	('Jewellery & Accessories', cat_id),
	('Other', cat_id);
	
	SELECT id into cat_id
	FROM que_ads.category
	WHERE name = 'Personals';
	
	DELETE FROM que_ads.sub_category
	WHERE category_id = cat_id;
	
	INSERT INTO que_ads.sub_category
    (name, category_id)
    VALUES	
    ('Strictly Platonic', cat_id),
	('Men Looking For Women', cat_id),
	('Women Looking For Men', cat_id),
	('Casual Encounters', cat_id),
	('Men Looking For Men', cat_id),
	('Escorts', cat_id);
   
END $$;