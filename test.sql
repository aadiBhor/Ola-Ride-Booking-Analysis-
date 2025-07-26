create database Ola;

USE Ola;
show tables;
select * from Bookingss;

-- Retieve Succesful booking
CREATE view Succesful_Booking as
select * from Bookingss where Booking_Status="Success";

-- Retieve Succesful booking
SELECT * FROM Succesful_Booking;

--  2. Find the average ride distance for each vehicle type:
create view RideDist_for_eachVehica As
select Vehicle_Type,avg(Ride_Distance) as avg_dis from Bookingss
group by Vehicle_Type;

--  2. Find the average ride distance for each vehicle type:
SELECT * FROM RideDist_for_eachVehica;


--  3. Get the total number of cancelled rides by customers:
CREATE VIEW total_number_of_Cancelled_by_Customers as
select count(*) FROM Bookingss;

SELECT * FROM total_number_of_Cancelled_by_Customers;


--  4. List the top 5 customers who booked the highest number of rides:
create view top_5_customer as
select Customer_ID, count(Booking_ID) as Total_Bookings 
from Bookingss 
group by Customer_ID 
order by  Total_Bookings desc limit 5;

SELECT * FROM top_5_customer;


--  5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW TOTAL_NUM_CANCELLED_BY_DRIVER_PERSONAL_CARRELETED_ISSUES as 
SELECT count(*) 
from Bookingss  
where Canceled_Rides_by_Driver="Personal & Car related issue";

select * from TOTAL_NUM_CANCELLED_BY_DRIVER_PERSONAL_CARRELETED_ISSUES;


--  6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
create view MAX_MIN_RATING_Prime_Sedan AS
select max(Driver_Ratings) as max_rat , min(Driver_Ratings) as min_rat 
from Bookingss 
where	Vehicle_Type="Prime Sedan";

SELECT * FROM MAX_MIN_RATING_Prime_Sedan;


--  7. Retrieve all rides where payment was made using UPI:
create view payment_by_UPI as
select * 
from Bookingss 
where Payment_Method="UPI";

SELECT * FROM payment_by_UPI;


--  8. Find the average customer rating per vehicle type:
create view AVG_CUST_RATING_PerVehical_type as
SELECT Vehicle_Type, avg(Customer_Rating) as avg_cust_rating 
from Bookingss 
group by Vehicle_Type;

SELECT * FROM AVG_CUST_RATING_PerVehical_type;


--  9. Calculate the total booking value of rides completed successfully:
create view total_booking_valu as
select sum(Booking_value)
from Bookingss 
where Booking_Status="Success";

SELECT * FROM total_booking_valu;


--  10. List all incomplete rides along with the reason:
create view incomplete_rides_along_reason as
select Customer_ID,Incomplete_Rides_Reason 
from Bookingss 
where Incomplete_Rides="Yes";

SELECT * FROM incomplete_rides_along_reason;