use truyum;

-- 1. View Menu Item List Admin(TYUC001)
-- a.Inserting menu items
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('Sandwich',99.00,'Yes','2017-03-15','Main Course','Yes');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('Burger',129.00,'Yes','2017-12-23','Main Course','No');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('Pizza',149.00,'Yes','2018-08-21','Main Course','No');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('French Fries',57.00,'No','2017-07-02','Starters','Yes');
insert into truyum.menu_item(me_name,me_price,me_active,me_date_of_launch,me_category,me_free_delivery)values('Choclate',32.00,'Yes','2022-11-02','Dessert','Yes');

-- b.Retrieving menu items(admin view)
SELECT 
    *
FROM
    truyum.menu_item;

-- 2. View Menu Item List Customer(TYUC002)
-- a.Retrieving menu items(custimer view)
SELECT 
    *
FROM
    truyum.menu_item
WHERE
    me_active = 'Yes'
        AND me_date_of_launch < (SELECT CURDATE());

-- 3 Edit Menu Item(TYUC003) 
-- a.Reyrieving particular menu item for edit
SELECT 
    *
FROM
    truyum.menu_item
WHERE
    me_id = 1;

-- b.Updating menu item id=1
UPDATE truyum.menu_item 
SET 
    me_name = 'ChessySandwich',
    me_price = 150.00,
    me_active = 'No',
    me_date_of_launch = '2018-03-15',
    me_category = 'Starters',
    me_free_delivery = 'No'
WHERE
    me_id = 1;

-- 4 Add TO Cart(TYUC004) 
-- a. Inserting user details and adding cart information in their user id

insert into truyum.user(us_name)values('Dinesh');
insert into truyum.user(us_name)values('Arun'); 

insert into truyum.cart(ct_us_id,ct_pr_id)values(1,1);
insert into truyum.cart(ct_us_id,ct_pr_id)values(1,1);
insert into truyum.cart(ct_us_id,ct_pr_id)values(1,3);

SELECT 
    *
FROM
    cart;

-- 5 View Cart(TYUCOO5)
-- a. Retrieving all cart from the particular user id 
SELECT 
    me.me_id,
    me.me_name,
    me.me_price,
    me.me_active,
    me.me_date_of_launch,
    me.me_category,
    me.me_free_delivery
FROM
    truyum.menu_item me
        JOIN
    truyum.cart ct ON me.me_id = ct.ct_pr_id
        JOIN
    truyum.user us ON us.us_id = ct.ct_us_id
WHERE
    us.us_id = 1;
    
-- b.Total Amount 
SELECT 
    SUM(me.me_price) AS Total
FROM
    truyum.cart ct
        JOIN
    truyum.menu_item me ON ct.ct_pr_id = me.me_id
        JOIN
    truyum.user us ON us.us_id = ct.ct_us_id
WHERE
    us.us_id = 1;
    
    
-- 6 Remove Item From Cart(TYUC006)
-- a. Removing item from the cart 
DELETE FROM truyum.cart 
WHERE
    ct_us_id = 1 AND ct_pr_id = 1 LIMIT 1;






