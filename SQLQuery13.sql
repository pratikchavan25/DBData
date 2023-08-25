create table products(
    pID INT PRIMARY key,
    pName VARCHAR(30),
    pPrice int
)

insert into products values(1,'Key',500)
insert into products values(2,'Pen',900)
insert into products values(3,'Mouse',560)
insert into products values(4,'Keyboard',600)
insert into products values(5,'lock',540)
insert into products values(6,'Cloth',300)
insert into products values(7,'paper',290)
insert into products values(8,'rubber',654)
insert into products values(9,'cup',340)
insert into products values(10,'kettle',840)

SELECT * FROM products

CREATE FUNCTION GetProdDiscountByINT (@price INT, @disc INT )
returns INT
AS begin
declare @disPrice INT;
SET @disPrice = @price - (@price * @disc/100);
RETURN @discPrice
END

SELECT dbo.GetProdDiscountByInt(4500,5) as 'discount price'

