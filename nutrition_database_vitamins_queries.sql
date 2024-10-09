-- Check vitamins content

-- Select the 100 foods with the most retinol content
SELECT food_name_in_french, retinol_in_µg_for_100g
FROM vitamins_table
ORDER BY retinol_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most beta-carotene content
SELECT food_name_in_french, beta_carotene_in_µg_for_100g
FROM vitamins_table
ORDER BY beta_carotene_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin D content
SELECT food_name_in_french, vitamin_d_in_µg_for_100g
FROM vitamins_table
ORDER BY vitamin_d_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin E content
SELECT food_name_in_french, vitamin_e_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_e_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin K1 content
SELECT food_name_in_french, vitamin_k1_in_µg_for_100g
FROM vitamins_table
ORDER BY vitamin_k1_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin K2 content
SELECT food_name_in_french, vitamin_k2_in_µg_for_100g
FROM vitamins_table
ORDER BY vitamin_k2_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin C content
SELECT food_name_in_french, vitamin_c_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_c_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B1 content
SELECT food_name_in_french, vitamin_b1_thiamine_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_b1_thiamine_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B2 content
SELECT food_name_in_french, vitamin_b2_riboflavin_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_b2_riboflavin_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B3 content
SELECT food_name_in_french, vitamin_b3_niacin_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_b3_niacin_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B5 content
SELECT food_name_in_french, vitamin_b5_pantothenic_acid_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_b5_pantothenic_acid_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B6 content
SELECT food_name_in_french, vitamin_b6_in_mg_for_100g
FROM vitamins_table
ORDER BY vitamin_b6_in_mg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B9 content
SELECT food_name_in_french, vitamin_b9_total_folate_in_µg_for_100g
FROM vitamins_table
ORDER BY vitamin_b9_total_folate_in_µg_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most vitamin B12 content
SELECT food_name_in_french, vitamin_b12_in_µg_for_100g
FROM vitamins_table
ORDER BY vitamin_b12_in_µg_for_100g DESC
LIMIT 100;