--create database--
create database MMf_Contributions

-- create table--
create table District_contribution
(District varchar(255) not null,
Allocation money,
Paid money,
Balance money 
Total money
);

--adding data--
Insert into District_contribution(District, Allocation, Paid, Balance)
Values('Judea', 732890 ,50580, 682310),
	  ('Alpha', 588560, 168745, 419815),
	  ('Neema', 454923, 169787, 286142),
	  ('Upendo', 410490, 126845, 283645),
	  ('Galilee', 516750, 154095, 362655),
	  ('Tumaini', 441695, 226090, 215605),
	  ('Baraka', 255840, 218855, 36985),
	  ('Caanan', 405385, 274527, 130858),
	  ('Total', 3806533, 1389524, 1389524);

select * from District_contribution

--create a view--
create view paid as
select District, balance
from District_contribution
Where Paid> 100000

select * from paid
--drop a view--
drop view paid




















