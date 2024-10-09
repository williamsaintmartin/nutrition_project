-- Create a nutrition database
CREATE DATABASE IF NOT EXISTS nutrition_facts_db;

-- Select the database to use
USE nutrition_facts_db;

-- Create tables
CREATE TABLE macro_nutrients_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    energy_in_kJ_for_100g DECIMAL(9, 2),
    energy_in_kcal_for_100g DECIMAL(9, 2),
    energy_with_jones_and_fibers_in_kJ_for_100g DECIMAL(9, 2),
    energy_with_jones_and_fibers_in_kcal_for_100g DECIMAL(9, 2),
    proteins_with_jones_in_g_for_100g DECIMAL(9, 2),
    carbohydrates_in_g_for_100g DECIMAL(9, 2),
    fats_in_g_for_100g DECIMAL(9, 2),
    water_in_g_for_100g DECIMAL(9, 2)
);

CREATE TABLE carbohydrates_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    sugars_in_g_for_100g DECIMAL(9, 2),
    fructose_in_g_for_100g DECIMAL(9, 2),
    galactose_in_g_for_100g DECIMAL(9, 2),
    glucose_in_g_for_100g DECIMAL(9, 2),
    lactose_in_g_for_100g DECIMAL(9, 2),
    maltose_in_g_for_100g DECIMAL(9, 2),
    sucrose_in_g_for_100g DECIMAL(9, 2),
    starch_in_g_for_100g DECIMAL(9, 2),
    fibers_in_g_for_100g DECIMAL(9, 2),
    polyols_in_g_for_100g DECIMAL(9, 2)
);

CREATE TABLE fats_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    saturated_fats_in_g_for_100g DECIMAL(9, 2),
    monounsaturated_fats_in_g_for_100g DECIMAL(9, 2),
    polyunsaturated_fats_in_g_for_100g DECIMAL(9, 2),
    butyric_acid_4_0_in_g_for_100g DECIMAL(9, 2),
    caproic_acid_6_0_in_g_for_100g DECIMAL(9, 2),
    caprylic_acid_8_0_in_g_for_100g DECIMAL(9, 2),
    capric_acid_10_0_in_g_for_100g DECIMAL(9, 2),
    lauric_acid_12_0_in_g_for_100g DECIMAL(9, 2),
    myristic_acid_14_0_in_g_for_100g DECIMAL(9, 2),
    palmitic_acid_16_0_in_g_for_100g DECIMAL(9, 2),
    stearic_acid_18_0_in_g_for_100g DECIMAL(9, 2),
    oleic_acid_18_1_n_9_in_g_for_100g DECIMAL(9, 2),
    linoleic_acid_18_2_n_6_in_g_for_100g DECIMAL(9, 2),
    alpha_linolenic_acid_18_3_n_3_in_g_for_100g DECIMAL(9, 2),
    arachidonic_acid_20_4_n_6_in_g_for_100g DECIMAL(9, 2),
    eicosapentaenoic_acid_20_5_n_3_in_g_for_100g DECIMAL(9, 2),
    docosahexaenoic_acid_22_6_n_3_in_g_for_100g DECIMAL(9, 2),
    cholesterol_in_mg_for_100g DECIMAL(9, 2)
);

CREATE TABLE minerals_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    sodium_chloride_in_g_for_100g DECIMAL(9, 2),
    calcium_in_mg_for_100g DECIMAL(9, 2),
    chloride_in_mg_for_100g DECIMAL(9, 2),
    copper_in_mg_for_100g DECIMAL(9, 2),
    iron_in_mg_for_100g DECIMAL(9, 2),
    iodine_in_µg_for_100g DECIMAL(9, 2),
    magnesium_in_mg_for_100g DECIMAL(9, 2),
    manganese_in_mg_for_100g DECIMAL(9, 2),
    phosphorus_in_mg_for_100g DECIMAL(9, 2),
    potassium_in_mg_for_100g DECIMAL(9, 2),
    selenium_in_µg_for_100g DECIMAL(9, 2),
    sodium_in_mg_for_100g DECIMAL(9, 2),
    zinc_in_mg_for_100g DECIMAL(9, 2)
);

CREATE TABLE vitamins_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    retinol_in_µg_for_100g DECIMAL(9, 2),
    beta_carotene_in_µg_for_100g DECIMAL(9, 2),
    vitamin_d_in_µg_for_100g DECIMAL(9, 2),
    vitamin_e_in_mg_for_100g DECIMAL(9, 2),
    vitamin_k1_in_µg_for_100g DECIMAL(9, 2),
    vitamin_k2_in_µg_for_100g DECIMAL(9, 2),
    vitamin_c_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b1_thiamine_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b2_riboflavin_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b3_niacin_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b5_pantothenic_acid_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b6_in_mg_for_100g DECIMAL(9, 2),
    vitamin_b9_total_folate_in_µg_for_100g DECIMAL(9, 2),
    vitamin_b12_in_µg_for_100g DECIMAL(9, 2)
);

CREATE TABLE additional_nutrition_data_table (
    food_name_in_french VARCHAR(255) PRIMARY KEY,
    ashes_in_g_for_100g DECIMAL(9, 2),
    alcohol_in_g_for_100g DECIMAL(9, 2),
    organic_acids_in_g_for_100g DECIMAL(9, 2)
);


-- Check the location of the CSV files
SHOW VARIABLES LIKE 'secure_file_priv';


-- Load data from CSV files into the tables
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\macro_nutrients_csv.csv'
INTO TABLE macro_nutrients_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @energy_in_kJ_for_100g, 
 @energy_in_kcal_for_100g, 
 @energy_with_jones_and_fibers_in_kJ_for_100g, 
 @energy_with_jones_and_fibers_in_kcal_for_100g, 
 @proteins_with_jones_in_g_for_100g, 
 @carbohydrates_in_g_for_100g, 
 @fats_in_g_for_100g, 
 @water_in_g_for_100g)
SET energy_in_kJ_for_100g = NULLIF(@energy_in_kJ_for_100g, ''),
    energy_in_kcal_for_100g = NULLIF(@energy_in_kcal_for_100g, ''),
    energy_with_jones_and_fibers_in_kJ_for_100g = NULLIF(@energy_with_jones_and_fibers_in_kJ_for_100g, ''),
    energy_with_jones_and_fibers_in_kcal_for_100g = NULLIF(@energy_with_jones_and_fibers_in_kcal_for_100g, ''),
    proteins_with_jones_in_g_for_100g = NULLIF(@proteins_with_jones_in_g_for_100g, ''),
    carbohydrates_in_g_for_100g = NULLIF(@carbohydrates_in_g_for_100g, ''),
    fats_in_g_for_100g = NULLIF(@fats_in_g_for_100g, ''),
    water_in_g_for_100g = NULLIF(@water_in_g_for_100g, '');
    
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\carbohydrates_csv.csv'
INTO TABLE carbohydrates_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @sugars_in_g_for_100g, 
 @fructose_in_g_for_100g, 
 @galactose_in_g_for_100g, 
 @glucose_in_g_for_100g, 
 @lactose_in_g_for_100g, 
 @maltose_in_g_for_100g, 
 @sucrose_in_g_for_100g, 
 @starch_in_g_for_100g,
 @fibers_in_g_for_100g,
 @polyols_in_g_for_100g)
SET sugars_in_g_for_100g = NULLIF(@sugars_in_g_for_100g, ''),
    fructose_in_g_for_100g = NULLIF(@fructose_in_g_for_100g, ''),
    galactose_in_g_for_100g = NULLIF(@galactose_in_g_for_100g, ''),
    glucose_in_g_for_100g = NULLIF(@glucose_in_g_for_100g, ''),
    lactose_in_g_for_100g = NULLIF(@lactose_in_g_for_100g, ''),
    maltose_in_g_for_100g = NULLIF(@maltose_in_g_for_100g, ''),
    sucrose_in_g_for_100g = NULLIF(@sucrose_in_g_for_100g, ''),
    starch_in_g_for_100g = NULLIF(@starch_in_g_for_100g, ''),
    fibers_in_g_for_100g = NULLIF(@fibers_in_g_for_100g, ''),
    polyols_in_g_for_100g = NULLIF(@polyols_in_g_for_100g, '');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\fats_csv.csv'
INTO TABLE fats_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @saturated_fats_in_g_for_100g, 
 @monounsaturated_fats_in_g_for_100g, 
 @polyunsaturated_fats_in_g_for_100g, 
 @butyric_acid_4_0_in_g_for_100g, 
 @caproic_acid_6_0_in_g_for_100g, 
 @caprylic_acid_8_0_in_g_for_100g, 
 @capric_acid_10_0_in_g_for_100g, 
 @lauric_acid_12_0_in_g_for_100g,
 @myristic_acid_14_0_in_g_for_100g, 
 @palmitic_acid_16_0_in_g_for_100g, 
 @stearic_acid_18_0_in_g_for_100g, 
 @oleic_acid_18_1_n_9_in_g_for_100g,
 @linoleic_acid_18_2_n_6_in_g_for_100g,
 @alpha_linolenic_acid_18_3_n_3_in_g_for_100g,
 @arachidonic_acid_20_4_n_6_in_g_for_100g, 
 @eicosapentaenoic_acid_20_5_n_3_in_g_for_100g, 
 @docosahexaenoic_acid_22_6_n_3_in_g_for_100g,
 @cholesterol_in_mg_for_100g)
SET saturated_fats_in_g_for_100g = NULLIF(@saturated_fats_in_g_for_100g, ''),
    monounsaturated_fats_in_g_for_100g = NULLIF(@monounsaturated_fats_in_g_for_100g, ''),
    polyunsaturated_fats_in_g_for_100g = NULLIF(@polyunsaturated_fats_in_g_for_100g, ''),
    butyric_acid_4_0_in_g_for_100g = NULLIF(@butyric_acid_4_0_in_g_for_100g, ''),
    caproic_acid_6_0_in_g_for_100g = NULLIF(@caproic_acid_6_0_in_g_for_100g, ''),
    caprylic_acid_8_0_in_g_for_100g = NULLIF(@caprylic_acid_8_0_in_g_for_100g, ''),
    capric_acid_10_0_in_g_for_100g = NULLIF(@capric_acid_10_0_in_g_for_100g, ''),
    lauric_acid_12_0_in_g_for_100g = NULLIF(@lauric_acid_12_0_in_g_for_100g, ''),
    myristic_acid_14_0_in_g_for_100g = NULLIF(@myristic_acid_14_0_in_g_for_100g, ''),
    palmitic_acid_16_0_in_g_for_100g = NULLIF(@palmitic_acid_16_0_in_g_for_100g, ''),
    stearic_acid_18_0_in_g_for_100g = NULLIF(@stearic_acid_18_0_in_g_for_100g, ''),
    oleic_acid_18_1_n_9_in_g_for_100g = NULLIF(@oleic_acid_18_1_n_9_in_g_for_100g, ''),
    linoleic_acid_18_2_n_6_in_g_for_100g = NULLIF(@linoleic_acid_18_2_n_6_in_g_for_100g, ''),
    alpha_linolenic_acid_18_3_n_3_in_g_for_100g = NULLIF(@alpha_linolenic_acid_18_3_n_3_in_g_for_100g, ''),
    arachidonic_acid_20_4_n_6_in_g_for_100g = NULLIF(@arachidonic_acid_20_4_n_6_in_g_for_100g, ''),
    eicosapentaenoic_acid_20_5_n_3_in_g_for_100g = NULLIF(@eicosapentaenoic_acid_20_5_n_3_in_g_for_100g, ''),
    docosahexaenoic_acid_22_6_n_3_in_g_for_100g = NULLIF(@docosahexaenoic_acid_22_6_n_3_in_g_for_100g, ''),
    cholesterol_in_mg_for_100g = NULLIF(@cholesterol_in_mg_for_100g, '');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\minerals_csv.csv'
INTO TABLE minerals_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @sodium_chloride_in_g_for_100g, 
 @calcium_in_mg_for_100g, 
 @chloride_in_mg_for_100g, 
 @copper_in_mg_for_100g, 
 @iron_in_mg_for_100g, 
 @iodine_in_µg_for_100g, 
 @magnesium_in_mg_for_100g, 
 @manganese_in_mg_for_100g,
 @phosphorus_in_mg_for_100g, 
 @potassium_in_mg_for_100g, 
 @selenium_in_µg_for_100g, 
 @sodium_in_mg_for_100g,
 @zinc_in_mg_for_100g)
SET sodium_chloride_in_g_for_100g = NULLIF(@sodium_chloride_in_g_for_100g, ''),
    calcium_in_mg_for_100g = NULLIF(@calcium_in_mg_for_100g, ''),
    chloride_in_mg_for_100g = NULLIF(@chloride_in_mg_for_100g, ''),
    copper_in_mg_for_100g = NULLIF(@copper_in_mg_for_100g, ''),
    iron_in_mg_for_100g = NULLIF(@iron_in_mg_for_100g, ''),
    iodine_in_µg_for_100g = NULLIF(@iodine_in_µg_for_100g, ''),
    magnesium_in_mg_for_100g = NULLIF(@magnesium_in_mg_for_100g, ''),
    manganese_in_mg_for_100g = NULLIF(@manganese_in_mg_for_100g, ''),
    phosphorus_in_mg_for_100g = NULLIF(@phosphorus_in_mg_for_100g, ''),
    potassium_in_mg_for_100g = NULLIF(@potassium_in_mg_for_100g, ''),
    selenium_in_µg_for_100g = NULLIF(@selenium_in_µg_for_100g, ''),
    sodium_in_mg_for_100g = NULLIF(@sodium_in_mg_for_100g, ''),
    zinc_in_mg_for_100g = NULLIF(@zinc_in_mg_for_100g, '');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\vitamins_csv.csv'
INTO TABLE vitamins_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @retinol_in_µg_for_100g, 
 @beta_carotene_in_µg_for_100g, 
 @vitamin_d_in_µg_for_100g, 
 @vitamin_e_in_mg_for_100g, 
 @vitamin_k1_in_µg_for_100g, 
 @vitamin_k2_in_µg_for_100g, 
 @vitamin_c_in_mg_for_100g, 
 @vitamin_b1_thiamine_in_mg_for_100g,
 @vitamin_b2_riboflavin_in_mg_for_100g, 
 @vitamin_b3_niacin_in_mg_for_100g, 
 @vitamin_b5_pantothenic_acid_in_mg_for_100g, 
 @vitamin_b6_in_mg_for_100g,
 @vitamin_b9_total_folate_in_µg_for_100g,
 @vitamin_b12_in_µg_for_100g)
SET retinol_in_µg_for_100g = NULLIF(@retinol_in_µg_for_100g, ''),
    beta_carotene_in_µg_for_100g = NULLIF(@beta_carotene_in_µg_for_100g, ''),
    vitamin_d_in_µg_for_100g = NULLIF(@vitamin_d_in_µg_for_100g, ''),
    vitamin_e_in_mg_for_100g = NULLIF(@vitamin_e_in_mg_for_100g, ''),
    vitamin_k1_in_µg_for_100g = NULLIF(@vitamin_k1_in_µg_for_100g, ''),
    vitamin_k2_in_µg_for_100g = NULLIF(@vitamin_k2_in_µg_for_100g, ''),
    vitamin_c_in_mg_for_100g = NULLIF(@vitamin_c_in_mg_for_100g, ''),
    vitamin_b1_thiamine_in_mg_for_100g = NULLIF(@vitamin_b1_thiamine_in_mg_for_100g, ''),
    vitamin_b2_riboflavin_in_mg_for_100g = NULLIF(@vitamin_b2_riboflavin_in_mg_for_100g, ''),
    vitamin_b3_niacin_in_mg_for_100g = NULLIF(@vitamin_b3_niacin_in_mg_for_100g, ''),
    vitamin_b5_pantothenic_acid_in_mg_for_100g = NULLIF(@vitamin_b5_pantothenic_acid_in_mg_for_100g, ''),
    vitamin_b6_in_mg_for_100g = NULLIF(@vitamin_b6_in_mg_for_100g, ''),
    vitamin_b9_total_folate_in_µg_for_100g = NULLIF(@vitamin_b9_total_folate_in_µg_for_100g, ''),
    vitamin_b12_in_µg_for_100g = NULLIF(@vitamin_b12_in_µg_for_100g, '');

LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\nutrition_project\\additional_nutrition_data_csv.csv'
INTO TABLE additional_nutrition_data_table
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(food_name_in_french, 
 @ashes_in_g_for_100g, 
 @alcohol_in_g_for_100g, 
 @organic_acids_in_g_for_100g)
SET ashes_in_g_for_100g = NULLIF(@ashes_in_g_for_100g, ''),
    alcohol_in_g_for_100g = NULLIF(@alcohol_in_g_for_100g, ''),
    organic_acids_in_g_for_100g = NULLIF(@organic_acids_in_g_for_100g, '');


-- Check the tables
SELECT food_name_in_french, energy_in_kJ_for_100g
FROM macro_nutrients_table
ORDER BY energy_in_kJ_for_100g DESC
LIMIT 10;

SELECT food_name_in_french, sugars_in_g_for_100g
FROM carbohydrates_table
ORDER BY sugars_in_g_for_100g DESC
LIMIT 10;

SELECT food_name_in_french, saturated_fats_in_g_for_100g
FROM fats_table
ORDER BY saturated_fats_in_g_for_100g DESC
LIMIT 10;

SELECT food_name_in_french, sodium_chloride_in_g_for_100g
FROM minerals_table
ORDER BY sodium_chloride_in_g_for_100g DESC
LIMIT 10;

SELECT food_name_in_french, retinol_in_µg_for_100g
FROM vitamins_table
ORDER BY retinol_in_µg_for_100g DESC
LIMIT 10;

SELECT food_name_in_french, ashes_in_g_for_100g
FROM additional_nutrition_data_table
ORDER BY ashes_in_g_for_100g DESC
LIMIT 10;
