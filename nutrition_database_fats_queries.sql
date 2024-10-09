-- Check fats content

-- Select the 100 foods with the most saturated fats content
SELECT food_name_in_french, saturated_fats_in_g_for_100g
FROM fats_table
ORDER BY saturated_fats_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most mono-unsaturated fats content
SELECT food_name_in_french, monounsaturated_fats_in_g_for_100g
FROM fats_table
ORDER BY monounsaturated_fats_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most poly-unsaturated fats content
SELECT food_name_in_french, polyunsaturated_fats_in_g_for_100g
FROM fats_table
ORDER BY polyunsaturated_fats_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most butyric acid content
SELECT food_name_in_french, butyric_acid_4_0_in_g_for_100g
FROM fats_table
ORDER BY butyric_acid_4_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most caproic acid content
SELECT food_name_in_french, caproic_acid_6_0_in_g_for_100g
FROM fats_table
ORDER BY capric_acid_10_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most caprylic acid content
SELECT food_name_in_french, caprylic_acid_8_0_in_g_for_100g
FROM fats_table
ORDER BY caprylic_acid_8_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most capric acid content
SELECT food_name_in_french, capric_acid_10_0_in_g_for_100g
FROM fats_table
ORDER BY capric_acid_10_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most lauric acid content
SELECT food_name_in_french, lauric_acid_12_0_in_g_for_100g
FROM fats_table
ORDER BY lauric_acid_12_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most myristic acid content
SELECT food_name_in_french, myristic_acid_14_0_in_g_for_100g
FROM fats_table
ORDER BY myristic_acid_14_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most palmitic acid content
SELECT food_name_in_french, palmitic_acid_16_0_in_g_for_100g
FROM fats_table
ORDER BY palmitic_acid_16_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most stearic acid content
SELECT food_name_in_french, stearic_acid_18_0_in_g_for_100g
FROM fats_table
ORDER BY stearic_acid_18_0_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most oleic acid content
SELECT food_name_in_french, oleic_acid_18_1_n_9_in_g_for_100g
FROM fats_table
ORDER BY oleic_acid_18_1_n_9_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most linoleic acid content
SELECT food_name_in_french, linoleic_acid_18_2_n_6_in_g_for_100g
FROM fats_table
ORDER BY linoleic_acid_18_2_n_6_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most alpha linolenic acid content
SELECT food_name_in_french, alpha_linolenic_acid_18_3_n_3_in_g_for_100g
FROM fats_table
ORDER BY alpha_linolenic_acid_18_3_n_3_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most arachidonic acid content
SELECT food_name_in_french, arachidonic_acid_20_4_n_6_in_g_for_100g
FROM fats_table
ORDER BY arachidonic_acid_20_4_n_6_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most eicosapentaenoic acid content
SELECT food_name_in_french, eicosapentaenoic_acid_20_5_n_3_in_g_for_100g
FROM fats_table
ORDER BY eicosapentaenoic_acid_20_5_n_3_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most docosahexaenoic acid content
SELECT food_name_in_french, docosahexaenoic_acid_22_6_n_3_in_g_for_100g
FROM fats_table
ORDER BY docosahexaenoic_acid_22_6_n_3_in_g_for_100g DESC
LIMIT 100;

-- Select the 100 foods with the most cholesterol content
SELECT food_name_in_french, cholesterol_in_mg_for_100g
FROM fats_table
ORDER BY cholesterol_in_mg_for_100g DESC
LIMIT 100;