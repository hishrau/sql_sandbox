INSERT INTO doctors (doctor_name, spec, cabinet_num) 
	VALUES('Вахтин Петр Семенович', 'терапевт', 11);
INSERT INTO doctors (doctor_name, cabinet_num)
	VALUES('Мурзина Наталья Сергеевна', 16);
INSERT INTO doctors (doctor_name, spec, cabinet_num) 
	VALUES('Жуков Василий Петрович', 'кардиолог', 21);
INSERT INTO med_area (area_address)
VALUES
('ул. Ленина'),
('ул. Рижская'),
('ул. Вавилова');
INSERT INTO med_area (area_address)
	VALUES ('ул. Зеленая'), ('ул. Керамическая');
INSERT INTO patients (full_name, sex, birth_date, oms_num, card_num, area_num)
	VALUES 
		('Скрипкина Надежда Константиновна', 'ж', '1965-06-23', 47327844534, 1677, 2),
		('Чусов Виктор Петрович', 'м', '1978-09-01', 36327844534, 235, 3),
		('Калинина Юлия Васильевна', 'ж', '1995-03-15', 78327844534, 3265, 1);
INSERT INTO patients (full_name, sex, birth_date, oms_num, card_num, area_num)
	VALUES 
		('Быкова Светлана Ивановна', 'ж', '2001-12-16', 48324544531, 5623, 2),
		('Иванов Сергей Эдуардович', 'м', '1965-08-15', 3224584531, 2345, 1),
		('Скрябин Евгений Дмитриевич', 'м', '1985-11-25', 45320544731, 2678, 3);
INSERT INTO talons (doctor_num, oms_num, visit_time)
	VALUES 
		(1, 48324544531, '2024-11-07 10:00:00'),
		(2, 3224584531, '2024-11-07 11:45:00'),
		(3, 45320544731, '2024-11-17 13:15:00'),
   		(2, 78327844534, '2024-12-27 17:45:00'),
		(1, 36327844534, '2024-12-07 09:05:00')
        ;