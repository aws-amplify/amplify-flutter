//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import Foundation

public extension Geo {
    /// Country codes for use with Amplify Geo.
    struct Country {
        public let code: String
        public let description: String
    }
}

public extension Geo.Country {
    /// Afghanistan
    static let afg = Geo.Country(code: "AFG", description: "Afghanistan")
    /// Åland Islands
    static let ala = Geo.Country(code: "ALA", description: "Åland Islands")
    /// Albania
    static let alb = Geo.Country(code: "ALB", description: "Albania")
    /// Algeria
    static let dza = Geo.Country(code: "DZA", description: "Algeria")
    /// American Samoa
    static let asm = Geo.Country(code: "ASM", description: "American Samoa")
    /// Andorra
    static let and = Geo.Country(code: "AND", description: "Andorra")
    /// Angola
    static let ago = Geo.Country(code: "AGO", description: "Angola")
    /// Anguilla
    static let aia = Geo.Country(code: "AIA", description: "Anguilla")
    /// Antarctica
    static let ata = Geo.Country(code: "ATA", description: "Antarctica")
    /// Antigua and Barbuda
    static let atg = Geo.Country(code: "ATG", description: "Antigua and Barbuda")
    /// Argentina
    static let arg = Geo.Country(code: "ARG", description: "Argentina")
    /// Armenia
    static let arm = Geo.Country(code: "ARM", description: "Armenia")
    /// Aruba
    static let abw = Geo.Country(code: "ABW", description: "Aruba")
    /// Australia
    static let aus = Geo.Country(code: "AUS", description: "Australia")
    /// Austria
    static let aut = Geo.Country(code: "AUT", description: "Austria")
    /// Azerbaijan
    static let aze = Geo.Country(code: "AZE", description: "Azerbaijan")
    /// Bahamas (the)
    static let bhs = Geo.Country(code: "BHS", description: "Bahamas (the)")
    /// Bahrain
    static let bhr = Geo.Country(code: "BHR", description: "Bahrain")
    /// Bangladesh
    static let bgd = Geo.Country(code: "BGD", description: "Bangladesh")
    /// Barbados
    static let brb = Geo.Country(code: "BRB", description: "Barbados")
    /// Belarus
    static let blr = Geo.Country(code: "BLR", description: "Belarus")
    /// Belgium
    static let bel = Geo.Country(code: "BEL", description: "Belgium")
    /// Belize
    static let blz = Geo.Country(code: "BLZ", description: "Belize")
    /// Benin
    static let ben = Geo.Country(code: "BEN", description: "Benin")
    /// Bermuda
    static let bmu = Geo.Country(code: "BMU", description: "Bermuda")
    /// Bhutan
    static let btn = Geo.Country(code: "BTN", description: "Bhutan")
    /// Bolivia (Plurinational State of)
    static let bol = Geo.Country(code: "BOL", description: "Bolivia (Plurinational State of)")
    /// Bonaire, Sint Eustatius and Saba
    static let bes = Geo.Country(code: "BES", description: "Bonaire, Sint Eustatius and Saba")
    /// Bosnia and Herzegovina
    static let bih = Geo.Country(code: "BIH", description: "Bosnia and Herzegovina")
    /// Botswana
    static let bwa = Geo.Country(code: "BWA", description: "Botswana")
    /// Bouvet Island
    static let bvt = Geo.Country(code: "BVT", description: "Bouvet Island")
    /// Brazil
    static let bra = Geo.Country(code: "BRA", description: "Brazil")
    /// British Indian Ocean Territory (the)
    static let iot = Geo.Country(code: "IOT", description: "British Indian Ocean Territory (the)")
    /// Brunei Darussalam
    static let brn = Geo.Country(code: "BRN", description: "Brunei Darussalam")
    /// Bulgaria
    static let bgr = Geo.Country(code: "BGR", description: "Bulgaria")
    /// Burkina Faso
    static let bfa = Geo.Country(code: "BFA", description: "Burkina Faso")
    /// Burundi
    static let bdi = Geo.Country(code: "BDI", description: "Burundi")
    /// Cabo Verde
    static let cpv = Geo.Country(code: "CPV", description: "Cabo Verde")
    /// Cambodia
    static let khm = Geo.Country(code: "KHM", description: "Cambodia")
    /// Cameroon
    static let cmr = Geo.Country(code: "CMR", description: "Cameroon")
    /// Canada
    static let can = Geo.Country(code: "CAN", description: "Canada")
    /// Cayman Islands (the)
    static let cym = Geo.Country(code: "CYM", description: "Cayman Islands (the)")
    /// Central African Republic (the)
    static let caf = Geo.Country(code: "CAF", description: "Central African Republic (the)")
    /// Chad
    static let tcd = Geo.Country(code: "TCD", description: "Chad")
    /// Chile
    static let chl = Geo.Country(code: "CHL", description: "Chile")
    /// China
    static let chn = Geo.Country(code: "CHN", description: "China")
    /// Christmas Island
    static let cxr = Geo.Country(code: "CXR", description: "Christmas Island")
    /// Cocos (Keeling) Islands (the)
    static let cck = Geo.Country(code: "CCK", description: "Cocos (Keeling) Islands (the)")
    /// Colombia
    static let col = Geo.Country(code: "COL", description: "Colombia")
    /// Comoros (the)
    static let com = Geo.Country(code: "COM", description: "Comoros (the)")
    /// Congo (the Democratic Republic of the)
    static let cod = Geo.Country(code: "COD", description: "Congo (the Democratic Republic of the)")
    /// Congo (the)
    static let cog = Geo.Country(code: "COG", description: "Congo (the)")
    /// Cook Islands (the)
    static let cok = Geo.Country(code: "COK", description: "Cook Islands (the)")
    /// Costa Rica
    static let cri = Geo.Country(code: "CRI", description: "Costa Rica")
    /// Croatia
    static let hrv = Geo.Country(code: "HRV", description: "Croatia")
    /// Cuba
    static let cub = Geo.Country(code: "CUB", description: "Cuba")
    /// Curaçao
    static let cuw = Geo.Country(code: "CUW", description: "Curaçao")
    /// Cyprus
    static let cyp = Geo.Country(code: "CYP", description: "Cyprus")
    /// Czechia
    static let cze = Geo.Country(code: "CZE", description: "Czechia")
    /// Côte d'Ivoire
    static let civ = Geo.Country(code: "CIV", description: "Côte d'Ivoire")
    /// Denmark
    static let dnk = Geo.Country(code: "DNK", description: "Denmark")
    /// Djibouti
    static let dji = Geo.Country(code: "DJI", description: "Djibouti")
    /// Dominica
    static let dma = Geo.Country(code: "DMA", description: "Dominica")
    /// Dominican Republic (the)
    static let dom = Geo.Country(code: "DOM", description: "Dominican Republic (the)")
    /// Ecuador
    static let ecu = Geo.Country(code: "ECU", description: "Ecuador")
    /// Egypt
    static let egy = Geo.Country(code: "EGY", description: "Egypt")
    /// El Salvador
    static let slv = Geo.Country(code: "SLV", description: "El Salvador")
    /// Equatorial Guinea
    static let gnq = Geo.Country(code: "GNQ", description: "Equatorial Guinea")
    /// Eritrea
    static let eri = Geo.Country(code: "ERI", description: "Eritrea")
    /// Estonia
    static let est = Geo.Country(code: "EST", description: "Estonia")
    /// Eswatini
    static let swz = Geo.Country(code: "SWZ", description: "Eswatini")
    /// Ethiopia
    static let eth = Geo.Country(code: "ETH", description: "Ethiopia")
    /// Falkland Islands (the) [Malvinas]
    static let flk = Geo.Country(code: "FLK", description: "Falkland Islands (the) [Malvinas]")
    /// Faroe Islands (the)
    static let fro = Geo.Country(code: "FRO", description: "Faroe Islands (the)")
    /// Fiji
    static let fji = Geo.Country(code: "FJI", description: "Fiji")
    /// Finland
    static let fin = Geo.Country(code: "FIN", description: "Finland")
    /// France
    static let fra = Geo.Country(code: "FRA", description: "France")
    /// French Guiana
    static let guf = Geo.Country(code: "GUF", description: "French Guiana")
    /// French Polynesia
    static let pyf = Geo.Country(code: "PYF", description: "French Polynesia")
    /// French Southern Territories (the)
    static let atf = Geo.Country(code: "ATF", description: "French Southern Territories (the)")
    /// Gabon
    static let gab = Geo.Country(code: "GAB", description: "Gabon")
    /// Gambia (the)
    static let gmb = Geo.Country(code: "GMB", description: "Gambia (the)")
    /// Georgia
    static let geo = Geo.Country(code: "GEO", description: "Georgia")
    /// Germany
    static let deu = Geo.Country(code: "DEU", description: "Germany")
    /// Ghana
    static let gha = Geo.Country(code: "GHA", description: "Ghana")
    /// Gibraltar
    static let gib = Geo.Country(code: "GIB", description: "Gibraltar")
    /// Greece
    static let grc = Geo.Country(code: "GRC", description: "Greece")
    /// Greenland
    static let grl = Geo.Country(code: "GRL", description: "Greenland")
    /// Grenada
    static let grd = Geo.Country(code: "GRD", description: "Grenada")
    /// Guadeloupe
    static let glp = Geo.Country(code: "GLP", description: "Guadeloupe")
    /// Guam
    static let gum = Geo.Country(code: "GUM", description: "Guam")
    /// Guatemala
    static let gtm = Geo.Country(code: "GTM", description: "Guatemala")
    /// Guernsey
    static let ggy = Geo.Country(code: "GGY", description: "Guernsey")
    /// Guinea
    static let gin = Geo.Country(code: "GIN", description: "Guinea")
    /// Guinea-Bissau
    static let gnb = Geo.Country(code: "GNB", description: "Guinea-Bissau")
    /// Guyana
    static let guy = Geo.Country(code: "GUY", description: "Guyana")
    /// Haiti
    static let hti = Geo.Country(code: "HTI", description: "Haiti")
    /// Heard Island and McDonald Islands
    static let hmd = Geo.Country(code: "HMD", description: "Heard Island and McDonald Islands")
    /// Holy See (the)
    static let vat = Geo.Country(code: "VAT", description: "Holy See (the)")
    /// Honduras
    static let hnd = Geo.Country(code: "HND", description: "Honduras")
    /// Hong Kong
    static let hkg = Geo.Country(code: "HKG", description: "Hong Kong")
    /// Hungary
    static let hun = Geo.Country(code: "HUN", description: "Hungary")
    /// Iceland
    static let isl = Geo.Country(code: "ISL", description: "Iceland")
    /// India
    static let ind = Geo.Country(code: "IND", description: "India")
    /// Indonesia
    static let idn = Geo.Country(code: "IDN", description: "Indonesia")
    /// Iran (Islamic Republic of)
    static let irn = Geo.Country(code: "IRN", description: "Iran (Islamic Republic of)")
    /// Iraq
    static let irq = Geo.Country(code: "IRQ", description: "Iraq")
    /// Ireland
    static let irl = Geo.Country(code: "IRL", description: "Ireland")
    /// Isle of Man
    static let imn = Geo.Country(code: "IMN", description: "Isle of Man")
    /// Israel
    static let isr = Geo.Country(code: "ISR", description: "Israel")
    /// Italy
    static let ita = Geo.Country(code: "ITA", description: "Italy")
    /// Jamaica
    static let jam = Geo.Country(code: "JAM", description: "Jamaica")
    /// Japan
    static let jpn = Geo.Country(code: "JPN", description: "Japan")
    /// Jersey
    static let jey = Geo.Country(code: "JEY", description: "Jersey")
    /// Jordan
    static let jor = Geo.Country(code: "JOR", description: "Jordan")
    /// Kazakhstan
    static let kaz = Geo.Country(code: "KAZ", description: "Kazakhstan")
    /// Kenya
    static let ken = Geo.Country(code: "KEN", description: "Kenya")
    /// Kiribati
    static let kir = Geo.Country(code: "KIR", description: "Kiribati")
    /// Korea (the Democratic People's Republic of)
    static let prk = Geo.Country(code: "PRK", description: "Korea (the Democratic People's Republic of)")
    /// Korea (the Republic of)
    static let kor = Geo.Country(code: "KOR", description: "Korea (the Republic of)")
    /// Kuwait
    static let kwt = Geo.Country(code: "KWT", description: "Kuwait")
    /// Kyrgyzstan
    static let kgz = Geo.Country(code: "KGZ", description: "Kyrgyzstan")
    /// Lao People's Democratic Republic (the)
    static let lao = Geo.Country(code: "LAO", description: "Lao People's Democratic Republic (the)")
    /// Latvia
    static let lva = Geo.Country(code: "LVA", description: "Latvia")
    /// Lebanon
    static let lbn = Geo.Country(code: "LBN", description: "Lebanon")
    /// Lesotho
    static let lso = Geo.Country(code: "LSO", description: "Lesotho")
    /// Liberia
    static let lbr = Geo.Country(code: "LBR", description: "Liberia")
    /// Libya
    static let lby = Geo.Country(code: "LBY", description: "Libya")
    /// Liechtenstein
    static let lie = Geo.Country(code: "LIE", description: "Liechtenstein")
    /// Lithuania
    static let ltu = Geo.Country(code: "LTU", description: "Lithuania")
    /// Luxembourg
    static let lux = Geo.Country(code: "LUX", description: "Luxembourg")
    /// Macao
    static let mac = Geo.Country(code: "MAC", description: "Macao")
    /// Madagascar
    static let mdg = Geo.Country(code: "MDG", description: "Madagascar")
    /// Malawi
    static let mwi = Geo.Country(code: "MWI", description: "Malawi")
    /// Malaysia
    static let mys = Geo.Country(code: "MYS", description: "Malaysia")
    /// Maldives
    static let mdv = Geo.Country(code: "MDV", description: "Maldives")
    /// Mali
    static let mli = Geo.Country(code: "MLI", description: "Mali")
    /// Malta
    static let mlt = Geo.Country(code: "MLT", description: "Malta")
    /// Marshall Islands (the)
    static let mhl = Geo.Country(code: "MHL", description: "Marshall Islands (the)")
    /// Martinique
    static let mtq = Geo.Country(code: "MTQ", description: "Martinique")
    /// Mauritania
    static let mrt = Geo.Country(code: "MRT", description: "Mauritania")
    /// Mauritius
    static let mus = Geo.Country(code: "MUS", description: "Mauritius")
    /// Mayotte
    static let myt = Geo.Country(code: "MYT", description: "Mayotte")
    /// Mexico
    static let mex = Geo.Country(code: "MEX", description: "Mexico")
    /// Micronesia (Federated States of)
    static let fsm = Geo.Country(code: "FSM", description: "Micronesia (Federated States of)")
    /// Moldova (the Republic of)
    static let mda = Geo.Country(code: "MDA", description: "Moldova (the Republic of)")
    /// Monaco
    static let mco = Geo.Country(code: "MCO", description: "Monaco")
    /// Mongolia
    static let mng = Geo.Country(code: "MNG", description: "Mongolia")
    /// Montenegro
    static let mne = Geo.Country(code: "MNE", description: "Montenegro")
    /// Montserrat
    static let msr = Geo.Country(code: "MSR", description: "Montserrat")
    /// Morocco
    static let mar = Geo.Country(code: "MAR", description: "Morocco")
    /// Mozambique
    static let moz = Geo.Country(code: "MOZ", description: "Mozambique")
    /// Myanmar
    static let mmr = Geo.Country(code: "MMR", description: "Myanmar")
    /// Namibia
    static let nam = Geo.Country(code: "NAM", description: "Namibia")
    /// Nauru
    static let nru = Geo.Country(code: "NRU", description: "Nauru")
    /// Nepal
    static let npl = Geo.Country(code: "NPL", description: "Nepal")
    /// Netherlands (the)
    static let nld = Geo.Country(code: "NLD", description: "Netherlands (the)")
    /// New Caledonia
    static let ncl = Geo.Country(code: "NCL", description: "New Caledonia")
    /// New Zealand
    static let nzl = Geo.Country(code: "NZL", description: "New Zealand")
    /// Nicaragua
    static let nic = Geo.Country(code: "NIC", description: "Nicaragua")
    /// Niger (the)
    static let ner = Geo.Country(code: "NER", description: "Niger (the)")
    /// Nigeria
    static let nga = Geo.Country(code: "NGA", description: "Nigeria")
    /// Niue
    static let niu = Geo.Country(code: "NIU", description: "Niue")
    /// Norfolk Island
    static let nfk = Geo.Country(code: "NFK", description: "Norfolk Island")
    /// Northern Mariana Islands (the)
    static let mnp = Geo.Country(code: "MNP", description: "Northern Mariana Islands (the)")
    /// Norway
    static let nor = Geo.Country(code: "NOR", description: "Norway")
    /// Oman
    static let omn = Geo.Country(code: "OMN", description: "Oman")
    /// Pakistan
    static let pak = Geo.Country(code: "PAK", description: "Pakistan")
    /// Palau
    static let plw = Geo.Country(code: "PLW", description: "Palau")
    /// Palestine, State of
    static let pse = Geo.Country(code: "PSE", description: "Palestine, State of")
    /// Panama
    static let pan = Geo.Country(code: "PAN", description: "Panama")
    /// Papua New Guinea
    static let png = Geo.Country(code: "PNG", description: "Papua New Guinea")
    /// Paraguay
    static let pry = Geo.Country(code: "PRY", description: "Paraguay")
    /// Peru
    static let per = Geo.Country(code: "PER", description: "Peru")
    /// Philippines (the)
    static let phl = Geo.Country(code: "PHL", description: "Philippines (the)")
    /// Pitcairn
    static let pcn = Geo.Country(code: "PCN", description: "Pitcairn")
    /// Poland
    static let pol = Geo.Country(code: "POL", description: "Poland")
    /// Portugal
    static let prt = Geo.Country(code: "PRT", description: "Portugal")
    /// Puerto Rico
    static let pri = Geo.Country(code: "PRI", description: "Puerto Rico")
    /// Qatar
    static let qat = Geo.Country(code: "QAT", description: "Qatar")
    /// Republic of North Macedonia
    static let mkd = Geo.Country(code: "MKD", description: "Republic of North Macedonia")
    /// Romania
    static let rou = Geo.Country(code: "ROU", description: "Romania")
    /// Russian Federation (the)
    static let rus = Geo.Country(code: "RUS", description: "Russian Federation (the)")
    /// Rwanda
    static let rwa = Geo.Country(code: "RWA", description: "Rwanda")
    /// Réunion
    static let reu = Geo.Country(code: "REU", description: "Réunion")
    /// Saint Barthélemy
    static let blm = Geo.Country(code: "BLM", description: "Saint Barthélemy")
    /// Saint Helena, Ascension and Tristan da Cunha
    static let shn = Geo.Country(code: "SHN", description: "Saint Helena, Ascension and Tristan da Cunha")
    /// Saint Kitts and Nevis
    static let kna = Geo.Country(code: "KNA", description: "Saint Kitts and Nevis")
    /// Saint Lucia
    static let lca = Geo.Country(code: "LCA", description: "Saint Lucia")
    /// Saint Martin (French part)
    static let maf = Geo.Country(code: "MAF", description: "Saint Martin (French part)")
    /// Saint Pierre and Miquelon
    static let spm = Geo.Country(code: "SPM", description: "Saint Pierre and Miquelon")
    /// Saint Vincent and the Grenadines
    static let vct = Geo.Country(code: "VCT", description: "Saint Vincent and the Grenadines")
    /// Samoa
    static let wsm = Geo.Country(code: "WSM", description: "Samoa")
    /// San Marino
    static let smr = Geo.Country(code: "SMR", description: "San Marino")
    /// Sao Tome and Principe
    static let stp = Geo.Country(code: "STP", description: "Sao Tome and Principe")
    /// Saudi Arabia
    static let sau = Geo.Country(code: "SAU", description: "Saudi Arabia")
    /// Senegal
    static let sen = Geo.Country(code: "SEN", description: "Senegal")
    /// Serbia
    static let srb = Geo.Country(code: "SRB", description: "Serbia")
    /// Seychelles
    static let syc = Geo.Country(code: "SYC", description: "Seychelles")
    /// Sierra Leone
    static let sle = Geo.Country(code: "SLE", description: "Sierra Leone")
    /// Singapore
    static let sgp = Geo.Country(code: "SGP", description: "Singapore")
    /// Sint Maarten (Dutch part)
    static let sxm = Geo.Country(code: "SXM", description: "Sint Maarten (Dutch part)")
    /// Slovakia
    static let svk = Geo.Country(code: "SVK", description: "Slovakia")
    /// Slovenia
    static let svn = Geo.Country(code: "SVN", description: "Slovenia")
    /// Solomon Islands
    static let slb = Geo.Country(code: "SLB", description: "Solomon Islands")
    /// Somalia
    static let som = Geo.Country(code: "SOM", description: "Somalia")
    /// South Africa
    static let zaf = Geo.Country(code: "ZAF", description: "South Africa")
    /// South Georgia and the South Sandwich Islands
    static let sgs = Geo.Country(code: "SGS", description: "South Georgia and the South Sandwich Islands")
    /// South Sudan
    static let ssd = Geo.Country(code: "SSD", description: "South Sudan")
    /// Spain
    static let esp = Geo.Country(code: "ESP", description: "Spain")
    /// Sri Lanka
    static let lka = Geo.Country(code: "LKA", description: "Sri Lanka")
    /// Sudan (the)
    static let sdn = Geo.Country(code: "SDN", description: "Sudan (the)")
    /// Suriname
    static let sur = Geo.Country(code: "SUR", description: "Suriname")
    /// Svalbard and Jan Mayen
    static let sjm = Geo.Country(code: "SJM", description: "Svalbard and Jan Mayen")
    /// Sweden
    static let swe = Geo.Country(code: "SWE", description: "Sweden")
    /// Switzerland
    static let che = Geo.Country(code: "CHE", description: "Switzerland")
    /// Syrian Arab Republic
    static let syr = Geo.Country(code: "SYR", description: "Syrian Arab Republic")
    /// Taiwan (Province of China)
    static let twn = Geo.Country(code: "TWN", description: "Taiwan (Province of China)")
    /// Tajikistan
    static let tjk = Geo.Country(code: "TJK", description: "Tajikistan")
    /// Tanzania, United Republic of
    static let tza = Geo.Country(code: "TZA", description: "Tanzania, United Republic of")
    /// Thailand
    static let tha = Geo.Country(code: "THA", description: "Thailand")
    /// Timor-Leste
    static let tls = Geo.Country(code: "TLS", description: "Timor-Leste")
    /// Togo
    static let tgo = Geo.Country(code: "TGO", description: "Togo")
    /// Tokelau
    static let tkl = Geo.Country(code: "TKL", description: "Tokelau")
    /// Tonga
    static let ton = Geo.Country(code: "TON", description: "Tonga")
    /// Trinidad and Tobago
    static let tto = Geo.Country(code: "TTO", description: "Trinidad and Tobago")
    /// Tunisia
    static let tun = Geo.Country(code: "TUN", description: "Tunisia")
    /// Turkey
    static let tur = Geo.Country(code: "TUR", description: "Turkey")
    /// Turkmenistan
    static let tkm = Geo.Country(code: "TKM", description: "Turkmenistan")
    /// Turks and Caicos Islands (the)
    static let tca = Geo.Country(code: "TCA", description: "Turks and Caicos Islands (the)")
    /// Tuvalu
    static let tuv = Geo.Country(code: "TUV", description: "Tuvalu")
    /// Uganda
    static let uga = Geo.Country(code: "UGA", description: "Uganda")
    /// Ukraine
    static let ukr = Geo.Country(code: "UKR", description: "Ukraine")
    /// United Arab Emirates (the)
    static let are = Geo.Country(code: "ARE", description: "United Arab Emirates (the)")
    /// United Kingdom of Great Britain and Northern Ireland (the)
    static let gbr = Geo.Country(code: "GBR", description: "United Kingdom of Great Britain and Northern Ireland (the)")
    /// United States Minor Outlying Islands (the)
    static let umi = Geo.Country(code: "UMI", description: "United States Minor Outlying Islands (the)")
    /// United States of America (the)
    static let usa = Geo.Country(code: "USA", description: "United States of America (the)")
    /// Uruguay
    static let ury = Geo.Country(code: "URY", description: "Uruguay")
    /// Uzbekistan
    static let uzb = Geo.Country(code: "UZB", description: "Uzbekistan")
    /// Vanuatu
    static let vut = Geo.Country(code: "VUT", description: "Vanuatu")
    /// Venezuela (Bolivarian Republic of)
    static let ven = Geo.Country(code: "VEN", description: "Venezuela (Bolivarian Republic of)")
    /// Viet Nam
    static let vnm = Geo.Country(code: "VNM", description: "Viet Nam")
    /// Virgin Islands (British)
    static let vgb = Geo.Country(code: "VGB", description: "Virgin Islands (British)")
    /// Virgin Islands (U.S.)
    static let vir = Geo.Country(code: "VIR", description: "Virgin Islands (U.S.)")
    /// Wallis and Futuna
    static let wlf = Geo.Country(code: "WLF", description: "Wallis and Futuna")
    /// Western Sahara
    static let esh = Geo.Country(code: "ESH", description: "Western Sahara")
    /// Yemen
    static let yem = Geo.Country(code: "YEM", description: "Yemen")
    /// Zambia
    static let zmb = Geo.Country(code: "ZMB", description: "Zambia")
    /// Zimbabwe
    static let zwe = Geo.Country(code: "ZWE", description: "Zimbabwe")
} // swiftlint:disable:this file_length
