--Join
--Q1
select * from Production.products pro
join Production.brands ba on pro.brand_id=ba.brand_id
join Production.categories ca on pro.category_id=ca.category_id
--Q2
select count(quantity) qunatity_product , p.product_name from sales.order_items oi
join Production.products p on oi.product_id=p.product_id
group by p.product_name

--Q3
select * from Sales.customers c
join Sales.orders o on c.customer_id=o.customer_id
join Sales.stores s on o.store_id=s.store_id
--Q4
select sum(list_price) sales_amount ,s.store_id from Sales.order_items oi
join Sales.orders o on oi.order_id=o.order_id
join Sales.stores s on o.store_id=s.store_id
group by s.store_id
--Q5
select o.order_date,o.order_id,o.order_status,o.required_date,o.shipped_date,
concat(c.first_name,' ',c.last_name) customer_name,
s.store_name,concat(st.first_name,' ',st.last_name) staff_name
from Sales.orders o join Sales.customers c on o.customer_id=c.customer_id
join Sales.staffs st on o.staff_id=st.staff_id join Sales.stores s on s.store_id=o.store_id
--Q6
select * from Production.products p left join Sales.order_items oi
on p.product_id=oi.product_id  where oi.order_id is null

--Q7
select avg(list_price) Avg_price ,category_name from Production.products p join Production.categories c
on c.category_id=p.category_id group by category_name
--Q8
select * from Production.products p join Production.stocks s
on s.product_id=p.product_id 
--Q9
select count(*),c.customer_id from Sales.orders o join Sales.customers c on o.customer_id=c.customer_id
group by c.customer_id
--Q10
select s.store_id, count(distinct p.product_id) products
from production.products p join sales.order_items oi
on p.product_id=oi.product_id
join sales.orders o on oi.order_id=o.order_id join sales.stores s on s.store_id=o.store_id
group by s.store_id
------------------------------------------------------------------------------
--Left Join Question 
--Q1
select * from Production.products p left join Production.categories c
on p.category_id=c.category_id
--Q2
select count(quantity) total_quantity,p.product_id from Production.products p 
left join Sales.order_items oi
on p.product_id=oi.product_id
group by p.product_id
--Q3
select o.order_id,o.order_date,o.order_status,o.required_date,o.required_date,o.staff_id,
o.store_id,concat(c.first_name,' ',c.last_name ) customer_name
from Sales.orders o left join Sales.customers c on o.customer_id=c.customer_id
--Q4
select * from Sales.staffs st left join Sales.stores s on st.store_id=s.store_id
--Q5
select avg(list_price) rating,c.category_id from   Production.categories c left join Production.products p
on p.category_id=c.category_id
group by c.category_id
--Q6
select count(*)
from Sales.customers c left join Sales.orders o on c.customer_id=o.customer_id
--self join
select s.first_name+''+s.last_name employee_name,m.first_name Manager_name
from Sales.staffs s join Sales.staffs m 
on s.manager_id=m.staff_id
