﻿
Процедура ПередУдалением(Отказ)

	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	ОбменДанными.Загрузка = Истина;
	ДополнительныеСвойства.Вставить("ОтключитьМеханизмРегистрацииОбъектов", Истина);

КонецПроцедуры
