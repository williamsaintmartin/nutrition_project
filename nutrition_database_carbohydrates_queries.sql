-- Check carbohydrates content

-- Select the 100 foods with the most sugar content
SELECT food_name_in_french, sugars_in_g_for_100g
FROM carbohydrates_table
ORDER BY sugars_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most fructose content
SELECT food_name_in_french, fructose_in_g_for_100g
FROM carbohydrates_table
ORDER BY fructose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most galactose content
SELECT food_name_in_french, galactose_in_g_for_100g
FROM carbohydrates_table
ORDER BY galactose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most glucose content
SELECT food_name_in_french, glucose_in_g_for_100g
FROM carbohydrates_table
ORDER BY glucose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most lactose content
SELECT food_name_in_french, lactose_in_g_for_100g
FROM carbohydrates_table
ORDER BY lactose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most maltose content
SELECT food_name_in_french, maltose_in_g_for_100g
FROM carbohydrates_table
ORDER BY maltose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most sucrose content
SELECT food_name_in_french, sucrose_in_g_for_100g
FROM carbohydrates_table
ORDER BY sucrose_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most starch content
SELECT food_name_in_french, starch_in_g_for_100g
FROM carbohydrates_table
ORDER BY starch_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most fibers content
SELECT food_name_in_french, fibers_in_g_for_100g
FROM carbohydrates_table
ORDER BY fibers_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most polyols content
SELECT food_name_in_french, polyols_in_g_for_100g
FROM carbohydrates_table
ORDER BY polyols_in_g_for_100g DESC
LIMIT 100;