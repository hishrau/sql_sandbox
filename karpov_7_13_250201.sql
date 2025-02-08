SELECT order_id
FROM   user_actions
WHERE  order_id not in (SELECT order_id
                        FROM   user_actions
                        WHERE  action = 'cancel_order')
ORDER BY order_id limit 1000;

SELECT count(order_id) as orders_count
FROM   courier_actions
WHERE  order_id not in (SELECT order_id
                        FROM   courier_actions
                        WHERE  action = 'deliver_order');

SELECT  count(order_id) filter (WHERE order_id not in (SELECT order_id
                                FROM   courier_actions
                                WHERE  action = 'deliver_order')) as orders_undelivered,
        count(order_id) filter (WHERE  order_id in (SELECT order_id
                                FROM   user_actions
                                WHERE  action = 'cancel_order')) as orders_canceled,
        count(order_id) filter (WHERE  order_id not in (SELECT order_id FROM   user_actions WHERE  action = 'cancel_order')
                                and order_id not in (SELECT order_id FROM   courier_actions WHERE  action = 'deliver_order')) as orders_in_process
FROM   courier_actions;

select count(distinct order_id) as orders_undelivered,
       count(order_id) filter (WHERE  action = 'cancel_order'),
       count(distinct order_id) - count(order_id) filter (WHERE  action = 'cancel_order') as orders_in_process
from user_actions where order_id not in (SELECT order_id FROM courier_actions WHERE action = 'deliver_order');

select user_id, birth_date
from users
where sex = 'male' and birth_date < (select min(birth_date) from users where sex = 'female')
order by user_id;
--7-15
select order_id, product_ids
from orders
where order_id in (select order_id from courier_actions where action = 'deliver_order' order by time desc limit 100)
order by order_id
;
--7-16
select courier_id, count(order_id) as orders_count
from courier_actions
where action = 'deliver_order' and strftime('%Y', time) = '2022' and strftime('%m', time) = '09'
group by courier_id
having count(order_id) >= 30;

select count(order_id) from courier_actions where strftime('%Y', time) = '2022';
SELECT date(time) from courier_actions limit 100;
SELECT strftime('%Y');
SELECT strftime('%Y %m %d','now');

select iif(cast(substr(birth_date, 7, 2) as INTEGER) < 25, 
	concat('20', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2)),
	concat('19', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2))) as new_date 
from users 
where birth_date is NOT NULL
order by new_date;

--It has been done
UPDATE users SET bd_yymmdd = iif(cast(substr(birth_date, 7, 2) as INTEGER) < 25, 
	concat('20', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2)),
	concat('19', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2))) 
	WHERE birth_date is NOT NULL;
	
select time, iif(cast(substr(time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)),
	concat('19', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5))) as time_new
from courier_actions 
where time is NOT NULL
order by time_new;
UPDATE courier_actions SET new_time = iif(cast(substr(time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)),
	concat('19', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)));
	
select birth_date, iif(cast(substr(birth_date, 7, 2) as INTEGER) < 25, 
	concat('20', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2)),
	concat('19', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2))) as new_date 
from couriers 
where birth_date is NOT NULL
order by new_date;

UPDATE couriers SET new_birth_date = iif(cast(substr(birth_date, 7, 2) as INTEGER) < 25, 
	concat('20', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2)),
	concat('19', substr(birth_date, 7, 2), '-', substr(birth_date, 4, 2), '-', substr(birth_date, 1, 2))) 
	WHERE birth_date is NOT NULL;
	
select creation_time, iif(cast(substr(creation_time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(creation_time, 7, 2), '-', substr(creation_time, 4, 2), '-', substr(creation_time, 1, 2), ' ', substr(creation_time, 10, 5)),
	concat('19', substr(creation_time, 7, 2), '-', substr(creation_time, 4, 2), '-', substr(creation_time, 1, 2), ' ', substr(creation_time, 10, 5))) as time_new
from orders 
where creation_time is NOT NULL
order by time_new;

UPDATE orders SET new_time = iif(cast(substr(creation_time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(creation_time, 7, 2), '-', substr(creation_time, 4, 2), '-', substr(creation_time, 1, 2), ' ', substr(creation_time, 10, 5)),
	concat('19', substr(creation_time, 7, 2), '-', substr(creation_time, 4, 2), '-', substr(creation_time, 1, 2), ' ', substr(creation_time, 10, 5)));
	
select time, iif(cast(substr(time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)),
	concat('19', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5))) as time_new
from user_actions 
where time is NOT NULL
order by time_new;

UPDATE user_actions SET new_time = iif(cast(substr(time, 7, 2) as INTEGER) < 25, 
	concat('20', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)),
	concat('19', substr(time, 7, 2), '-', substr(time, 4, 2), '-', substr(time, 1, 2), ' ', substr(time, 10, 5)));