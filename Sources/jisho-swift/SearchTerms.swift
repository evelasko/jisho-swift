//
//  File.swift
//  
//
//  Created by Enrique Perez Velasco on 15/07/2020.
//

import Foundation

public enum JishoSearchTerm: String {
    
    case joyo = "#joyo"
    case jinmei = "#jinmei"
    case pinyinla4 = "#pinyin:la4"
    case koreanGim = "#korean:gim"

    ///Verb of any type
    case VerbAny = "#verb"
    ///Adjective of any type
    case AdjectiveAny = "#adjective"
    ///Counter words
    case Counter = "#counter"
    ///Abbreviation
    case Abbreviation = "#abbr"
    ///Noun or verb acting prenominally
    case AdjectiveF = "#adj-f"
    ///I-adjective
    case AdjectiveI = "#adj-i"
    ///I-adjective (yoi/ii class)
    case AdjectiveIx = "#adj-ix"
    ///Kari adjective (archaic)
    case AdjectiveKari = "#adj-kari"
    ///Ku-adjective (archaic)
    case AdjectiveKu = "#adj-ku"
    ///Na-adjective
    case AdjectiveNa = "#adj-na"
    ///Archaic/formal form of na-adjective
    case AdjectiveNari = "#adj-nari"
    ///No-adjective
    case AdjectiveNo = "#adj-no"
    ///Pre-noun adjectival
    case AdjectivePn = "#adj-pn"
    ///Shiku adjective (archaic)
    case AdjectiveShiku = "#adj-shiku"
    ///Taru-adjective
    case AdjectiveTaru = "#adj-t"
    ///Adverb
    case Adverb = "#adv"
    ///Adverb taking the 'to' particle
    case AdverbTo = "#adv-to"
    ///Anatomical term
    case Anatomical = "#anat"
    ///Antonym
    case Antonym = "#ant"
    ///Archaism
    case Archaism = "#arch"
    ///Architecture term
    case Architecture = "#archit"
    ///Astronomy, etc. term
    case Astronomy = "#astron"
    ///Ateji (phonetic) reading
    case Ateji = "#ateji"
    ///Auxiliary
    case Auxiliary = "#aux"
    ///Auxiliary adjective
    case AdjectiveAuxiliary = "#aux-adj"
    ///Auxiliary verb
    case VerbAuxiliary = "#aux-v"
    ///Baseball term
    case Baseball = "#baseb"
    ///Biology term
    case Biology = "#biol"
    ///Botany term
    case Botany = "#bot"
    ///Business term
    case Business = "#bus"
    ///Chemistry term
    case Chemistry = "#chem"
    ///Children's language
    case Childrens = "#chn"
    ///Colloquialism
    case Colloquialism = "#col"
    ///Computer terminology
    case Computer = "#comp"
    ///Conjunction
    case Conjunction = "#conj"
    ///Copula
    case Copula = "#cop-da"
    ///Derogatory
    case Derogatory = "#derog"
    ///Exclusively kanji
    case KanjiOnly = "#eK"
    ///Economics term
    case Economics = "#econ"
    ///Exclusively kana
    case KanaOnly = "#ek"
    ///Engineering term
    case Engineering = "#engr"
    ///Equivalent
    case Equivalent = "#equ"
    ///Usage example
    case UsageExample = "#ex"
    ///Expression
    case Expression = "#exp"
    ///Explanatory
    case Explanatory = "#expl"
    ///Familiar language
    case Familiar = "#fam"
    ///Female term or language
    case FemaleTerm = "#fem"
    ///Figuratively
    case Figuratively = "#fig"
    ///Finance term
    case Finance = "#finc"
    ///Food term
    case Food = "#food"
    ///Geology, etc. term
    case Geology = "#geol"
    ///Geometry term
    case geom = "#geom"
    ///Gikun (meaning as reading) or jukujikun (special kanji reading)
    case Gikun = "#gikun"
    ///On reading
    case Go = "#go"
    ///Hokkaido dialect
    case Hokkaido = "#hob"
    ///Honorific or respectful (sonkeigo)
    case Honorific = "#hon"
    ///Humble (kenjougo)
    case Humble = "#hum"
    ///Irregular kanji usage
    case KanjiIrregular = "#iK"
    ///Idiomatic expression
    case IdiomaticExpression = "#id"
    ///Irregular kana usage
    case KanaIrregular = "#ik"
    ///Interjection
    case Interjection = "#int"
    ///Irregular okurigana usage
    case OkuriganaIrregular = "#io"
    ///Irregular verb
    case VerbIrregular = "#iv"
    ///Jocular, humorous term
    case JocularHumorous = "#joc"
    ///Approved reading for jouyou kanji
    case Jouyou = "#jouyou"
    ///On reading
    case Kan = "#kan"
    ///On reading
    case Kanyou = "#kanyou"
    ///Kansai dialect
    case Kansai = "#ksb"
    ///Kantou dialect
    case Kantou = "#ktb"
    ///Kun reading
    case Kun = "#kun"
    ///Kanji variant
    case KanjiVariant = "#kvar"
    ///Kyoto dialect
    case Kyoto = "#kyb"
    ///Kyuushuu dialect
    case Kyuushuu = "#kyu"
    ///Law, etc. term
    case Law = "#law"
    ///linguistics terminology
    case Linguistics = "#ling"
    ///Literaly
    case Literaly = "#lit"
    ///Manga slang
    case MangaSlang = "#m-sl"
    ///Mahjong term
    case Mahjong = "#mahj"
    ///Male term or language
    case MaleTerm = "#male"
    ///Male slang
    case MaleSlang = "#male-sl"
    ///Mathematics
    case Math = "#math"
    ///Medicine, etc. term
    case Medicine = "#med"
    ///Military
    case Military = "#mil"
    ///Music term
    case Music = "#music"
    ///Noun
    case Noun = "#n"
    ///Adverbial noun
    case NounAdverbial = "#n-adv"
    ///Proper noun
    case NounProper = "#n-pr"
    ///Noun - used as a prefix
    case NounAsPrefix = "#n-pref"
    ///Noun - used as a suffix
    case NounAsSuffix = "#n-suf"
    ///Temporal noun
    case NounTemporal = "#n-t"
    ///Nagano dialect
    case Nagano = "#nab"
    ///Name reading (nanori)
    case Name = "#name"
    ///Numeric
    case Numeric = "#num"
    ///Out-dated kanji
    case OutdatedKanji = "#oK"
    ///Obsolete term
    case ObsoleteTerm = "#obs"
    ///Obscure term
    case ObscureTerm = "#obsc"
    ///Old or irregular kana form
    case Old = "#oik"
    ///Out-dated or obsolete kana usage
    case OutdatedKana = "#ok"
    ///On reading
    case OnReading = "#on"
    ///Onomatopoeic or mimetic word
    case OnomatopoeicOrMimetic = "#on-mim"
    ///Osaka dialect
    case OsakaDialect = "#osb"
    ///Physics terminology
    case PrhysycsTerms = "#physics"
    ///Pronoun
    case Pronoun = "#pn"
    ///Poetical term
    case PeoticalTerm = "#poet"
    ///Polite (teineigo)
    case PoliteTeineigo = "#pol"
    ///Prefix
    case Prefix = "#pref"
    ///Proverb
    case Proverb = "#proverb"
    ///Particle
    case Particle = "#prt"
    ///Reading used as name of radical
    case ReadingRadical = "#rad"
    ///Rare
    case Rare = "#rare"
    ///Ryuukyuu dialect
    case RyuukyuuDialect = "#rkb"
    ///See also
    case SeeAlso = "#see"
    ///Sensitive
    case Sensitive = "#sens"
    ///Shogi term
    case Shogi = "#shogi"
    ///Slang
    case Slang = "#sl"
    ///Sports term
    case Sports = "#sports"
    ///Suffix
    case Suffix = "#suf"
    ///Sumo term
    case Sumo = "#sumo"
    ///Synonym
    case Synonym = "#syn"
    ///Touhoku dialect
    case Touhoku = "#thb"
    ///Tosa dialect
    case Tosa = "#tsb"
    ///Tsugaru dialect
    case Tsugaru = "#tsug"
    ///Usually written using kanji alone
    case KanjiAlone = "#uK"
    ///Usually written using kana alone
    case KanaAlone = "#uk"
    ///Unclassified
    case Unclassified = "#unc"
    ///Verb unspecified
    case VerbUnspecified = "#v-unspec"
    ///Ichidan verb
    case VerbIchidan = "#v1"
    ///Ichidan verb (kureru special class)
    case VerbIchidanKureru = "#v1-s"
    ///Nidan verb with u ending (archaic)
    case VerbNidanUEnding = "#v2a-s"
    ///Nidan verb (upper class) with bu ending (archaic)
    case VerbNidanUpperClassBuEnding = "#v2b-k"
    ///Nidan verb (lower class) with bu ending (archaic)
    case VerbNidanLowerClassBuending = "#v2b-s"
    ///Nidan verb (upper class) with dzu ending (archaic)
    case VerbNidanUpperClassDzuEnding = "#v2d-k"
    ///Nidan verb (lower class) with dzu ending (archaic)
    case NidanVernLowerClassDzuEnding = "#v2d-s"
    ///Nidan verb (upper class) with gu ending (archaic)
    case VerbNidanUpperClassGuEnding = "#v2g-k"
    ///Nidan verb (lower class) with gu ending (archaic)
    case VerbNidanLowerClassGuEnding = "#v2g-s"
    ///Nidan verb (upper class) with hu/fu ending (archaic)
    case VerbNidanUpperClassHuFuEnding = "#v2h-k"
    ///Nidan verb (lower class) with hu/fu ending (archaic)
    case VerbNidanLowerClassHuFuEnding = "#v2h-s"
    ///Nidan verb (upper class) with ku ending (archaic)
    case VerbNidanUpperClassKuEnding = "#v2k-k"
    ///Nidan verb (lower class) with ku ending (archaic)
    case VerbNidanLowerClassKuEnding = "#v2k-s"
    ///Nidan verb (upper class) with mu ending (archaic)
    case VerbNidanUpperClassMuEnding = "#v2m-k"
    ///Nidan verb (lower class) with mu ending (archaic)
    case VerbNidanLowerClassMuEnding = "#v2m-s"
    ///Nidan verb (lower class) with nu ending (archaic)
    case VerbNidanLowerClassNuEnding = "#v2n-s"
    ///Nidan verb (upper class) with ru ending (archaic)
    case VerbNidanUpperClassNuEnding = "#v2r-k"
    ///Nidan verb (lower class) with ru ending (archaic)
    case VerbNidanLowerClassRuEnding = "#v2r-s"
    ///Nidan verb (lower class) with su ending (archaic)
    case VerbNidanLowerClassSuEnding = "#v2s-s"
    ///Nidan verb (upper class) with tsu ending (archaic)
    case VerbNidanUpperClassTsuEnding = "#v2t-k"
    ///Nidan verb (lower class) with tsu ending (archaic)
    case VerbNidanLowerClassTsuEnding = "#v2t-s"
    ///Nidan verb (lower class) with u ending and we conjugation (archaic)
    case VerbNidanLowerClassUEnding = "#v2w-s"
    ///Nidan verb (upper class) with yu ending (archaic)
    case VerbNidanUpperClassYuEnding = "#v2y-k"
    ///Nidan verb (lower class) with yu ending (archaic)
    case VerbNidanLowerClassYuEnding = "#v2y-s"
    ///Nidan verb (lower class) with zu ending (archaic)
    case VerbNidanLowerClassZuEnding = "#v2z-s"
    ///Yodan verb with bu ending (archaic)
    case VerbYodanBuEnding = "#v4b"
    ///Yodan verb with gu ending (archaic)
    case VerbYodanGuEnding = "#v4g"
    ///Yodan verb with hu/fu ending (archaic)
    case VerbYodanHuFuEnding = "#v4h"
    ///Yodan verb with ku ending (archaic)
    case VerbYodanKuEnding = "#v4k"
    ///Yodan verb with mu ending (archaic)
    case VerbYodanMuEnding = "#v4m"
    ///Yodan verb with nu ending (archaic)
    case VerbYodanNuEnding = "#v4n"
    ///Yodan verb with ru ending (archaic)
    case VerbYodanRuEnding = "#v4r"
    ///Yodan verb with su ending (archaic)
    case VerbYodanSuEnding = "#v4s"
    ///Yodan verb with tsu ending (archaic)
    case VerbYodanTsuEnding = "#v4t"
    ///Godan verb - aru special class
    case VerbGodanAruSpecialClass = "#v5aru"
    ///Godan verb with bu ending
    case VerbGodanBuEnding = "#v5b"
    ///Godan verb with gu ending
    case VerbGodanGuEnding = "#v5g"
    ///Godan verb with ku ending
    case VerbGodanKeEnding = "#v5k"
    ///Godan verb - Iku/Yuku special class
    case VerbGodanIkuYukuSpecialClass = "#v5k-s"
    ///Godan verb with mu ending
    case VerbGodanMuEnding = "#v5m"
    ///Godan verb with nu ending
    case VerbGodanNuEnding = "#v5n"
    ///Godan verb with ru ending
    case VerbGodanRuEnding = "#v5r"
    ///Godan verb with ru ending (irregular verb)
    case VerbGodanRuEndingIrregular = "#v5r-i"
    ///Godan verb with su ending
    case VerbGodanSuEnding = "#v5s"
    ///Godan verb with tsu ending
    case VerbGodanTsuEnding = "#v5t"
    ///Godan verb with u ending
    case VerbGodanUEnding = "#v5u"
    ///Godan verb with u ending (special class)
    case VerbGodanUEndingSpecialClass = "#v5u-s"
    ///Godan verb - Uru old class verb (old form of Eru)
    case VerbGodanUruoldClass = "#v5uru"
    ///Godan verb with zu ending
    case VerbGodanZuEnding = "#v5z"
    ///intransitive verb
    case VerbIntransitive = "#vi"
    ///Kuru verb - special class
    case VerbKuruSpecialClass = "#vk"
    ///Irregular nu verb
    case VerbNuIrregular = "#vn"
    ///Irregular ru verb, plain form ends with -ri
    case VerbRuIrregular = "#vr"
    ///Suru verb
    case VerbSuru = "#vs"
    ///Su verb - precursor to the modern suru
    case VerbSu = "#vs-c"
    ///Suru verb - irregular
    case VerbSuruIrregular = "#vs-i"
    ///Suru verb - special class
    case VerbSuruSpecialClass = "#vs-s"
    ///Transitive verb
    case VerbTransitive = "#vt"
    ///Vulgar
    case Vulgar = "#vulg"
    ///Ichidan verb - zuru verb (alternative form of -jiru verbs)
    case IchidanVerbZuru = "#vz"
    ///Yojijukugo (four character compound)
    case Yojijukugo = "#yoji"
    ///Zoology term
    case ZoologyTerm = "#zool"
    ///Buddhist term
    case Buddh = "#Buddh"
    ///Martial arts term
    case MartialArts = "#MA"
    ///Shinto term
    case Shinto = "#Shinto"
    ///Rude or X-rated term
    case RudeOrXRated = "#X"
    ///Wasei, word made in Japan
    case Wasei = "#wasei"
    ///Internet slang
    case IternetSlang = "#net-sl"
    ///Dated term
    case Dated = "#dated"
    ///Historical term
    case Historical = "#hist"
    ///Literary or formal term
    case LiteraryFormal = "#litf"
    ///Family or surname
    case Surname = "#surname"
    ///Place name
    case Place = "#place"
    ///Unclassified name
    case UnclassifiedName = "#unclass"
    ///Company name
    case Company = "#company"
    ///Product name
    case Product = "#product"
    ///Work of art, literature, music, etc. name
    case Work = "#work"
    ///Full name of a particular person
    case Person = "#person"
    ///Given name or forename, gender not specified
    case GivenName = "#given"
    ///Railway station
    case Station = "#station"
    ///Organization name
    case Organization = "#organization"
}
