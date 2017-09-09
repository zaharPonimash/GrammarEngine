﻿// -----------------------------------------------------------------------------
// File RUS_NOUNS_1005.SOL
//
// (c) Koziev Elijah
//
// Лексикон - определения имен существительных для русского языка.
//
// Русские существительные http://www.solarix.ru/for_developers/api/russian-noun-declension.shtml
// Особенности описания существительных http://www.solarix.ru/russian_grammar_dictionary/russian-noun-declension.shtml
// Словарные статьи http://www.solarix.ru/for_developers/docs/entries.shtml#words
//
// 16.09.2011 - исправлена парадигма для АЛЮМИНИЙ и подобные - неправильная форма
//              предложного падежа.
// -----------------------------------------------------------------------------
//
// CD->05.10.1995
// LC->10.12.2011
// --------------

#include "sg_defs.h"

#define заглавн(Сущ) tag СУЩЕСТВИТЕЛЬНОЕ:Сущ { CharCasing:FirstCapitalized }

automat sg
{
 #define s1005(x) entry x : СУЩЕСТВИТЕЛЬНОЕ { paradigm Сущ_1005 ПЕРЕЧИСЛИМОСТЬ:НЕТ }
 #define n1005(x) entry x : СУЩЕСТВИТЕЛЬНОЕ { paradigm Сущ_1005 flag flexer { "pl" } ПЕРЕЧИСЛИМОСТЬ:ДА }


 #define элемент(x) entry x : СУЩЕСТВИТЕЛЬНОЕ { paradigm лепрозорий ПЕРЕЧИСЛИМОСТЬ:НЕТ }


 s1005(бахчисарай) заглавн(бахчисарай)
 s1005(травостой)
 s1005(шауляй) заглавн(шауляй)
 s1005(джанкой) заглавн(джанкой)
 s1005(метрострой)
 n1005(удой)

 элемент(ОПИЙ)
 элемент(НАТРИЙ)
 элемент(МОРФИЙ)
 n1005(КЛЕЙ)
 элемент(ЦИКОРИЙ)
 элемент(калий)
 элемент(литий)
 элемент(кальций)
 элемент(иттербий)
 элемент(тербий)
 элемент(эрбий)
 элемент(лоуренсий)
 элемент(америций)
 элемент(магний)
 элемент(бериллий)
 элемент(стронций)
 элемент(цезий)
 элемент(рутений)
 элемент(технеций)
 элемент(галлий)
 элемент(гадолиний)
 элемент(рений)
 элемент(актиний)
 элемент(протоактиний)
 элемент(Алюминий)
 элемент(Дюралюминий)
 s1005(ЕЛЕЙ)
 элемент(Рубидий)
 элемент(Цирконий)
 элемент(фермий)
 s1005(индокитай) заглавн(Индокитай)
 n1005(домострой)
 s1005(алтай) заглавн(Алтай)
 s1005(бродвей) заглавн(Бродвей)
 s1005(валдай) заглавн(Валдай)
 s1005(кайнозой)
 n1005(капитолий)
 s1005(мезозой)
 s1005(палеозой)
 s1005(настрой)
 s1005(небулий)
 n1005(ОММАТИДИЙ)
 n1005(ДРЕВОСТОЙ)
 n1005(КОЛЛОДИЙ)
 n1005(ПОДБОЙ)
 n1005(СПЕЦСТРОЙ)
 n1005(РАЗДРАЙ)
 n1005(ХИМИКАЛИЙ)
 n1005(НЕДОСТРОЙ)
 s1005(ФЕРРОЦЕРИЙ)
 n1005(ПЕСКОСТРУЙ)
 n1005(ГЕЙМПЛЕЙ)
 n1005(СУППОЗИТОРИЙ)
 n1005(ПРОФЛИЦЕЙ)
 
 
}

