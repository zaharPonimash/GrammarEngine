﻿automat sg
{
 #define s1060(Сущ) entry Сущ : Существительное { paradigm Сущ_1060 ПЕРЕЧИСЛИМОСТЬ:НЕТ }
 #define n1060(Сущ) entry Сущ : Существительное { paradigm Сущ_1060 ПЕРЕЧИСЛИМОСТЬ:ДА flag flexer { "pl" } }

 #define имя(Сущ) \
  #begin
  entry Сущ : Существительное { paradigm Сущ_1060 ПЕРЕЧИСЛИМОСТЬ:НЕТ CharCasing:FirstCapitalized }
  link СУЩЕСТВИТЕЛЬНОЕ:Сущ{ ОДУШ:ОДУШ } <в_класс> СУЩЕСТВИТЕЛЬНОЕ:ИМЯ {}
  #end


 n1060( зятюшка )
 n1060( дедушка )
 n1060( ЛЕКАРИШКА )
 n1060( ИНЖЕНЕРИШКА )
 n1060( ПРОФЕССОРИШКА )
 n1060( НЕПРИЯТЕЛИШКА )
 n1060( САНИТАРИШКА )
 n1060( СЫНУЛЕЧКА )
 
 n1060( ПОДГОТОВИШКА )
 n1060( ОКУНИШКА )
 n1060( пятиклашка )
 n1060( приготовишка )
 имя( артамошка )
 n1060( ПЛЕМЯШКА )
 имя( НИКИТОЧКА )
 n1060( КАПИТАНИШКА )
 n1060( америкашка )
 n1060( мальчишка )
 n1060( таракашка )
 n1060( коротышка )
 n1060( парнишка )
 n1060( старикашка )
 n1060( братишка )
 n1060( сынишка )
 n1060( воришка )
 n1060( прадедушка )
 n1060( папашка )
 n1060( трусишка )
 n1060( итальяшка )
 n1060( соседушка )
 n1060( япошка )
 n1060( адвокатишка )
 n1060( актеришка )
 n1060( барабашка )
 n1060( братушка )
 n1060( врунишка )
 n1060( докторишка )
 n1060( князюшка )
 n1060( муравьишка )
 n1060( первоклашка )
 n1060( плутишка )
 n1060( прапрадедушка )
 n1060( соловушка )
 n1060( парнишечка )

 n1060( офицеришка )
 n1060( папулечка )
 n1060( аристократишка )
 n1060( батюшка )
 n1060( воробьишка )
 n1060( интеллигентишка )
 n1060( козлятушка )
 n1060( колдунишка )
 n1060( солдатушка )
 n1060( тройняшка )
 n1060( французишка )
 n1060( братишечка )
 n1060( старикашечка )
 n1060( прапрапрадедушка )
 n1060( старичишка )
 n1060( паучишка )

 n1060( "волчишка" ) // волчишка
 n1060( "ершишка" ) // ершишка
 n1060( "комаришка" ) // комаришка
 n1060( "купчишка" ) // купчишка
 n1060( "мальчугашка" ) // мальчугашка
 n1060( "мужичишка" ) // мужичишка
 n1060( "писаришка" ) // писаришка
 n1060( "рачишка" ) // рачишка
 n1060( "тестюшка" ) // тестюшка
 n1060( "второклашка" ) // второклашка
 n1060( "старинушка" ) // старинушка
 n1060( "князишка" ) // князишка
 n1060( "поэтишка" ) // поэтишка
 n1060( "игрочишка" ) // игрочишка
 n1060( "титушка" ) // титушка
 n1060( "болтунишка" ) // болтунишка
 n1060( "котишка" ) // котишка
 n1060( "писателишка" ) // писателишка
 n1060( "армяшка" ) // армяшка
 n1060( "автоворишка" ) // автоворишка
 n1060( "демократишка" ) // демократишка

 
 
 имя( степушка )
 имя( боречка )
 имя( митрофанушка )
 имя( афонюшка )
 имя( андрюшечка )
 имя( артемушка )
 имя( гошка )
 имя( данилушка )
 имя( ефимушка )
 имя( степанушка )
 имя( степочка )
 имя( васечка )
 имя( илюшечка )
 имя( толечка )
 имя( ЛЕШКА )
 имя( ГРИШКА )
 имя( ИВАНУШКА )
 имя( ЯШКА )
 имя( АНДРЮШКА )
 имя( СТЕПАШКА )
 имя( ТИМОШКА )
 имя( ВАНЮШКА )
 имя( АНТОШКА )
 имя( ЕГОРУШКА )
 имя( САШКА )
 имя( АРКАШКА )
 имя( ПАШКА )
 имя( ИВАШКА )
 имя( ИЛЮШКА )
 имя( макарушка )
 имя( глебушка )
 имя( иудушка )
 имя( кирюшка )
 имя( левушка )
 имя( максимушка )
 имя( николашка )
 имя( павлушка )
 имя( валерочка )
 имя( володечка )
 имя( геночка )
 имя( димочка )
 имя( ленечка )
 имя( петечка )
 имя( ромочка )
 имя( санечка )
 имя( славочка )
  
/*
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
 имя(  )
*/ 
 
 
}

