--  numeric functions:
-- 1. Absoulte values
select abs(-25), abs(30); # it convert negative to postivie numbers

-- 2. celling round: 
select ceil(12.3), ceil(-12.7) ; # give higher number

-- 3. floor /round down:
select floor(12.9),  floor(-12.3); # give lowest values

-- 4. sign function
select sign(25) , sign(0), sign(-18) ;# gives +ve 1 0 and -ve 1

-- 5 mod function gives remainder
select mod(10,3);

-- 6. power function : it gives power of a number
select pow(5,2),pow(2,3);

-- 7. sqrt function: it give sqare number
select sqrt(16),sqrt(25);

-- 8. round function
select round(123.456,2) ,round(1234.5678,3);

-- 9. truncate function:
select Truncate(123.456,2) ,Truncate(1234.5678,3);

-- 10 pi fun
select pi();

-- 11 greatest number
select greatest(10,20,304,50,89);

-- 12. least number
select least(2,3,4,5,6,7);

-- 13. random number
select rand(),rand(10);
