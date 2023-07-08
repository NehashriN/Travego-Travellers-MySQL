use travego;
-- 2. Perform read operation on the designed table created in the above task.
-- a. How many female passengers traveled a minimum distance of 600 KMs? (1 mark)
select count(*) as Count_female_passenger from passenger where gender = 'F' and distance >= 600;

-- b. Write a query to display the passenger details whose travel distance is greater than 500 and
-- who are traveling in a sleeper bus. (2 marks)
select * from passenger where distance > 500 and bus_type = 'Sleeper';

-- c. Select passenger names whose names start with the character 'S'.(2 marks)
select Passenger_name from passenger where passenger_name like 'S%' ;

-- d. Calculate the price charged for each passenger, displaying the Passenger name, Boarding City,
-- Destination City, Bus type, and Price in the output. (3 marks)
select Passenger_name, Boarding_City,Destination_City,p.Bus_Type, Price from passenger p,price pr
where p.Bus_Type = pr.Bus_Type
and p.Distance = pr.Distance;

-- e. What are the passenger name(s) and the ticket price for those who traveled 1000 KMs Sitting 
-- in a bus? (4 marks)
select Passenger_name, Price from passenger p,price pr
where p.Bus_Type = pr.Bus_Type
and p.Distance = pr.Distance
and p.distance =1000 and p.bus_type = 'Sitting';

-- f.What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji?
 -- (5 marks)
select  Passenger_name,Destination_city as 'From',Boarding_city as 'To', pr.Bus_type, Price 
from passenger p, price pr
where p.distance = pr.distance and passenger_name = 'Pallavi';
 
-- g. Alter the column category with the value "Non-AC" where the Bus_Type is sleeper (2 marks)
update passenger 
set category = 'Non_AC'
where Bus_type = 'Sleeper';

-- h. Delete an entry from the table where the passenger name is Piyush and commit this change in
-- the database. (1 mark)
set autocommit =0;
delete from passenger where passenger_name = 'Piyush';
commit;


set autocommit =1;
-- i. Truncate the table passenger and comment on the number of rows in the table (explain if
-- required). (1 mark)
truncate table passenger;
select * from passenger;
-- There are no rows in the table passenger as truncate command deletes all the rows in the table.

-- j. Delete the table passenger from the database. (1 mark)
drop table passenger;

