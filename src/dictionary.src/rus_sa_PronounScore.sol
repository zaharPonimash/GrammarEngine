﻿// LC->04.02.2014

// Притяжательные прилагательные обычно не прикрепляются к местоимению в качестве
// правого определения.

// а кто ваш отец?
//   ^^^ ~~~
tree_scorer ВалентностьМестоим language=Russian generic
{
 if context { местоим_сущ:*{ род:муж }.<ATTRIBUTE>прилагательное:*{ ТИП_ПРИЛ:ПРИТЯЖ } }
  then -10
}
