//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

extension Predictions {
    // swiftlint:disable file_length type_body_length
    public struct Language: Equatable, Decodable {
        public let code: String

        public init(code: String) {
            self.code = code
        }
        /// Afar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let afar = Self(code: "aa")
        /// Abkhazian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let abkhazian = Self(code: "ab")
        /// Achinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let achinese = Self(code: "ace")
        /// Acoli language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let acoli = Self(code: "ach")
        /// Adangme language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let adangme = Self(code: "ada")
        /// Adyghe language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let adyghe = Self(code: "ady")
        /// Avestan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let avestan = Self(code: "ae")
        /// TunisianArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tunisianArabic = Self(code: "aeb")
        /// Afrikaans language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let afrikaans = Self(code: "af")
        /// Afrihili language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let afrihili = Self(code: "afh")
        /// Aghem language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aghem = Self(code: "agq")
        /// Ainu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ainu = Self(code: "ain")
        /// Akan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let akan = Self(code: "ak")
        /// Akkadian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let akkadian = Self(code: "akk")
        /// Alabama language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let alabama = Self(code: "akz")
        /// Aleut language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aleut = Self(code: "ale")
        /// GhegAlbanian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ghegAlbanian = Self(code: "aln")
        /// SouthernAltai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let southernAltai = Self(code: "alt")
        /// Amharic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let amharic = Self(code: "am")
        /// Aragonese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aragonese = Self(code: "an")
        /// OldEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldEnglish = Self(code: "ang")
        /// Angika language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let angika = Self(code: "anp")
        /// Arabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let arabic = Self(code: "ar")
        /// Aramaic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aramaic = Self(code: "arc")
        /// Mapuche language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mapuche = Self(code: "arn")
        /// Araona language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let araona = Self(code: "aro")
        /// Arapaho language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let arapaho = Self(code: "arp")
        /// AlgerianArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let algerianArabic = Self(code: "arq")
        /// NajdiArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let najdiArabic = Self(code: "ars")
        /// Arawak language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let arawak = Self(code: "arw")
        /// MoroccanArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let moroccanArabic = Self(code: "ary")
        /// EgyptianArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let egyptianArabic = Self(code: "arz")
        /// Assamese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let assamese = Self(code: "as")
        /// Asu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let asu = Self(code: "asa")
        /// AmericanSignLanguage language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let americanSignLanguage = Self(code: "ase")
        /// Asturian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let asturian = Self(code: "ast")
        /// Avaric language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let avaric = Self(code: "av")
        /// Kotava language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kotava = Self(code: "avk")
        /// Awadhi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let awadhi = Self(code: "awa")
        /// Aymara language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aymara = Self(code: "ay")
        /// Azerbaijani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let azerbaijani = Self(code: "az")
        /// Bashkir language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bashkir = Self(code: "ba")
        /// Baluchi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let baluchi = Self(code: "bal")
        /// Balinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let balinese = Self(code: "ban")
        /// Bavarian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bavarian = Self(code: "bar")
        /// Basaa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let basaa = Self(code: "bas")
        /// Bamun language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bamun = Self(code: "bax")
        /// BatakToba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let batakToba = Self(code: "bbc")
        /// Ghomala language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ghomala = Self(code: "bbj")
        /// Belarusian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let belarusian = Self(code: "be")
        /// Beja language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let beja = Self(code: "bej")
        /// Bemba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bemba = Self(code: "bem")
        /// Betawi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let betawi = Self(code: "bew")
        /// Bena language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bena = Self(code: "bez")
        /// Bafut language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bafut = Self(code: "bfd")
        /// Badaga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let badaga = Self(code: "bfq")
        /// Bulgarian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bulgarian = Self(code: "bg")
        /// WesternBalochi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let westernBalochi = Self(code: "bgn")
        /// Bhojpuri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bhojpuri = Self(code: "bho")
        /// Bislama language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bislama = Self(code: "bi")
        /// Bikol language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bikol = Self(code: "bik")
        /// Bini language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bini = Self(code: "bin")
        /// Banjar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let banjar = Self(code: "bjn")
        /// Kom language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kom = Self(code: "bkm")
        /// Siksika language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let siksika = Self(code: "bla")
        /// Bambara language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bambara = Self(code: "bm")
        /// Bangla language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bangla = Self(code: "bn")
        /// Tibetan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tibetan = Self(code: "bo")
        /// Bishnupriya language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bishnupriya = Self(code: "bpy")
        /// Bakhtiari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bakhtiari = Self(code: "bqi")
        /// Breton language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let breton = Self(code: "br")
        /// Braj language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let braj = Self(code: "bra")
        /// Brahui language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let brahui = Self(code: "brh")
        /// Bodo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bodo = Self(code: "brx")
        /// Bosnian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bosnian = Self(code: "bs")
        /// Akoose language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let akoose = Self(code: "bss")
        /// Buriat language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let buriat = Self(code: "bua")
        /// Buginese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let buginese = Self(code: "bug")
        /// Bulu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bulu = Self(code: "bum")
        /// Blin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let blin = Self(code: "byn")
        /// Medumba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let medumba = Self(code: "byv")
        /// Catalan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let catalan = Self(code: "ca")
        /// Caddo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let caddo = Self(code: "cad")
        /// Carib language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let carib = Self(code: "car")
        /// Cayuga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cayuga = Self(code: "cay")
        /// Atsam language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let atsam = Self(code: "cch")
        /// Chakma language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chakma = Self(code: "ccp")
        /// Chechen language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chechen = Self(code: "ce")
        /// Cebuano language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cebuano = Self(code: "ceb")
        /// Chiga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chiga = Self(code: "cgg")
        /// Chamorro language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chamorro = Self(code: "ch")
        /// Chibcha language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chibcha = Self(code: "chb")
        /// Chagatai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chagatai = Self(code: "chg")
        /// Chuukese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chuukese = Self(code: "chk")
        /// Mari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mari = Self(code: "chm")
        /// ChinookJargon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chinookJargon = Self(code: "chn")
        /// Choctaw language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let choctaw = Self(code: "cho")
        /// Chipewyan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chipewyan = Self(code: "chp")
        /// Cherokee language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cherokee = Self(code: "chr")
        /// Cheyenne language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cheyenne = Self(code: "chy")
        /// CentralKurdish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let centralKurdish = Self(code: "ckb")
        /// Corsican language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let corsican = Self(code: "co")
        /// Coptic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let coptic = Self(code: "cop")
        /// Capiznon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let capiznon = Self(code: "cps")
        /// Cree language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cree = Self(code: "cr")
        /// CrimeanTurkish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let crimeanTurkish = Self(code: "crh")
        /// Czech language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let czech = Self(code: "cs")
        /// Kashubian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kashubian = Self(code: "csb")
        /// ChurchSlavic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let churchSlavic = Self(code: "cu")
        /// Chuvash language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chuvash = Self(code: "cv")
        /// Welsh language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let welsh = Self(code: "cy")
        /// Danish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let danish = Self(code: "da")
        /// Dakota language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dakota = Self(code: "dak")
        /// Dargwa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dargwa = Self(code: "dar")
        /// Taita language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let taita = Self(code: "dav")
        /// German language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let german = Self(code: "de")
        /// Delaware language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let delaware = Self(code: "del")
        /// Slave language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let slave = Self(code: "den") // swiftlint:disable:this inclusive_language
        /// Dogrib language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dogrib = Self(code: "dgr")
        /// Dinka language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dinka = Self(code: "din")
        /// Zarma language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zarma = Self(code: "dje")
        /// Dogri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dogri = Self(code: "doi")
        /// LowerSorbian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lowerSorbian = Self(code: "dsb")
        /// CentralDusun language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let centralDusun = Self(code: "dtp")
        /// Duala language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let duala = Self(code: "dua")
        /// MiddleDutch language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let middleDutch = Self(code: "dum")
        /// Dhivehi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dhivehi = Self(code: "dv")
        /// JolaFonyi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let jolaFonyi = Self(code: "dyo")
        /// Dyula language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dyula = Self(code: "dyu")
        /// Dzongkha language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dzongkha = Self(code: "dz")
        /// Dazaga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dazaga = Self(code: "dzg")
        /// Embu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let embu = Self(code: "ebu")
        /// Ewe language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ewe = Self(code: "ee")
        /// Efik language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let efik = Self(code: "efi")
        /// Emilian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let emilian = Self(code: "egl")
        /// AncientEgyptian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ancientEgyptian = Self(code: "egy")
        /// Ekajuk language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ekajuk = Self(code: "eka")
        /// Greek language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let greek = Self(code: "el")
        /// Elamite language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let elamite = Self(code: "elx")
        /// English language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let english = Self(code: "en")
        /// AustralianEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let australianEnglish = Self(code: "en-AU")
        /// BritishEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let britishEnglish = Self(code: "en-GB")
        /// UsEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let usEnglish = Self(code: "en-US")
        /// MiddleEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let middleEnglish = Self(code: "enm")
        /// Esperanto language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let esperanto = Self(code: "eo")
        /// Spanish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let spanish = Self(code: "es")
        /// UsSpanish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let usSpanish = Self(code: "es-US")
        /// CentralYupik language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let centralYupik = Self(code: "esu")
        /// Estonian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let estonian = Self(code: "et")
        /// Basque language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let basque = Self(code: "eu")
        /// Ewondo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ewondo = Self(code: "ewo")
        /// Extremaduran language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let extremaduran = Self(code: "ext")
        /// Persian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let persian = Self(code: "fa")
        /// Fang language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fang = Self(code: "fan")
        /// Fanti language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fanti = Self(code: "fat")
        /// Fulah language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fulah = Self(code: "ff")
        /// Finnish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let finnish = Self(code: "fi")
        /// Filipino language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let filipino = Self(code: "fil")
        /// TornedalenFinnish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tornedalenFinnish = Self(code: "fit")
        /// Fijian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fijian = Self(code: "fj")
        /// Faroese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let faroese = Self(code: "fo")
        /// Fon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fon = Self(code: "fon")
        /// French language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let french = Self(code: "fr")
        /// CanadianFrench language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let canadianFrench = Self(code: "fr-CA")
        /// CajunFrench language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cajunFrench = Self(code: "frc")
        /// MiddleFrench language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let middleFrench = Self(code: "frm")
        /// OldFrench language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldFrench = Self(code: "fro")
        /// Arpitan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let arpitan = Self(code: "frp")
        /// NorthernFrisian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let northernFrisian = Self(code: "frr")
        /// EasternFrisian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let easternFrisian = Self(code: "frs")
        /// Friulian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let friulian = Self(code: "fur")
        /// WesternFrisian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let westernFrisian = Self(code: "fy")
        /// Irish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let irish = Self(code: "ga")
        /// Ga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ga = Self(code: "gaa") // swiftlint:disable:this identifier_name
        /// Gagauz language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gagauz = Self(code: "gag")
        /// GanChinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ganChinese = Self(code: "gan")
        /// Gayo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gayo = Self(code: "gay")
        /// Gbaya language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gbaya = Self(code: "gba")
        /// ZoroastrianDari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zoroastrianDari = Self(code: "gbz")
        /// ScottishGaelic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let scottishGaelic = Self(code: "gd")
        /// Geez language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let geez = Self(code: "gez")
        /// Gilbertese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gilbertese = Self(code: "gil")
        /// Galician language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let galician = Self(code: "gl")
        /// Gilaki language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gilaki = Self(code: "glk")
        /// MiddleHighGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let middleHighGerman = Self(code: "gmh")
        /// Guarani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let guarani = Self(code: "gn")
        /// OldHighGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldHighGerman = Self(code: "goh")
        /// GoanKonkani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let goanKonkani = Self(code: "gom")
        /// Gondi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gondi = Self(code: "gon")
        /// Gorontalo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gorontalo = Self(code: "gor")
        /// Gothic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gothic = Self(code: "got")
        /// Grebo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let grebo = Self(code: "grb")
        /// AncientGreek language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ancientGreek = Self(code: "grc")
        /// SwissGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let swissGerman = Self(code: "gsw")
        /// Gujarati language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gujarati = Self(code: "gu")
        /// Wayuu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let wayuu = Self(code: "guc")
        /// Frafra language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let frafra = Self(code: "gur")
        /// Gusii language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gusii = Self(code: "guz")
        /// Manx language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let manx = Self(code: "gv")
        /// Gwichʼin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let gwichʼin = Self(code: "gwi")
        /// Hausa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hausa = Self(code: "ha")
        /// Haida language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let haida = Self(code: "hai")
        /// HakkaChinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hakkaChinese = Self(code: "hak")
        /// Hawaiian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hawaiian = Self(code: "haw")
        /// Hebrew language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hebrew = Self(code: "he")
        /// Hindi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hindi = Self(code: "hi")
        /// FijiHindi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let fijiHindi = Self(code: "hif")
        /// Hiligaynon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hiligaynon = Self(code: "hil")
        /// Hittite language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hittite = Self(code: "hit")
        /// Hmong language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hmong = Self(code: "hmn")
        /// HiriMotu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hiriMotu = Self(code: "ho")
        /// Croatian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let croatian = Self(code: "hr")
        /// UpperSorbian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let upperSorbian = Self(code: "hsb")
        /// XiangChinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let xiangChinese = Self(code: "hsn")
        /// HaitianCreole language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let haitianCreole = Self(code: "ht")
        /// Hungarian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hungarian = Self(code: "hu")
        /// Hupa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let hupa = Self(code: "hup")
        /// Armenian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let armenian = Self(code: "hy")
        /// Herero language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let herero = Self(code: "hz")
        /// Interlingua language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let interlingua = Self(code: "ia")
        /// Iban language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let iban = Self(code: "iba")
        /// Ibibio language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ibibio = Self(code: "ibb")
        /// Indonesian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let indonesian = Self(code: "id")
        /// Interlingue language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let interlingue = Self(code: "ie")
        /// Igbo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let igbo = Self(code: "ig")
        /// SichuanYi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sichuanYi = Self(code: "ii")
        /// Inupiaq language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let inupiaq = Self(code: "ik")
        /// Iloko language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let iloko = Self(code: "ilo")
        /// Ingush language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ingush = Self(code: "inh")
        /// Ido language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ido = Self(code: "io")
        /// Icelandic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let icelandic = Self(code: "is")
        /// Italian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let italian = Self(code: "it")
        /// Inuktitut language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let inuktitut = Self(code: "iu")
        /// Ingrian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ingrian = Self(code: "izh")
        /// Japanese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let japanese = Self(code: "ja")
        /// JamaicanCreoleEnglish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let jamaicanCreoleEnglish = Self(code: "jam")
        /// Lojban language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lojban = Self(code: "jbo")
        /// Ngomba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ngomba = Self(code: "jgo")
        /// Machame language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let machame = Self(code: "jmc")
        /// JudeoPersian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let judeoPersian = Self(code: "jpr")
        /// JudeoArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let judeoArabic = Self(code: "jrb")
        /// Jutish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let jutish = Self(code: "jut")
        /// Javanese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let javanese = Self(code: "jv")
        /// Georgian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let georgian = Self(code: "ka")
        /// KaraKalpak language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let karaKalpak = Self(code: "kaa")
        /// Kabyle language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kabyle = Self(code: "kab")
        /// Kachin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kachin = Self(code: "kac")
        /// Jju language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let jju = Self(code: "kaj")
        /// Kamba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kamba = Self(code: "kam")
        /// Kawi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kawi = Self(code: "kaw")
        /// Kabardian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kabardian = Self(code: "kbd")
        /// Kanembu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kanembu = Self(code: "kbl")
        /// Tyap language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tyap = Self(code: "kcg")
        /// Makonde language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let makonde = Self(code: "kde")
        /// Kabuverdianu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kabuverdianu = Self(code: "kea")
        /// Kenyang language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kenyang = Self(code: "ken")
        /// Koro language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let koro = Self(code: "kfo")
        /// Kongo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kongo = Self(code: "kg")
        /// Kaingang language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kaingang = Self(code: "kgp")
        /// Khasi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let khasi = Self(code: "kha")
        /// Khotanese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let khotanese = Self(code: "kho")
        /// KoyraChiini language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let koyraChiini = Self(code: "khq")
        /// Khowar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let khowar = Self(code: "khw")
        /// Kikuyu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kikuyu = Self(code: "ki")
        /// Kirmanjki language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kirmanjki = Self(code: "kiu")
        /// Kuanyama language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kuanyama = Self(code: "kj")
        /// Kazakh language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kazakh = Self(code: "kk")
        /// Kako language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kako = Self(code: "kkj")
        /// Kalaallisut language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kalaallisut = Self(code: "kl")
        /// Kalenjin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kalenjin = Self(code: "kln")
        /// Khmer language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let khmer = Self(code: "km")
        /// Kimbundu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kimbundu = Self(code: "kmb")
        /// Kannada language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kannada = Self(code: "kn")
        /// Korean language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let korean = Self(code: "ko")
        /// KomiPermyak language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let komiPermyak = Self(code: "koi")
        /// Konkani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let konkani = Self(code: "kok")
        /// Kosraean language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kosraean = Self(code: "kos")
        /// Kpelle language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kpelle = Self(code: "kpe")
        /// Kanuri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kanuri = Self(code: "kr")
        /// KarachayBalkar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let karachayBalkar = Self(code: "krc")
        /// Krio language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let krio = Self(code: "kri")
        /// KinarayA language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kinarayA = Self(code: "krj")
        /// Karelian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let karelian = Self(code: "krl")
        /// Kurukh language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kurukh = Self(code: "kru")
        /// Kashmiri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kashmiri = Self(code: "ks")
        /// Shambala language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let shambala = Self(code: "ksb")
        /// Bafia language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let bafia = Self(code: "ksf")
        /// Colognian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let colognian = Self(code: "ksh")
        /// Kurdish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kurdish = Self(code: "ku")
        /// Kumyk language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kumyk = Self(code: "kum")
        /// Kutenai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kutenai = Self(code: "kut")
        /// Komi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let komi = Self(code: "kv")
        /// Cornish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cornish = Self(code: "kw")
        /// Kyrgyz language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kyrgyz = Self(code: "ky")
        /// Latin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let latin = Self(code: "la")
        /// Ladino language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ladino = Self(code: "lad")
        /// Langi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let langi = Self(code: "lag")
        /// Lahnda language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lahnda = Self(code: "lah")
        /// Lamba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lamba = Self(code: "lam")
        /// Luxembourgish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let luxembourgish = Self(code: "lb")
        /// Lezghian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lezghian = Self(code: "lez")
        /// LinguaFrancaNova language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let linguaFrancaNova = Self(code: "lfn")
        /// Ganda language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ganda = Self(code: "lg")
        /// Limburgish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let limburgish = Self(code: "li")
        /// Ligurian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ligurian = Self(code: "lij")
        /// Livonian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let livonian = Self(code: "liv")
        /// Lakota language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lakota = Self(code: "lkt")
        /// Lombard language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lombard = Self(code: "lmo")
        /// Lingala language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lingala = Self(code: "ln")
        /// Lao language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lao = Self(code: "lo")
        /// Mongo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mongo = Self(code: "lol")
        /// Lozi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lozi = Self(code: "loz")
        /// NorthernLuri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let northernLuri = Self(code: "lrc")
        /// Lithuanian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lithuanian = Self(code: "lt")
        /// Latgalian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let latgalian = Self(code: "ltg")
        /// LubaKatanga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lubaKatanga = Self(code: "lu")
        /// LubaLulua language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lubaLulua = Self(code: "lua")
        /// Luiseno language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let luiseno = Self(code: "lui")
        /// Lunda language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lunda = Self(code: "lun")
        /// Luo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let luo = Self(code: "luo")
        /// Mizo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mizo = Self(code: "lus")
        /// Luyia language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let luyia = Self(code: "luy")
        /// Latvian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let latvian = Self(code: "lv")
        /// LiteraryChinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let literaryChinese = Self(code: "lzh")
        /// Laz language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let laz = Self(code: "lzz")
        /// Madurese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let madurese = Self(code: "mad")
        /// Mafa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mafa = Self(code: "maf")
        /// Magahi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let magahi = Self(code: "mag")
        /// Maithili language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let maithili = Self(code: "mai")
        /// Makasar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let makasar = Self(code: "mak")
        /// Mandingo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mandingo = Self(code: "man")
        /// Masai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let masai = Self(code: "mas")
        /// Maba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let maba = Self(code: "mde")
        /// Moksha language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let moksha = Self(code: "mdf")
        /// Mandar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mandar = Self(code: "mdr")
        /// Mende language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mende = Self(code: "men")
        /// Meru language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let meru = Self(code: "mer")
        /// Morisyen language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let morisyen = Self(code: "mfe")
        /// Malagasy language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let malagasy = Self(code: "mg")
        /// MiddleIrish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let middleIrish = Self(code: "mga")
        /// MakhuwaMeetto language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let makhuwaMeetto = Self(code: "mgh")
        /// Meta language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let meta = Self(code: "mgo")
        /// Marshallese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let marshallese = Self(code: "mh")
        /// Maori language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let maori = Self(code: "mi")
        /// Mikmaq language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mikmaq = Self(code: "mic")
        /// Minangkabau language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let minangkabau = Self(code: "min")
        /// Macedonian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let macedonian = Self(code: "mk")
        /// Malayalam language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let malayalam = Self(code: "ml")
        /// Mongolian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mongolian = Self(code: "mn")
        /// Manchu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let manchu = Self(code: "mnc")
        /// Manipuri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let manipuri = Self(code: "mni")
        /// Mohawk language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mohawk = Self(code: "moh")
        /// Mossi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mossi = Self(code: "mos")
        /// Marathi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let marathi = Self(code: "mr")
        /// WesternMari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let westernMari = Self(code: "mrj")
        /// Malay language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let malay = Self(code: "ms")
        /// Maltese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let maltese = Self(code: "mt")
        /// Mundang language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mundang = Self(code: "mua")
        /// Creek language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let creek = Self(code: "mus")
        /// Mirandese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mirandese = Self(code: "mwl")
        /// Marwari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let marwari = Self(code: "mwr")
        /// Mentawai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mentawai = Self(code: "mwv")
        /// Burmese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let burmese = Self(code: "my")
        /// Myene language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let myene = Self(code: "mye")
        /// Erzya language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let erzya = Self(code: "myv")
        /// Mazanderani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mazanderani = Self(code: "mzn")
        /// Nauru language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nauru = Self(code: "na")
        /// MinnanChinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let minnanChinese = Self(code: "nan")
        /// Neapolitan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let neapolitan = Self(code: "nap")
        /// Nama language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nama = Self(code: "naq")
        /// NorwegianBokmål language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let norwegianBokmål = Self(code: "nb")
        /// NorthNdebele language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let northNdebele = Self(code: "nd")
        /// LowGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lowGerman = Self(code: "nds")
        /// Nepali language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nepali = Self(code: "ne")
        /// Newari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let newari = Self(code: "new")
        /// Ndonga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ndonga = Self(code: "ng")
        /// Nias language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nias = Self(code: "nia")
        /// Niuean language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let niuean = Self(code: "niu")
        /// AoNaga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aoNaga = Self(code: "njo")
        /// Dutch language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let dutch = Self(code: "nl")
        /// Kwasio language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kwasio = Self(code: "nmg")
        /// NorwegianNynorsk language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let norwegianNynorsk = Self(code: "nn")
        /// Ngiemboon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ngiemboon = Self(code: "nnh")
        /// Norwegian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let norwegian = Self(code: "no")
        /// Nogai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nogai = Self(code: "nog")
        /// OldNorse language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldNorse = Self(code: "non")
        /// Novial language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let novial = Self(code: "nov")
        /// Nko language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nko = Self(code: "nqo")
        /// SouthNdebele language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let southNdebele = Self(code: "nr")
        /// NorthernSotho language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let northernSotho = Self(code: "nso")
        /// Nuer language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nuer = Self(code: "nus")
        /// Navajo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let navajo = Self(code: "nv")
        /// ClassicalNewari language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let classicalNewari = Self(code: "nwc")
        /// Nyanja language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nyanja = Self(code: "ny")
        /// Nyamwezi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nyamwezi = Self(code: "nym")
        /// Nyankole language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nyankole = Self(code: "nyn")
        /// Nyoro language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nyoro = Self(code: "nyo")
        /// Nzima language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nzima = Self(code: "nzi")
        /// Occitan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let occitan = Self(code: "oc")
        /// Ojibwa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ojibwa = Self(code: "oj")
        /// Oromo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oromo = Self(code: "om")
        /// Odia language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let odia = Self(code: "or")
        /// Ossetic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ossetic = Self(code: "os")
        /// Osage language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let osage = Self(code: "osa")
        /// OttomanTurkish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ottomanTurkish = Self(code: "ota")
        /// Punjabi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let punjabi = Self(code: "pa")
        /// Pangasinan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pangasinan = Self(code: "pag")
        /// Pahlavi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pahlavi = Self(code: "pal")
        /// Pampanga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pampanga = Self(code: "pam")
        /// Papiamento language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let papiamento = Self(code: "pap")
        /// Palauan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let palauan = Self(code: "pau")
        /// Picard language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let picard = Self(code: "pcd")
        /// PennsylvaniaGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pennsylvaniaGerman = Self(code: "pdc")
        /// Plautdietsch language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let plautdietsch = Self(code: "pdt")
        /// OldPersian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldPersian = Self(code: "peo")
        /// PalatineGerman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let palatineGerman = Self(code: "pfl")
        /// Phoenician language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let phoenician = Self(code: "phn")
        /// Pali language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pali = Self(code: "pi")
        /// Polish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let polish = Self(code: "pl")
        /// Piedmontese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let piedmontese = Self(code: "pms")
        /// Pontic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pontic = Self(code: "pnt")
        /// Pohnpeian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pohnpeian = Self(code: "pon")
        /// Prussian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let prussian = Self(code: "prg")
        /// OldProvençal language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldProvençal = Self(code: "pro")
        /// Pashto language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let pashto = Self(code: "ps")
        /// Portuguese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let portuguese = Self(code: "pt")
        /// Quechua language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let quechua = Self(code: "qu")
        /// Kʼicheʼ language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kʼicheʼ = Self(code: "quc")
        /// ChimborazoHighlandQuichua language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chimborazoHighlandQuichua = Self(code: "qug")
        /// Rajasthani language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rajasthani = Self(code: "raj")
        /// Rapanui language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rapanui = Self(code: "rap")
        /// Rarotongan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rarotongan = Self(code: "rar")
        /// Romagnol language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let romagnol = Self(code: "rgn")
        /// Riffian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let riffian = Self(code: "rif")
        /// Romansh language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let romansh = Self(code: "rm")
        /// Rundi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rundi = Self(code: "rn")
        /// Romanian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let romanian = Self(code: "ro")
        /// Rombo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rombo = Self(code: "rof")
        /// Romany language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let romany = Self(code: "rom")
        /// Rotuman language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rotuman = Self(code: "rtm")
        /// Russian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let russian = Self(code: "ru")
        /// Rusyn language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rusyn = Self(code: "rue")
        /// Roviana language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let roviana = Self(code: "rug")
        /// Aromanian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let aromanian = Self(code: "rup")
        /// Kinyarwanda language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kinyarwanda = Self(code: "rw")
        /// Rwa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let rwa = Self(code: "rwk")
        /// Sanskrit language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sanskrit = Self(code: "sa")
        /// Sandawe language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sandawe = Self(code: "sad")
        /// Sakha language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sakha = Self(code: "sah")
        /// SamaritanAramaic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let samaritanAramaic = Self(code: "sam")
        /// Samburu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let samburu = Self(code: "saq")
        /// Sasak language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sasak = Self(code: "sas")
        /// Santali language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let santali = Self(code: "sat")
        /// Saurashtra language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let saurashtra = Self(code: "saz")
        /// Ngambay language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ngambay = Self(code: "sba")
        /// Sangu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sangu = Self(code: "sbp")
        /// Sardinian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sardinian = Self(code: "sc")
        /// Sicilian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sicilian = Self(code: "scn")
        /// Scots language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let scots = Self(code: "sco")
        /// Sindhi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sindhi = Self(code: "sd")
        /// SassareseSardinian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sassareseSardinian = Self(code: "sdc")
        /// SouthernKurdish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let southernKurdish = Self(code: "sdh")
        /// NorthernSami language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let northernSami = Self(code: "se")
        /// Seneca language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let seneca = Self(code: "see")
        /// Sena language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sena = Self(code: "seh")
        /// Seri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let seri = Self(code: "sei")
        /// Selkup language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let selkup = Self(code: "sel")
        /// KoyraboroSenni language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let koyraboroSenni = Self(code: "ses")
        /// Sango language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sango = Self(code: "sg")
        /// OldIrish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let oldIrish = Self(code: "sga")
        /// Samogitian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let samogitian = Self(code: "sgs")
        /// Tachelhit language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tachelhit = Self(code: "shi")
        /// Shan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let shan = Self(code: "shn")
        /// ChadianArabic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chadianArabic = Self(code: "shu")
        /// Sinhala language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sinhala = Self(code: "si")
        /// Sidamo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sidamo = Self(code: "sid")
        /// Slovak language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let slovak = Self(code: "sk")
        /// Slovenian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let slovenian = Self(code: "sl")
        /// LowerSilesian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let lowerSilesian = Self(code: "sli")
        /// Selayar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let selayar = Self(code: "sly")
        /// Samoan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let samoan = Self(code: "sm")
        /// SouthernSami language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let southernSami = Self(code: "sma")
        /// LuleSami language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let luleSami = Self(code: "smj")
        /// InariSami language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let inariSami = Self(code: "smn")
        /// SkoltSami language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let skoltSami = Self(code: "sms")
        /// Shona language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let shona = Self(code: "sn")
        /// Soninke language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let soninke = Self(code: "snk")
        /// Somali language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let somali = Self(code: "so")
        /// Sogdien language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sogdien = Self(code: "sog")
        /// Albanian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let albanian = Self(code: "sq")
        /// Serbian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let serbian = Self(code: "sr")
        /// SrananTongo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let srananTongo = Self(code: "srn")
        /// Serer language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let serer = Self(code: "srr")
        /// Swati language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let swati = Self(code: "ss")
        /// Saho language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let saho = Self(code: "ssy")
        /// SouthernSotho language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let southernSotho = Self(code: "st")
        /// SaterlandFrisian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let saterlandFrisian = Self(code: "stq")
        /// Sundanese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sundanese = Self(code: "su")
        /// Sukuma language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sukuma = Self(code: "suk")
        /// Susu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let susu = Self(code: "sus")
        /// Sumerian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let sumerian = Self(code: "sux")
        /// Swedish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let swedish = Self(code: "sv")
        /// Swahili language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let swahili = Self(code: "sw")
        /// Comorian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let comorian = Self(code: "swb")
        /// ClassicalSyriac language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let classicalSyriac = Self(code: "syc")
        /// Syriac language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let syriac = Self(code: "syr")
        /// Silesian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let silesian = Self(code: "szl")
        /// Tamil language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tamil = Self(code: "ta")
        /// Tulu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tulu = Self(code: "tcy")
        /// Telugu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let telugu = Self(code: "te")
        /// Timne language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let timne = Self(code: "tem")
        /// Teso language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let teso = Self(code: "teo")
        /// Tereno language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tereno = Self(code: "ter")
        /// Tetum language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tetum = Self(code: "tet")
        /// Tajik language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tajik = Self(code: "tg")
        /// Thai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let thai = Self(code: "th")
        /// Tigrinya language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tigrinya = Self(code: "ti")
        /// Tigre language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tigre = Self(code: "tig")
        /// Tiv language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tiv = Self(code: "tiv")
        /// Turkmen language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let turkmen = Self(code: "tk")
        /// Tokelau language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tokelau = Self(code: "tkl")
        /// Tsakhur language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tsakhur = Self(code: "tkr")
        /// Tagalog language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tagalog = Self(code: "tl")
        /// Klingon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let klingon = Self(code: "tlh")
        /// Tlingit language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tlingit = Self(code: "tli")
        /// Talysh language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let talysh = Self(code: "tly")
        /// Tamashek language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tamashek = Self(code: "tmh")
        /// Tswana language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tswana = Self(code: "tn")
        /// Tongan language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tongan = Self(code: "to")
        /// NyasaTonga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nyasaTonga = Self(code: "tog")
        /// TokPisin language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tokPisin = Self(code: "tpi")
        /// Turkish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let turkish = Self(code: "tr")
        /// Turoyo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let turoyo = Self(code: "tru")
        /// Taroko language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let taroko = Self(code: "trv")
        /// Tsonga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tsonga = Self(code: "ts")
        /// Tsakonian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tsakonian = Self(code: "tsd")
        /// Tsimshian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tsimshian = Self(code: "tsi")
        /// Tatar language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tatar = Self(code: "tt")
        /// MuslimTat language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let muslimTat = Self(code: "ttt")
        /// Tumbuka language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tumbuka = Self(code: "tum")
        /// Tuvalu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tuvalu = Self(code: "tvl")
        /// Twi language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let twi = Self(code: "tw")
        /// Tasawaq language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tasawaq = Self(code: "twq")
        /// Tahitian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tahitian = Self(code: "ty")
        /// Tuvinian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let tuvinian = Self(code: "tyv")
        /// CentralAtlasTamazight language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let centralAtlasTamazight = Self(code: "tzm")
        /// Udmurt language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let udmurt = Self(code: "udm")
        /// Uyghur language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let uyghur = Self(code: "ug")
        /// Ugaritic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ugaritic = Self(code: "uga")
        /// Ukrainian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let ukrainian = Self(code: "uk")
        /// Umbundu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let umbundu = Self(code: "umb")
        /// Urdu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let urdu = Self(code: "ur")
        /// Uzbek language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let uzbek = Self(code: "uz")
        /// Vai language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let vai = Self(code: "vai")
        /// Venda language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let venda = Self(code: "ve")
        /// Venetian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let venetian = Self(code: "vec")
        /// Veps language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let veps = Self(code: "vep")
        /// Vietnamese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let vietnamese = Self(code: "vi")
        /// WestFlemish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let westFlemish = Self(code: "vls")
        /// MainFranconian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mainFranconian = Self(code: "vmf")
        /// Volapük language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let volapük = Self(code: "vo")
        /// Votic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let votic = Self(code: "vot")
        /// Võro language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let võro = Self(code: "vro")
        /// Vunjo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let vunjo = Self(code: "vun")
        /// Walloon language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let walloon = Self(code: "wa")
        /// Walser language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let walser = Self(code: "wae")
        /// Wolaytta language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let wolaytta = Self(code: "wal")
        /// Waray language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let waray = Self(code: "war")
        /// Washo language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let washo = Self(code: "was")
        /// Warlpiri language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let warlpiri = Self(code: "wbp")
        /// Wolof language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let wolof = Self(code: "wo")
        /// Shanghainese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let shanghainese = Self(code: "wuu")
        /// Kalmyk language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let kalmyk = Self(code: "xal")
        /// Xhosa language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let xhosa = Self(code: "xh")
        /// Mingrelian language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let mingrelian = Self(code: "xmf")
        /// Soga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let soga = Self(code: "xog")
        /// Yao language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yao = Self(code: "yao")
        /// Yapese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yapese = Self(code: "yap")
        /// Yangben language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yangben = Self(code: "yav")
        /// Yemba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yemba = Self(code: "ybb")
        /// Yiddish language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yiddish = Self(code: "yi")
        /// Yoruba language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let yoruba = Self(code: "yo")
        /// Nheengatu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let nheengatu = Self(code: "yrl")
        /// Cantonese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let cantonese = Self(code: "yue")
        /// Zhuang language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zhuang = Self(code: "za")
        /// Zapotec language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zapotec = Self(code: "zap")
        /// Blissymbols language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let blissymbols = Self(code: "zbl")
        /// Zeelandic language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zeelandic = Self(code: "zea")
        /// Zenaga language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zenaga = Self(code: "zen")
        /// StandardMoroccanTamazight language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let standardMoroccanTamazight = Self(code: "zgh")
        /// Chinese language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let chinese = Self(code: "zh")
        /// Zulu language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zulu = Self(code: "zu")
        /// Zuni language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zuni = Self(code: "zun")
        /// Zaza language type supported by Predictions category
        ///
        /// The associated value represents the iso language code.
        public static let zaza = Self(code: "zza")

        public static let undetermined = Self(code: "")
    }
}

extension Predictions.Language {
    public init(locale: Locale) {
        guard let languageCode = locale.languageCode else {
            self = .undetermined
            return
        }
        self = .init(code: languageCode)
    }
}
// swiftlint:enable file_length type_body_length
