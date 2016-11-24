--
-- We have some table:
--
--|    car   | color |
--+----------+-------+
--|  BMW X1  | black |
--|  BMW X4  | black |
--|  BMW X5  | black |
--|  BMW X5  | white |
--| BMW X5 M | black |
--|  BMW X5  | blue  |
--
-- We want to concatenate color column into an array by car column

SELECT car, array_agg(color) as colors from test GROUP BY car;

-- Result
--|    car   | color             |
--+----------+--------------------
--|  BMW X1  | {black}           |
--|  BMW X4  | {black}           |
--|  BMW X5  | {black,white,blue}|
--| BMW X5 M | {black}           |
