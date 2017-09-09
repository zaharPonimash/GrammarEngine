﻿// -----------------------------------------------------------------------------
// File RUS_ADJ_5004.SOL
//
// (c) Koziev Elijah
//
// Content:
// Лексикон - определения прилагательных (ADJECTIVES) для русской секции Словаря.
//
// Склонение русских прилагательных http://www.solarix.ru/for_developers/api/russian-adjective-declension.shtml
// Словарные статьи http://www.solarix.ru/for_developers/docs/entries.shtml#words
// Особенности морфологии русских прилагательных: http://www.solarix.ru/russian-adjectives-and-participles.shtml
// -----------------------------------------------------------------------------
//
// CD->30.11.2005
// LC->10.09.2011
// --------------

#include "sg_defs.h"

automat sg
{

 #define Adj_5004( Name ) Name : ПРИЛАГАТЕЛЬНОЕ { paradigm Прил_5004 }

 // ******************************************************************* 
 // Сразу пометим пары небольшой-большой или несделанный-сделанный
 // В качестве аргумента - позитивная форма, негативная образуется
 // автоматически приставкой не-
 // ******************************************************************* 
 #define antonyms( A ) \
  #begin
   extern entry A : ПРИЛАГАТЕЛЬНОЕ
   extern entry НЕ##A : ПРИЛАГАТЕЛЬНОЕ
   link ПРИЛАГАТЕЛЬНОЕ:A{} <antonym> ПРИЛАГАТЕЛЬНОЕ:НЕ##A{}
  #end

 
 
 Adj_5004( МОГУЧИЙ  )
 Adj_5004( ВОНЮЧИЙ  )
 Adj_5004( КУСАЧИЙ  )
 Adj_5004( ДРЕМУЧИЙ  )
 Adj_5004( ПАХУЧИЙ  )
 Adj_5004( ЖГУЧИЙ  )
 Adj_5004( ЖИВУЧИЙ  )
 Adj_5004( КОЛЮЧИЙ  )
 Adj_5004( НЕВЕЗУЧИЙ  ) antonyms( везучий )
 Adj_5004( НЕУКЛЮЖИЙ  )
 Adj_5004( ПРИГОЖИЙ  )
 Adj_5004( ПЕВУЧИЙ  )
 Adj_5004( ПОГОЖИЙ  )
 Adj_5004( ДОСУЖИЙ  )
 Adj_5004( ТЯГУЧИЙ  )
 Adj_5004( НЕЗРЯЧИЙ  ) antonyms( зрячий )
 Adj_5004( ДЮЖИЙ  )
 Adj_5004( ТРЕСКУЧИЙ  )
 Adj_5004( ВЕЗУЧИЙ  )
 Adj_5004( прыгучий  )
 Adj_5004( ГОЖИЙ  )
 Adj_5004( НЕГОЖИЙ  )
 Adj_5004( СХОЖИЙ  )
 Adj_5004( широкоплечий  )
 Adj_5004( УЗКОПЛЕЧИЙ )
 Adj_5004( ГРЕМУЧИЙ )
 Adj_5004( НЕЛЕТУЧИЙ ) antonyms( летучий )
 Adj_5004( ПРИСТАВУЧИЙ )
 Adj_5004( ТОЛКУЧИЙ )
 Adj_5004( КРУТОПЛЕЧИЙ )
 Adj_5004( ПЛОТНИЧИЙ )
 Adj_5004( ПАДУЧИЙ )
 Adj_5004( ПИСЧИЙ )
 Adj_5004( ПРЯМОСТОЯЧИЙ )
 Adj_5004( СМЕРДЯЧИЙ )
 Adj_5004( БЛЕСКУЧИЙ )
 Adj_5004( ПОДЛЮЧИЙ )
 Adj_5004( СВЕРХТЕКУЧИЙ )
 Adj_5004( НЕЧЕЛОВЕЧИЙ )
 Adj_5004( МЕЛЬНИЧИЙ )
 Adj_5004( КОСОПЛЕЧИЙ )
 Adj_5004( КРИВОПЛЕЧИЙ )
 Adj_5004( КРУГЛОПЛЕЧИЙ )
 Adj_5004( КРЕПКОПЛЕЧИЙ )
 Adj_5004( ТОЛСТОПЛЕЧИЙ )
 Adj_5004( доставучий )
 Adj_5004( грязнючий )
 Adj_5004( вкуснючий )
 
}

