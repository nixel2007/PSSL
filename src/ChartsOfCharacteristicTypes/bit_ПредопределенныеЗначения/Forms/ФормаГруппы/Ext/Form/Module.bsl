﻿
#Область ОбработчикиСобытийФормы

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура КомментарийОткрытие(Элемент, СтандартнаяОбработка)
	
	СтандартнаяОбработка = Ложь;
	
	ПоказатьВводСтроки(Новый ОписаниеОповещения("КомментарийОткрытиеЗавершение", ЭтотОбъект), 
		Объект.Комментарий, НСтр("ru='Комментарий'; en = 'Comment'"),, Истина);
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы

#КонецОбласти

#Область ОбработчикиКомандФормы

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте
Процедура КомментарийОткрытиеЗавершение(Результат, ДополнительныеПараметры) Экспорт
	
	Если Результат <> Неопределено Тогда
		Объект.Комментарий = Результат;
	КонецЕсли;
	
КонецПроцедуры;

#КонецОбласти