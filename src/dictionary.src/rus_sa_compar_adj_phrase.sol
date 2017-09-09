﻿// ------------------------------------
// Правила синтаксического разбора группы прилагательных в сравнительной форме
//
// LC->18.06.2014


#define _запятая ','
 
wordentry_set НаречДляСравн = 
{
 наречие:гораздо{},
 наречие:неисчислимо{},
 наречие:невыносимо{},
 наречие:ощутимо{},
 наречие:немного{},
 наречие:чуточку{},
 наречие:чуть-чуть{},
 наречие:чуток{},
 наречие:чуть{},
 наречие:слегка{},
 наречие:заметно{},
 наречие:значительно{},
 наречие:еще{}, // теперь все стало еще опаснее
 наречие:несколько{}, // гул машин стал несколько тише
 наречие:немножко{}, // на самом деле наш план был немножко сложнее.
 наречие:немножечко{},
 наречие:намного{},
 наречие:ненамного{}
}

patterns СравнПрил export { node:root_node }

pattern СравнПрил
{
 adv=НаречДляСравн
 adj=прилагательное:*{ СТЕПЕНЬ:СРАВН }:export { node:root_node }
} : links { adj.<ATTRIBUTE>adv }
  : ngrams { 2 }


// моя задача была куда проще
//                 ^^^^^^^^^^
pattern СравнПрил
{
 adv=наречие:куда{}
 adj=прилагательное:*{ СТЕПЕНЬ:СРАВН }:export { node:root_node }
} : links { adj.<ATTRIBUTE>adv }
  : ngrams { 1 }


wordentry_set ИсклСравнПрил = { прилагательное:больший{} }
pattern СравнПрил
{
 adj=прилагательное:*{ СТЕПЕНЬ:СРАВН ~ИсклСравнПрил }:export { node:root_node }
}


pattern СравнПрил
{
 adj=прилагательное:больший{ ПАДЕЖ:ИМ }:export { node:root_node }
}



// воздух становился все холоднее.
//                   ^^^^^^^^^^^^
pattern СравнПрил
{
 p=частица:всё{}
 adj=прилагательное:*{ СТЕПЕНЬ:СРАВН ~ИсклСравнПрил }:export { node:root_node }
} : links { adj.<PREFIX_PARTICLE>p }
  : ngrams { 1 }

// Тем выше будет занятость населения.
// ^^^^^^^^
pattern СравнПрил
{
 mod=частица:тем{}
 a=прилагательное:*{ СТЕПЕНЬ:СРАВН ~ИсклСравнПрил }:export { node:root_node }
}
: links { a.<PREFIX_PARTICLE>mod }
: ngrams { 1 }


// ------------------------------------------------


patterns ГруппаСравнПрил_Голова export { node:root_node }

pattern ГруппаСравнПрил_Голова
{
 СравнПрил : export { node:root_node }
}


patterns ГруппаСравнПрил_Хвост export { node:root_node }

pattern ГруппаСравнПрил_Хвост
{
 СравнПрил : export { node:root_node }
}

// --------------------------------------------------

patterns ГруппаСравнПрил_Восх { bottomup } export { node:root_node }

pattern ГруппаСравнПрил_Восх
{
 ГруппаСравнПрил_Голова:export { node:root_node } 
}



pattern ГруппаСравнПрил_Восх
{
 a1=ГруппаСравнПрил_Восх : export { node:root_node }
 junc=СоединПрилМнож1
 a2=ГруппаСравнПрил_Хвост
}
: links { a1.<NEXT_ADJECTIVE>junc.<NEXT_COLLOCATION_ITEM>a2 }
: ngrams { ВалентностьПрил2(a1) }


// Он оказался тупее, грубее, но всё же эффективнее
//             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern ГруппаСравнПрил_Восх
{
 a1=ГруппаСравнПрил_Восх : export { node:root_node }
 comma=','
 conj=ПротивитСоюз
 adv=ГруппаНареч1
 a2=ГруппаСравнПрил_Хвост
}
: links
{
 a1.<NEXT_ADJECTIVE>comma.
    <NEXT_COLLOCATION_ITEM>conj.
    <NEXT_COLLOCATION_ITEM>a2.
    <ATTRIBUTE>adv
}
: ngrams { ВалентностьПрил2(a1) }


// Новый ножик был удобнее, да еще и острее
//                 ^^^^^^^^^^^^^^^^^^^^^^^^
pattern ГруппаСравнПрил_Восх
{
 a1=ГруппаСравнПрил_Восх : export { node:root_node }
 comma=','
 conj=ЛогичСоюз
 adv=ГруппаНареч1
 a2=ГруппаСравнПрил_Хвост
}
: links
{
 a1.<NEXT_ADJECTIVE>comma.
    <NEXT_COLLOCATION_ITEM>conj.
    <NEXT_COLLOCATION_ITEM>a2.
    <ATTRIBUTE>adv
}
: ngrams { ВалентностьПрил2(a1) }


// С частицами перечисления:
// Механический плуг был удобнее, эффективнее и т.д.
//                       ^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern ГруппаСравнПрил_Восх
{
 a1=ГруппаСравнПрил_Восх : export { node:root_node }
 etc=ЗамыкательПеречисления
} : links { a1.<NEXT_COLLOCATION_ITEM>etc }



// пюре было не только вкуснее, но к тому же полезнее
//           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
pattern ГруппаСравнПрил_Восх
{
 ne=частица:не{}
 mod1=ГруппаНареч1{ГоловаНеТолькоНо}
 a1=ГруппаСравнПрил_Восх : export { node:root_node }
 comma=_запятая
 mod2=НеТолькоНоИ
 a2=ГруппаСравнПрил_Хвост
} : links
{
 a1.{
      <ATTRIBUTE>mod1.<NEGATION_PARTICLE>ne
      <RIGHT_LOGIC_ITEM>comma.<NEXT_COLLOCATION_ITEM>a2.<ATTRIBUTE>mod2
     }
}



// -------------------------------------------------------------

pattern ГруппаСравнПрил
{
 ГруппаСравнПрил_Восх:export { node:root_node } 
}



// -------------------------------------------------

// Аккумуляторы станут в пять раз эффективнее
//                     ^^^^^^^^^^
pattern ГруппаСравнПрил
{
 p=предлог:в{}
 c=ГруппаЧисл{ ПАДЕЖ:ВИН }
 n=существительное:раз{ падеж:род }
 a=ГруппаСравнПрил : export { node:root_node }
}
: links{ a.<PREPOS_ADJUNCT>p.<OBJECT>n.<ATTRIBUTE>c }
: ngrams { 1 }


patterns ЧислоЦифрами export { ЧИСЛО node:root_node }

// Аккумуляторы станут в 5 раз эффективнее
//                     ^^^^^^^
pattern ГруппаСравнПрил
{
 p=предлог:в{}
 c=ЧислоЦифрами
 n=существительное:раз{ падеж:род }
 a=ГруппаСравнПрил : export { node:root_node }
}
: links{ a.<PREPOS_ADJUNCT>p.<OBJECT>n.<ATTRIBUTE>c }
: ngrams { 1 }

