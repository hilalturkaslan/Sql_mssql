create view nrt_sales
as

select * from [order_details$] od
inner join orders$ o on od.orderid = o.orderid

CREATE VIEW nrt_sales AS
SELECT 
    od.orderid,
    od.productid,
    od.quantity,
    od.unitprice,
    od.discount,
    o.customerid,
    o.orderdate,
    o.shipcountry
FROM [order_details$] od
INNER JOIN orders$ o ON od.orderid = o.orderid