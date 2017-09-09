﻿// -----------------------------------------------------------------------------
// File RUS_NOUNS_2006.SOL
//
// (c) Koziev Elijah
//
// Лексикон - определения имен существительных для русского языка.
//
// Русские существительные http://www.solarix.ru/for_developers/api/russian-noun-declension.shtml
// Особенности описания существительных http://www.solarix.ru/russian_grammar_dictionary/russian-noun-declension.shtml
// Словарные статьи http://www.solarix.ru/for_developers/docs/entries.shtml#words
//
// -----------------------------------------------------------------------------
//
// CD->30.04.2006
// LC->03.09.2016
// --------------

#include "sg_defs.h"

automat sg
{
 #define заглавн(Сущ) tag СУЩЕСТВИТЕЛЬНОЕ:Сущ { CharCasing:FirstCapitalized }

 #define s2006(Сущ2006) entry Сущ2006 : Существительное { paradigm Сущ_2006 ПЕРЕЧИСЛИМОСТЬ:НЕТ }
 #define n2006(Сущ2006) entry Сущ2006 : Существительное { paradigm Сущ_2006 ПЕРЕЧИСЛИМОСТЬ:ДА flag flexer { "pl" } }

 #define имя(_СущИм) \
  #begin
  entry _СущИм : Существительное { paradigm Сущ_2006 ПЕРЕЧИСЛИМОСТЬ:НЕТ CharCasing:FirstCapitalized }
  link СУЩЕСТВИТЕЛЬНОЕ:_СущИм{ ОДУШ:ОДУШ } <в_класс> СУЩЕСТВИТЕЛЬНОЕ:ИМЯ {}
  #end

 #define фам(_СущФам) \
  #begin
  entry _СущФам : Существительное { paradigm Сущ_2006 ПЕРЕЧИСЛИМОСТЬ:НЕТ CharCasing:FirstCapitalized }
  link СУЩЕСТВИТЕЛЬНОЕ:_СущФам{ ОДУШ:ОДУШ } <в_класс> СУЩЕСТВИТЕЛЬНОЕ:ФАМИЛИЯ {}
  #end

  
 s2006( шантрапа )
 n2006( чувырла )
 n2006( кобра )
 n2006( невеста )
 n2006( ведьма )
 n2006( дура )
 n2006( баба )
 n2006( дама )
 n2006( женщина )
 n2006( ворона )
 n2006( крыса )
 n2006( рыба )
 n2006( акула )
 n2006( медуза )
 n2006( выдра )
 n2006( гидра )
 n2006( пантера )
 n2006( саламандра )
 n2006( амеба )
 n2006( антилопа ) 
 n2006( актриса ) 
 n2006( бацилла ) 
 n2006( балерина ) 
 n2006( гагара )

 имя( ЛИНДА )              
 имя( Августа )            
 имя( Августина )          
 имя( Аврора )             
 имя( Агата )              
 имя( Агнесса )            
 имя( Аграфена )           
 имя( Агриппина )          
 имя( Ада )                
 имя( Аделаида )           
 имя( Аделина )            
 имя( Адриана )            
 имя( Аза )                
 имя( Аида )               
 имя( Акулина )            
 имя( Алевтина )           
 имя( Александра )         
 имя( Александрина )       
 имя( Алёна )              
 имя( Алина )              
 имя( Алиса )              
 имя( Алла )               
 имя( Альбертина )         
 имя( Альбина )            
 имя( Ангелина )           
 имя( Анжела )             
 имя( Анна )               
 имя( Антонида )           
 имя( Антонина )           
 имя( Анфиса )             
 имя( Ариадна )            
 имя( Арина )              
 имя( Беата )              
 имя( Беатриса )           
 имя( Белла )              
 имя( Берта )              
 имя( Богдана )            
 имя( Божена )             
 имя( Болеслава )          
 имя( Борислава )          
 имя( Бронислава )         
 имя( Валентина )          
 имя( Ванда )              
 имя( Варвара )            
 имя( Василина )           
 имя( Василиса )           
 имя( Васса )              
 имя( Велимира )           
 имя( Велислава )          
 имя( Вивиана )            
 имя( Вилена )             
 имя( Вильгельмина )       
 имя( Виола )              
 имя( Виолетта )           
 имя( Вита )               
 имя( Виталина )           
 имя( Влада )              
 имя( Владилена )          
 имя( Владимира )          
 имя( Владислава )         
 имя( Владлена )           
 имя( Власта )             
 имя( Всеслава )           
 имя( Галина )             
 имя( Генриетта )          
 имя( Георгина )           
 имя( Гертруда )           
 имя( Глафира )            
 имя( Горислава )          
 имя( Дебора )             
 имя( Диана )              
 имя( Дина )               
 имя( Домна )              
 имя( Донара )             
 имя( Дора )               
 имя( Дросида )            
 имя( Ева )                
 имя( Евангелина )         
 имя( Екатерина )          
 имя( Елена )              
 имя( Елизавета )          
 имя( Еликонида )          
 имя( Жанна )              
 имя( Жозефина )           
 имя( Зара )               
 имя( Зарина )             
 имя( Зинаида )            
 имя( Злата )              
 имя( Ивонна )             
 имя( Ида )                
 имя( Изабелла )           
 имя( Изольда )            
 имя( Илона )              
 имя( Инесса )             
 имя( Инна )               
 имя( Иоанна )             
 имя( Иола )               
 имя( Иоланта )            
 имя( Ираида )             
 имя( Ирина )              
 имя( Ирма )               
 имя( Камилла )            
 имя( Капитолина )         
 имя( Карина )             
 имя( Каролина )           
 имя( Кира )               
 имя( Клара )              
 имя( Клариса )            
 имя( Клементина )         
 имя( Клеопатра )          
 имя( Кристина )           
 имя( Лариса )             
 имя( Лаура )              
 имя( Леонида )            
 имя( Лилиана )            
 имя( Лина )               
 имя( Лора )               
 имя( Луиза )              
 имя( Любава )             
 имя( Любомира )           
 имя( Людмила )            
 имя( Мавра )              
 имя( Магда )              
 имя( Магдалина )          
 имя( Маина )              
 имя( Мальвина )           
 имя( Маргарита )          
 имя( Марианна )           
 имя( Мариетта )           
 имя( Марина )             
 имя( Марлена )            
 имя( Марта )              
 имя( Мартина )            
 имя( Марфа )              
 имя( Марьяна )            
 имя( Матильда )           
 имя( Матрёна )            
 имя( Мелитина )           
 имя( Милена )             
 имя( Милица )             
 имя( Милослава )          
 имя( Мирослава )          
 имя( Мстислава )          
 имя( Нана )               
 имя( Ненила )             
 имя( Неонила )            
 имя( Нина )               
 имя( Нонна )              
 имя( Ноябрина )           
 имя( Оксана )             
 имя( Октябрина )          
 имя( Павла )              
 имя( Павлина )            
 имя( Параскева )          
 имя( Платонида )          
 имя( Поликсена )          
 имя( Полина )             
 имя( Рада )               
 имя( Радмила )            
 имя( Раиса )              
 имя( Регина )             
 имя( Рената )             
 имя( Римма )              
 имя( Розалина )           
 имя( Роксана )            
 имя( Ростислава )         
 имя( Руслана )            
 имя( Руфина )             
 имя( Сабина )             
 имя( Сарра )              
 имя( Светлана )           
 имя( Серафима )           
 имя( Симона )             

 n2006( Муза )
 n2006( Матрона )

 имя( Снежана )
 имя( Соломонида )
 имя( Станислава )
 имя( Степанида )
 имя( Стефанида )
 имя( Сусанна )
 имя( Сюзанна )
 имя( Тамара )
 имя( Татьяна )
 имя( Тереза )
 имя( Улита )
 имя( Ульяна )
 имя( Устина )
 имя( Фаина )
 имя( Федора )
 имя( Фёкла )
 имя( Фелица )
 имя( Фелицата )
 имя( Феодора )
 имя( Феоктиста )
 имя( Феона )
 имя( Феофила )
 имя( Флёна )
 имя( Фрида )
 имя( Харита )
 имя( Христина )
 имя( Шарлотта )
 имя( Эвелина )
 имя( Эдита )
 имя( Элеонора )
 имя( Элла )
 имя( Эльвира )
 имя( Эльза )
 имя( Эльмира )
 имя( Эмма )
 имя( Эрна )
 имя( Эрнестина )
 имя( Юлиана )
 имя( Юстина )
 имя( Яна )
 имя( Янина )
 имя( Ярослава )
 фам( Абакумовна )
 фам( Абрамовна )
 фам( Абросимовна )
 фам( Аввакумовна )
 фам( Августовна )
 фам( Авдеевна )
 фам( Авдиевна )
 фам( Авелевна )
 фам( Авенировна )
 фам( Авериевна )
 фам( Аверкиевна )
 фам( Аверьяновна )
 фам( Авксентиевна )
 фам( Авксентьевна )
 фам( Авраамовна )
 фам( Авраамиевна )
 фам( Авраамьевна )
 фам( Аврамовна )
 фам( Аврамиевна )
 фам( Аврамьевна )
 фам( Аврелиановна )
 фам( Автономовна )
 фам( Агаповна )
 фам( Агапиевна )
 фам( Агапьевна )
 фам( Агапитовна )
 фам( Агафоновна )
 фам( Аггеевна )
 фам( Адамовна )
 фам( Адриановна )
 фам( Азаровна )
 фам( Азариевна )
 фам( Азарьевна )
 фам( Акакиевна )
 фам( Акимовна )
 фам( Акиндиновна )
 фам( Акинфовна )
 фам( Акинфиевна )
 фам( Акинфьевна )
 фам( Аксёновна )
 фам( Аксентиевна )
 фам( Аксентьевна )
 фам( Александровна )
 фам( Алексеевна )
 фам( Алексиевна )
 фам( Альбертовна )
 фам( Альфредовна )
 фам( Амвросиевна )
 фам( Амвросьевна )
 фам( Амосовна )
 фам( Амфилохиевна )
 фам( Амфилохьевна )
 фам( Ананиевна )
 фам( Ананьевна )
 фам( Анастасиевна )
 фам( Анастасьевна )
 фам( Анатолиевна )
 фам( Анатольевна )
 фам( Андреевна )
 фам( Андриановна )
 фам( Андроновна )
 фам( Андрониевна )
 фам( Андроньевна )
 фам( Андрониковна )
 фам( Аникеевна )
 фам( Аникиевна )
 фам( Аникитична )
 фам( Анисиевна )
 фам( Анисьевна )
 фам( Анисимовна )
 фам( Антиоховна )
 фам( Антиповна )
 фам( Антипична )
 фам( Антипиевна )
 фам( Антипьевна )
 фам( Антоновна )
 фам( Антониновна )
 фам( Антроповна )
 фам( Антропиевна )
 фам( Антропьевна )
 фам( Ануфриевна )
 фам( Аполлинариевна )
 фам( Аполлинарьевна )
 фам( Аполлоновна )
 фам( Аполлосовна )
 фам( Ардалионовна )
 фам( Ардальоновна )
 фам( Арефовна )
 фам( Арефиевна )
 фам( Арефьевна )
 фам( Ариевна )
 фам( Арьевна )
 фам( Аристарховна )
 фам( Аристидовна )
 фам( Аркадиевна )
 фам( Аркадьевна )
 фам( Арнольдовна )
 фам( Ароновна )
 фам( Арсеновна )
 фам( Арсениевна )
 фам( Арсеньевна )
 фам( Арсентиевна )
 фам( Арсентьевна )
 фам( Артамоновна )
 фам( Артёмовна )
 фам( Артемиевна )
 фам( Артемьевна )
 фам( Артуровна )
 фам( Архиповна )
 фам( Асафовна )
 фам( Асафиевна )
 фам( Асафьевна )
 фам( Аскольдовна )
 фам( Афанасиевна )
 фам( Афанасьевна )
 фам( Афиногеновна )
 фам( Африкановна )
 фам( Бенедиктовна )
 фам( Богдановна )
 фам( Болеславовна )
 фам( Болеславна )
 фам( Бонифатовна )
 фам( Бонифатиевна )
 фам( Бонифатьевна )
 фам( Борисовна )
 фам( Бориславовна )
 фам( Бориславна )
 фам( Брониславовна )
 фам( Брониславна )
 фам( Вавилична )
 фам( Вавиловна )
 фам( Вадимовна )
 фам( Валентиновна )
 фам( Валериановна )
 фам( Валерьяновна )
 фам( Валериевна )
 фам( Валерьевна )
 фам( Варламовна )
 фам( Варламиевна )
 фам( Варламьевна )
 фам( Варнавична )
 фам( Варсонофовна )
 фам( Варсонофиевна )
 фам( Варсонофьевна )
 фам( Варфоломеевна )
 фам( Васильевна )
 фам( Вассиановна )
 фам( Велизаровна )
 фам( Велимировна )
 фам( Венедиктовна )
 фам( Вениаминовна )
 фам( Веньяминовна )
 фам( Венцеславовна )
 фам( Венцеславна )
 фам( Викентиевна )
 фам( Викентьевна )
 фам( Викторовна )
 фам( Викториевна )
 фам( Викуловна )
 фам( Викулична )
 фам( Виленовна )
 фам( Вильгельмовна )
 фам( Виссарионовна )
 фам( Виталиевна )
 фам( Витальевна )
 фам( Витольдовна )
 фам( Владиленовна )
 фам( Владимировна )
 фам( Владиславовна )
 фам( Владиславна )
 фам( Владленовна )
 фам( Власовна )
 фам( Власиевна )
 фам( Власьевна )
 фам( Вонифатовна )
 фам( Вонифатиевна )
 фам( Вонифатьевна )
 фам( Всеволодовна )
 фам( Всеславовна )
 фам( Всеславна )
 фам( Вуколовна )
 фам( Вышеславовна )
 фам( Вышеславна )
 фам( Вячеславовна )
 фам( Вячеславна )
 фам( Гаврииловна )
 фам( Гавриловна )
 фам( Галактионовна )
 фам( Гедеоновна )
 фам( Геласиевна )
 фам( Геласьевна )
 фам( Гелиевна )
 фам( Геннадиевна )
 фам( Геннадьевна )
 фам( Генриховна )
 фам( Георгиевна )
 фам( Герасимовна )
 фам( Германовна )
 фам( Гермогеновна )
 фам( Геронтиевна )
 фам( Геронтьевна )
 фам( Гиацинтовна )
 фам( Глебовна )
 фам( Горациевна )
 фам( Горгониевна )
 фам( Горгоньевна )
 фам( Гордеевна )
 фам( Григорьевна )
 фам( Гуриевна )
 фам( Гурьевна )
 фам( Гурьяновна )
 фам( Давидовна )
 фам( Давыдовна )
 фам( Далматовна )
 фам( Данииловна )
 фам( Даниловна )
 фам( Дементиевна )
 фам( Дементьевна )
 фам( Демидовна )
 фам( Демьяновна )
 фам( Денисовна )
 фам( Денисиевна )
 фам( Денисьевна )
 фам( Димитриевна )
 фам( Диомидовна )
 фам( Дионисиевна )
 фам( Дионисьевна )
 фам( Дмитриевна )
 фам( Добромысловна )
 фам( Добрынична )
 фам( Доминиковна )
 фам( Донатовна )
 фам( Доримедонтовна )
 фам( Дормедонтовна )
 фам( Дормидонтовна )
 фам( Дорофеевна )
 фам( Досифеевна )
 фам( Евгениевна )
 фам( Евгеньевна )
 фам( Евграфовна )
 фам( Евграфиевна )
 фам( Евграфьевна )
 фам( Евдокимовна )
 фам( Евлампиевна )
 фам( Евлампьевна )
 фам( Евлогиевна )
 фам( Евменовна )
 фам( Евмениевна )
 фам( Евменьевна )
 фам( Евсеевна )
 фам( Евстафиевна )
 фам( Евстафьевна )
 фам( Евстахиевна )
 фам( Евстахьевна )
 фам( Евстигнеевна )
 фам( Евстратовна )
 фам( Евстратиевна )
 фам( Евстратьевна )
 фам( Евтихиевна )
 фам( Евтихьевна )
 фам( Евфимиевна )
 фам( Евфимьевна )
 фам( Егоровна )
 фам( Егориевна )
 фам( Егорьевна )
 фам( Елизаровна )
 фам( Елисеевна )
 фам( Елистратовна )
 фам( Елпидифоровна )
 фам( Емельяновна )
 фам( Епифановна )
 фам( Епифаниевна )
 фам( Епифаньевна )
 фам( Еремеевна )
 фам( Ермиевна )
 фам( Ермиловна )
 фам( Ермилична )
 фам( Ермилиевна )
 фам( Ермильевна )
 фам( Ермолаевна )
 фам( Ерофеевна )
 фам( Ефимовна )
 фам( Ефимиевна )
 фам( Ефимьевна )
 фам( Ефремовна )
 фам( Ефремиевна )
 фам( Ефремьевна )
 фам( Захаровна )
 фам( Захариевна )
 фам( Захарьевна )
 фам( Зеноновна )
 фам( Зиновиевна )
 фам( Зиновьевна )
 фам( Зосимовна )
 фам( Зосимична )
 фам( Иакимовна )
 фам( Иакинфовна )
 фам( Ивановна )
 фам( Игнатовна )
 фам( Игнатиевна )
 фам( Игнатьевна )
 фам( Игоревна )
 фам( Иеронимовна )
 фам( Измаиловна )
 фам( Измайловна )
 фам( Изосимовна )
 фам( Изотовна )
 фам( Изяславовна )
 фам( Изяславна )
 фам( Илиодоровна )
 фам( Илларионовна )
 фам( Иларионовна )
 фам( Ильинична )
 фам( Иннокентиевна )
 фам( Иннокентьевна )
 фам( Иоанновна )
 фам( Иовна )
 фам( Ионична )
 фам( Иосафатовна )
 фам( Иосифовна )
 фам( Ипатовна )
 фам( Ипатиевна )
 фам( Ипатьевна )
 фам( Ипполитовна )
 фам( Ираклиевна )
 фам( Иринарховна )
 фам( Иринеевна )
 фам( Исааковна )
 фам( Исаакиевна )
 фам( Исаевна )
 фам( Исаковна )
 фам( Исакиевна )
 фам( Исидоровна )
 фам( Иустиновна )
 фам( Казимировна )
 фам( Каллиниковна )
 фам( Каллистовна )
 фам( Каллистратовна )
 фам( Капитоновна )
 фам( Карионовна )
 фам( Карловна )
 фам( Карповна )
 фам( Касьяновна )
 фам( Кимовна )
 фам( Киприановна )
 фам( Кировна )
 фам( Кириаковна )
 фам( Кирьяковна )
 фам( Кириковна )
 фам( Кирилловна )
 фам( Кирсановна )
 фам( Клавдиевна )
 фам( Климовна )
 фам( Климентовна )
 фам( Климентиевна )
 фам( Климентьевна )
 фам( Кондратовна )
 фам( Кондратиевна )
 фам( Кондратьевна )
 фам( Кононовна )
 фам( Конрадовна )
 фам( Константиновна )
 фам( Корнеевна )
 фам( Корнелиевна )
 фам( Корнельевна )
 фам( Корниловна )
 фам( Корнилиевна )
 фам( Корнильевна )
 фам( Ксенофонтовна )
 фам( Кузьминична )
 фам( Куприяновна )
 фам( Лавровна )
 фам( Лаврентиевна )
 фам( Лаврентьевна )
 фам( Лазаревна )
 фам( Ларионовна )
 фам( Львовна )
 фам( Леоновна )
 фам( Леонардовна )
 фам( Леонидовна )
 фам( Леонтиевна )
 фам( Леонтьевна )
 фам( Леопольдовна )
 фам( Логвиновна )
 фам( Логгиновна )
 фам( Лонгиновна )
 фам( Луарсабовна )
 фам( Лукинична )
 фам( Лукиановна )
 фам( Лукьяновна )
 фам( Любимовна )
 фам( Любомировна )
 фам( Люциановна )
 фам( Мавровна )
 фам( Маврикиевна )
 фам( Маврикьевна )
 фам( Мавродиевна )
 фам( Мавродьевна )
 фам( Макаровна )
 фам( Макариевна )
 фам( Макарьевна )
 фам( Максимовна )
 фам( Максимиановна )
 фам( Максимилиановна )
 фам( Максимильяновна )
 фам( Мануиловна )
 фам( Маратовна )
 фам( Мардариевна )
 фам( Мардарьевна )
 фам( Мариановна )
 фам( Мариновна )
 фам( Марковна )
 фам( Маркеловна )
 фам( Маркиановна )
 фам( Марленовна )
 фам( Мартимьяновна )
 фам( Мартиновна )
 фам( Мартиниановна )
 фам( Мартириевна )
 фам( Мартирьевна )
 фам( Мартыновна )
 фам( Мартьяновна )
 фам( Матвеевна )
 фам( Мелентиевна )
 фам( Мелентьевна )
 фам( Мелетиевна )
 фам( Мелетьевна )
 фам( Меркуловна )
 фам( Меркуриевна )
 фам( Меркурьевна )
 фам( Мефодиевна )
 фам( Мефодьевна )
 фам( Мечиславовна )
 фам( Мечиславна )
 фам( Милиевна )
 фам( Минична )
 фам( Минаевна )
 фам( Мироновна )
 фам( Мирославовна )
 фам( Мирославна )
 фам( Мисаиловна )
 фам( Митрофановна )
 фам( Митрофаниевна )
 фам( Митрофаньевна )
 фам( Михайловна )
 фам( Михеевна )
 фам( Модестовна )
 фам( Моисеевна )
 фам( Мокеевна )
 фам( Мокиевна )
 фам( Мстиславовна )
 фам( Мстиславна )
 фам( Назаровна )
 фам( Назариевна )
 фам( Назарьевна )
 фам( Наркисовна )
 фам( Натановна )
 фам( Наумовна )
 фам( Нестеровна )
 фам( Несторовна )
 фам( Нефёдовна )
 фам( Никандровна )
 фам( Никаноровна )
 фам( Никитична )
 фам( Никифоровна )
 фам( Никодимовна )
 фам( Николаевна )
 фам( Никоновна )
 фам( Ниловна )
 фам( Нифонтовна )
 фам( Олеговна )
 фам( Олимпиевна )
 фам( Онисимовна )
 фам( Онуфриевна )
 фам( Орестовна )
 фам( Осиповна )
 фам( Оскаровна )
 фам( Остаповна )
 фам( Павловна )
 фам( Павлиновна )
 фам( Паисиевна )
 фам( Паисьевна )
 фам( Палладиевна )
 фам( Палладьевна )
 фам( Памфиловна )
 фам( Памфилиевна )
 фам( Памфильевна )
 фам( Панкратовна )
 фам( Панкратиевна )
 фам( Панкратьевна )
 фам( Пантелеевна )
 фам( Пантелеймоновна )
 фам( Панфиловна )
 фам( Парамоновна )
 фам( Парменовна )
 фам( Парфёновна )
 фам( Парфениевна )
 фам( Парфеньевна )
 фам( Парфентиевна )
 фам( Парфентьевна )
 фам( Патрикеевна )
 фам( Патрикиевна )
 фам( Пафнутиевна )
 фам( Пафнутьевна )
 фам( Пахомовна )
 фам( Пахомиевна )
 фам( Пахомьевна )
 фам( Перфилиевна )
 фам( Перфильевна )
 фам( Петровна )
 фам( Пименовна )
 фам( Питиримовна )
 фам( Платоновна )
 фам( Поликарповна )
 фам( Поликарпиевна )
 фам( Поликарпьевна )
 фам( Порфировна )
 фам( Порфириевна )
 фам( Порфирьевна )
 фам( Потаповна )
 фам( Потапиевна )
 фам( Потапьевна )
 фам( Провна )
 фам( Прокловна )
 фам( Прокоповна )
 фам( Прокопиевна )
 фам( Прокопьевна )
 фам( Прокофиевна )
 фам( Прокофьевна )
 фам( Протасовна )
 фам( Протасиевна )
 фам( Протасьевна )
 фам( Прохоровна )
 фам( Радиевна )
 фам( Ратмировна )
 фам( Рафаиловна )
 фам( Ремовна )
 фам( Робертовна )
 фам( Родионовна )
 фам( Романовна )
 фам( Ростиславовна )
 фам( Ростиславна )
 фам( Рубеновна )
 фам( Рувимовна )
 фам( Рудольфовна )
 фам( Руслановна )
 фам( Рюриковна )
 фам( Саввична )
 фам( Савватеевна )
 фам( Савватиевна )
 фам( Савватьевна )
 фам( Савёловна )
 фам( Савелиевна )
 фам( Савельевна )
 фам( Самойловна )
 фам( Самсоновна )
 фам( Самсониевна )
 фам( Самсоньевна )
 фам( Самуиловна )
 фам( Свиридовна )
 фам( Святополковна )
 фам( Святославовна )
 фам( Святославна )
 фам( Себастьяновна )
 фам( Севастьяновна )
 фам( Севериновна )
 фам( Северьяновна )
 фам( Селивановна )
 фам( Селивёрстовна )
 фам( Селифановна )
 фам( Семёновна )
 фам( Серапионовна )
 фам( Серафимовна )
 фам( Сергеевна )
 фам( Сигизмундовна )
 фам( Сидоровна )
 фам( Силовна )
 фам( Силановна )
 фам( Силантиевна )
 фам( Силантьевна )
 фам( Силуяновна )
 фам( Сильвановна )
 фам( Сильвестровна )
 фам( Симеоновна )
 фам( Симоновна )
 фам( Созоновна )
 фам( Созонтовна )
 фам( Созонтиевна )
 фам( Созонтьевна )
 фам( Сократовна )
 фам( Соломоновна )
 фам( Сосипатровна )
 фам( Софоновна )
 фам( Софониевна )
 фам( Софоньевна )
 фам( Софроновна )
 фам( Софрониевна )
 фам( Софроньевна )
 фам( Спартаковна )
 фам( Спиридоновна )
 фам( Спиридониевна )
 фам( Спиридоньевна )
 фам( Станиславовна )
 фам( Станиславна )
 фам( Стахиевна )
 фам( Степановна )
 фам( Стратониковна )
 фам( Сысоевна )
 фам( Тарасовна )
 фам( Терентиевна )
 фам( Терентьевна )
 фам( Тертиевна )
 фам( Тимофеевна )
 фам( Тимуровна )
 фам( Титовна )
 фам( Тихоновна )
 фам( Трифоновна )
 фам( Трофимовна )
 фам( Уваровна )
 фам( Уаровна )
 фам( Ульяновна )
 фам( Устиновна )
 фам( Фабиановна )
 фам( Фадеевна )
 фам( Фаддеевна )
 фам( Фалалеевна )
 фам( Фатьяновна )
 фам( Фёдоровна )
 фам( Федосовна )
 фам( Федосеевна )
 фам( Федосиевна )
 фам( Федосьевна )
 фам( Федотовна )
 фам( Федотиевна )
 фам( Федотьевна )
 фам( Федуловна )
 фам( Феликсовна )
 фам( Феогностовна )
 фам( Феоктистовна )
 фам( Феофановна )
 фам( Феофиловна )
 фам( Феофилактовна )
 фам( Ферапонтовна )
 фам( Филаретовна )
 фам( Филатовна )
 фам( Филимоновна )
 фам( Филипиевна )
 фам( Филипьевна )
 фам( Филипповна )
 фам( Филофеевна )
 фам( Фирсовна )
 фам( Флегонтовна )
 фам( Флорентиевна )
 фам( Флорентьевна )
 фам( Флорентиновна )
 фам( Флориановна )
 фам( Фокична )
 фам( Фоминична )
 фам( Фортунатовна )
 фам( Фотиевна )
 фам( Фотьевна )
 фам( Фридриховна )
 фам( Фроловна )
 фам( Харитоновна )
 фам( Харитониевна )
 фам( Харитоньевна )
 фам( Харламовна )
 фам( Харламповна )
 фам( Харлампиевна )
 фам( Харлампьевна )
 фам( Хрисанфовна )
 фам( Христофоровна )
 фам( Эдуардовна )
 фам( Эмилиевна )
 фам( Эмильевна )
 фам( Эммануиловна )
 фам( Эразмовна )
 фам( Эрастовна )
 фам( Эрнестовна )
 фам( Эрнстовна )
 фам( Ювеналиевна )
 фам( Ювенальевна )
 фам( Юлиановна )
 фам( Юлиевна )
 фам( Юльевна )
 фам( Юрьевна )
 фам( Юстиновна )
 фам( Якимовна )
 фам( Яковлевна )
 фам( Якубовна )
 фам( Яновна )
 фам( Януариевна )
 фам( Януарьевна )
 фам( Ярославовна )
 имя( Ярославна )
 имя( Антипа )
 имя( Вавила )
 имя( ванесса )
 имя( Варнава )
 имя( дафна )
 имя( ИЕРЕМИАДА )
 имя( Ира )
 имя( Клава )
 имя( Лена )
 имя( Лера )
 имя( Лида )
 имя( Лиза )
 имя( Люба )
 имя( мадонна )
 имя( махатма )
 имя( Тома )
 имя( Фима )
 имя( ФАРИНА )
 имя( ЭЛИЗА )
 имя( БАРБАРА )
 имя( ЗЕМФИРА )
 имя( ЭЛЕКТРА )
 имя( РИНАТА )
 имя( ЛОЛИТА )
 имя( АЭЛИТА )
 имя( сара )
 имя( катерина )
 имя( джуна )
 имя( рита )
 имя( лара )
 имя( сима )
 имя( жюстина )
 имя( джульетта )
 имя( хильда )
 имя( шейла )
 имя( аманда )
 имя( ханна )
 имя( катарина )
 имя( герда )
 имя( АФРОДИТА )
 имя( ДЖОАННА )
 имя( АНИТА )
 имя( Анджела )
 имя( Юнона )

 n2006( ехидна )
 n2006( БАРОНЕССА )
 n2006( ВДОВА )
 n2006( гетера )
 n2006( гиена )
 n2006( горилла )
 n2006( ДЕВА )
 n2006( ДИВЧИНА )
 n2006( донна )
 n2006( ДУРАЧИНА )
 n2006( ЕГОЗА )
 n2006( ЕХИДА )
 n2006( ЕХИДИНА )
 имя( Зина )
 n2006( игуана )
 n2006( коала )
 n2006( корова )
 n2006( лиса )
 n2006( маммона )
 n2006( манта )
 n2006( МЕГЕРА )
 имя( Мила )
 n2006( НАДОЕДА )
 n2006( нематода )
 n2006( НЕПОСЕДА )
 n2006( нереида )
 n2006( нимфа )
 n2006( обезьяна )
 n2006( панда )
 n2006( ПЛАКСА )
 n2006( плотва )
 n2006( подлиза )
 n2006( принцесса )
 n2006( ПСИНА )
 n2006( пума )
 n2006( ПЧЕЛА )
 n2006( сеньора )
 n2006( синьорина )
 n2006( сирота )
 n2006( сова )
 n2006( сомнамбула )
 n2006( страхолюдина )
 n2006( стрекоза )
 n2006( УРОДИНА )
 n2006( ШЕЛЬМА )
 n2006( ЯБЕДА )
 n2006( ЖАБА )
 n2006( ЗАЗНОБА )
 n2006( КАМБАЛА )
 n2006( КОБЫЛА )
 n2006( КУМА )
 n2006( ЛЯГВА )
 n2006( ОСА )
 n2006( ОСОБА )
 n2006( ПОЭТЕССА )
 n2006( критикесса )
 n2006( СЕНЬОРИТА )
 n2006( СКОЛОПЕНДРА )
 n2006( СЛАСТЕНА )
 n2006( СТЮАРДЕССА )
 n2006( СТЕРВА )
 n2006( ШАЛАВА )
 n2006( КИНОЗВЕЗДА )
 n2006( ПОРНОЗВЕЗДА )
 n2006( ПАСКУДА )
 n2006( киса )
 n2006( ЗУДА )
 n2006( МАРКИЗА )
 n2006( анаконда )
 n2006( коза )
 n2006( зебра )
 n2006( такса )
 n2006( сеньорина )
 имя( СВЕТА )
 имя( ГРЕТА )
 имя( ИВЕТТА )
 имя( ДЖУЛИАНА )
 n2006( КУЗИНА )
 имя( АНДЖЕЛИНА )
 имя( САБРИНА )
 n2006( директриса )
 s2006( мойва )
 s2006( сайра )
 n2006( аббатиса )
 n2006( аббатисса )
 имя(Корина) 
 n2006( БАРРАКУДА )
 n2006( ЖИВОТИНА )
 имя(Сандра)
 имя(ГЕРМИОНА)
 n2006( ДРАКОНЕССА )
 n2006( КИКИМОРА )
 n2006( КИНОАКТРИСА )
 n2006( ДЕМОНЕССА )
 n2006( ПЕРСОНА )
 n2006( ПРИМАДОННА )
 n2006( адвокатесса )
 n2006( геенна )
 n2006( кряква )
 n2006( лама )
 n2006( мурена )
 n2006( серна )
 n2006( синьорита )
 n2006( фрейлина )
 n2006( шмара )
 s2006( шушера )
 n2006( ондатра )
 n2006( образина )
 n2006( ДРОЗОФИЛА )

 
/*
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
 n2006(  )
*/



 имя( антуанетта )
 имя( ариана )
 имя( артемида )
 имя( багира )
 имя( брунгильда )
 имя( герта )
 имя( гретта )
 имя( даяна )
 имя( джоконда )
 имя( джозефина )
 имя( жаклина )
 имя( жоржетта )
 имя( жюльетта )
 имя( катрина )
 имя( кларисса )
 имя( клотильда )
 имя( козетта )
 имя( белинда )
 имя( лизетта )
 имя( лола )
 имя( лоретта )
 имя( люсинда )
 имя( магдалена )
 имя( мелинда )
 имя( минерва )
 имя( мона )
 имя( памела )
 имя( паола )
 имя( паула )
 имя( присцилла )
 имя( розанна )
 имя( розамунда )
 имя( селеста )
 имя( сибилла )
 имя( тася )
 имя( фатима )
 имя( фиона )
 имя( хелена )
 имя( шехерезада )
 имя( эва )
 имя( элоиза )
 имя( саманта )
 имя( сузанна )
 имя( хуанита )
 имя( габриэла )
 имя( СЕЛИНА )
 имя( ДАЛИЛА )
 имя( КАТРИОНА )
 имя( СЕРЕНА )
 имя( ЭЙЛА )
 имя( ЛЕОНОРА )
 имя( ЛАЙЗА )
 имя( РАМОНА )
 имя( КАРЛОТТА )
 имя( РИНА )
 имя( ДЖАЙНА )

 имя( айседора )
 n2006( акрида )
 имя( аллегра )
 имя( аннета )
 n2006( архонтесса )
 имя( бабетта )
 n2006( вампиресса )
 имя( вильма )
 имя( виолета )
 имя( габриэлла )
 имя( деметра )
 n2006( друидесса )
 имя( елисавета )
 имя( зельда )
 имя( иванна )
 n2006( инфанта )
 n2006( капибара )
 имя( кармелита )
 имя( каталина )
 n2006( кронпринцесса )
 имя( ленора )
 имя( мадлена )
 n2006( мамба )
 имя( николетта )
 имя( прозерпина )
 n2006( путана )
 имя( роберта )
 имя( роксолана )
 имя( селена )
 n2006( хамза )
 имя( церера )
 имя( шива )
 n2006( телезвезда )
 n2006( лярва )
 имя( кончита )
 имя( анжелина )
 имя( бригитта )
 s2006( кета )
 имя( Манана )
 имя( Карменсита )
 
 n2006( ТЕЛЕПЕРСОНА )
 n2006( СУПЕРЖЕНЩИНА )


}

