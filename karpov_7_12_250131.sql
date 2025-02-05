SELECT courier_id 
FROM courier_actions 
WHERE courier_id NOT IN (
	SELECT courier_id FROM couriers);

SELECT order_id
FROM courier_actions 
WHERE order_id NOT IN (
	SELECT order_id FROM orders);
	
SELECT order_id
FROM user_actions 
WHERE order_id NOT IN (
	SELECT order_id FROM orders);
	
with avg_price as (SELECT round(avg(price), 2)
                   FROM   products)
SELECT product_id,
       name,
       price,
       case when price >= (SELECT *
                    FROM   avg_price) + 50 then price * 0.85 when price <= (SELECT *
                                                        FROM   avg_price) - 50 then price * 0.90 else price end as new_price
FROM   products
ORDER BY price desc, product_id;

with t1 as (SELECT user_id,
                   count(order_id) as orders_count
            FROM   user_actions
            WHERE  action = 'create_order'
            GROUP BY user_id)
SELECT user_id,
       orders_count,
       round((SELECT avg(orders_count)
       FROM   t1), 2) as orders_avg, orders_count - round((SELECT avg(orders_count)
                                                    FROM   t1), 2) as orders_diff
FROM   t1
ORDER BY user_id limit 1000;

SELECT count(order_id) as orders_count from courier_actions
WHERE order_id in (select order_id from courier_actions where action = 'accept_order')
    and order_id not in (select order_id from courier_actions where action = 'deliver_order');
	
SELECT count(order_id) as orders_canceled,
	   count(order_id) FILTER (
		WHERE order_id in (
			select order_id from courier_actions 
			where action = 'deliver_order')) as orders_canceled_and_delivered
FROM user_actions
WHERE action = 'cancel_order';

SELECT count(distinct order_id) as orders_canceled,
       count(order_id) filter (WHERE action = 'deliver_order') as orders_canceled_and_delivered
FROM   courier_actions
WHERE  order_id in (SELECT order_id
                    FROM   user_actions
                    WHERE  action = 'cancel_order')
