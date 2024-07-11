select * from Production.Products

select product_name,list_price from Production.Products

select distinct category_id from Production.Products

select first_name,last_name from Sales.Customers

select top(5) * from Production.Products 
order by list_price  desc

select * from Production.Products 
where list_price >100

select * from Sales.Customers
where city='New York'

select * from Sales.Orders 
where Order_status=1

select * from Production.Products
order by list_price  desc

select * from Sales.Customers
order by first_name,last_name 

select sum(list_price) as tolal_list_price
from Production.Products
group by category_id

select sum(Order_id) as total_orders from Sales.Orders 
group by Customer_id

select sum(list_price) as tolal_list_price
from Production.Products
group by category_id
having sum(list_price) >500

insert into Production.Brands (brand_name) values('BrandX')

insert into Production.Categories (category_name) values ('Electronics')

insert into Sales.Customers (first_name,last_name,phone,email,street,city,state,zip_code)
values ('Alice','Johnson','987-654-3210','alice.johnson@example.com','456 Elm St','Othertown','TX','54321')

insert into Sales.Stores (store_name,phone,email,street,city,state,zip_code) values
('Tech Store','555-123-4567','contact@techstore.com','789 Tech Ave','Techville','CA','67890')

insert into Sales.Staffs (first_name,last_name,email,phone,active,store_id,manager_id)
values ('Bob','Smith','bob.smith@example.com','555-987-6543',1,1,Null)

update Production.Products set list_price =119.99 where product_id=1

update Sales.Customers set email='new.email@example.com' where customer_id=2

update Sales.Stores set phone='123-456-7890' where store_id=3

update Production.Categories set category_name='Appliances' where category_id=2 

update Sales.Staffs set active=0 where store_id=1

delete from Production.Brands where brand_id=2 

delete from Production.Categories where category_id =3

delete from Sales.Customers where customer_id=4

delete from Sales.Stores where store_id=5

delete from Sales.Staffs where staff_id=6

insert into sales.Orders (Customer_id,Order_status,Order_date,Required_date,Shipped_date,Store_id,Staff_id)
values(1,1,'2024-07-01','2024-07-10',Null,1,1)

update Sales.Orders set Shipped_date='2024-07-05' where Order_id=1 

delete from Sales.Orders where Order_status=3

insert into Production.Products (product_name,brand_id,category_id,model_year,list_price) values 
('Souzuki',7,7,'2024',150000),
('Marouti',4,8,'2023',17000)

update Production.Stocks set quantity=0 where store_id=1