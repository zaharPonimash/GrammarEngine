﻿// ===============
// ПОДЛЕЖАЩЕЕ
// ===============


// КОТОРЫЙ в качестве подлежащего очень облегчает разбор некоторых
// аналитических конструкций.
pattern Подлежащее
{
 КакойКоторый{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -2 }


// Тот удивился
// ^^^
pattern Подлежащее
{
 прилагательное:тот{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}




// --------------------------------

// Вот и осень пришла
//     ^^^^^^^
// Тут и Вася засмеялся.
//     ^^^^^^
pattern Подлежащее
{
 p=частица:и{}
 n=Подлежащее : export { ЛИЦО ЧИСЛО РОД node:root_node }
}
: links { n.<PREFIX_PARTICLE>p }
: ngrams { -3 }


// Были в письме и еще снимки.
//               ^^^^^^^^^^^^
pattern Подлежащее
{
 p=частица:и{}
 p2=частица:еще{}
 n=Подлежащее : export { ЛИЦО ЧИСЛО РОД node:root_node }
}
: links { n.{ <PREFIX_PARTICLE>p <PREFIX_PARTICLE>p2 } }
: ngrams { -3 }


// --------------------------------

// Сам-то веришь в это?
// ^^^^^^
pattern Подлежащее
{
 ПрилСамОбъект{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -1 }

// --------------------------------


// Ведь ничего не произошло.
//      ^^^^^^
pattern Подлежащее
{
 'ничего'{ class:местоим_сущ падеж:род } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : ngrams { -2 }


// Ведь ничего особенного не произошло.
//      ^^^^^^^^^^^^^^^^^
pattern Подлежащее
{
 n='ничего'{ class:местоим_сущ падеж:род } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
 a=ГруппаПрил2{ ПАДЕЖ:РОД ЧИСЛО:ЕД РОД:СР }
} 
: links { n.<ATTRIBUTE>a }
: ngrams { -1 }


patterns СобирЧислит export { node:root_node ПАДЕЖ КАТЕГОРИЯ_ЧИСЛ }

// шестеро остальных находились у двигателей.
// ^^^^^^^^^^^^^^^^^
pattern Подлежащее
{
 n=СобирЧислит{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:МН РОД node:root_node }
 a=прилагательное:*{ падеж:род число:мн }
}
: links { n.<ATTRIBUTE>a }
: ngrams { -1 }

// вот эти двое ворвались через окно.
// ^^^^^^^^^^^^
//
// остальные трое ждали хода.
// ^^^^^^^^^^^^^^
pattern Подлежащее
{
 a=ГруппаПрил1{ падеж:им число:мн }
 n=СобирЧислит{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:МН РОД node:root_node }
}
: links { n.<ATTRIBUTE>a }

// вы трое слишком опасны.
// ^^^^^^^
pattern Подлежащее
{
 n=местоимение:я{ падеж:им } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 q=СобирЧислит{ КАТЕГОРИЯ_ЧИСЛ:СОБИР ПАДЕЖ:ИМ }
}
: links { n.<ATTRIBUTE>q }




// ничего не изменилось
// ^^^^^^
pattern Подлежащее
{
 'ничего'{ ПАДЕЖ:РОД } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : ngrams { -1 }

// ты одна можешь ей помочь.
pattern Подлежащее
{
 p=местоимение:я{ падеж:им } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 a=прилагательное:один{ ПАДЕЖ:ИМ =p:ЧИСЛО =p:РОД }
}
: links { p.<ATTRIBUTE>a }
: ngrams { 1 }



// лишь ты одна можешь это сделать
// ^^^^^^^^^^^^
pattern Подлежащее
{
 adv=НаречиеЛишьТолько
 p=местоимение:я{ падеж:им } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 a=прилагательное:один{ ПАДЕЖ:ИМ =p:ЧИСЛО =p:РОД }
}
: links
{
 p.{
    <ATTRIBUTE>adv
    <ATTRIBUTE>a
   }
}
: ngrams { 1 }



// Латинские названия могут выступать как существительное-подлежащее в любом падеже и числе

// Google опубликовала панорамы Эвереста и Килиманджаро
// ^^^^^^ !!!!!!!!!!!!
pattern Подлежащее
{
 ИнострСлово :export { ЛИЦО:3 ЧИСЛО:ЕД РОД:ЖЕН node:root_node }
} : ngrams { -4 }

// Boeing нашел решение проблемы аккумуляторов 
// ^^^^^^ !!!!!!
pattern Подлежащее
{
 ИнострСлово :export { ЛИЦО:3 ЧИСЛО:ЕД РОД:МУЖ node:root_node }
} : ngrams { -4 }

// Fitch понизило рейтинг Италии
// ^^^^^ !!!!!!!!
pattern Подлежащее
{
 ИнострСлово :export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : ngrams { -4 }



// я-таки побрился!
// ^^^^^^
pattern Подлежащее
{
 n=местоимение:я{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
 t='-'
 p='таки'
} : links { n.<POSTFIX_PARTICLE>t.<NEXT_COLLOCATION_ITEM>p }



// Группа местоимения в роли подлежащего:
//
// я сплю
// лично я доволен результатами
pattern Подлежащее
{
 ГруппаМест{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
}

// ведь сейчас тебе нужна только она
//                        ^^^^^^^^^^
pattern Подлежащее
{
 q=наречие:только{}
 n=местоимение:я{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
}
: links { n.<ATTRIBUTE>q }
: ngrams { -2 }


/*
// Не он придёт сегодня
// ^^^^^
//
// Не вы ли это воровали у меня капусту-брокколи?
// ^^^^^^^^
pattern Подлежащее
{
 p=частица:не{}
 n=ГруппаМест{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
} : links { n.<NEGATION_PARTICLE>p }
*/


/*
// вот она вызвала настоящее смятение
// ^^^^^^^
pattern Подлежащее
{
 p=частица:вот{}
 n=местоимение:я{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
} : links { n.<PREFIX_PARTICLE>p }
*/


// 4% школьников нуждаются в лечебно-профилактическом питании
// ^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 n1=@regex("[[:digit:]]{1,3}%"):export{ ЛИЦО:3 ЧИСЛО:МН РОД:МУЖ node:root_node }
 n2=ГруппаСущ1{ ПАДЕЖ:РОД ~CannotBeGenAdjunct }
} : links { n1.<RIGHT_GENITIVE_OBJECT>n2 }

// 41% акций компании был куплен
// ^^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{

 n1=@regex("[[:digit:]]*1%"):export{ ЛИЦО:3 ЧИСЛО:ЕД РОД:МУЖ node:root_node }
 n2=ГруппаСущ4{ ПАДЕЖ:РОД ЧИСЛО:МН }
} : links
{
 n1.<RIGHT_GENITIVE_OBJECT>n2
}





#pragma language_mix off
// 2012г. стал худшим для прав человека в новейшей истории России
// ^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 n1=@regex("[[:digit:]]{4}г\\."):export{ ЛИЦО:3 ЧИСЛО:ЕД РОД:МУЖ node:root_node }
}
#pragma language_mix on




// две другие тоже оказались рядом.
// ^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n=числительное:*{ ПАДЕЖ:ИМ ЧИСЛО:ЕД }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 a=прилагательное:*{ ПАДЕЖ:ИМ ЧИСЛО:МН ~КРАТКИЙ }
} : links { n.<ATTRIBUTE>a }
  : ngrams { 1 }


// все остальные потянулись следом.
// ^^^^^^^^^^^^^
// Все обвиняемые находятся под стражей.
// ^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 a=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }
 n=ГруппаПрил2{ ПАДЕЖ:ИМ ЧИСЛО:МН ~CanAdjModifByAdv }:export { ЛИЦО:3 ЧИСЛО node:root_node }
} : links { n.<ATTRIBUTE>a }
  : ngrams { 1 }

// все вторгшиеся сюда наказываются!
// ^^^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 a=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }
 n=ПричОборот2{ ПАДЕЖ:ИМ ЧИСЛО:МН ~CanAdjModifByAdv }:export { ЛИЦО:3 ЧИСЛО node:root_node }
} : links { n.<ATTRIBUTE>a }
  : ngrams { 1 }


// двое солдат вышли вслед за ним.
// ^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
 n=СущСПричОборотом{ ПАДЕЖ:РОД ЧИСЛО:МН ОДУШ:ОДУШ } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
} : links { n.<ATTRIBUTE>q }
  : ngrams { 1 }


// мои пятеро друзей появятся через минуту
// ^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 a=ГруппаПрил2{ ПАДЕЖ:ИМ ЧИСЛО:МН }
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
 n=СущСРодДоп{ ПАДЕЖ:РОД ЧИСЛО:МН ОДУШ:ОДУШ } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
} : links
{
 n.{
    <ATTRIBUTE>q
    <ATTRIBUTE>a
   }
}
: ngrams { 2 }


// двое пропали без вести.
// ^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 СобирЧислит{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
}


// все трое были рыцарями
// ^^^^^^^^
// вздох облегчения издали все пятеро.
//                         ^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 a=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
} : links { q.<ATTRIBUTE>a }
  : ngrams { 1 }



// КТО УГОДНО - подлежащее:
// кто угодно может оказаться.
// ^^^^^^^^^^
pattern Подлежащее
{
 n=местоим_сущ:кто{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:ЕД РОД:МУЖ node:root_node }
 p=наречие:угодно{}
} : links { n.<POSTFIX_PARTICLE>p }
  : ngrams { 1 }


pattern Подлежащее
{
 n=местоим_сущ:что{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
 p=наречие:угодно{}
} : links { n.<POSTFIX_PARTICLE>p }
  : ngrams { 1 }





// Подлежащее с обращением:
// Я, ребята, не умею собирать грибы
// ^^^^^^^^^^
pattern Подлежащее
{
 p=ГруппаМест{ ПАДЕЖ:ИМ } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 comma1=','
 n=ГруппаСущ1{ падеж:им одуш:одуш }
 comma2=','
} : links
{
 p.{
    <APPEAL>n.<PUNCTUATION>comma2
    <PUNCTUATION>comma1
   }
}



// триста спартанцев охраняли перевал
// ^^^^^^
pattern Подлежащее
{
 ЧислСущ{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}


// мне будет сорок один год
//           ^^^^^^^^^^^^^^
pattern Подлежащее
{
 ЧислСущ{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
}



wordentry_set ПрилагВесь={ прилагательное:весь{} }

// это понимали все
//              ^^^
// Все чувствовали себя свободно
// ^^^
// Не все сумели быстро перестроиться.
// ^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 ГруппаПрил1{ ПрилагВесь падеж:им число:мн } :export { ЛИЦО:3 ЧИСЛО:мн node:root_node }
}
: ngrams { -1 }


// Почти все согласились с этим
// ^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 mod=ГруппаНареч1{ ~CannotAdvModifAdj }
 a=прилагательное:весь{ число:мн падеж:им } :export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
}
: links { a.<ATTRIBUTE>mod }
//: ngrams { -1 }


// кот спит
// ^^^
pattern Подлежащее
{
 ГруппаСущ4{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}


// Один человек погиб, двое травмировано.
//                     ^^^^
pattern Подлежащее
{
 ГруппаЧисл{ ПАДЕЖ:ИМ ЧИСЛО:МН }:export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
}
: ngrams { -1 }




// Боже меня упаси, сударыня!
// ^^^^
pattern Подлежащее
{
 ГруппаСущ4{ ПАДЕЖ:ЗВАТ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}
: ngrams { -1 }



// Самое дорогое у человека - это жизнь
// ^^^^^^^^^^^^^^^^^^^^^^^^
pattern Подлежащее
{
 СуперлативСПредлДоп{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}

// Числительное и посчитанное существительное могут выступать в роли подлежащего среднего рода:
// у вас должно быть шесть человек
//       ^^^^^^      ^^^^^^^^^^^^^
pattern Подлежащее
{
 ЧислСущ{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
}

// На снимке видно два светящихся облака газа
//                 ^^^^^^^^^^^^^^^^^^^^^^^^^^
// У грузового поезда сошло с рельсов два вагона.
//                                    ^^^^^^^^^^
// Прошло две недели.
//        ^^^^^^^^^^^
pattern Подлежащее
{
 ЧислСущ{ ПАДЕЖ:ИМ ЧИСЛО:МН } : export { node:root_node ЛИЦО:3 РОД:СР ЧИСЛО:ЕД }
}


wordentry_set СчетноеСущ = существительное:{
 большинство,
 меньшинство,
 четверть, // Четверть россиян заботятся о здоровье путем просмотра телевизора
 треть,
 часть // 3 марта часть учителей Литвы обещают начать бессрочную забастовку.
}

// Иногда паттерн с БОЛЬШИНСТВО/МЕНЬШИНСТВО рассматривается как имеющий
// множественное число:
// большинство исследователей пользуются им
// ^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n1=ГруппаСущ1{ СчетноеСущ ПАДЕЖ:ИМ ЧИСЛО:ЕД }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 n2=ГруппаСущ4{ ПАДЕЖ:РОД }
} : links { n1.<RIGHT_GENITIVE_OBJECT>n2 }


// большинство наших пользуются им.
// ^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n1=ГруппаСущ1{ СчетноеСущ ПАДЕЖ:ИМ ЧИСЛО:ЕД }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 n2=прилагательное:*{ СТЕПЕНЬ:АТРИБ ЧИСЛО:МН ПАДЕЖ:РОД }
} : links { n1.<RIGHT_GENITIVE_OBJECT>n2 }



// Эти прилагательные не могут выступать в роли подлежащего или прямого дополнения.
wordentry_set ПрилНеПрямДополн=прилагательное:{ какой, который, чей, весь }
word_set ПрилНеПрямДополн2={ 'то', 'это' }


// Эти прилагательные не могут быть подлежащими
wordentry_set ПрилНеПодлежащ=прилагательное:{ этот, весь }


// Прилагательное может выступать в роли подлежащего:
//
// Самый крупный и ленивейший из всех котов живет у нас в деревне
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//
// встречающие собрались в порту
// ^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 ГруппаПрил2{ ПАДЕЖ:ИМ ~ПрилНеПрямДополн ~ПрилНеПрямДополн2 ~ПрилНеПодлежащ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -3 }


// Причастный оборот может выступать в роли подлежащего:
// Подозреваемый в изнасиловании выпрыгнул из окна РОВД
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 ПричОборот2{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -3 }




// лишь немногие могли заниматься работой.
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 mod=наречие:лишь{}
 a=прилагательное:*{ СТЕПЕНЬ:АТРИБ ~КРАТКИЙ ПАДЕЖ:ИМ ~ПрилНеПрямДополн ~ПрилНеПрямДополн2 ~ПрилНеПодлежащ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : links { a.<ATTRIBUTE>mod }
  : ngrams { -1 } // штаф, так как все-таки это не очень обычное дело,
                  // и иногда может вступать в конфликт - для нулевой связки, к примеру: "Сладкое зло"

// слишком многое лежало между ними.
// ^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 mod=наречие:слишком{}
 a=прилагательное:многий{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : links { a.<ATTRIBUTE>mod }
  : ngrams { -1 }


wordentry_set ЛевПрилагДляМест={ прилагательное:весь{} }

// все мы хотим увидеть твой стиль работы
// ^^^^^^
// Почти  все  они лежали в кроватках с сетками.
// ^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 a=ГруппаПрил1{ ЛевПрилагДляМест ПАДЕЖ:ИМ ЧИСЛО:МН }
 n=местоимение:я{ ПАДЕЖ:ИМ ЧИСЛО:МН }:export { ЛИЦО ЧИСЛО РОД node:root_node }
} : links { n.<ATTRIBUTE>a }
  : ngrams { 1 }

// ЭТОТ в роли подлежащего:
// эти тоже проехали мимо.
// ^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 прилагательное:этот{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -3 }


// вот это поможет вам расслабиться
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 p=частица:вот{}
 a=прилагательное:этот{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}
: links { a.<PREFIX_PARTICLE>p }
: ngrams { -3 }


// это же было сверх всякой меры!
// ^^^^^^
// это ж любому ребенку известно!
// ^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 a=прилагательное:этот{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
 p=ЧастицаЖе
} : links { a.<POSTFIX_PARTICLE>p }
  : ngrams { -3 }



// "САМЫЙ" в роли аналитической конструкции превосходной степени:
// самая молодая несла деревянную чашку.
// ^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 a1=прилагательное:самый{ ПАДЕЖ:ИМ }
 a2=прилагательное:*{ СТЕПЕНЬ:АТРИБ ~КРАТКИЙ ПАДЕЖ:ИМ =a1:род =a1:число ~ПрилНеПрямДополн ~ПрилНеПрямДополн2 ~ПрилНеПодлежащ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -1 }


// особая трактовка для существительного с присоединенным дополнением ДЕД С МАТЕРЬЮ ШЛИ ВПЕРЕДИ
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n1=ГруппаСущ1{ ПАДЕЖ:ИМ ОДУШ:ОДУШ }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 conj=предлог:с{}
 n2=ГруппаСущ1{ ПАДЕЖ:ТВОР ОДУШ:ОДУШ }
} : links { n1.<PREPOS_ADJUNCT>conj.<OBJECT>n2 }

// Петя вместе с Васей купили яблок.
// ^^^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n1=ГруппаСущ1{ ПАДЕЖ:ИМ ОДУШ:ОДУШ }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 adv=наречие:вместе{}
 conj=предлог:с{}
 n2=ГруппаСущ1{ ПАДЕЖ:ТВОР ОДУШ:ОДУШ }
} : links { n1.<PREPOS_ADJUNCT>conj.{ <ATTRIBUTE>adv <OBJECT>n2 } }



// ФИО
// А.С.Пушкин сочинил большое количество стихов
pattern Подлежащее export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 ФИО{ [-2]ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:ЕД node:root_node }
}



// Суперлатив может выступать в роли подлежащего, хотя и не часто:
// Самый крупный и ленивейший из всех котов живет у нас в деревне
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern Подлежащее export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 Суперлатив0{ падеж:им } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -1 }




// Уточнение для слова ВСЁ
// Спортивная арена, плавательный бассейн, теннисные корты - все вызывало восхищение посетителей нового стадиона
pattern Подлежащее
{
 n1=ПеречислСущИм : export { node:root_node }
 t=ДефисКакСвязка
 n2=местоим_сущ:всё{ падеж:им }:export { ЛИЦО:3 РОД:СР ЧИСЛО:ЕД }
} : links { n1.<DETAILS>t.<OBJECT>n2 }


// ни одна травинка не шелохнется
pattern Подлежащее
{
 p=частица:ни{}
 a=прилагательное:один{падеж:им}
 n=ГруппаСущ4{ =A:РОД =A:ЧИСЛО ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : links { n.<ATTRIBUTE>a.<NEGATION_PARTICLE>p }


// ------------------------------------------------------


// двое из них выступили вперед.
// ^^^^
pattern СобирЧислит
{
 числительное:*{ } : export { node:root_node КАТЕГОРИЯ_ЧИСЛ ПАДЕЖ }
}

// двое или трое опустили пики.
// ^^^^^^^^^^^^^
pattern СобирЧислит
{
 q1=числительное:*{} : export { node:root_node КАТЕГОРИЯ_ЧИСЛ ПАДЕЖ }
 conj=ЛогичСоюз
 q2=числительное:*{ =q1:ПАДЕЖ =q1:КАТЕГОРИЯ_ЧИСЛ }
} : links
{
 q1.<RIGHT_LOGIC_ITEM>conj.<NEXT_COLLOCATION_ITEM>q2
}
 
// ------------------------------------------------------



// *******************************
// ИНВЕРСИЯ: сказуемое+подлежащее
// *******************************

// Загорелось и здание, расположенное по соседству с посольством.
//            ^^^^^^^^^...
pattern ПодлежащееИнверс
{
 p=частица:и{}
 n=ПодлежащееИнверс : export { ЛИЦО ЧИСЛО РОД node:root_node }
}
: links { n.<PREFIX_PARTICLE>p }
: ngrams { -3 }




// выглядели они все довольно странно
//           ^^^^^^^
pattern ПодлежащееИнверс
{
 p=местоимение:я{ падеж:им число:мн } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 a=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }
}
: links { p.<ATTRIBUTE>a }
: ngrams { 1 }



// от всей семьи остались только мы двое.
//                               ^^^^^^^
pattern ПодлежащееИнверс
{
 n=местоимение:я{ падеж:им } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 q=СобирЧислит{ КАТЕГОРИЯ_ЧИСЛ:СОБИР ПАДЕЖ:ИМ }
}
: links { n.<ATTRIBUTE>q }


pattern ПодлежащееИнверс
{
 ГруппаСущ4{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
}


pattern ПодлежащееИнверс
{
 n=СобирЧислит{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:МН РОД node:root_node }
 a=прилагательное:*{ падеж:род число:мн }
}
: links { n.<ATTRIBUTE>a }
: ngrams { -1 }


// Словосочетание из числительного и существительного
// может выступать в роли подлежащего среднего рода, аналогично
// конструкции со счетными словами "МНОГО", "НЕСКОЛЬКО", ...
// внутри автомобиля сидело два человека.
//                          ^^^^^^^^^^^^
pattern ПодлежащееИнверс
{
 ЧислСущ{ ПАДЕЖ:ИМ }:export{ ЛИЦО:3 РОД:СР ЧИСЛО:ЕД node:root_node }
} : ngrams { -1 }



// этим согласились все
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 прилагательное:весь{ число:мн падеж:им } :export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
}
: ngrams { -1 }


// этим согласились почти все
//                  ^^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 mod=ГруппаНареч1{ ~CannotAdvModifAdj }
 a=прилагательное:весь{ число:мн падеж:им } :export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
}
: links { a.<ATTRIBUTE>mod }
: ngrams { -1 }



// В нём соединились храбрость и великодушие.
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n1=СущСПредложДоп{ ПАДЕЖ:ИМ }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 conj=ЛогичСоюз
 n2=СущСПредложДоп{ ПАДЕЖ:ИМ }
} : links
{ n1.<RIGHT_LOGIC_ITEM>conj.<NEXT_COLLOCATION_ITEM>n2 }


// Произошло это после того, как ...
//           ^^^
pattern ПодлежащееИнверс
{
 местоим_сущ:это{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
}


// рядом оказалось только вот это
//                 ^^^^^^^^^^^^^^
pattern ПодлежащееИнверс
{
 q=НаречДляЭтот
 p=@optional(частица:вот{})
 n=местоим_сущ:это{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : links
{
 n.{
    <ATTRIBUTE>q
    ~<PREFIX_PARTICLE>p
   }
}


// могло ли все это быть сном?
//          ^^^^^^^
pattern ПодлежащееИнверс
{
 местоим_сущ:*{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО:ЕД РОД node:root_node }
} : ngrams { 1 }


// Мимо специальных мобильных нарядов не проскочит ни одна машина
//                                                 ^^^^^^^^^^^^^^
pattern ПодлежащееИнверс
{
 p=частица:ни{}
 n=ГруппаСущ4{ ПАДЕЖ:ИМ } : export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : links { n.<NEGATION_PARTICLE>p }


// перед ними стояли трое.
//                   ^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
}



// ей начали возражать двое мужчин.
//                     ^^^^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
 n=ГруппаСущ1{ ПАДЕЖ:РОД ЧИСЛО:МН ОДУШ:ОДУШ } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
} : links { n.<ATTRIBUTE>q }
  : ngrams { 1 }




// рядом стояли еще трое парней
//              ^^^^^^^^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 adv=наречие:еще{}
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
 n=ГруппаСущ1{ ПАДЕЖ:РОД ЧИСЛО:МН ОДУШ:ОДУШ } : export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
} : links { n.<ATTRIBUTE>q.<ATTRIBUTE>adv }
  : ngrams { 2 }


// за мной полезли все остальные.
//                 ^^^^^^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 a=прилагательное:*{ ПАДЕЖ:ИМ ЧИСЛО:МН ~КРАТКИЙ ~CanAdjModifByAdv }
} : links { n.<ATTRIBUTE>a }
  : ngrams { 1 }


// теперь по траве скользили все трое.
//                           ^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 p=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }:export { ЛИЦО:3 ЧИСЛО:МН node:root_node }
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
} : links { p.<ATTRIBUTE>q }
  : ngrams { 1 }

// теперь по траве скользили мы все трое.
//                           ^^^^^^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО (РОД) node:root_node }
{
 n=местоимение:я{ ПАДЕЖ:ИМ ЧИСЛО:МН }:export { ЛИЦО ЧИСЛО:МН node:root_node }
 p=прилагательное:весь{ ПАДЕЖ:ИМ ЧИСЛО:МН }
 q=числительное:*{ ПАДЕЖ:ИМ КАТЕГОРИЯ_ЧИСЛ:СОБИР }
} : links { n.<ATTRIBUTE>p.<ATTRIBUTE>q }
  : ngrams { 2 }



// Это сделал не он.
//            ^^^^^
pattern ПодлежащееИнверс
{
 ГруппаМест{ ПАДЕЖ:ИМ } : export { ЛИЦО ЧИСЛО РОД node:root_node }
}

// Так думал не я один.
//           ^^^^^^^^^
pattern ПодлежащееИнверс
{
 p=частица:не{}
 n=ГруппаМест{ ПАДЕЖ:ИМ }:export { ЛИЦО ЧИСЛО РОД node:root_node }
} : links { n.<NEGATION_PARTICLE>p }


// Прилагательное в роли подлежащего для (O)-V-S:
// дорогу тебе покажет всякий.
//                     ^^^^^^
pattern ПодлежащееИнверс export { ЛИЦО ЧИСЛО РОД node:root_node }
{
 ГруппаПрил2{ ПАДЕЖ:ИМ ~ПрилНеПрямДополн ~ПрилНеПрямДополн2 ~ПрилНеПодлежащ }:export { ЛИЦО:3 ЧИСЛО РОД node:root_node }
} : ngrams { -2 }


pattern ПодлежащееИнверс
{
 n1=местоимение:я{ ПАДЕЖ:ИМ } : export { ЛИЦО ЧИСЛО РОД node:root_node }
 comma1=','
 n2=ГруппаСущ4{ ПАДЕЖ:ИМ }
 comma2=@optional(',')
} : links { n1.<RIGHT_LOGIC_ITEM>comma1.<NEXT_COLLOCATION_ITEM>n2.~<PUNCTUATION>comma2 }



// --------------------------------

patterns ЛевыйАтрибутМестоим export { ЧИСЛО РОД node:root_node }

// Готовый прянуть в любую сторону, он медленно осмотрелся.
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern ЛевыйАтрибутМестоим
{
 ГруппаПрил2{ ПАДЕЖ:ИМ } : export { ЧИСЛО РОД node:root_node }
}


// Предупрежденные гидом, мы насторожились
// ^^^^^^^^^^^^^^^^^^^^^
pattern ЛевыйАтрибутМестоим
{
 ПричОборот2{ ПАДЕЖ:ИМ } : export { ЧИСЛО РОД node:root_node }
}


// Крепкий, жизнерадостный, энергичный, он нравился подчиненным.
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern Подлежащее
{
 @probe_left(ЛевыйОграничительОборота)
 a=ЛевыйАтрибутМестоим
 comma=',' 
 n=местоимение:*{ ПАДЕЖ:ИМ =a:ЧИСЛО =a:РОД } : export { ЧИСЛО РОД ЛИЦО node:root_node }
}
: links { n.{ <ATTRIBUTE>a.<PUNCTUATION>comma } }
: ngrams { -3 }

// -----------------------------------------------------

// Причастный оборот слева от существительного:
//
// Нагретая солнцем, крыша обжигала ступни
// ^^^^^^^^^^^^^^^^^
pattern Подлежащее
{
 @probe_left(ЛевыйОграничительОборота)
 a=ПричОборот2{ ПАДЕЖ:ИМ }
 comma=',' 
 n=СущСПредложДоп{ ПАДЕЖ:ИМ =a:ЧИСЛО =a:РОД } : export { ЧИСЛО РОД ЛИЦО:3 node:root_node }
}
: links { n.{ <ATTRIBUTE>a.<PUNCTUATION>comma } }
: ngrams { -3 }


// --------------------------------


// десяток воинов закрыли дорогу к свободе
// ^^^^^^^^^^^^^^ !!!!!!!
pattern Подлежащее
{
 q=КоличСущ{ ПАДЕЖ:ИМ ЧИСЛО:ЕД } : export { node:root_node ЛИЦО:3 РОД ЧИСЛО:МН }
 n=СущСПредложДоп{ падеж:род число:мн }
}
: links { q.<RIGHT_GENITIVE_OBJECT>n }
: ngrams { 1 }



// -------------------------------------------

// Из них 63 находятся в стационаре.
//        ^^
// Контрпример с объектом:
// Двоих быстрее расшифруют.
// ^^^^^
pattern Подлежащее
{
 ГруппаЧисл{ [-4]ПАДЕЖ:ИМ } : export { node:root_node ЛИЦО:3 РОД:СР ЧИСЛО:МН }
} : ngrams { -1 }


// -------------------------------------------

// во дворце было много интересного
//                ^^^^^^^^^^^^^^^^^
// На улицах было много народу.
//                ^^^^^^^^^^^^
pattern Подлежащее
{
 q=НаречДляРод
 n=СчитаемыйНаречиемОбъект : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : links { n.<ATTRIBUTE>q }
  : ngrams { 5 }


// В толпе было немало и женщин.
//              ^^^^^^^^^^^^^^^
pattern Подлежащее
{
 q=НаречДляРод
 x=частица:и{}
 n=СчитаемыйНаречиемОбъект : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : links { n.{ <ATTRIBUTE>q <PREFIX_PARTICLE>x } }
  : ngrams { 5 }


// ---------------------------------------------------

patterns ГруппаСам export { node:root_node ПАДЕЖ РОД ЧИСЛО }

pattern ГруппаСам
{
 прилагательное:сам{} : export { node:root_node ПАДЕЖ РОД ЧИСЛО }
}


// Сам буду драться за себя.
// ^^^
pattern Подлежащее export { (ЛИЦО) ЧИСЛО РОД node:root_node }
{
 n=ГруппаСам{ ПАДЕЖ:ИМ } : export { ЧИСЛО РОД node:root_node }
}

// ------------------------------------------------------------
// ИНФИНИТИВНОЕ ПОДЛЕЖАЩЕЕ - инфинитив в роли существительного
// именительного падежа:
//
// Учиться всегда пригодится
// ^^^^^^^

pattern Подлежащее
{
 inf=ИнфКакОбъект2Восх : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
 @noshift(ПравыйОграничительОборота)
} : ngrams { -4 }

pattern Подлежащее
{
 inf=ИнфКакОбъект2Восх : export { ЛИЦО:3 ЧИСЛО:ЕД РОД:СР node:root_node }
} : ngrams { -8 }




