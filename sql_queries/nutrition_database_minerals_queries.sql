-- Check minerals content

-- Select the 100 foods with the most sodium chloride content
SELECT food_name_in_french, sodium_chloride_in_g_for_100g
FROM minerals_table
ORDER BY sodium_chloride_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most calcium content
SELECT food_name_in_french, calcium_in_mg_for_100g
FROM minerals_table
ORDER BY calcium_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most chloride content
SELECT food_name_in_french, chloride_in_mg_for_100g
FROM minerals_table
ORDER BY chloride_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most copper content
SELECT food_name_in_french, copper_in_mg_for_100g
FROM minerals_table
ORDER BY copper_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most iron content
SELECT food_name_in_french, iron_in_mg_for_100g
FROM minerals_table
ORDER BY iron_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most iodine content
SELECT food_name_in_french, iodine_in_µg_for_100g
FROM minerals_table
ORDER BY iodine_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most magnesium content
SELECT food_name_in_french, magnesium_in_mg_for_100g
FROM minerals_table
ORDER BY magnesium_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most manganese content
SELECT food_name_in_french, manganese_in_mg_for_100g
FROM minerals_table
ORDER BY manganese_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most phosphorus content
SELECT food_name_in_french, phosphorus_in_mg_for_100g
FROM minerals_table
ORDER BY phosphorus_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most potassium content
SELECT food_name_in_french, potassium_in_mg_for_100g
FROM minerals_table
ORDER BY potassium_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most selenium content
SELECT food_name_in_french, selenium_in_µg_for_100g
FROM minerals_table
ORDER BY selenium_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most sodium content
SELECT food_name_in_french, sodium_in_mg_for_100g
FROM minerals_table
ORDER BY sodium_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most zinc content
SELECT food_name_in_french, zinc_in_mg_for_100g
FROM minerals_table
ORDER BY zinc_in_mg_for_100g DESC
LIMIT 100;
