﻿# encoding: utf-8
# language: ru

Функционал: Расчет зарплаты
	Как Бухгалтер
	Хочу расчитывать зарплату
	Чтобы не делать это вручную

Сценарий: Заполнение обязательных реквизитов документа "Расчет"
	Допустим я создал новый документ "Расчет"
	Когда я заполнил ТабЧасть "Зарплата"
		И нажал кнопку "Провести"
	Тогда документ провелся без ошибок

Сценарий: Расчет Зарплаты сотрудника Иванов
	Допустим у меня есть реквизит ДнейОтработал равный 20
	И у меня есть реквизит ДнейДолженОтработать равный 22
	И у меня есть Оклад 10000 руб.
	Тогда Зарплата должна быть равна  9090.91 руб.

Сценарий: Расчет Зарплаты сотрудника Петров
	Допустим у меня есть реквизит ДнейОтработал равный 15
	И у меня есть реквизит ДнейДолженОтработать равный 21
	И у меня есть Оклад 20000 руб.
	Тогда Зарплата должна быть равна  14285.71 руб.
