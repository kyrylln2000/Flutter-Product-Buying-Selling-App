// ignore_for_file: equal_keys_in_map

import '/backend/schema/structs/index.dart';

String getCountryCodeInit(String phoneNumber) {
  Map<String, String> countryCodeMap = {
    '+93': 'AF', // افغانستان
    '+358': 'AX', // Åland
    '+355': 'AL', // Shqipëria
    '+213': 'DZ', // الجزائر
    '+1684': 'AS', // American Samoa
    '+376': 'AD', //  Andorra
    '+244': 'AO', // Angola
    '+1264': 'AI', // Anguilla
    '+672': 'AQ', // Antarctica
    '+1268': 'AG', // Antigua and Barbuda
    '+54': 'AR', // Argentina
    '+374': 'AM', // Հայաստան
    '+297': 'AW', // Aruba
    '+61': 'AU', // Australia
    '+43': 'AT', // Österreich
    '+994': 'AZ', // Azərbaycan
    '+1242': 'BS', // Bahamas
    '+973': 'BH', // البحرين
    '+880': 'BD', // বাংলাদেশ
    '+1246': 'BB', // Barbados
    '+375': 'BY', // Белару́сь
    '+32': 'BE', // België
    '+501': 'BZ', // Belize
    '+229': 'BJ', // Bénin
    '+1441': 'BM', // Bermuda
    '+975': 'BT', // འབྲུག་ཡུལ
    '+591': 'BO', // Bolivia
    '+387': 'BA', // Босна и Херцеговина
    '+267': 'BW', // Botswana
    '+47': 'BV', // Bouvetøya
    '+55': 'BR', // Brasil
    '+246': 'IO', // British Indian Ocean Territory
    '+1284': 'VG', // British Virgin Islands
    '+673': 'BN', // Brunei
    '+359': 'BG', // България
    '+226': 'BF', // Burkina Faso
    '+257': 'BI', // Burundi
    '+855': 'KH', // កម្ពុជា
    '+237': 'CM', // Cameroun
    '+1': 'CA', // Canada
    '+238': 'CV', // Cabo Verde
    '+1345': 'KY', // Cayman Islands
    '+236': 'CF', // République centrafricaine
    '+235': 'TD', // Tchad
    '+56': 'CL', // Chile
    '+86': 'CN', // 中国
    '+61': 'CX', // Christmas Island
    '+61': 'CC', // Cocos (Keeling) Islands
    '+57': 'CO', // Colombia
    '+269': 'KM', // Komori
    '+242': 'CG', // République du Congo
    '+243': 'CD', // République démocratique du Congo
    '+682': 'CK', // Cook Islands
    '+506': 'CR', // Costa Rica
    '+225': 'CI', // Côte d'Ivoire
    '+385': 'HR', // Hrvatska
    '+53': 'CU', // Cuba
    '+599': 'CW', // Curaçao
    '+357': 'CY', // Κύπρος
    '+420': 'CZ', // Česká republika
    '+45': 'DK', // Danmark
    '+253': 'DJ', // Djibouti
    '+1767': 'DM', // Dominica
    '+1': 'DO', // República Dominicana
    '+593': 'EC', // Ecuador
    '+20': 'EG', // مصر
    '+503': 'SV', // El Salvador
    '+240': 'GQ', // Guinea Ecuatorial
    '+291': 'ER', // إرتريا
    '+372': 'EE', // Eesti
    '+251': 'ET', // ኢትዮጵያ
    '+500': 'FK', // Falkland Islands
    '+298': 'FO', // Føroyar
    '+679': 'FJ', // Fiji
    '+358': 'FI', // Suomi
    '+33': 'FR', // France
    '+594': 'GF', // Guyane française
    '+689': 'PF', // Polynésie française
    '+262': 'TF', // Terres australes françaises
    '+241': 'GA', // Gabon
    '+220': 'GM', // Gambia
    '+995': 'GE', // საქართველო
    '+49': 'DE', // Deutschland
    '+233': 'GH', // Ghana
    '+350': 'GI', // Gibraltar
    '+30': 'GR', // Ελλάδα
    '+299': 'GL', // Grønland
    '+1473': 'GD', // Grenada
    '+590': 'GP', // Guadeloupe
    '+1671': 'GU', // Guam
    '+502': 'GT', // Guatemala
    '+44': 'GG', // Guernsey
    '+224': 'GN', // Guinée
    '+245': 'GW', // Guiné-Bissau
    '+592': 'GY', // Guyana
    '+509': 'HT', // Haïti
    '+672': 'HM', // Heard Island and McDonald Islands
    '+504': 'HN', // Honduras
    '+852': 'HK', // 香港
    '+379': 'VA', // Vaticano
    '+36': 'HU', // Magyarország
    '+354': 'IS', // Ísland
    '+91': 'IN', // भारत
    '+62': 'ID', // Indonesia
    '+98': 'IR', // ایران
    '+964': 'IQ', // العراق
    '+353': 'IE', // Éire
    '+44': 'IM', // Isle of
    '+972': 'IL', // ישראל
    '+39': 'IT', // Italia
    '+1876': 'JM', // Jamaica
    '+81': 'JP', // 日本
    '+44': 'JE', // Jersey
    '+962': 'JO', // الأردن
    '+7': 'KZ', // Қазақстан
    '+254': 'KE', // Kenya
    '+686': 'KI', // Kiribati
    '+850': 'KP', // 북한
    '+82': 'KR', // 대한민국
    '+383': 'XK', // Republika e Kosovës
    '+965': 'KW', // الكويت
    '+996': 'KG', // Кыргызстан
    '+856': 'LA', // ລາວ
    '+371': 'LV', // Latvija
    '+961': 'LB', // لبنان
    '+266': 'LS', // Lesotho
    '+231': 'LR', // Liberia
    '+218': 'LY', // ليبيا
    '+423': 'LI', // Liechtenstein
    '+370': 'LT', // Lietuva
    '+352': 'LU', // Luxembourg
    '+853': 'MO', // 澳門
    '+389': 'MK', // Македонија
    '+261': 'MG', // Madagascar
    '+265': 'MW', // Malawi
    '+60': 'MY', // Malaysia
    '+960': 'MV', // Maldives
    '+223': 'ML', // Mali
    '+356': 'MT', // Malta
    '+692': 'MH', // Marshall Islands
    '+596': 'MQ', // Martinique
    '+222': 'MR', // موريتانيا
    '+230': 'MU', // Maurice
    '+262': 'YT', // Mayotte
    '+52': 'MX', // México
    '+691': 'FM', // Micronesia
    '+373': 'MD', // Moldova
    '+377': 'MC', // Monaco
    '+976': 'MN', // Монгол улс
    '+382': 'ME', // Crna Gora
    '+1664': 'MS', // Montserrat
    '+212': 'MA', // المغرب
    '+258': 'MZ', // Moçambique
    '+95': 'MM', // Myanma
    '+264': 'NA', // Namibia
    '+674': 'NR', // Nauru
    '+977': 'NP', // नेपाल
    '+31': 'NL', // Nederland
    '+599': 'AN', // Netherlands Antilles
    '+687': 'NC', // Nouvelle-Calédonie
    '+64': 'NZ', // New Zealand
    '+505': 'NI', // Nicaragua
    '+227': 'NE', // Niger
    '+234': 'NG', // Nigeria
    '+683': 'NU', // Niue
    '+672': 'NF', // Norfolk Island
    '+1670': 'MP', // Northern Mariana Islands
    '+47': 'NO', // Norge
    '+968': 'OM', // عمان
    '+92': 'PK', // پاکستان
    '+680': 'PW', // Palau
    '+970': 'PS', // فلسطين
    '+507': 'PA', // Panamá
    '+675': 'PG', // Papua New Guinea
    '+595': 'PY', // Paraguay
    '+51': 'PE', // Perú
    '+63': 'PH', // Pilipinas
    '+64': 'PN', // Pitcairn Islands
    '+48': 'PL', // Polska
    '+351': 'PT', // Portugal
    '+1939': 'PR', // Puerto Rico
    '+1787': 'PR', // Puerto Rico
    '+974': 'QA', // قطر
    '+262': 'RE', // La Réunion
    '+40': 'RO', // România
    '+7': 'RU', // Россия
    '+250': 'RW', // Rwanda
    '+262': 'RE', // La Réunion
    '+590': 'BL', // Saint-Barthélemy
    '+290': 'SH', // Saint Helena
    '+1869': 'KN', // Saint Kitts and Nevis
    '+1758': 'LC', // Saint Lucia
    '+590': 'MF', // Saint-Martin
    '+508': 'PM', // Saint-Pierre-et-Miquelon
    '+1784': 'VC', // Saint Vincent and the Grenadines
    '+685': 'WS', // Samoa
    '+378': 'SM', // San Marino
    '+239': 'ST', // São Tomé e Príncipe
    '+966': 'SA', // العربية السعودية
    '+221': 'SN', // Sénégal
    '+381': 'RS', // Србија
    '+248': 'SC', // Seychelles
    '+232': 'SL', // Sierra Leone
    '+65': 'SG', // Singapore
    '+1721': 'SX', // Sint Maarten
    '+421': 'SK', // Slovensko
    '+386': 'SI', // Slovenija
    '+677': 'SB', // Solomon Islands
    '+252': 'SO', // Soomaaliya
    '+27': 'ZA', // South Africa
    '+500': 'GS', // South Georgia
    '+211': 'SS', // South Sudan
    '+34': 'ES', // España
    '+94': 'LK', // ශ්‍රී ලංකාව
    '+249': 'SD', // السودان
    '+597': 'SR', // Suriname
    '+47': 'SJ', // Svalbard og Jan Mayen
    '+268': 'SZ', // Swaziland
    '+46': 'SE', // Sverige
    '+41': 'CH', // Schweiz
    '+963': 'SY', // سوريا
    '+886': 'TW', // 台灣
    '+992': 'TJ', // Тоҷикистон
    '+255': 'TZ', // Tanzania
    '+66': 'TH', // ไทย
    '+670': 'TL', // Timor-Leste
    '+228': 'TG', // Togo
    '+690': 'TK', // Tokelau
    '+676': 'TO', // Tonga
    '+1868': 'TT', // Trinidad and Tobago
    '+216': 'TN', // تونس
    '+90': 'TR', // Türkiye
    '+993': 'TM', // Türkmenistan
    '+1649': 'TC', // Turks and Caicos Islands
    '+688': 'TV', // Tuvalu
    '+256': 'UG', // Uganda
    '+380': 'UA', // Україна
    '+971': 'AE', // الإمارات العربية المتحدة
    '+44': 'GB', // United Kingdom
    '+1': 'US', // United States
    '+598': 'UY', // Uruguay
    '+998': 'UZ', // Oʻzbekiston
    '+678': 'VU', // Vanuatu
    '+58': 'VE', // Venezuela
    '+84': 'VN', // Việt Nam
    '+1284': 'VG', // British Virgin Islands
    '+1340': 'VI', // United States Virgin Islands
    '+681': 'WF', // Wallis et Futuna
    '+212': 'EH', // الصحراء الغربية
    '+967': 'YE', // اليمن
    '+260': 'ZM', // Zambia
    '+263': 'ZW', // Zimbabwe
  };

  // Extract the prefix from the phone number
  String prefix = phoneNumber.startsWith('+') ? phoneNumber.split(' ')[0] : '';

  // Look up the country code
  return countryCodeMap[prefix] ?? 'Unknown';
}

List<ItemsModelStruct>? filterdata(
  String title,
  List<ItemsModelStruct> detail,
) {
  return detail.where((detail) => detail.types == title).toList();
}
