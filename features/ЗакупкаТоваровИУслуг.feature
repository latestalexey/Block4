﻿# encoding: utf-8
# language: ru

@tree

Функционал: Закупка товаров и услуг
	Как Оператор
	Хочу фиксировать факт поступления товара
	Чтобы все поступления были отражены в учетной системе

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий


Сценарий: Заполнение обязательных реквизитов документа поступления
	Допустим я создал новый документ "Поступление"
		Когда Я нажимаю кнопку командного интерфейса "Поступление"
		Тогда открылось окно "Поступление"
		И     я нажимаю на кнопку "Создать"
		Тогда открылось окно "Поступление (создание)"

	Заполнение реквизитов шапки
		И     я открываю выпадающий список "Склад"
		И     я выбираю значение реквизита "Склад" из формы списка
		Тогда открылось окно "Склады"
		И     В форме "Склады" в таблице "Список" я перехожу к строке:
		| 'Наименование'   |
		| 'Склад отгрузки' |
		И     В форме "Склады" в ТЧ "Список" я выбираю текущую строку
		Тогда открылось окно "Поступление *"
		И     я открываю выпадающий список "Контрагент"
		И     я выбираю значение реквизита "Контрагент" из формы списка
		Тогда открылось окно "Контрагенты"
		И     В форме "Контрагенты" в таблице "Список" я перехожу к строке:
		| 'Наименование' |
		| 'Контрагент1'  |
		И     В форме "Контрагенты" в ТЧ "Список" я выбираю текущую строку
	
	Заполнение ТабЧасти
		И     в ТЧ "Товары" я нажимаю на кнопку "Добавить"
		И     в ТЧ "Товары" я выбираю значение реквизита "Номенклатура" из формы списка
		Тогда открылось окно "Номенклатура"
		И     В форме "Номенклатура" в таблице "Список" я перехожу к строке:
		| 'Наименование'    |
		| 'Ручка шариковая' |
		И     В форме "Номенклатура" в ТЧ "Список" я выбираю текущую строку
		Тогда открылось окно "Поступление *"

		И     я перехожу к следующему реквизиту
		И     в ТЧ "Товары" я активизирую поле "Количество"
		И     в ТЧ "Товары" в поле "Количество" я ввожу текст "10,000"
		И     я перехожу к следующему реквизиту
		И     в ТЧ "Товары" я активизирую поле "Цена"
		И     в ТЧ "Товары" в поле "Цена" я ввожу текст "10,00"
		И     я перехожу к следующему реквизиту
		И     в ТЧ "Товары" я активизирую поле "Сумма"
		И     в ТЧ "Товары" в поле "Сумма" я ввожу текст "100,00"
		И     В форме "Поступление *" в ТЧ "Товары" я завершаю редактирование строки
		
		
	Проведение и проверка
		И     я нажимаю на кнопку "Провести и закрыть"

