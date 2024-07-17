--select
--Q1
select * from Production.Products
--Q2
select product_name,list_price from Production.Products
--Q3
select distinct category_id from Production.Products
--Q4
select first_name,last_name from Sales.Customers
--Top
--Q5
select top(5) * from Production.Products 
order by list_price  desc
--Filtering using WHERE conditions
--Q6
select * from Production.Products 
where list_price >100
--Q7
select * from Sales.Customers
where city='New York'
--Q8
select * from Sales.Orders 
where Order_status=1
--Ordering
--Q9
select * from Production.Products
order by list_price  desc
--Q10
select * from Sales.Customers
order by first_name,last_name 
--Grouping 
--Q11
select sum(list_price) as tolal_list_price
from Production.Products
group by category_id
--Q12
select sum(Order_id) as total_orders from Sales.Orders 
group by Customer_id
--Having
--Q13
select sum(list_price) as tolal_list_price
from Production.Products
group by category_id
having sum(list_price) >500
--Insertions
--Q14
insert into Production.Brands (brand_name) values('BrandX')
--Q15
insert into Production.Categories (category_name) values ('Electronics')
--Q16
insert into Sales.Customers (first_name,last_name,phone,email,street,city,state,zip_code)
values ('Alice','Johnson','987-654-3210','alice.johnson@example.com','456 Elm St','Othertown','TX','54321')
--Q17
insert into Sales.Stores (store_name,phone,email,street,city,state,zip_code) values
('Tech Store','555-123-4567','contact@techstore.com','789 Tech Ave','Techville','CA','67890')
--Q18
insert into Sales.Staffs (first_name,last_name,email,phone,active,store_id,manager_id)
values ('Bob','Smith','bob.smith@example.com','555-987-6543',1,1,Null)
--Updates
--Q19
update Production.Products set list_price =119.99 where product_id=1
--Q20
update Sales.Customers set email='new.email@example.com' where customer_id=2
--Q21
update Sales.Stores set phone='123-456-7890' where store_id=3
--Q22
update Production.Categories set category_name='Appliances' where category_id=2 
--Q23
update Sales.Staffs set active=0 where store_id=1
--Deletions
--Q24
delete from Production.Brands where brand_id=2 
--Q25
delete from Production.Categories where category_id =3
--Q26
delete from Sales.Customers where customer_id=4
--Q27
delete from Sales.Stores where store_id=5
--Q28
delete from Sales.Staffs where staff_id=6
--Additional Complex DML Questions
--Q29
insert into sales.Orders (Customer_id,Order_status,Order_date,Required_date,Shipped_date,Store_id,Staff_id)
values(1,1,'2024-07-01','2024-07-10',Null,1,1)
--Q30
update Sales.Orders set Shipped_date='2024-07-05' where Order_id=1 
--Q31
delete from Sales.Orders where Order_status=3
--Q32
insert into Production.Products (product_name,brand_id,category_id,model_year,list_price) values 
('Souzuki',7,7,'2024',150000),
('Marouti',4,8,'2023',17000)
--Q32
update Production.Stocks set quantity=0 where store_id=1
