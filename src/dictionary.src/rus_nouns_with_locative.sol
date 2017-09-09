﻿automat sg
{
 omonym add Существительное:Дон{}

 entry Дон : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:НЕТ
  CharCasing:FirstCapitalized
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [Дон stress="Д^он"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [Дона stress="Д^она"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [Доном stress="Д^оном"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [Дона stress="Д^она"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [Дону stress="Д^ону"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [Доне stress="Д^оне"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [Дону stress="Дон^у"] }
 }

 entry дон : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:ОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [дон stress="д^он"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [доны stress="д^оны"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [дона stress="д^она"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [донов stress="д^онов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [доном stress="д^оном"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [донами stress="д^онами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [дона stress="д^она"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [донов stress="д^онов"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [дону stress="д^ону"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [донам stress="д^онам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [доне stress="д^оне"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [донах stress="д^онах"] }
 }

 omonym remove Существительное:Дон{}


 entry борт : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [борт stress="б^орт"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [борта stress="борт^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [борта stress="б^орта"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [бортов stress="борт^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [бортом stress="б^ортом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [бортами stress="борт^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [борт stress="б^орт"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [борта stress="борт^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [борту stress="б^орту"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [бортам stress="борт^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [борте stress="б^орте"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [борту stress="борт^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [бортах stress="борт^ах"] }
 }


 entry год : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [год stress="г^од"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [года stress="год^а"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [годы stress="г^оды"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [года stress="г^ода"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [годов stress="год^ов"] }
  ПАДЕЖ:(ПАРТ) ЧИСЛО:ЕД { [году stress="г^оду"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [годом stress="г^одом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [годами stress="год^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [год stress="г^од"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [года stress="год^а"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [годы stress="г^оды"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [году stress="г^оду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [годам stress="год^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [годе stress="г^оде"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [году stress="год^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [годах stress="год^ах"] }
 }


 entry бок : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [бок stress="б^ок"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [бока stress="бок^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [бока stress="б^ока"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [боков stress="бок^ов"] }
  ПАДЕЖ:(ПАРТ) ЧИСЛО:ЕД { [боку stress="б^оку"] } // Ворочался с боку на бок.
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [боком stress="б^оком"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [боками stress="бок^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [бок stress="б^ок"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [бока stress="бок^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [боку stress="б^оку"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [бокам stress="бок^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [боке stress="б^оке"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [боку stress="бок^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [боках stress="бок^ах"] }
 }


 entry дым : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [дым stress="д^ым"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [дымы stress="дым^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [дыма stress="д^ыма"] }
  ПАДЕЖ:ПАРТ ЧИСЛО:ЕД { [дыму stress="д^ыму"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [дымов stress="дым^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [дымом stress="д^ымом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [дымами stress="дым^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [дым stress="д^ым"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [дымы stress="дым^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [дыму stress="д^ыму"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [дымам stress="дым^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [дыме stress="д^ыме"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [дыму stress="дым^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [дымах stress="дым^ах"] }
 }


 entry гроб : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [гроб stress="гр^об"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [гробы stress="гроб^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [гроба stress="гр^оба"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [гробов stress="гроб^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [гробом stress="гр^обом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [гробами stress="гроб^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [гроб stress="гр^об"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [гробы stress="гроб^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [гробу stress="гр^обу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [гробам stress="гроб^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [гробе stress="гр^обе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [гробу stress="гроб^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [гробах stress="гроб^ах"] }
 }


 entry зоб : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [зоб stress="з^об"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [зобы stress="зоб^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [зоба stress="з^оба"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [зобов stress="зоб^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [зобом stress="з^обом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [зобами stress="зоб^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [зоб stress="з^об"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [зобы stress="зоб^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [зобу stress="з^обу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [зобам stress="зоб^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [зобе stress="з^обе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [зобу stress="зоб^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [зобах stress="зоб^ах"] }
 }


 entry шерсть : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:ЖЕН
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:НЕТ
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [шерсть stress="ш^ерсть"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [шерсти stress="ш^ерсти"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [шерстью stress="ш^ерстью"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [шерсть stress="ш^ерсть"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [шерсти stress="ш^ерсти"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [шерсти stress="ш^ерсти"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [шерсти stress="шерст^и"] }
 }


 entry род : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [род stress="р^од"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [рода stress="род^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [рода stress="р^ода"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [родов stress="род^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [родом stress="р^одом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [родами stress="род^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [род stress="р^од"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [рода stress="род^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [роду stress="р^оду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [родам stress="род^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [роде stress="р^оде"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [роду stress="род^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [родах stress="род^ах"] }
 }


 entry пот : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [пот stress="п^от"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [поты stress="пот^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [пота stress="п^ота"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [потов stress="пот^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [потом stress="п^отом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [потами stress="пот^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [пот stress="п^от"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [поты stress="пот^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [поту stress="п^оту"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [потам stress="пот^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [поте stress="п^оте"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [поту stress="пот^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [потах stress="пот^ах"] }
 }


 entry лоб : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [лоб stress="л^об"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [лбы stress="лб^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [лба stress="лб^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [лбов stress="лб^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [лбом stress="лб^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [лбами stress="лб^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [лоб stress="л^об"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [лбы stress="лб^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [лбу stress="лб^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [лбам stress="лб^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [лбе stress="лб^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [лбу stress="лб^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [лбах stress="лб^ах"] }
 }


 entry мозг : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [мозг stress="м^озг"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [мозги stress="мозг^и"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [мозга stress="м^озга"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [мозгов stress="мозг^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [мозгом stress="м^озгом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [мозгами stress="мозг^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [мозг stress="м^озг"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [мозги stress="мозг^и"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [мозгу stress="м^озгу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [мозгам stress="мозг^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [мозге stress="м^озге"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [мозгу stress="мозг^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [мозгах stress="мозг^ах"] }
 }


 entry плен : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [плен stress="пл^ен"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [плены stress="пл^ены"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [плена stress="пл^ена"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [пленов stress="пл^енов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [пленом stress="пл^еном"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [пленами stress="пл^енами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [плен stress="пл^ен"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [плены stress="пл^ены"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [плену stress="пл^ену"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [пленам stress="пл^енам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [плене stress="пл^ене"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [плену stress="плен^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [пленах stress="пл^енах"] }
 }


 entry рот : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [рот stress="р^от"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [рты stress="рт^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [рта stress="рт^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [ртов stress="рт^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [ртом stress="рт^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [ртами stress="рт^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [рот stress="р^от"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [рты stress="рт^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [рту stress="рт^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [ртам stress="рт^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [рте stress="рт^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [рту stress="рт^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [ртах stress="рт^ах"] }
 }


 entry кровь : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:ЖЕН
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [кровь stress="кр^овь"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [крови stress="кр^ови"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [крови stress="кр^ови"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [кровей stress="кров^ей"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [кровью stress="кр^овью"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [кровями stress="кров^ями"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [кровь stress="кр^овь"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [крови stress="кр^ови"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [крови stress="кр^ови"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [кровям stress="кров^ям"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [крови stress="кр^ови"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [крови stress="кров^и"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [кровях stress="кров^ях"] }
 }


 entry глаз : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [глаз stress="гл^аз"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [глаза stress="глаз^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [глаза stress="гл^аза"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [глаз stress="гл^аз"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [глазом stress="гл^азом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [глазами stress="глаз^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [глаз stress="гл^аз"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [глаза stress="глаз^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [глазу stress="гл^азу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [глазам stress="глаз^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [глазе stress="гл^азе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [глазу stress="глаз^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [глазах stress="глаз^ах"] }
 }


 entry нос : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [нос stress="н^ос"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [носы stress="нос^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [носа stress="н^оса"] }
  ПАДЕЖ:ПАРТ ЧИСЛО:ЕД { [носу stress="н^осу"] } // из носу текла кровь.
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [носов stress="нос^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [носом stress="н^осом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [носами stress="нос^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [нос stress="н^ос"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [носы stress="нос^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [носу stress="н^осу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [носам stress="нос^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [носе stress="н^осе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [носу stress="нос^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [носах stress="нос^ах"] }
 }


 entry пах : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [пах stress="п^ах"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [пахи stress="пах^и"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [паха stress="п^аха"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [пахов stress="пах^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [пахом stress="п^ахом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [пахами stress="пах^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [пах stress="п^ах"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [пахи stress="пах^и"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [паху stress="п^аху"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [пахам stress="пах^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [пахе stress="п^ахе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [паху stress="пах^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [пахах stress="пах^ах"] }
 }



 entry порт : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [порт stress="п^орт"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [порты stress="п^орты"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [порта stress="п^орта"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [портов stress="порт^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [портом stress="п^ортом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [портами stress="порт^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [порт stress="п^орт"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [порты stress="п^орты"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [порту stress="п^орту"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [портам stress="порт^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [порте stress="п^орте"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [порту stress="порт^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [портах stress="порт^ах"] }
 }


 entry бор : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [бор stress="б^ор"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [боры stress="б^оры"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [бора stress="б^ора"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [боров stress="б^оров"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [бором stress="б^ором"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [борами stress="б^орами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [бор stress="б^ор"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [боры stress="б^оры"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [бору stress="б^ору"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [борам stress="б^орам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [боре stress="б^оре"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [бору stress="бор^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [борах stress="б^орах"] }
 }


 entry пруд : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [пруд stress="пр^уд"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [пруды stress="пруд^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [пруда stress="пр^уда"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [прудов stress="пруд^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [прудом stress="пр^удом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [прудами stress="пруд^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [пруд stress="пр^уд"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [пруды stress="пруд^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [пруду stress="пр^уду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [прудам stress="пруд^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [пруде stress="пр^уде"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [пруду stress="пруд^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [прудах stress="пруд^ах"] }
 }


 entry край : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [край stress="кр^ай"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [края stress="кра^я"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [края stress="кр^ая"] }
  ПАДЕЖ:(ПАРТ) ЧИСЛО:ЕД { [краю stress="кр^аю"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [краёв yo="краёв" stress="кра^ёв"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [краем stress="кр^аем"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [краями stress="кра^ями"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [край stress="кр^ай"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [края stress="кра^я"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [краю stress="кр^аю"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [краям stress="кра^ям"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [крае stress="кр^ае"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [краю stress="кра^ю"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [краях stress="кра^ях"] }
 }



 entry бред : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:НЕТ
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [бред stress="бр^ед"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [бреда stress="бр^еда"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [бредом stress="бр^едом"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [бред stress="бр^ед"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [бреду stress="бр^еду"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [бреде stress="бр^еде"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [бреду stress="бред^у"] }
 }


 entry кон : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [кон stress="к^он"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [коны stress="кон^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [кона stress="к^она"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [конов stress="кон^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [коном stress="к^оном"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [конами stress="кон^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [кон stress="к^он"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [коны stress="кон^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [кону stress="к^ону"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [конам stress="кон^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [коне stress="к^оне"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [кону stress="кон^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [конах stress="кон^ах"] }
 }


 entry угол : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [угол stress="^угол"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [углы stress="угл^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [угла stress="угл^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [углов stress="угл^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [углом stress="угл^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [углами stress="угл^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [угол stress="^угол"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [углы stress="угл^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [углу stress="угл^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [углам stress="угл^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [угле stress="угл^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [углу stress="угл^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [углах stress="угл^ах"] }
 }


 entry пыль : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:ЖЕН
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:НЕТ
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [пыль stress="п^ыль"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [пыли stress="п^ыли"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [пылью stress="п^ылью"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [пыль stress="п^ыль"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [пыли stress="п^ыли"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [пыли stress="п^ыли"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [пыли stress="пыл^и"] }
 }


 entry плот : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [плот stress="пл^от"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [плоты stress="плот^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [плота stress="плот^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [плотов stress="плот^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [плотом stress="плот^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [плотами stress="плот^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [плот stress="пл^от"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [плоты stress="плот^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [плоту stress="плот^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [плотам stress="плот^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [плоте stress="плот^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [плоту stress="плот^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [плотах stress="плот^ах"] }
 }


 entry вес : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [вес stress="в^ес"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [веса stress="вес^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [веса stress="в^еса"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [весов stress="вес^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [весом stress="в^есом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [весами stress="вес^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [вес stress="в^ес"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [веса stress="вес^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [весу stress="в^есу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [весам stress="вес^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [весе stress="в^есе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [весу stress="вес^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [весах stress="вес^ах"] }
 }


 entry Крым : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:НЕТ
  CharCasing:FirstCapitalized
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [Крым stress="Кр^ым"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [Крыма stress="Кр^ыма"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [Крымом stress="Кр^ымом"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [Крым stress="Кр^ым"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [Крыму stress="Кр^ыму"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [Крыме stress="Кр^ыме"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [Крыму stress="Крым^у"] }
 }


 entry стог : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [стог stress="ст^ог"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [стога stress="стог^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [стога stress="ст^ога"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [стогов stress="стог^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [стогом stress="ст^огом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [стогами stress="стог^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [стог stress="ст^ог"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [стога stress="стог^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [стогу stress="ст^огу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [стогам stress="стог^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [стоге stress="ст^оге"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [стогу stress="стог^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [стогах stress="стог^ах"] }
 }


 entry пол : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { пол }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { полы }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { пола }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { полов }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { полом }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { полами }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { пол }
  ПАДЕЖ:ВИН ЧИСЛО:МН { полы }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { полу }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { полам }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [полу stress="пол^у"] } 
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { поле }  
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { полах }
 }


 entry ветер : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [ветер stress="в^етер"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [ветра stress="ветр^а"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [ветры stress="в^етры"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [ветра stress="в^етра"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [ветров stress="ветр^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [ветром stress="в^етром"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [ветрами stress="ветр^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [ветер stress="в^етер"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [ветра stress="ветр^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [ветру stress="в^етру"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [ветрам stress="ветр^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [ветре stress="в^етре"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [ветру stress="ветр^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [ветрах stress="ветр^ах"] }
 }


 entry "сад" : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { сад }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [сады stress="сад^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [сада stress="с^ада"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [садов stress="сад^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [садом stress="с^адом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [садами stress="сад^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { сад }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [сады stress="сад^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [саду stress="с^аду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [садам stress="сад^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [саде stress="с^аде"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [садах stress="сад^ах"] }
  ПАДЕЖ:мест ЧИСЛО:ЕД { [саду stress="сад^у"] }
 }

 entry "ряд" : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { ряд }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [ряды stress="ряд^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [ряда stress="р^яда"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [рядов stress="ряд^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [рядом stress="р^ядом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [рядами stress="ряд^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { ряд }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [ряды stress="ряд^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [ряду stress="р^яду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [рядам stress="ряд^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [ряде stress="р^яде"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [рядах stress="ряд^ах"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [ряду stress="ряд^у"] }
 }

 entry "аэропорт" : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [аэропорт stress="аэроп^орт"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [аэропорты stress="аэроп^орты"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [аэропорта stress="аэроп^орта"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [аэропортов stress="аэроп^ортов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [аэропортом stress="аэроп^ортом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [аэропортами stress="аэроп^ортами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [аэропорт stress="аэроп^орт"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [аэропорты stress="аэроп^орты"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [аэропорту stress="аэроп^орту"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [аэропортам stress="аэроп^ортам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [аэропорте stress="аэроп^орте"] }
  ПАДЕЖ:(МЕСТ) ЧИСЛО:ЕД { [аэропорту stress="аэропорт^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [аэропортах stress="аэроп^ортах"] }
 }

 entry "тень" : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:ЖЕН
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [тень stress="т^ень"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [тени stress="т^ени"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [тени stress="т^ени"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [теней stress="т^еней"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [тенью stress="т^енью"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [тенями stress="т^енями"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [тень stress="т^ень"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [тени stress="т^ени"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [тени stress="т^ени"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [теням stress="т^еням"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [тени stress="т^ени"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [тени stress="тен^и"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [тенях stress="т^енях"] }
 }

 entry "счёт" : СУЩЕСТВИТЕЛЬНОЕ
 {
  aux yo="счёт"
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [счёт yo="счёт"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [счета stress="счет^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [счёта yo="счёта"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [счетов stress="счет^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [счётом yo="счётом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [счетами stress="счет^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [счёт yo="счёт"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [счета stress="счет^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [счёту yo="счёту"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [счетам stress="счет^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [счёте yo="счёте"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [счетах stress="счет^ах"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [счету stress="счет^у"] }
 }


 entry "снег" : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [снег stress="сн^ег"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [снега stress="снег^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [снега stress="сн^ега"] }
  ПАДЕЖ:ПАРТ ЧИСЛО:ЕД { [снегу stress="сн^егу"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [снегов stress="снег^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [снегом stress="сн^егом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [снегами stress="снег^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [снег stress="снег"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [снега stress="снег^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [снегу stress="сн^егу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [снегам stress="снег^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [снеге stress="сн^еге"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [снегу stress="снег^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [снегах stress="снег^ах"] }
 }

 entry вал : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [вал stress="в^ал"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [валы stress="в^алы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [вала stress="в^ала"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [валов stress="в^алов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [валом stress="в^алом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [валами stress="в^алами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [вал stress="в^ал"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [валы stress="в^алы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [валу stress="в^алу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [валам stress="в^алам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [вале stress="в^але"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [валу stress="вал^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [валах stress="в^алах"] }
 }





 entry жир : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [жир stress="ж^ир"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [жиры stress="жир^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [жира stress="ж^ира"] }
  ПАДЕЖ:ПАРТ ЧИСЛО:ЕД { [жиру stress="ж^иру"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [жиров stress="жир^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [жиром stress="ж^иром"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [жирами stress="жир^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [жир stress="ж^ир"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [жиры stress="жир^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [жиру stress="ж^иру"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [жирам stress="жир^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [жире stress="ж^ире"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [жиру stress="жир^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [жирах stress="жир^ах"] }
 }


 entry мост : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [мост stress="м^ост"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [мосты stress="мост^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [моста stress="мост^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [мостов stress="мост^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [мостом stress="мост^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [мостами stress="мост^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [мост stress="м^ост"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [мосты stress="мост^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [мосту stress="мост^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [мостам stress="мост^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [мосте stress="мост^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [мосту stress="мост^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [мостах stress="мост^ах"] }
 }


 entry паз : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [паз stress="п^аз"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [пазы stress="паз^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [паза stress="п^аза"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [пазов stress="паз^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [пазом stress="п^азом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [пазами stress="паз^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [паз stress="п^аз"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [пазы stress="паз^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [пазу stress="п^азу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [пазам stress="паз^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [пазе stress="п^азе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [пазу stress="паз^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [пазах stress="паз^ах"] }
 }


 entry пост : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [пост stress="п^ост"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [посты stress="пост^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [поста stress="пост^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [постов stress="пост^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [постом stress="пост^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [постами stress="пост^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [пост stress="п^ост"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [посты stress="пост^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [посту stress="пост^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [постам stress="пост^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [посте stress="пост^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [посту stress="пост^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [постах stress="пост^ах"] }
 }


 entry таз : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [таз stress="т^аз"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [тазы stress="таз^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [таза stress="т^аза"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [тазов stress="таз^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [тазом stress="т^азом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [тазами stress="таз^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [таз stress="т^аз"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [тазы stress="таз^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [тазу stress="т^азу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [тазам stress="таз^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [тазе stress="т^азе"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [тазу stress="таз^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [тазах stress="таз^ах"] }
 }


 entry лад : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [лад stress="л^ад"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [лады stress="лад^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [лада stress="л^ада"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [ладов stress="лад^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [ладом stress="л^адом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [ладами stress="лад^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [лад stress="л^ад"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [лады stress="лад^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [ладу stress="л^аду"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [ладам stress="лад^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [ладе stress="л^аде"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [ладу stress="лад^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [ладах stress="лад^ах"] }
 }


 entry горб : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [горб stress="г^орб"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [горбы stress="горб^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [горба stress="горб^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [горбов stress="горб^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [горбом stress="горб^ом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [горбами stress="горб^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [горб stress="г^орб"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [горбы stress="горб^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [горбу stress="горб^у"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [горбам stress="горб^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [горбе stress="горб^е"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [горбу stress="горб^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [горбах stress="горб^ах"] }
 }


 entry плац : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [плац stress="пл^ац"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [плацы stress="пл^ацы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [плаца stress="пл^аца"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [плацев stress="пл^ацев"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [плацем stress="пл^ацем"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [плацами stress="пл^ацами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [плац stress="пл^ац"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [плацы stress="пл^ацы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [плацу stress="пл^ацу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [плацам stress="пл^ацам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [плаце stress="пл^аце"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [плацу stress="плац^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [плацах stress="пл^ацах"] }
 }


 entry хлев : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [хлев stress="хл^ев"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [хлева stress="хлев^а"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [хлева stress="хл^ева"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [хлевов stress="хлев^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [хлевом stress="хл^евом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [хлевами stress="хлев^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [хлев stress="хл^ев"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [хлева stress="хлев^а"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [хлеву stress="хл^еву"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [хлевам stress="хлев^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [хлеве stress="хл^еве"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [хлеву stress="хлев^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [хлевах stress="хлев^ах"] }
 }


 entry тыл : СУЩЕСТВИТЕЛЬНОЕ
 {
  РОД:МУЖ
  ОДУШ:НЕОДУШ
  ПЕРЕЧИСЛИМОСТЬ:ДА
  ПАДЕЖ:(ИМ) ЧИСЛО:ЕД { [тыл stress="т^ыл"] }
  ПАДЕЖ:(ИМ) ЧИСЛО:МН { [тылы stress="тыл^ы"] }
  ПАДЕЖ:(РОД) ЧИСЛО:ЕД { [тыла stress="т^ыла"] }
  ПАДЕЖ:(РОД) ЧИСЛО:МН { [тылов stress="тыл^ов"] }
  ПАДЕЖ:ТВОР ЧИСЛО:ЕД { [тылом stress="т^ылом"] }
  ПАДЕЖ:ТВОР ЧИСЛО:МН { [тылами stress="тыл^ами"] }
  ПАДЕЖ:ВИН ЧИСЛО:ЕД { [тыл stress="т^ыл"] }
  ПАДЕЖ:ВИН ЧИСЛО:МН { [тылы stress="тыл^ы"] }
  ПАДЕЖ:ДАТ ЧИСЛО:ЕД { [тылу stress="т^ылу"] }
  ПАДЕЖ:ДАТ ЧИСЛО:МН { [тылам stress="тыл^ам"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:ЕД { [тыле stress="т^ыле"] }
  ПАДЕЖ:МЕСТ ЧИСЛО:ЕД { [тылу stress="тыл^у"] }
  ПАДЕЖ:(ПРЕДЛ) ЧИСЛО:МН { [тылах stress="тыл^ах"] }
 }


}
