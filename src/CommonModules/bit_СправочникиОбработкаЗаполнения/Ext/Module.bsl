﻿////////////////////////////////////////////////////////////////////////////////
// Справочники событие "Обработка заполнения": обработка событий при заполнении

#Область ПрограммныйИнтерфейс

Процедура СправочникиОбработкаЗаполнения(Источник, ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка) Экспорт
		
	Если Источник.ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли; 
	
	ИмяМетода = bit_ОбщегоНазначенияПовтИсп.СправочникиОбработкаЗаполнения().Получить(ТипЗнч(Источник));
	Если ЗначениеЗаполнено(ИмяМетода) Тогда
		Попытка
			Выполнить(СтрШаблон("%1(Источник, ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)", ИмяМетода));
		Исключение
			ВызватьИсключение СтрШаблон("%1%2Имя метода: %3", ОписаниеОшибки(), Символы.ПС, ИмяМетода);
		КонецПопытки;
	КонецЕсли; 

КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

#КонецОбласти