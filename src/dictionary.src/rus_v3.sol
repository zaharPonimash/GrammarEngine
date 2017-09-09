﻿// -----------------------------------------------------------------------------
// File RUS_V3.SOL
//
// Copyright:    Koziev Elijah
//
// Content:
// Лексикон - определения безличных глаголов.
// 08.06.2009 - добавлена модальность.
// 29.11.2009 - парадигма переделана, введено измерение времени (хотелось-хочется)
//
// 26.10.2010 - переделаны парадигмы глаголов НАДО, НУЖНО, МОЖНО - теперь они имеют
//              формы прошедшего, настоящего и будущего времени.
// 04.10.2013 - переделка типов, введен признак ТИП_ПРЕДИКАТИВ, с его помощью
//              помечаются квазиглаголы (ХОТЕЛОСЬ), БЫЛО-связочные (ЖАЛЬ-БЫЛО ЖАЛЬ)
//              и полносвязочные (В СОСТОЯНИИ - БЫЛ В СОСТОЯНИИ)
// -----------------------------------------------------------------------------
//
// CD->29.10.1999
// LC->09.09.2016
// --------------

#include "sg_defs.h"

#define модальный(гл) tag БЕЗЛИЧ_ГЛАГОЛ:гл { МОДАЛЬНЫЙ }


#define сов(Имя,Прош,Буд) \
 #begin 
  entry Имя : БЕЗЛИЧ_ГЛАГОЛ
  {
   ТИП_ПРЕДИКАТИВ:АВТОНОМ

   ВИД:СОВЕРШ
   #if Прош!=NULL
    ВРЕМЯ:ПРОШЕДШЕЕ { Прош }
   #endif 

   #if Буд!=NULL
    ВРЕМЯ:БУДУЩЕЕ { Буд }
   #endif 
  }
 #end

#define несов(Имя,Прош,Наст) \
 #begin 
  entry Имя : БЕЗЛИЧ_ГЛАГОЛ
  {
   ТИП_ПРЕДИКАТИВ:АВТОНОМ

   ВИД:НЕСОВЕРШ
   #if Прош!=NULL
    ВРЕМЯ:ПРОШЕДШЕЕ { Прош }
   #endif 

   #if Наст!=NULL
    ВРЕМЯ:НАСТОЯЩЕЕ { Наст }
   #endif 
  }
 #end

#define предикатив(Имя) \
 #begin 
  entry Имя : БЕЗЛИЧ_ГЛАГОЛ
  {
   ТИП_ПРЕДИКАТИВ:АВТОНОМ
   ВИД:НЕСОВЕРШ
  }
 #end
 
 
#define гл( Безлич, Инф ) link БЕЗЛИЧ_ГЛАГОЛ:Безлич{} <в_инфинитив> ИНФИНИТИВ:Инф{}
#define прил( Безлич, Прил ) link БЕЗЛИЧ_ГЛАГОЛ:Безлич{} <в_прил> Прилагательное:Прил{}

automat sg
{
 несов( следует, следовало, СЛЕДУЕТ ) модальный(следует)
 несов( предстоит, предстояло, предстоит ) модальный(предстоит)

 // Что тебе надо?
 entry "надо" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД,ВИН
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { надо }
 }

 entry "нужно" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { нужно }
 }

 entry НАДЛЕЖИТ : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { надлежит }
  ВРЕМЯ:ПРОШЕДШЕЕ { надлежало }
 }
 
 entry "можно" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { можно }
 }


 entry "нельзя" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { нельзя }
 }



 entry "СУЖДЕНО" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { СУЖДЕНО }
 }
 
 entry "НЕЗАЧЕМ" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { НЕЗАЧЕМ }
 }
 
 entry "необходимо" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { необходимо }
 }

 прил(необходимо,необходимый)

 entry "положено" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { положено }
 }
 
 
 entry "лень" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { лень }
 }
 
 entry "грех" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:НЕСОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { грех }
 }

 entry "велено" : БЕЗЛИЧ_ГЛАГОЛ
 {
  МОДАЛЬНЫЙ
  ВИД:СОВЕРШ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { велено }
 }
 гл(велено,велеть)

 
 несов( СЛЫШНО, NULL, слышно ) гл(слышно,слышать)

 несов( першит, першило, першит )
 
 несов( западло, NULL, западло ) модальный(западло)
 несов( пиздец, NULL, пиздец )
 несов( РАБОТАЕТСЯ, работалось, работается )
 
 несов( коробит, коробило, коробит )

 несов( ТРЕБУЕТСЯ, требовалось, требуется ) модальный(требуется) гл(требуется,требоваться)
 несов( КАЖЕТСЯ, казалось, кажется ) гл(кажется,казаться)
 несов( КАСАЕТСЯ, касалось, касается ) гл(касается,касаться)
 несов( ДУМАЕТСЯ, думалось, думается )
 несов( ПРЕДПОЛАГАЕТСЯ, ПРЕДПОЛАГАЛОСЬ, ПРЕДПОЛАГАЕТСЯ  ) модальный(ПРЕДПОЛАГАЕТСЯ) гл(предполагается,предполагаться)
 несов( ПОЛАГАЕТСЯ, ПОЛАГАЛОСЬ, ПОЛАГАЕТСЯ ) модальный(ПОЛАГАЕТСЯ) гл(полагается,полагаться)
// несов( СЧИТАЕТСЯ, СЧИТАЛОСЬ, СЧИТАЕТСЯ ) гл(считается,считаться)
// несов( ГОВОРИТСЯ, ГОВОРИЛОСЬ, ГОВОРИТСЯ ) гл(говорится,говориться)
// несов( НАЗЫВАЕТСЯ, называлось, НАЗЫВАЕТСЯ ) гл(называется,называться)
 несов( приходится, приходилось, приходится ) модальный(приходится)
 несов( "не спится", "не спалось", "не спится" )
 несов( стоит, стоило, стоит ) модальный(стоит)
 несов( "не терпится", "не терпелось", "не терпится" ) модальный("не терпится")
 несов( ВЕЧЕРЕЛО, вечерело, вечереет ) гл(вечерело,вечереть)
 несов( ДЫШАЛОСЬ, дышалось, дышится )
 несов( нездоровится, нездоровилось, нездоровится )
 несов( позволяется, позволялось, позволяется ) модальный(позволяется)
 несов( ДЫШИТСЯ, дышалось, дышиться )
 несов( возбраняется, возбранялось, возбраняется ) модальный(возбраняется)
 несов( ВОСПРЕЩАЕТСЯ, воспрещалось, воспрещается ) модальный(воспрещается) 
 несов( "НЕ СИДИТСЯ", "не сиделось", "не сидится" )
// несов( боятся, NULL, боятся ) модальный(боятся)

 // я отнес это слово к безличным глаголам из-за его
 // сходства с ЕСТЬ в словосочетании ТО БИШЬ (то есть)
 несов( БИШЬ, NULL, бишь )


 несов( дождит, дождило, дождит )
 несов( знобит, знобило, знобит )
 несов( претит, претило, претит )
 несов( рябило, рябило, NULL )
 несов( РАБОТАЛОСЬ, работалось, работается )
 несов( НЕЙМЕТСЯ, NULL, НЕЙМЕТСЯ )
 несов( НЕГОЖЕ, NULL, NULL ) модальный(НЕГОЖЕ)
 несов(корежило,корежило,корежит)
 несов(мечталось,мечталось,мечтается)
 несов(морозило,морозило,морозит)
 несов(отдыхалось,отдыхалось,отдыхается)
 несов(плющило,плющило,плющит)
 несов(служилось,служилось,служится)
 несов(шагалось,шагалось,шагается)
 несов(становится,становилось,становится)  // мне вдруг становится страшно
 

 сов( наскучило, наскучило, наскучит ) модальный(наскучило) гл(наскучило,наскучить)
 сов( ПРОНЯЛО, проняло, проймёт ) гл(проняло,пронять)
 сов( сморит, сморило, сморит ) гл(сморит,сморить)
 сов( ПРИНЯТО, принято, NULL ) модальный(принято)
 сов( НАДОЕЛО, надоело, надоест ) модальный(надоело) гл(надоело,надоесть)
 сов( пахнуло, пахнуло, пахнёт )
 сов( полегчало, полегчало, полегчает )
 сов( стошнило, стошнило, СТОШНИТ )
 сов( затошнило, затошнило, затошнит )
 сов( пристало, пристало, NULL ) модальный(пристало) // нам не пристало отступать
 сов( заблагорассудилось, заблагорассудилось, заблагорассудится ) модальный(заблагорассудилось)
 сов( приспичило, приспичило, приспичит ) модальный(приспичило)
 сов( расхотелось, расхотелось, расхочется ) модальный(расхотелось)
 сов( ПОКАЗАЛОСЬ, показалось, покажется ) гл(показалось,показаться)
 сов( ПОВЕЗЛО, ПОВЕЗЛО, повезёт )
 сов( пришлось, пришлось, придется ) модальный(пришлось)
 сов( понадобилось, понадобилось, понадобится ) модальный(понадобилось) гл(понадобилось,понадобиться)
 сов( посчастливилось, посчастливилось, посчастливится ) модальный(посчастливилось)
 сов( защекотало, защекотало, NULL )
 сов( зарябило, зарябило, NULL )
 сов( вытошнило, вытошнило, вытошнит )
 сов( завечерело, завечерело, NULL )
 сов( зазнобило, зазнобило, NULL )
 сов( залихорадило, залихорадило, NULL )
 сов( запершило, запершило, NULL )
 сов( зашатало,зашатало,NULL)
 сов(контузило,контузило,NULL)
 сов(наболело,наболело,NULL)
 сов(отлегло,отлегло,NULL)
 сов(переклинило,переклинило,переклинит)
 сов(подфартило,подфартило,подфартит)
 сов(поплохело,поплохело,поплохеет)
 сов(пофартило,пофартило,пофартит)
 сов(почудилось,почудилось,почудится)
 сов(прискучило,прискучило,прискучит) модальный(прискучило)
 сов(причудилось,причудилось,причудится)
 сов(просквозило,просквозило,просквозит)
 сов(прохватило,прохватило,прохватит)
 сов(растрясло,растрясло,растрясёт)
 сов(скрючило,скрючило,скрючит)
 сов(сталось,сталось,станется)
 сов(обрыдло,обрыдло,NULL) модальный(обрыдло)
 сов( НЕСДОБРОВАТЬ, НЕСДОБРОВАТЬ, NULL )


 СТОП : ВОСКЛ_ГЛАГОЛ
 ПЛЮХ : ВОСКЛ_ГЛАГОЛ // Вошла и плюх на первое место!
 ХВАТЬ : ВОСКЛ_ГЛАГОЛ // подобрались, огляделись - и хвать братика за ноги.
 ХРЯСЬ : ВОСКЛ_ГЛАГОЛ // развернулся он и хрясь второй раз по водной глади.

 
 entry Хватает : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:(РОД),ПАРТ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { хватало }
  ВРЕМЯ:НАСТОЯЩЕЕ { хватает }
 }

 // жить под его пятой нормальному человеку стало, конечно,  невмоготу
 //                                         ^^^^^
 entry СТАЛО : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { СТАЛО }
  ВРЕМЯ:БУДУЩЕЕ { СТАНЕТ }
 }


 entry РАЗРЕШАЕТСЯ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ДАТ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { разрешалось }
  ВРЕМЯ:НАСТОЯЩЕЕ { разрешается }
 }


 
 entry Хватило : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:(РОД),ПАРТ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { хватило }
 }

 entry Хватит : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:(РОД),ПАРТ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { хватит }
 }

 // Полно ахать, слезами горю не поможешь.
 entry ПОЛНО : БЕЗЛИЧ_ГЛАГОЛ
 {
  aux stress="П^ОЛНО"
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { [полно stress="п^олно"] }
 }

 entry "скорей бы" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { "скорей бы" }
 }

 entry "поскорей бы" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { "поскорей бы" }
 }

 entry "пора" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "пора" }
 }

 entry "пора бы" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { "пора бы" }
 }

 // мне доводилось слышать подобные сказки. 
 entry "доводилось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "доводилось" }
 }

 // ей довелось увидеть только последствия.
 entry "довелось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "довелось" }
  ВРЕМЯ:БУДУЩЕЕ { "доведется" }
 }

 // мне случалось драться прежде.
 entry "случалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "случалось" }
 }

 // нам остается только ждать.
 entry "оставалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "оставалось" }
  ВРЕМЯ:НАСТОЯЩЕЕ { "остается" }
 }

 // нам осталось договориться о месте встречи.
 entry "осталось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "осталось" }
  ВРЕМЯ:БУДУЩЕЕ { "останется" }
 }

 // мне тоже нравилось танцевать.
 entry "нравилось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "нравилось" }
  ВРЕМЯ:НАСТОЯЩЕЕ { "нравится" }
 }

 // вам потребуется совершать путешествия во времени
 entry "потребовалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "потребовалось" }
  ВРЕМЯ:БУДУЩЕЕ { "потребуется" }
 }

 // Почему-то  ей  подумалось,  что  лучше пока молчать про ее находку.
 entry "подумалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "подумалось" }
  ВРЕМЯ:БУДУЩЕЕ { "подумается" }
 }

 entry "вздумалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  МОДАЛЬНЫЙ
  ВРЕМЯ:ПРОШЕДШЕЕ { "вздумалось" }
  ВРЕМЯ:БУДУЩЕЕ { "вздумается" }
 }

 entry "удалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "удалось" }
  ВРЕМЯ:НАСТОЯЩЕЕ { "удастся" }
 }
 модальный( удалось ) гл(удалось,удасться)



 // ей удавалось разобрать даже отдельные партии.
 entry "удавалось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "удавалось" }
  ВРЕМЯ:НАСТОЯЩЕЕ { "удается" }
 }

 // нам охота разобраться.
 //     ^^^^^
 entry "охота" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "охота" }
 }


 // лучше заняться своим делом.
 entry ЛУЧШЕ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { ЛУЧШЕ }
 }

 // лучше всего представить себе спасение.
 entry "ЛУЧШЕ ВСЕГО" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "ЛУЧШЕ ВСЕГО" }
 }

 // это под силу лишь немногим
 entry "под силу" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "под силу" }
 }

 // мне действительно жаль ее
 entry ЖАЛЬ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН,РОД
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { ЖАЛЬ }
 }

 // мне их даже жалко
 entry ЖАЛКО : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН,РОД
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { ЖАЛКО }
 }

 entry СПИТСЯ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { СПИТСЯ }
  ВРЕМЯ:ПРОШЕДШЕЕ { СПАЛОСЬ }
 }

 // Тебе не повредит  быть  немного потемнее.
 //      ^^^^^^^^^^^ 
 entry "не повредит" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:БУДУЩЕЕ { "не повредит" }
 }

 // эта штука ей ни к чему
 //              ^^^^^^^^^
 entry "ни к чему" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫТЬ_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "ни к чему" }
 }

 // мне по силам удержать вас
 //     ^^^^^^^^
 entry "по силам" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "по силам" }
 }

 
 entry ПОЗДОРОВИЛОСЬ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { ПОЗДОРОВИЛОСЬ }
  ВРЕМЯ:БУДУЩЕЕ { ПОЗДОРОВИТСЯ }
 }

 entry хочется : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД,ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { хочется }
  ВРЕМЯ:ПРОШЕДШЕЕ { хотелось }
 }


 // Великобритания не в состоянии обновить свой ядерный щит
 //                   ^^^^^^^^^^^
 entry "в состоянии" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫТЬ_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "в состоянии" }
 }

 // помочь вам мы не в силах
 //                  ^^^^^^^
 entry "в силах" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫТЬ_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "в состоянии" }
 }

 entry "не время" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { "не время" }
 }

 entry "недосуг" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "недосуг" }
 }

 entry "не грех" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "не грех" }
 }

 entry "не жаль" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "не жаль" }
 }


 entry "ни при чем" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫТЬ_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { "ни при чем" }
 }

 entry "ПЕРЕКОСИЛО" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "ПЕРЕКОСИЛО" }
 }

 entry "РАЗВЕЗЛО" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "РАЗВЕЗЛО" }
  ВРЕМЯ:БУДУЩЕЕ { "развезёт" }
 }

 entry "РАЗМОРИЛО" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "РАЗМОРИЛО" }
 }

 // Ее даже прибавилось.
 entry ПРИБАВИЛОСЬ : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "прибавилось" }
  ВРЕМЯ:БУДУЩЕЕ { "прибавится" }
 }

 // Подмывало его озорничать.
 // ^^^^^^^^^
 entry подмывает : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:НАСТОЯЩЕЕ { подмывает }
  ВРЕМЯ:ПРОШЕДШЕЕ { подмывало }
 }

 
 entry влом : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:ВИН
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:БЫЛО_СВЯЗКА
  ВРЕМЯ:НАСТОЯЩЕЕ { влом }
 }

 // мне просто захотелось тишины
 //            ^^^^^^^^^^
 entry "захотелось" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  ПАДЕЖ:РОД,ПАРТ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "захотелось" }
  ВРЕМЯ:БУДУЩЕЕ { "захочется" }
 }
 гл(захотелось,захотеться)


 // К ней так и тянуло прикоснуться!
 //             ^^^^^^
 entry "тянуло" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:НЕСОВЕРШ
  ПЕРЕХОДНОСТЬ:НЕПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "тянуло" }
  ВРЕМЯ:БУДУЩЕЕ { "тянет" }
 }
 гл(тянуло,тянуть)

 
 entry "ВЗБРЕНДИЛОСЬ" : БЕЗЛИЧ_ГЛАГОЛ
 {
  ВИД:СОВЕРШ
  ПЕРЕХОДНОСТЬ:ПЕРЕХОДНЫЙ
  МОДАЛЬНЫЙ
  ТИП_ПРЕДИКАТИВ:АВТОНОМ
  ВРЕМЯ:ПРОШЕДШЕЕ { "ВЗБРЕНДИЛОСЬ" }
  ВРЕМЯ:БУДУЩЕЕ { "ВЗБРЕНДИТСЯ" }
 }
 
 
 
 несов( дремлется, дремалось, дремлется )
 несов( сидится, сиделось, сидится )
 несов( намекается, намекалось, намекается )
 несов( можется, можется, NULL )
 несов( икается, икалось, икается )
 

 сов( задышится, задышалось, задышится )
 сов( вздохнется, вздохнулось, вздохнется )
 сов( задремлется, задремалось, задремлется )
 
}
