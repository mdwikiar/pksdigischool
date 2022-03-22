use classicmodels;

select a.OrderNumber, a.OrderDate, b.CustomerName, b.City, b.Country, c.QuantityOrdered, d.ProductName
from orders a
inner join customers b on a.customernumber = b.customernumber
inner join orderdetails c on a.ordernumber = c.ordernumber
inner join products d on c.productcode = d.productcode
where a.orderdate between '2004-08-01' and '2004-12-01'
and d.productname = '1992 Ferrari 360 Spider red'
;