﻿
#Область ОбработчикиСобытийФормы

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	УправлениеЭлементамиФормы();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовШапкиФормы

&НаКлиенте
Процедура ЗначениеПриИзменении(Элемент)
	
	УправлениеЭлементамиФормы();
	
КонецПроцедуры

#КонецОбласти

#Область ОбработчикиСобытийЭлементовТаблицыФормы

#КонецОбласти

#Область ОбработчикиКомандФормы

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаКлиенте 
Процедура УправлениеЭлементамиФормы()
	Если ТипЗнч(Объект.Значение) = Тип("Строка") Тогда
		Элементы.ВыполняемаяПроцедура.Видимость = Истина;
		Элементы.ЭтоСервернаяПроцедура.Видимость = Истина;
	Иначе
		Элементы.ВыполняемаяПроцедура.Видимость = Ложь;
		Элементы.ЭтоСервернаяПроцедура.Видимость = Ложь;
	КонецЕсли;
КонецПроцедуры

#КонецОбласти 