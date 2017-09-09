﻿//
// CD->05.10.1995
// LC->09.01.2012
// --------------

automat gg
{
 #define СОГЛ   * { VOWELNESS:CONSONANT }
 #define ПОЛУГЛ * { VOWELNESS:SEMIVOWEL }
 #define ГЛ     * { VOWELNESS:VOWEL }
 #define _КОН   end
 #define _НАЧ   begin
 #define ЗН     * { VOWELNESS:SOUNDLESS }

 // *************************************************
 // ЗАВОД  ->  [ЗА]-ВОД
 // ^^
 // *************************************************
 syllab_rule SYLLABER_1 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 } 2 3 }
     >> 1
    }
 }

 // *************************************************
 // СТРА ННЫЙ  ->  [СТРА ]-ННЫЙ
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_2 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 6 }
     >> 1
    }
 }

 // *************************************************
 // СТРАХ  ->  [СТРАХ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_3 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // СТРА ЕН  ->  [СТРА]- ЕН
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_4 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // МАСКА  ->  [МАС]-КА
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_5 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // ЗАВОД  ->  ЗА-[ВОД]
 //   ^^^
 // *************************************************
 syllab_rule SYLLABER_6 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // МАСКА  ->  МАС-[КА]
 //    ^^
 // *************************************************
 syllab_rule SYLLABER_7 language=Russian
 {
  if context { СОГЛ ГЛ _КОН }
   then
    {
     context { merge{ 0 1 } 2 }
     >> 1
    }
 }

 // *************************************************
 // МАЙКА  ->  [МАЙ]-КА
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_8 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // МАЙКЛ  ->  [МАЙКЛ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_9 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // САРАЙ  ->  СА-[РАЙ]
 //   ^^^
 // *************************************************
 syllab_rule SYLLABER_10 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // МОНСТР  ->  [МОНСТР]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_11 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 } 6 }
     >> 1
    }
 }

 // *************************************************
 // МОНСТРЫ  ->  [МОНСТ]-РЫ
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_12 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ СОГЛ СОГЛ ~_КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 6 }
     >> 1
    }
 }

 // *************************************************
 // КОЛЬЦО  ->  [КОЛЬ]-ЦО
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_13 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ЗН СОГЛ ~_КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ВПИЛОСЬ  ->  ВПИ-[ЛОСЬ]
 //    ^^^^
 // *************************************************
 syllab_rule SYLLABER_14 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // КНИЖНЫЙ  ->  [КНИЖ]-НЫЙ
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_15 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ВЬЮГА  ->  [ВЬЮ]-ГА
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_16 language=Russian
 {
  if context { СОГЛ ЗН ГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // ПРИИСК  ->  [ПРИ]-ИСК
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_17 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ГЛ СОГЛ  }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // ПРИИСК  ->  ПРИ-[ИСК]
 //    ^^^
 // *************************************************
 syllab_rule SYLLABER_18 language=Russian
 {
  if context { ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // ВЪЕЗД  ->  [ВЪЕЗД]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_19 language=Russian
 {
  if context { СОГЛ ЗН ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ПОДЪЕЗД  ->  [ПОДЪ]-ЕЗД
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_20 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ЗН ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ДВЕРЬЮ  ->  [ДВЕРЬ]-Ю
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_21 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ ЗН ~СОГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ВЬЮН  ->  [ВЬЮН]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_22 language=Russian
 {
  if context { СОГЛ ЗН ГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ГНОМ  ->  [ГНОМ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_23 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // ГНОЙ  ->  [ГНОЙ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_24 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // ЯВЬ  ->  [ЯВЬ]
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_25 language=Russian
 {
  if context { _НАЧ ГЛ СОГЛ ЗН _КОН }
   then
    {
     context { 0 merge{ 1 2 3 } 4 }
     >> 2
    }
 }

 // *************************************************
 // БАНКЪ  ->  [БАНКЪ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_26 language=Russian
 {
  if context { _НАЧ СОГЛ ГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 } 6 }
     >> 2
    }
 }

 // *************************************************
 // ДЛЯ  ->  [ДЛЯ]
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_27 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ ГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 } 4 }
     >> 2
    }
 }

 // *************************************************
 // АРКА  ->  [АР]-КА
 // ^^
 // *************************************************
 syllab_rule SYLLABER_28 language=Russian
 {
  if context { ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 } 2 3 }
     >> 1
    }
 }

 // *************************************************
 // ОТ  ->  [ОТ]
 // ^^
 // *************************************************
 syllab_rule SYLLABER_29 language=Russian
 {
  if context { _НАЧ ГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 } 3 }
     >> 2
    }
 }

 // *************************************************
 // ПРЕРИЯ  ->  ПРЕРИ-[Я]
 //      ^
 // *************************************************
 syllab_rule SYLLABER_30 language=Russian
 {
  if context { ГЛ _КОН }
   then
    {
     context { 0 1 }
     >> 1
    }
 }

 // *************************************************
 // ПРЕРИЯ  ->  ПРЕ-[РИ]-Я
 //    ^^
 // *************************************************
 syllab_rule SYLLABER_31 language=Russian
 {
  if context { СОГЛ ГЛ ГЛ }
   then
    {
     context { merge { 0 1 } 2 }
     >> 1
    }
 }

 // *************************************************
 // К  ->  [K]
 // ^
 // *************************************************
 syllab_rule SYLLABER_32 language=Russian
 {
  if context { _НАЧ СОГЛ _КОН }
   then
    {
     context { 0 1 2 }
     >> 2
    }
 }

 // *************************************************
 // ИЮЛЬСКИЙ  ->  ИЮЛЬ-[СKИЙ]
 //     ^^^^
 // *************************************************
 syllab_rule SYLLABER_33 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { merge { 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // АУКАТЬ  ->  [А]-УКАТЬ
 // ^
 // *************************************************
 syllab_rule SYLLABER_34 language=Russian
 {
  if context { ГЛ ГЛ }
   then
    {
     context { 0 1 }
     >> 1
    }
 }

 // *************************************************
 // ОБЕ  ->  [О]-БЕ       ОДУРЕВ -> [О]-ДУРЕВ
 // ^                     ^
 // *************************************************
 syllab_rule SYLLABER_35 language=Russian
 {
  if context { ГЛ СОГЛ ГЛ }
   then
    {
     context { 0 1 2 }
     >> 1
    }
 }

 // *************************************************
 // БАНКРОТ  ->  [БАНК]-РОТ
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_36 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge { 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // БАНК  ->  [БАНК]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_37 language=Russian
 {
  if context { _НАЧ СОГЛ ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge { 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // МАСКА  ->  [МАС]-КА
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_38 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge { 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // КОЛЬТ  ->  [КОЛЬТ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_39 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ЗН СОГЛ _КОН }
   then
    {
     context { merge { 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ИЮЛЬ  ->  И-[ЮЛЬ]
 //  ^^^
 // *************************************************
 syllab_rule SYLLABER_40 language=Russian
 {
  if context { ГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge { 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // ИЮЛЬСКИЙ  ->  И-[ЮЛЬ]-СКИЙ
 //  ^^^
 // *************************************************
 syllab_rule SYLLABER_42 language=Russian
 {
  if context { ГЛ СОГЛ ЗН СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge { 0 1 2 } 3 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ОБОЯХ  ->  О-БО-[ЯХ]
 //    ^^
 // *************************************************
 syllab_rule SYLLABER_44 language=Russian
 {
  if context { ГЛ СОГЛ _КОН }
   then
    {
     context { merge { 0 1 } 2 }
     >> 1
    }
 }

 // *************************************************
 // ОЙ  ->  [ОЙ]    СВОЕЙ -> СВО-[ЕЙ]
 // ^^                 ^^
 // *************************************************
 syllab_rule SYLLABER_46 language=Russian
 {
  if context { ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { merge { 0 1 } 2 }
     >> 1
    }
 }

 // *************************************************
 // СКОЛЬКО -> [СКОЛЬ]-КО
 // ^^^^^||
 // *************************************************
 syllab_rule SYLLABER_48 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ ЗН  СОГЛ ГЛ }
   then
    {
     context { merge { 0 1 2 3 4 } 5 6 }
     >> 1
    }
 }

 // *************************************************
 // УСТРОИЛСЯ  ->  [УС]-ТРО-ИЛ-СЯ
 // ^^|||
 // *************************************************
 syllab_rule SYLLABER_50 language=Russian
 {
  if context { ГЛ СОГЛ   СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 } 2 3 4 }
     >> 1
    }
 }

 // *************************************************
 // ТУРИСТ  ->  ТУ-[РИСТ]
 //   ^^^^
 // *************************************************
 syllab_rule SYLLABER_52 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge { 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // СТРОЙНЫЙ  ->  [СТРОЙ]-НЫЙ
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_54 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ ПОЛУГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } }
     >> 1
    }
 }

 // *************************************************
 // ИНСТРУМЕНТ  ->  [ИН]-СТРУМЕНТ
 // ^^
 // *************************************************
 syllab_rule SYLLABER_56 language=Russian
 {
  if context { ГЛ СОГЛ }
   then
    {
     context { merge{ 0 1 } }
     >> 1
    }
 }

 // *************************************************
 // ТЬФУ  ->  [ТЬФУ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_58 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН СОГЛ ГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // ХВОСТ  ->  [ХВОСТ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_60 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 } 6 }
     >> 2
    }
 }

 // *************************************************
 // ОТКРЫЛ  ->  ОТ-[КРЫЛ]
 //   ^^^^
 // *************************************************
 syllab_rule SYLLABER_62 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ПОЖАЛУЙСТА  ->  ПОЖА-[ЛУЙ]-СТА
 //     ^^^
 // *************************************************
 syllab_rule SYLLABER_64 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ }
   then
    {
     context { merge{ 0 1 2 } }
     >> 1
    }
 }

 // *************************************************
 // ПОЖАЛУЙСТА  ->  ПОЖАЛУЙ-[СТА]
 //        ^^^
 // *************************************************
 syllab_rule SYLLABER_66 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // УДОВОЛЬСТВИЕ  ->  УДОВОЛЬ-[СТВИ]-Е
 //        ^^^^
 // *************************************************
 syllab_rule SYLLABER_68 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ГМ  ->  [ГМ]
 // ^^
 // *************************************************
 syllab_rule SYLLABER_70 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge { 1 2 } 3 }
     >> 2
    }
 }

 // *************************************************
 // ЕСТЬ  ->  [ЕСТЬ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_72 language=Russian
 {
  if context { ГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge { 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ВНУТРЬ  ->  [ВНУТРЬ]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_74 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { 0 merge { 1 2 3 4 5 6 } 7 }
     >> 2
    }
 }

 // *************************************************
 // ЧЕЛЮСТЬ  ->  ЧЕ-[ЛЮСТЬ]
 //   ^^^^^
 // *************************************************
 syllab_rule SYLLABER_76 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ОТЪЕЗД  ->  [ОТЪ]-ЕЗД
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_78 language=Russian
 {
  if context { ГЛ СОГЛ ЗН ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // СВЕРТКА  ->  [СВЕРТ]-КА
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_80 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ СОГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ОСТРАЯ  ->  ОС-[ТРА]-Я
 //   ^^^
 // *************************************************
 syllab_rule SYLLABER_82 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // ЗАНИМАЕ ЬСЯ  ->  ЗАНИМА-[Е Ь]-СЯ
 //       ^^^
 // *************************************************
 syllab_rule SYLLABER_84 language=Russian
 {
  if context { ГЛ СОГЛ ЗН СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // ПЬЮ  -> [ПЬЮ]
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_86 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН ГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 } 4 }
     >> 2
    }
 }

 // *************************************************
 // ВЗГЛЯД -> [ВЗГЛЯД]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_88 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ СОГЛ СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 6 } 7 }
     >> 2
    }
 }

 // *************************************************
 // ВКРИВЬ -> [ВКРИВЬ]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_90 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ СОГЛ ГЛ СОГЛ ЗН _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 6 } 7 }
     >> 2
    }
 }

 // *************************************************
 // КРАЙНЕГО  ->  [КРАЙ]-НЕГО
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_92 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ПОЛУГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ЯСНОСТЬЮ  ->  ЯСНО-[СТЬЮ]
 //     ^^^^
 // *************************************************
 syllab_rule SYLLABER_94 language=Russian
 {
  if context { СОГЛ ЗН ГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 } 3 }
     >> 1
    }
 }

 // *************************************************
 // ОБЩНОСТЬ  ->  [ОБЩ]-НОСТЬ
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_96 language=Russian
 {
  if context { ГЛ СОГЛ СОГЛ СОГЛ ГЛ СОГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ВСТРЕПЕНУЛАСЬ -> [ВСТРЕ]-ПЕНУЛАСЬ
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_98 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } }
     >> 1
    }
 }

 // *************************************************
 // ЛЬДОМ -> [ЛЬДОМ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_100 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН СОГЛ ГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 } 6 }
     >> 2
    }
 }

 // *************************************************
 // ЧЬЕЙ -> [ЧЬЕЙ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_110 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // ТЕКСТ -> [ТЕКСТ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_120 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ЯВСТВ -> [ЯВСТВ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_130 language=Russian
 {
  if context { _НАЧ ГЛ СОГЛ СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 } 6 }
     >> 2
    }
 }

 // *************************************************
 // ЖГЛИ -> [ЖГЛИ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_140 language=Russian
 {
  if context { _НАЧ СОГЛ СОГЛ СОГЛ ГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // БЬЕ Ь -> [БЬЕ Ь]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_150 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН ГЛ СОГЛ ЗН _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 } 6 }
     >> 2
    }
 }

 // *************************************************
 // КАЙФ -> [КАЙФ]
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_160 language=Russian
 {
  if context { _НАЧ СОГЛ ГЛ ПОЛУГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 }
     >> 2
    }
 }

 // *************************************************
 // ЯВСТВА  ->  ЯВ-[СТВА]
 //   ^^^^
 // *************************************************
 syllab_rule SYLLABER_170 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // УЙТИ  ->  [УЙ]-ТИ
 // ^^
 // *************************************************
 syllab_rule SYLLABER_180 language=Russian
 {
  if context { ГЛ ПОЛУГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 } 2 3 }
     >> 1
    }
 }

 // *************************************************
 // АНГЛИЙСКИЙ  ->  АН-[ГЛИЙ]-СКОМ
 //   ^^^^
 // *************************************************
 syllab_rule SYLLABER_190 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ПОЛУГЛ }
   then
    {
     context { merge{ 0 1 2 3 } }
     >> 1
    }
 }

 // *************************************************
 // ВЗМОРЬЕ  ->  [ВЗМОРЬ]-Е
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_200 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ ЗН }
   then
    {
     context { merge{ 0 1 2 3 4 5 } }
     >> 1
    }
 }

 // *************************************************
 // СТРАСТНО  ->  [СТРА]-СТНО
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_210 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } }
     >> 1
    }
 }

 // *************************************************
 // ЗДРАВСТВУЙТЕ -> ЗДРА-[ВСТВУЙ]-ТЕ
 //     ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_220 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ СОГЛ ГЛ ПОЛУГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 5 } }
     >> 1
    }
 }

 // *************************************************
 // ПРАВИТЕЛЬСТВО  ->  [ПРА]-ВИТЕЛЬСТВО
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_230 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 }
     >> 1
    }
 }

 // *************************************************
 // СКОЛЬЗКИЕ  ->  [СКОЛЬ]-ЗКИЕ
 // ^^^^^|||
 // *************************************************
 syllab_rule SYLLABER_240 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ ЗН   СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 6 7 }
     >> 1
    }
 }

 // *************************************************
 //  ЕСТЬДЕСЯТ  ->  [ ЕСТЬ]-ДЕСЯТ
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_250 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ ЗН СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 6 }
     >> 1
    }
 }

 // *************************************************
 // НОВОСТЬЮ  ->  НО-[ВОСТЬ]-Ю
 //   ^^^^^
 // *************************************************
 syllab_rule SYLLABER_260 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ ЗН ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ПОРТВЕЙН  ->  ПОРТ-[ВЕЙН]
 //     ^^^^
 // *************************************************
 syllab_rule SYLLABER_280 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // СЪЕЗЖАВ УЮ  ->  [СЪЕЗ]-ЖАВ- УЮ
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_290 language=Russian
 {
  if context { СОГЛ ЗН ГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ВСКОЛЬЗЬ  ->  [ВСКОЛЬЗЬ]
 // ^^^^^^^^
 // *************************************************
 syllab_rule SYLLABER_300 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ ЗН СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 6 7 } 8 }
     >> 1
    }
 }

 // *************************************************
 // ВСЛАСТЬ  ->  [ВСЛАСТЬ]
 // ^^^^^^^
 // *************************************************
 syllab_rule SYLLABER_310 language=Russian
 {
  if context { СОГЛ СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 6 } 7 }
     >> 1
    }
 }

 // *************************************************
 // ТЬМОЙ  ->  [ТЬМОЙ]
 // ^^^^^
 // *************************************************
 syllab_rule SYLLABER_320 language=Russian
 {
  if context { СОГЛ ЗН СОГЛ ГЛ ПОЛУГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 //  ЕРСТЬ  ->  [ ЕРСТЬ]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_330 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ СОГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 } 6 }
     >> 1
    }
 }

 // *************************************************
 // СЧАСТЬЕ  ->  [СЧАСТЬ]-Е
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_340 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ЗН ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 5 } 6 }
     >> 1
    }
 }

 // *************************************************
 // ДОКАЗАТЕЛЬСТВ ->  ДО-КА-ЗА-[ТЕЛЬСТВ]
 //       ^^^^^^^
 // *************************************************
 syllab_rule SYLLABER_350 language=Russian
 {
  if context { СОГЛ ГЛ СОГЛ ЗН СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 6 } 7 }
     >> 1
    }
 }

 // *************************************************
 // ТЬМОЮ ->  [ТЬМО]-Ю
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_360 language=Russian
 {
  if context { СОГЛ ЗН СОГЛ ГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // СРЕДСТВ  ->  [СРЕДСТВ]
 // ^^^^^^^
 // *************************************************
 syllab_rule SYLLABER_370 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 6 } 7 }
     >> 1
    }
 }

 // *************************************************
 // ЙОТА  ->  [ЙО]-ТА
 // ^^
 // *************************************************
 syllab_rule SYLLABER_380 language=Russian
 {
  if context { _НАЧ ПОЛУГЛ ГЛ СОГЛ ГЛ }
   then
    {
     context { 0 merge{ 1 2 } 3 4 }
     >> 2
    }
 }

 // *************************************************
 // КЛЯСТЬСЯ  ->  [КЛЯСТЬ]-СЯ
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_390 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ ЗН СОГЛ ГЛ }
   then
    {
     context { merge { 0 1 2 3 4 5 } 6 7 }
     >> 1
    }
 }

 // *************************************************
 // КОКТЕЙЛЬ  ->  КОК-[ТЕЙЛЬ]
 //    ^^^^^
 // *************************************************
 syllab_rule SYLLABER_400 language=Russian
 {
  if context { СОГЛ ГЛ ПОЛУГЛ СОГЛ ЗН _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // СТРАСТЬЮ  ->  СТРА-[СТЬЮ]
 //     ^^^^
 // *************************************************
 syllab_rule SYLLABER_410 language=Russian
 {
  if context { СОГЛ СОГЛ ЗН ГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 } 4 }
     >> 1
    }
 }

 // *************************************************
 // ЛЬВИНЫЙ  ->  [ЛЬВИ]-НЫЙ
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_420 language=Russian
 {
  if context { _НАЧ СОГЛ ЗН СОГЛ ГЛ СОГЛ ГЛ }
   then
    {
     context { 0 merge{ 1 2 3 4 } 5 6 }
     >> 2
    }
 }

 // *************************************************
 // ПЬЯНСТВОВАТЬ  ->  [ПЬЯНСТ]-ВО-ВАТЬ
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_430 language=Russian
 {
  if context { СОГЛ ЗН ГЛ СОГЛ СОГЛ СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 4 5 } 6 7 }
     >> 1
    }
 }

 // *************************************************
 // ФИЛЬТР  ->  [ФИЛЬТР]
 // ^^^^^^
 // *************************************************
 syllab_rule SYLLABER_440 language=Russian
 {
  if context { _НАЧ СОГЛ ГЛ СОГЛ ЗН СОГЛ СОГЛ _КОН }
   then
    {
     context { 0 merge{ 1 2 3 4 5 6 } 7 }
     >> 2
    }
 }

 // *************************************************
 // УСТРОЙСТВ  ->  УС-[ТРОЙСТВ]
 //   ^^^^^^^
 // *************************************************
 syllab_rule SYLLABER_450 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ ПОЛУГЛ СОГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 5 6 } 7 }
     >> 1
    }
 }

 // *************************************************
 // ЭКСПРЕСС  ->  [ЭКС]-ПРЕСС
 // ^^^
 // *************************************************
 syllab_rule SYLLABER_460 language=Russian
 {
  if context { ГЛ СОГЛ СОГЛ  СОГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 } 3 4 5 }
     >> 1
    }
 }

 // *************************************************
 // ЭКСПРЕСС  ->  ЭКС-[ПРЕСС]
 //    ^^^^^
 // *************************************************
 syllab_rule SYLLABER_470 language=Russian
 {
  if context { СОГЛ СОГЛ ГЛ СОГЛ СОГЛ _КОН }
   then
    {
     context { merge{ 0 1 2 3 4 } 5 }
     >> 1
    }
 }

 // *************************************************
 // ВЗЪЕРОШЕННЫЙ  ->  [ВЗЪЕ]-РО ЕННЫЙ
 // ^^^^
 // *************************************************
 syllab_rule SYLLABER_480 language=Russian
 {
  if context { СОГЛ СОГЛ ЗН ГЛ СОГЛ ГЛ }
   then
    {
     context { merge{ 0 1 2 3 } 4 5 }
     >> 1
    }
 }

}
