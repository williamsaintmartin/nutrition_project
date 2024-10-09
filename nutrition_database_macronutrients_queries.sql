-- Check macro-nutrients content

-- Select the 100 foods with the most energy content
SELECT food_name_in_french, energy_in_kJ_for_100g
FROM macro_nutrients_table
ORDER BY energy_in_kJ_for_100g DESC
LIMIT 100;
/*
They are mainly Oils and Fats.
*/

-- Select the 100 foods with the most protein content
SELECT food_name_in_french, proteins_with_jones_in_g_for_100g
FROM macro_nutrients_table
ORDER BY proteins_with_jones_in_g_for_100g DESC
LIMIT 100;
/*
They are mainly Meats, Cheese and Fish.
*/

-- Select the 100 foods with the most carbohydrates content
SELECT macro_nutrients_table.food_name_in_french, 
		macro_nutrients_table.carbohydrates_in_g_for_100g,
        carbohydrates_table.fibers_in_g_for_100g
FROM macro_nutrients_table
INNER JOIN carbohydrates_table ON macro_nutrients_table.food_name_in_french = carbohydrates_table.food_name_in_french
ORDER BY carbohydrates_in_g_for_100g DESC
LIMIT 100;
/*
They are mainly Sugars, Cereals and Biscuits.
*/

-- Select the 100 foods with the most fats content
SELECT food_name_in_french, fats_in_g_for_100g
FROM macro_nutrients_table
ORDER BY fats_in_g_for_100g DESC
LIMIT 100;
/*
They are mainly Oils and Fats.
The similarities are explained by the very strong positive correlation
between energy and fat.
*/

-- Select the 100 foods with the most water content
SELECT food_name_in_french, water_in_g_for_100g
FROM macro_nutrients_table
ORDER BY water_in_g_for_100g DESC
LIMIT 100;
/*
They are mainly Waters
*/


