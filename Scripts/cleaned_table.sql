-- added the region table
ALTER TABLE walmart
ADD COLUMN region varchar(100);

-- insert the value for region column 
UPDATE walmart
SET region = CASE city

    -- DFW METROPLEX
    WHEN 'Haltom City' THEN 'DFW Metroplex'
    WHEN 'Bedford' THEN 'DFW Metroplex'
    WHEN 'Irving' THEN 'DFW Metroplex'
    WHEN 'Denton' THEN 'DFW Metroplex'
    WHEN 'Cleburne' THEN 'DFW Metroplex'
    WHEN 'Grapevine' THEN 'DFW Metroplex'
    WHEN 'Lewisville' THEN 'DFW Metroplex'
    WHEN 'Farmers Branch' THEN 'DFW Metroplex'
    WHEN 'Lancaster' THEN 'DFW Metroplex'
    WHEN 'Garland' THEN 'DFW Metroplex'
    WHEN 'Mesquite' THEN 'DFW Metroplex'
    WHEN 'Hurst' THEN 'DFW Metroplex'
    WHEN 'Richardson' THEN 'DFW Metroplex'
    WHEN 'Allen' THEN 'DFW Metroplex'
    WHEN 'Rowlett' THEN 'DFW Metroplex'
    WHEN 'Grand Prairie' THEN 'DFW Metroplex'
    WHEN 'Southlake' THEN 'DFW Metroplex'
    WHEN 'Fort Worth' THEN 'DFW Metroplex'
    WHEN 'Rockwall' THEN 'DFW Metroplex'
    WHEN 'Waxahachie' THEN 'DFW Metroplex'
    WHEN 'Arlington' THEN 'DFW Metroplex'
    WHEN 'McKinney' THEN 'DFW Metroplex'
    WHEN 'North Richland Hills' THEN 'DFW Metroplex'
    WHEN 'Euless' THEN 'DFW Metroplex'
    WHEN 'Carrollton' THEN 'DFW Metroplex'
    WHEN 'Frisco' THEN 'DFW Metroplex'
    WHEN 'Burleson' THEN 'DFW Metroplex'
    WHEN 'Dallas' THEN 'DFW Metroplex'
    WHEN 'Mansfield' THEN 'DFW Metroplex'
    WHEN 'Flower Mound' THEN 'DFW Metroplex'
    WHEN 'Sherman' THEN 'DFW Metroplex'
    WHEN 'Weatherford' THEN 'DFW Metroplex'
    WHEN 'DeSoto' THEN 'DFW Metroplex'
    WHEN 'Plano' THEN 'DFW Metroplex'
    WHEN 'Coppell' THEN 'DFW Metroplex'
    WHEN 'Little Elm' THEN 'DFW Metroplex'

    -- GREATER HOUSTON
    WHEN 'Texas City' THEN 'Greater Houston'
    WHEN 'Conroe' THEN 'Greater Houston'
    WHEN 'Houston' THEN 'Greater Houston'
    WHEN 'Pearland' THEN 'Greater Houston'
    WHEN 'La Porte' THEN 'Greater Houston'
    WHEN 'Angleton' THEN 'Greater Houston'
    WHEN 'Missouri City' THEN 'Greater Houston'
    WHEN 'League City' THEN 'Greater Houston'
    WHEN 'Baytown' THEN 'Greater Houston'
    WHEN 'Galveston' THEN 'Greater Houston'
    WHEN 'Pasadena' THEN 'Greater Houston'
    WHEN 'Friendswood' THEN 'Greater Houston'
    WHEN 'Lake Jackson' THEN 'Greater Houston'
    WHEN 'Port Arthur' THEN 'Greater Houston'
    WHEN 'Rosenberg' THEN 'Greater Houston'

    -- CENTRAL TEXAS
    WHEN 'San Antonio' THEN 'Central Texas'
    WHEN 'Round Rock' THEN 'Central Texas'
    WHEN 'Cedar Park' THEN 'Central Texas'
    WHEN 'San Marcos' THEN 'Central Texas'
    WHEN 'Huntsville' THEN 'Central Texas'
    WHEN 'Mineral Wells' THEN 'Central Texas'
    WHEN 'Bryan' THEN 'Central Texas'
    WHEN 'Georgetown' THEN 'Central Texas'
    WHEN 'Killeen' THEN 'Central Texas'
    WHEN 'College Station' THEN 'Central Texas'
    WHEN 'Austin' THEN 'Central Texas'
    WHEN 'Sugar Land' THEN 'Central Texas'
    WHEN 'Waco' THEN 'Central Texas'
    WHEN 'Kerrville' THEN 'Central Texas'
    WHEN 'Schertz' THEN 'Central Texas'
    WHEN 'Seguin' THEN 'Central Texas'
    WHEN 'Pflugerville' THEN 'Central Texas'
    WHEN 'Victoria' THEN 'Central Texas'
    WHEN 'New Braunfels' THEN 'Central Texas'
    WHEN 'Temple' THEN 'Central Texas'

    -- WEST TEXAS
    WHEN 'San Angelo' THEN 'West Texas'
    WHEN 'Abilene' THEN 'West Texas'
    WHEN 'Midland' THEN 'West Texas'
    WHEN 'Big Spring' THEN 'West Texas'
    WHEN 'Odessa' THEN 'West Texas'
    WHEN 'Amarillo' THEN 'West Texas'
    WHEN 'Lubbock' THEN 'West Texas'
    WHEN 'Canyon' THEN 'West Texas'

    -- FAR WEST
    WHEN 'El Paso' THEN 'Far West Texas'

    -- EAST TEXAS
    WHEN 'Lufkin' THEN 'East Texas'
    WHEN 'Tyler' THEN 'East Texas'
    WHEN 'Longview' THEN 'East Texas'
    WHEN 'Nacogdoches' THEN 'East Texas'

    -- SOUTH TEXAS
    WHEN 'Harlingen' THEN 'South Texas'
    WHEN 'Pharr' THEN 'South Texas'
    WHEN 'McAllen' THEN 'South Texas'
    WHEN 'Eagle Pass' THEN 'South Texas'
    WHEN 'Mission' THEN 'South Texas'
    WHEN 'Del Rio' THEN 'South Texas'
    WHEN 'Alamo' THEN 'South Texas'
    WHEN 'Alice' THEN 'South Texas'
    WHEN 'Brownsville' THEN 'South Texas'
    WHEN 'Weslaco' THEN 'South Texas'
    WHEN 'Laredo' THEN 'South Texas'

    ELSE NULL
END
WHERE region IS null;

-- find the duplicate
WITH dupl AS (
SELECT 
	*,
	row_number() over(PARTITION BY invoice_id,branch,city,category ORDER BY date) AS rn
FROM walmart
)
SELECT * FROM dupl WHERE  rn > 1;
-- no duplicate value found

SELECT * FROM walmart;
-- convert type data of date to actual date
ALTER TABLE walmart
ALTER COLUMN date type date;