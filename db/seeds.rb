# encoding: utf-8
Language.destroy_all
Word.destroy_all
Translation.destroy_all

# Language.create({name: nil, abbreviation: nil, alphabet: nil, macrofamily: nil, family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: true, flag: "", alive: true })

# Indo-European

# Germanic
Language.create({ name: "English", abbreviation: "en", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: nil, has_gender: false, flag: "🏴󠁧󠁢󠁥󠁮󠁧󠁿", alive: true })
Language.create({ name: "Scots", abbreviation: "sco", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: "a.k.a. Lowland Scots", has_gender: false, alive: true })

Language.create({ name: "Dutch", abbreviation: "nl", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Afrikaans", abbreviation: "af", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Western Europe", area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "West Frisian", abbreviation: "fy", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: nil, notes: "Friesland, NL", has_gender: true, alive: true })
# Language.create({ name: "North Frisian", abbreviation: "frr", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: "Nordfriesland, DE", has_gender: true, alive: true })
# Language.create({ name: "Saterland Frisian", abbreviation: "stq", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: "Saxony, DE", has_gender: true, alive: true })

# Language.create({ name: "Low Saxon", abbreviation: "nds", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, alive: true })

Language.create({ name: "German", abbreviation: "de", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, flag: "🇩🇪", alive: true })
# Language.create({ name: "Bavarian", abbreviation: "bar", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, flag: "", alive: true })
# Language.create({ name: "Alemannic German", abbreviation: "gsw", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Luxembourgish", abbreviation: "lb", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, flag: "🇱🇺", alive: true })

Language.create({ name: "Swedish", abbreviation: "sv", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "North Germanic", area1: "Europe", area2: "North Europe", area3: "Scandanavia", notes: nil, has_gender: true, flag: "🇸🇪", alive: true })
Language.create({ name: "Danish", abbreviation: "da", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "North Germanic", area1: "Europe", area2: "North Europe", area3: "Scandanavia", notes: nil, has_gender: true, flag: "🇩🇰", alive: true })
Language.create({ name: "Norwegian", abbreviation: "no", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "North Germanic", area1: "Europe", area2: "North Europe", area3: "Scandanavia", notes: nil, has_gender: true, flag: "🇳🇴", alive: true })
Language.create({ name: "Icelandic", abbreviation: "is", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "North Germanic", area1: "Europe", area2: "North Europe", area3: "Scandanavia", notes: nil, has_gender: true, flag: "🇮🇸", alive: true })
Language.create({ name: "Faroese", abbreviation: "fo", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "North Germanic", area1: "Europe", area2: "North Europe", area3: "Scandanavia", notes: nil, has_gender: true, flag: "🇫🇴", alive: true })

# Italic
Language.create({ name: "Spanish", abbreviation: "es", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: "a.k.a. Castillian Spanish, Castellano", has_gender: true, flag: "🇪🇸", alive: true })
Language.create({ name: "Portuguese", abbreviation: "pt", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, flag: "🇵🇹", alive: true })
Language.create({ name: "Galician", abbreviation: "gl", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Mirandese", abbreviation: "mwl", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Asturian", abbreviation: "ast", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Leonese", abbreviation: nil, alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Aragonese", abbreviation: "an", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Ibero-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })

Language.create({ name: "Catalan", abbreviation: "ca", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Occitano-Romance", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Occitan", abbreviation: "oc", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Occitano-Romance", area1: "Europe", area2: "Western Europe", area3: "France", notes: nil, has_gender: true, alive: true })

Language.create({ name: "French", abbreviation: "fr", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo- Romance", area1: "Europe", area2: "Western Europe", area3: "France", notes: nil, has_gender: true, flag: "🇫🇷", alive: true })
Language.create({ name: "Franco-Provençal", abbreviation: "frp", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Romance", area1: "Europe", area2: "Western Europe", area3: "France", notes: nil, has_gender: true, alive: true })

Language.create({ name: "Romansch", abbreviation: "rm", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Rhaeto-Romance", area1: "Europe", area2: "Central Europe", area3: "Switzerland", notes: "Switzerland", has_gender: true, alive: true })
# Language.create({ name: "Ladin", abbreviation: "lld", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Rhaeto-Romance", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Friulian", abbreviation: "fur", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Rhaeto-Romance", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })

Language.create({ name: "Piedmontese", abbreviation: "pms", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Italic", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Ligurian", abbreviation: "lij", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Italic", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Lombard", abbreviation: "lmo", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Italic", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Emilian", abbreviation: "egl", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Italic", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Venetian", abbreviation: "vnc", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Gallo-Italic", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })

Language.create({ name: "Italian", abbreviation: "it", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, flag: "🇮🇹", alive: false })
# Language.create({ name: "Tuscan", abbreviation: nil, alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Corsican", abbreviation: "co", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Sassarese", abbreviation: "sdc", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Sicilian", abbreviation: "scn", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Neapolitan", abbreviation: "nap", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Dalmatian", abbreviation: "dlm", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: false })
# Language.create({ name: "Istriot", abbreviation: "ist", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Italo-Dalmatian", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })

Language.create({ name: "Sardinian", abbreviation: "sc", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Sardinian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, flag: "", alive: true })

Language.create({ name: "Romanian", abbreviation: "ro", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Eastern Romance", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, flag: "🇷🇴", alive: true })
# Language.create({ name: "Istro-Romanian", abbreviation: "ruo", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Eastern Romance", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Aromanian", abbreviation: "rup", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Eastern Romance", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, alive: true })
# Language.create({ name: "Megleno-Romanian", abbreviation: "ruq", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Eastern Romance", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, alive: true })

# Celtic
Language.create({ name: "Irish", abbreviation: "ga", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Goidelic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: "a.k.a. Gaelic", has_gender: true, flag: "🇮🇪", alive: true })
Language.create({ name: "Scottish Gaelic", abbreviation: "gd", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Goidelic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: nil, has_gender: true, flag: "🏴󠁧󠁢󠁳󠁣󠁴󠁿", alive: true })
Language.create({ name: "Manx", abbreviation: "gv", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Goidelic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: nil, has_gender: true, flag: "🇮🇲", alive: true })
Language.create({ name: "Welsh", abbreviation: "cy", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Brittonic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: nil, has_gender: true, flag: "🏴󠁧󠁢󠁷󠁬󠁳󠁿", alive: true })
Language.create({ name: "Cornish", abbreviation: "kw", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Brittonic", area1: "Europe", area2: "Western Europe", area3: "British Isles", notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Breton", abbreviation: "br", alphabet: "Latn", macrofamily: "Indo-European", family: "Celtic", subfamily: "Brittonic", area1: "Europe", area2: "Western Europe", area3: "France", notes: nil, has_gender: true, flag: "", alive: true })

# Balto-Slavic
Language.create({ name: "Russian", abbreviation: "ru", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Slavic", area1: "Europe", area2: "East Europe", area3: "Caucasus", notes: nil, has_gender: true, flag: "🇷🇺", alive: true })
Language.create({ name: "Ukrainian", abbreviation: "uk", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Slavic", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, flag: "🇺🇦", alive: true })
Language.create({ name: "Belarusian", abbreviation: "be", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Slavic", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, flag: "🇧🇾", alive: true })
# Language.create({ name: "Rusyn", abbreviation: "rue", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Slavic", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, alive: true })

Language.create({ name: "Czech", abbreviation: "cs", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, flag: "🇨🇿", alive: true })
Language.create({ name: "Slovak", abbreviation: "sk", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, flag: "🇸🇰", alive: true })
Language.create({ name: "Polish", abbreviation: "pl", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, flag: "🇵🇱", alive: true })
# Language.create({ name: "Silesian", abbreviation: "szl", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
# Language.create({ name: "Kashubian", abbreviation: "csb", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
# Language.create({ name: "Upper Sorbian", abbreviation: "hsb", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, flag: "", alive: true })
# Language.create({ name: "Lower Sorbian", abbreviation: "dsb", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "West Slavic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, flag: "", alive: true })

Language.create({ name: "Bulgarian", abbreviation: "bg", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇧🇬", alive: true })
Language.create({ name: "Serbo-Croatian", abbreviation: "sh", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Macedonian", abbreviation: "mk", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇲🇰", alive: true })
Language.create({ name: "Slovene", abbreviation: "sl", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇸🇮", alive: true })

# Baltic
Language.create({ name: "Latvian", abbreviation: "lv", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Baltic", area1: "Europe", area2: "North Europe", area3: nil, notes: nil, has_gender: true, flag: "🇱🇻", alive: true })
Language.create({ name: "Lithuanian", abbreviation: "lt", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Baltic", area1: "Europe", area2: "North Europe", area3: nil, notes: nil, has_gender: true, flag: "🇱🇹", alive: true })

# Singles in Indo-European
Language.create({ name: "Greek", abbreviation: "el", alphabet: "Grek", macrofamily: "Indo-European", family: "Hellenic", subfamily: nil, area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇬🇷", alive: true })

Language.create({ name: "Albanian", abbreviation: "sq", alphabet: "Latn", macrofamily: "Indo-European", family: "Albanian", subfamily: nil, area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇦🇱", alive: true })

Language.create({ name: "Armenian", abbreviation: "hy", alphabet: "Armn", macrofamily: "Indo-European", family: "Armenian", subfamily: nil, area1: "Middle East", area2: "Caucasus", area3: "Europe", notes: nil, has_gender: false, flag: "🇦🇲", alive: true })

# Indo-Iranian
Language.create({ name: "Hindi", abbreviation: "hi", alphabet: "Deva", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Indo-Aryan", area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: true, alive: true })
Language.create({ name: "Persian", abbreviation: "fa", alphabet: "fa-Arab", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Iranic", area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Kurdish", abbreviation: "ku", alphabet: "Latn", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Iranic", area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: true, alive: true })
Language.create({ name: "Askun", abbreviation: "ask", alphabet: "Latn", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Nuristani", area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: true, alive: true })
Language.create({ name: "Ossetian", abbreviation: "os", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Scythian", area1: "Caucasus", area2: nil, area3: "Europe", notes: nil, has_gender: false, alive: true })

# Vasconic
Language.create({ name: "Basque", abbreviation: "eu", alphabet: "Latn", macrofamily: "Isolate", family: "Vasconic", subfamily: nil, area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: false, flag: "", alive: true })

# Uralic
Language.create({ name: "Finnish", abbreviation: "fi", alphabet: "Latn", macrofamily: "Uralic", family: "Finnic", subfamily: nil, area1: "Europe", area2: "Uralia", area3: "North Europe", notes: nil, has_gender: false, flag: "🇫🇮", alive: true })
Language.create({ name: "Estonian", abbreviation: "et", alphabet: "Latn", macrofamily: "Uralic", family: "Finnic", subfamily: nil, area1: "Europe", area2: "Uralia", area3: "North Europe", notes: nil, has_gender: false, flag: "🇪🇪", alive: true })
Language.create({ name: "Karelian", abbreviation: "krl", alphabet: "Latn", macrofamily: "Uralic", family: "Finnic", subfamily: nil, area1: "Europe", area2: "Uralia", area3: "North Europe", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Hungarian", abbreviation: "hu", alphabet: "Latn", macrofamily: "Uralic", family: "Ugric", subfamily: nil, area1: "Europe", area2: "Uralia", area3: "Central Europe", notes: nil, has_gender: false, flag: "🇭🇺", alive: true })
Language.create({ name: "Northern Sami", abbreviation: "se", alphabet: "Latn", macrofamily: "Uralic", family: "Sami", subfamily: nil, area1: "Europe", area2: "Uralia", area3: "Scandanavia", notes: nil, has_gender: false, alive: true })

# Dravidian
Language.create({ name: "Telugu", abbreviation: "te", alphabet: "Telu", macrofamily: "Dravidian", family: "South Central", subfamily: nil, area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Tamil", abbreviation: "ta", alphabet: "Taml", macrofamily: "Dravidian", family: "South", subfamily: nil, area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Austro-Asiatic
Language.create({ name: "Khmer", abbreviation: "km", alphabet: "Khmr", macrofamily: "Austro-Asiatic", family: "Khmeric", subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: "a.k.a Cambodian", has_gender: false, flag: "🇰🇭", alive: true })
Language.create({ name: "Vietnamese", abbreviation: "vi", alphabet: "Latn", macrofamily: "Austro-Asiatic", family: "Viet", subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: nil, has_gender: false, flag: "🇻🇳", alive: false })

# Austronesian
Language.create({ name: "Indonesian", abbreviation: "id", alphabet: "Latn", macrofamily: "Austronesian", family: nil, subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: nil, has_gender: false, flag: "🇮🇩", alive: true })
Language.create({ name: "Tagalog", abbreviation: "tl", alphabet: "Latn", macrofamily: "Austronesian", family: nil, subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Sino-Tibetan
Language.create({ name: "Chinese", abbreviation: "cmn", alphabet: "Hani", macrofamily: "Sino-Tibetan", family: nil, subfamily: nil, area1: "East Asia", area2: nil, area3: nil, notes: nil, has_gender: false, flag: "🇨🇳", alive: true })
Language.create({ name: "Tibetan", abbreviation: "bo", alphabet: "Tibt", macrofamily: "Sino-Tibetan", family: nil, subfamily: nil, area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Burmese", abbreviation: "my", alphabet: "Mymr", macrofamily: "Sino-Tibetan", family: nil, subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: nil, has_gender: false, flag: "🇲🇲", alive: true })

# Tai-Kadai
Language.create({ name: "Thai", abbreviation: "th", alphabet: "Thai", macrofamily: "Tai-Kadai", family: nil, subfamily: nil, area1: "Southeast Asia", area2: nil, area3: nil, notes: nil, has_gender: false, flag: "🇹🇭", alive: true })

# Turkish
Language.create({ name: "Turkish", abbreviation: "tk", alphabet: "Latn", macrofamily: "Turkic", family: "Oghuz", subfamily: nil, area1: "Anatolia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, flag: "🇹🇷", alive: true })
Language.create({ name: "Azerbaijani", abbreviation: "az", alphabet: "Latn", macrofamily: "Turkic", family: "Oghuz", subfamily: nil, area1: "Caucasus", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, flag: "🇦🇿", alive: true })
Language.create({ name: "Turkmen", abbreviation: "tr", alphabet: "Latn", macrofamily: "Turkic", family: "Oghuz", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, flag: "🇹🇲", alive: true })
Language.create({ name: "Gagauz", abbreviation: "gag", alphabet: "Latn", macrofamily: "Turkic", family: "Oghuz", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Uzbek", abbreviation: "uz", alphabet: "Latn", macrofamily: "Turkic", family: "Karluk", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, flag: "🇺🇿", alive: true })
Language.create({ name: "Kazakh", abbreviation: "kk", alphabet: "Latn", macrofamily: "Turkic", family: "Kipchak-Nogai", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, flag: "🇰🇿", alive: true })
Language.create({ name: "Kyrgyz", abbreviation: "ky", alphabet: "Latn", macrofamily: "Turkic", family: "Kipchak", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, flag: "🇰🇬", alive: false })
Language.create({ name: "Uyghur", abbreviation: "ug", alphabet: "Latn", macrofamily: "Turkic", family: "Karluk", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "East Asia", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Tatar", abbreviation: "tt", alphabet: "Cyrl", macrofamily: "Turkic", family: "Kipchak-Bulgar", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, alive: true })

# Mongolian
Language.create({ name: "Mongolian", abbreviation: "mn", alphabet: "Mong", macrofamily: "Mongolic", family: "Central", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, flag: "🇲🇳", alive: true })
Language.create({ name: "Kalmyk", abbreviation: "xal", alphabet: "Cyrl", macrofamily: "Mongolic", family: "Central", subfamily: nil, area1: "Caucasus", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, alive: true })

# Tungusic
Language.create({ name: "Xibe", abbreviation: "sjo", alphabet: "Mong", macrofamily: "Tungusic", family: "Southwestern", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })

# Japonic
# Language.create({ name: "Japanese", abbreviation: "ja", alphabet: "Jpan", macrofamily: "Isolate", family: "Japonic", subfamily: "Altaic", area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: true, alive: true })

# Koreanic
Language.create({ name: "Korean", abbreviation: "ko", alphabet: "Kore", macrofamily: "Isolate", family: "Koreanic", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })

# Kartvelian
Language.create({ name: "Georgian", abbreviation: "ka", alphabet: "Geor", macrofamily: "Kartvelian", family: "Zan", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: "Europe", notes: nil, has_gender: false, flag: "🇬🇪", alive: true })
Language.create({ name: "Mingrelian", abbreviation: "xmf", alphabet: "Geor", macrofamily: "Kartvelian", family: "Zan", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Laz", abbreviation: "lzz", alphabet: "Geor", macrofamily: "Kartvelian", family: "Zan", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Svan", abbreviation: "sva", alphabet: "Geor", macrofamily: "Kartvelian", family: "Svan", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: nil, notes: nil, has_gender: false, alive: true })

# Northeast Caucasian
Language.create({ name: "Avar", abbreviation: "av", alphabet: "Cyrl", macrofamily: "Northeast Caucasian", family: "Avar–Andic", subfamily: nil, area1: "Caucasus", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Northwest Caucasian
Language.create({ name: "Abaza", abbreviation: "abq", alphabet: "Cyrl", macrofamily: "Northwest Caucasian", family: "Abazgi", subfamily: nil, area1: "Caucasus", area2: nil, area3: "Europe", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Abkhaz", abbreviation: "ab", alphabet: "Cyrl", macrofamily: "Northwest Caucasian", family: "Abazgi", subfamily: nil, area1: "Caucasus", area2: nil, area3: "Europe", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Adyghe", abbreviation: "ady", alphabet: "Cyrl", macrofamily: "Northwest Caucasian", family: "Circassian", subfamily: nil, area1: "Caucasus", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Kabardian", abbreviation: "kbd", alphabet: "Cyrl", macrofamily: "Northwest Caucasian", family: "Circassian", subfamily: nil, area1: "Caucasus", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Ubykh", abbreviation: "uby", alphabet: "Cyrl", macrofamily: "Northwest Caucasian", family: nil, subfamily: "Ubykh", area1: "Caucasus", area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

# Afro-Asiatic
Language.create({ name: "Arabic", abbreviation: "ar", alphabet: "Arab", macrofamily: "Afro-Asiatic", family: "Semitic", subfamily: "Arabic", area1: "Middle East", area2: nil, area3: "Europe", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Maltese", abbreviation: "mt", alphabet: "Latn", macrofamily: "Afro-Asiatic", family: "Semitic", subfamily: "Arabic", area1: "Middle East", area2: nil, area3: "Europe", notes: nil, has_gender: true, flag: "🇲🇹", alive: true })

# Niger-Congo
# Language.create({ name: "Swahili", abbreviation: "sw", alphabet: "Latn", macrofamily: "Niger-Congo", family: nil, subfamily: nil, area1: "Africa", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Burushkaski
Language.create({ name: "Burushkaski", abbreviation: "bsk", alphabet: "Latn", macrofamily: "Isolate", family: "Burushkaski", subfamily: nil, area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Kusunda
Language.create({ name: "Kusunda", abbreviation: "kgg", alphabet: "Latn", macrofamily: "Isolate", family: "Kusunda", subfamily: nil, area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Chukotko-Kamchatkan
Language.create({ name: "Chukchi", abbreviation: "ckt", alphabet: "Cyrl", macrofamily: "Isolate", family: "Chukotko-Kamchatkan", subfamily: nil, area1: "North Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Nivkh
# Language.create({ name: "Nivkh", abbreviation: "niv", alphabet: "Cyrl", macrofamily: "Isolate", family: "Nivkh", subfamily: nil, area1: "North Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Yeniseian
Language.create({ name: "Ket", abbreviation: "ket", alphabet: "Cyrl", macrofamily: "Isolate", family: "Yeniseian", subfamily: nil, area1: "North Asia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: true })

# Ainu
Language.create({ name: "Ainu", abbreviation: "ain", alphabet: "Latn", macrofamily: "Isolate", family: "Ainu", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })

# Extinct, but famous
Language.create({ name: "Latin", abbreviation: "la", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: nil, area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, flag: "🇻🇦", alive: false })

Language.create({ name: "Ancient Greek", abbreviation: "grc", alphabet: "Latn", macrofamily: "Indo-European", subfamily: nil, family: "Hellenic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🏛️", alive: false })

Language.create({ name: "Sanskrit", abbreviation: "at", alphabet: "Latn", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Indo-Aryan", area1: "South Asia", area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Avestan", abbreviation: "ae", alphabet: "Avst", macrofamily: "Indo-European", family: "Indo-Iranian", subfamily: "Iranian", area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Tocharian A", abbreviation: "xto", alphabet: "Latn", macrofamily: "Indo-European", family: "Tocharian", subfamily: nil, area1: "Central Asia", area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })
Language.create({ name: "Tocharian B", abbreviation: "txb", alphabet: "Latn", macrofamily: "Indo-European", family: "Tocharian", subfamily: nil, area1: "Central Asia", area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Hittite", abbreviation: "hit", alphabet: "Latn", macrofamily: "Indo-European", family: "Anatolian", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Sumerian", abbreviation: "sux", alphabet: "Latn", macrofamily: "Isolate", family: "Sumerian", subfamily: nil, area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Elamite", abbreviation: "elx", alphabet: "Xsux", macrofamily: "Isolate", family: "Elamite", subfamily: nil, area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Ancient Egyptian", abbreviation: "egy", alphabet: "Egyp", macrofamily: "Afro-Asiatic", family: "Egyptian", subfamily: nil, area1: "Middle East", area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Etruscan", abbreviation: "ett", alphabet: "Ital", macrofamily: "Isolate", family: "Etruscan", subfamily: nil, area1: nil, area2: nil, area3: "Italy", notes: nil, has_gender: false, alive: false })

Language.create({ name: "Iberian", abbreviation: "xib", alphabet: "Ital", macrofamily: "Isolate", family: "Iberian", subfamily: nil, area1: "Iberia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Tartessian", abbreviation: "txr", alphabet: "Grek", macrofamily: "Isolate", family: "Tartessian", subfamily: nil, area1: "Iberia", area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

# Proto Languages
Language.create({ name: "Proto-Indo-European", abbreviation: "pie", alphabet: "Latn", macrofamily: "Indo-European", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Proto-Uralic", abbreviation: nil, alphabet: "Latn", macrofamily: "Uralic", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Proto-Basque", abbreviation: nil, alphabet: "Latn", macrofamily: "Isolate", family: "Basque", subfamily: nil, area1: "Europe", area2: "Western Europe", area3: "Iberia", notes: nil, has_gender: false, alive: false })

Language.create({ name: "Proto-Afro-Asiatic", abbreviation: nil, alphabet: "Latn", macrofamily: "Afro-Asiatic", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: true, alive: false })

Language.create({ name: "Proto-Dravidian", abbreviation: nil, alphabet: "Latn", macrofamily: "Dravidian", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Proto-Turkic", abbreviation: nil, alphabet: "Latn", macrofamily: "Turkic", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

Language.create({ name: "Proto-Austro-Asiatic", abbreviation: nil, alphabet: "Latn", macrofamily: "Austro-Asiatic", family: nil, subfamily: nil, area1: nil, area2: nil, area3: nil, notes: nil, has_gender: false, alive: false })

# Translation.create({language_id: Language.find_by(name: nil).id, word_id: Word.find_by(name: nil).id, translation: nil, romanization: nil, link: nil, etymology: nil, flag: nil, gender: nil })

Word.create({ word_name: "gold", definition: "", emoji: "🥇", category: "Elements" })
Word.create({ word_name: "silver", definition: "", emoji: "🥈", category: "Elements" })
Word.create({ word_name: "copper", definition: "", emoji: "🜠", category: "Elements" })
Word.create({ word_name: "iron", definition: "", emoji: "🜜", category: "Elements" })
Word.create({ word_name: "tin", definition: "", emoji: "♃", category: "Elements" })
Word.create({ word_name: "lead", definition: "", emoji: "🜪", category: "Elements" })
Word.create({ word_name: "mercury", definition: "", emoji: "☿", category: "Elements" })

Word.create({ word_name: "salt", definition: "", emoji: "🧂", category: "Chemicals" })
Word.create({ word_name: "bronze", definition: "", emoji: "🥉", category: "Chemicals" })
Word.create({ word_name: "brass", definition: "", emoji: "", category: "Chemicals" })
Word.create({ word_name: "water", definition: "", emoji: "💧", category: "Chemicals" })

Word.create({ word_name: "horse", definition: "", emoji: "🐎", category: "Domestic Animals" })
Word.create({ word_name: "donkey", definition: "", emoji: "🫏", category: "Domestic Animals" })
Word.create({ word_name: "ox", definition: "", emoji: "🐂", category: "Domestic Animals" })
Word.create({ word_name: "cow", definition: "", emoji: "🐮", category: "Domestic Animals" })
Word.create({ word_name: "bull", definition: "", emoji: "🐂", category: "Domestic Animals" })
Word.create({ word_name: "sheep", definition: "", emoji: "🐑", category: "Domestic Animals" })
Word.create({ word_name: "ram", definition: "", emoji: "🐏", category: "Domestic Animals" })
Word.create({ word_name: "pig", definition: "", emoji: "🐷", category: "Domestic Animals" })
Word.create({ word_name: "goat", definition: "", emoji: "🐐", category: "Domestic Animals" })
Word.create({ word_name: "dog", definition: "", emoji: "🐶", category: "Domestic Animals" })
Word.create({ word_name: "cat", definition: "", emoji: "🐱", category: "Domestic Animals" })
Word.create({ word_name: "chicken", definition: "", emoji: "🐓", category: "Domestic Animals" })

Word.create({ word_name: "wolf", definition: "", emoji: "🐺", category: "Mammals" })
Word.create({ word_name: "fox", definition: "", emoji: "🦊", category: "Mammals" })
Word.create({ word_name: "lion", definition: "", emoji: "🦁", category: "Mammals" })
Word.create({ word_name: "lynx", definition: "", emoji: "", category: "Mammals" })
Word.create({ word_name: "bear", definition: "", emoji: "🧸", category: "Mammals" })
Word.create({ word_name: "mouse", definition: "", emoji: "🐭", category: "Mammals" })
Word.create({ word_name: "otter", definition: "", emoji: "🦦", category: "Mammals" })
Word.create({ word_name: "deer", definition: "", emoji: "🦌", category: "Mammals" })
Word.create({ word_name: "badger", definition: "", emoji: "🦡", category: "Mammals" })
Word.create({ word_name: "rabbit", definition: "", emoji: "🐰", category: "Mammals" })
Word.create({ word_name: "beaver", definition: "", emoji: "🦫", category: "Mammals" })
Word.create({ word_name: "weasel", definition: "", emoji: "", category: "Mammals" })
Word.create({ word_name: "hedgehog", definition: "", emoji: "🦔", category: "Mammals" })
Word.create({ word_name: "wolverine", definition: "", emoji: "", category: "Mammals" })

Word.create({ word_name: "bird", definition: "", emoji: "🐣", category: "Birds" })
Word.create({ word_name: "feather", definition: "", emoji: "🪶", category: "Birds" })
Word.create({ word_name: "wing", definition: "", emoji: "🪽", category: "Birds" })
Word.create({ word_name: "swan", definition: "", emoji: "🦢", category: "Birds" })
Word.create({ word_name: "goose", definition: "", emoji: "🪿", category: "Birds" })
Word.create({ word_name: "owl", definition: "", emoji: "🦉", category: "Birds" })
Word.create({ word_name: "dove", definition: "", emoji: "🕊️", category: "Birds" })
Word.create({ word_name: "falcon", definition: "", emoji: "", category: "Birds" })
Word.create({ word_name: "eagle", definition: "", emoji: "🦅", category: "Birds" })
Word.create({ word_name: "hawk", definition: "", emoji: "", category: "Birds" })
# Word.create({ word_name: "robin", definition: "", emoji: "", category: "Birds" })
Word.create({ word_name: "crow", definition: "", emoji: "", category: "Birds" })
# Word.create({ word_name: "raven", definition: "", emoji: "", category: "Birds" })
Word.create({ word_name: "blackbird", definition: "", emoji: "🐦‍⬛", category: "Birds" })

Word.create({ word_name: "fish", definition: "", emoji: "🐟", category: "Fish" })
Word.create({ word_name: "trout", definition: "", emoji: "", category: "Fish" })
Word.create({ word_name: "shark", definition: "", emoji: "🦈", category: "Fish" })
Word.create({ word_name: "salmon", definition: "", emoji: "", category: "Fish" })
Word.create({ word_name: "eel", definition: "", emoji: "", category: "Fish" })

Word.create({ word_name: "turtle", definition: "", emoji: "🐢", category: "Reptiles" })
Word.create({ word_name: "snake", definition: "", emoji: "🐍", category: "Reptiles" })
Word.create({ word_name: "lizard", definition: "", emoji: "🦎", category: "Reptiles" })

Word.create({ word_name: "frog", definition: "", emoji: "🐸", category: "Amphibians" })

Word.create({ word_name: "ant", definition: "", emoji: "🐜", category: "Insects" })
Word.create({ word_name: "bee", definition: "", emoji: "🐝", category: "Insects" })
Word.create({ word_name: "flea", definition: "", emoji: "", category: "Insects" })
Word.create({ word_name: "wasp", definition: "", emoji: "", category: "Insects" })
Word.create({ word_name: "spider", definition: "", emoji: "🕷️", category: "Insects" })
Word.create({ word_name: "butterfly", definition: "", emoji: "🦋", category: "Insects" })
Word.create({ word_name: "dragonfly", definition: "", emoji: "", category: "Insects" })

Word.create({ word_name: "apple", definition: "", emoji: "🍎", category: "Food" })
Word.create({ word_name: "hazelnut", definition: "", emoji: "", category: "Food" })
Word.create({ word_name: "carrot", definition: "", emoji: "🥕", category: "Food" })
Word.create({ word_name: "pear", definition: "", emoji: "🍐", category: "Food" })
Word.create({ word_name: "olive", definition: "", emoji: "🫒", category: "Food" })
Word.create({ word_name: "grape", definition: "", emoji: "🍇", category: "Food" })
Word.create({ word_name: "peanut", definition: "", emoji: "🥜", category: "Food" })
Word.create({ word_name: "cherry", definition: "", emoji: "🍒", category: "Food" })
Word.create({ word_name: "garlic", definition: "", emoji: "🍒", category: "Food" })

Word.create({ word_name: "lemon", definition: "", emoji: "🍋", category: "Citrus" })
Word.create({ word_name: "lime", definition: "", emoji: "", category: "Citrus" })
Word.create({ word_name: "orange", definition: "", emoji: "🟠", category: "Citrus" })
Word.create({ word_name: "tangerine", definition: "", emoji: "🍊", category: "Citrus" })
Word.create({ word_name: "grapefruit", definition: "", emoji: "", category: "Citrus" })

Word.create({ word_name: "berry", definition: "", emoji: "", category: "Berries" })
Word.create({ word_name: "strawberry", definition: "", emoji: "🍓", category: "Berries" })
Word.create({ word_name: "raspberry", definition: "", emoji: "", category: "Berries" })
Word.create({ word_name: "blueberry", definition: "", emoji: "🫐", category: "Berries" })
Word.create({ word_name: "mulberry", definition: "", emoji: "", category: "Berries" })

Word.create({ word_name: "honey", definition: "", emoji: "🍯", category: "Agricultural Products" })
Word.create({ word_name: "milk", definition: "", emoji: "🥛", category: "Agricultural Products" })
Word.create({ word_name: "egg", definition: "", emoji: "🥚", category: "Agricultural Products" })
Word.create({ word_name: "wool", definition: "", emoji: "🐑➕✂️", category: "Agricultural Products" })

Word.create({ word_name: "beer", definition: "", emoji: "🍺", category: "Refined Agricultural Products" })
Word.create({ word_name: "wine", definition: "", emoji: "🍷", category: "Refined Agricultural Products" })
Word.create({ word_name: "bread", definition: "", emoji: "🍞", category: "Refined Agricultural Products" })
Word.create({ word_name: "cheese", definition: "", emoji: "🧀", category: "Refined Agricultural Products" })

Word.create({ word_name: "tree", definition: "", emoji: "🌳", category: "Plants" })
Word.create({ word_name: "flower", definition: "", emoji: "🌸", category: "Plants" })
Word.create({ word_name: "rose", definition: "", emoji: "🌹", category: "Plants" })
Word.create({ word_name: "grass", definition: "", emoji: "", category: "Plants" })
Word.create({ word_name: "forest", definition: "", emoji: "", category: "Plants" })
Word.create({ word_name: "leaf", definition: "", emoji: "🍁", category: "Plants" })
# Word.create({ word_name: "seed", definition: "", emoji: "", category: "Plants" })
Word.create({ word_name: "vine", definition: "", emoji: "", category: "Plants" })
Word.create({ word_name: "mushroom", definition: "", emoji: "🍄", category: "Plants" })

Word.create({ word_name: "amber", definition: "", emoji: "", category: "Materials" })

Word.create({ word_name: "tar", definition: "", emoji: "", category: "Materials" })
Word.create({ word_name: "wood", definition: "", emoji: "🪵", category: "Materials" })
Word.create({ word_name: "clay", definition: "", emoji: "", category: "Materials" })
Word.create({ word_name: "sand", definition: "", emoji: "", category: "Materials" })

Word.create({ word_name: "coal", definition: "", emoji: "", category: "Industrial Materials" })
Word.create({ word_name: "oil", definition: "", emoji: "🛢️", category: "Industrial Materials" })
Word.create({ word_name: "concrete", definition: "", emoji: "", category: "Industrial Materials" })
Word.create({ word_name: "steel", definition: "", emoji: "", category: "Industrial Materials" })

Word.create({ word_name: "mouth", definition: "", emoji: "👄", category: "Head Parts" })
Word.create({ word_name: "tongue", definition: "", emoji: "👅", category: "Head Parts" })
Word.create({ word_name: "tooth", definition: "", emoji: "🦷", category: "Head Parts" })
Word.create({ word_name: "ear", definition: "", emoji: "👂", category: "Head Parts" })
Word.create({ word_name: "eye", definition: "", emoji: "👁️", category: "Head Parts" })
Word.create({ word_name: "nose", definition: "", emoji: "👃", category: "Head Parts" })

Word.create({ word_name: "blood", definition: "", emoji: "🩸", category: "Body Parts" })
Word.create({ word_name: "arm", definition: "", emoji: "💪", category: "Body Parts" })
Word.create({ word_name: "hand", definition: "", emoji: "✋", category: "Body Parts" })
Word.create({ word_name: "finger", definition: "", emoji: "👇", category: "Body Parts" })
Word.create({ word_name: "thumb", definition: "", emoji: "👍", category: "Body Parts" })
Word.create({ word_name: "leg", definition: "", emoji: "🦵", category: "Body Parts" })
Word.create({ word_name: "foot", definition: "", emoji: "👣", category: "Body Parts" })
Word.create({ word_name: "toe", definition: "", emoji: "", category: "Body Parts" })
Word.create({ word_name: "bone", definition: "", emoji: "🦴", category: "Body Parts" })
Word.create({ word_name: "hair", definition: "", emoji: "💈", category: "Body Parts" })

Word.create({ word_name: "brain", definition: "", emoji: "🧠", category: "Organs" })
Word.create({ word_name: "heart", definition: "", emoji: "❤️", category: "Organs" })
Word.create({ word_name: "lung", definition: "", emoji: "", category: "Organs" })
Word.create({ word_name: "liver", definition: "", emoji: "", category: "Organs" })
Word.create({ word_name: "stomach", definition: "", emoji: "", category: "Organs" })

Word.create({ word_name: "snow", definition: "", emoji: "❄️", category: "Weather" })
Word.create({ word_name: "rain", definition: "", emoji: "🌧️", category: "Weather" })
Word.create({ word_name: "hail", definition: "", emoji: "", category: "Weather" })
Word.create({ word_name: "ice", definition: "", emoji: "🧊", category: "Weather" })
Word.create({ word_name: "frost", definition: "", emoji: "", category: "Weather" })
Word.create({ word_name: "wind", definition: "", emoji: "💨", category: "Weather" })

Word.create({ word_name: "cloud", definition: "", emoji: "☁️", category: "Atmosphere" })
Word.create({ word_name: "fog", definition: "", emoji: "🌫️", category: "Atmosphere" })
Word.create({ word_name: "rainbow", definition: "", emoji: "🌈", category: "Atmosphere" })
Word.create({ word_name: "lightning", definition: "", emoji: "🌩️", category: "Atmosphere" })
Word.create({ word_name: "thunder", definition: "", emoji: "", category: "Atmosphere" })
Word.create({ word_name: "steam", definition: "", emoji: "", category: "Atmosphere" })
Word.create({ word_name: "smoke", definition: "", emoji: "💨", category: "Atmosphere" })

Word.create({ word_name: "dawn", definition: "", emoji: "", category: "Time of Day" })
Word.create({ word_name: "day", definition: "", emoji: "", category: "Time of Day" })
Word.create({ word_name: "noon", definition: "", emoji: "", category: "Time of Day" })
Word.create({ word_name: "night", definition: "", emoji: "✨", category: "Time of Day" })
Word.create({ word_name: "dusk", definition: "", emoji: "", category: "Time of Day" })

Word.create({ word_name: "winter", definition: "", emoji: "⛄️", category: "Seasons" })
Word.create({ word_name: "summer", definition: "", emoji: "", category: "Seasons" })
Word.create({ word_name: "autumn", definition: "", emoji: "🍂", category: "Seasons" })

Word.create({ word_name: "sun", definition: "", emoji: "☀️", category: "Astronomy" })
Word.create({ word_name: "moon", definition: "", emoji: "🌕", category: "Astronomy" })
Word.create({ word_name: "sky", definition: "", emoji: "", category: "Astronomy" })
Word.create({ word_name: "star", definition: "", emoji: "⭐️", category: "Astronomy" })

Word.create({ word_name: "sea", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "mountain", definition: "", emoji: "🗻", category: "Geography" })
Word.create({ word_name: "lake", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "river", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "island", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "forest", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "swamp", definition: "", emoji: "", category: "Geography" })
Word.create({ word_name: "volcano", definition: "", emoji: "🌋", category: "Geography" })

Word.create({ word_name: "wheel", definition: "", emoji: "🛞", category: "Technology" })
Word.create({ word_name: "sail", definition: "", emoji: "", category: "Technology" })
Word.create({ word_name: "boat", definition: "", emoji: "⛵️", category: "Technology" })
Word.create({ word_name: "oven", definition: "", emoji: "", category: "Technology" })
Word.create({ word_name: "fire", definition: "", emoji: "🔥", category: "Technology" })
Word.create({ word_name: "anvil", definition: "", emoji: "", category: "Technology" })
Word.create({ word_name: "hammer", definition: "", emoji: "🔨", category: "Technology" })
Word.create({ word_name: "yoke", definition: "", emoji: "", category: "Technology" })
Word.create({ word_name: "candle", definition: "", emoji: "🕯️", category: "Technology" })
Word.create({ word_name: "shoe", definition: "", emoji: "👟", category: "Technology" })
Word.create({ word_name: "key", definition: "", emoji: "🔑", category: "Technology" })
Word.create({ word_name: "money", definition: "", emoji: "💰", category: "Technology" })
Word.create({ word_name: "chariot", definition: "", emoji: "", category: "Technology" })
Word.create({ word_name: "umbrella", definition: "", emoji: "☂️", category: "Technology" })

Word.create({ word_name: "thread", definition: "", emoji: "🧵", category: "Textile Technology" })
Word.create({ word_name: "needle", definition: "", emoji: "🪡", category: "Textile Technology" })
Word.create({ word_name: "thimble", definition: "", emoji: "", category: "Textile Technology" })
Word.create({ word_name: "loom", definition: "", emoji: "", category: "Textile Technology" })

Word.create({ word_name: "cloth", definition: "", emoji: "", category: "Textiles" })
Word.create({ word_name: "silk", definition: "", emoji: "", category: "Textiles" })
Word.create({ word_name: "cotton", definition: "", emoji: "", category: "Textiles" })

Word.create({ word_name: "shield", definition: "", emoji: "🛡️", category: "Military" })
Word.create({ word_name: "sword", definition: "", emoji: "🗡️", category: "Military" })
Word.create({ word_name: "bow", definition: "", emoji: "🏹", category: "Military" })
Word.create({ word_name: "arrow", definition: "", emoji: "→", category: "Military" })
Word.create({ word_name: "spear", definition: "", emoji: "", category: "Military" })

Word.create({ word_name: "castle", definition: "", emoji: "🏰", category: "Buildings" })
Word.create({ word_name: "bridge", definition: "", emoji: "", category: "Buildings" })

Word.create({ word_name: "wall", definition: "", emoji: "", category: "City Life" })
Word.create({ word_name: "soap", definition: "", emoji: "🧼", category: "City Life" })
Word.create({ word_name: "pharmacy", definition: "", emoji: "", category: "City Life" })

Word.create({ word_name: "song", definition: "", emoji: "", category: "Culture" })
Word.create({ word_name: "king", definition: "", emoji: "👑", category: "Culture" })
Word.create({ word_name: "book", definition: "", emoji: "📘", category: "Culture" })

Word.create({ word_name: "bible", definition: "", emoji: "", category: "Christianity" })
Word.create({ word_name: "church", definition: "", emoji: "⛪️", category: "Christianity" })
Word.create({ word_name: "christmas", definition: "", emoji: "", category: "Christianity" })
Word.create({ word_name: "easter", definition: "", emoji: "", category: "Christianity" })
Word.create({ word_name: "bishop", definition: "", emoji: "♝", category: "Christianity" })

Word.create({ word_name: "Finland", definition: "", emoji: "🇫🇮", category: "Countries" })
Word.create({ word_name: "Germany", definition: "", emoji: "🇩🇪", category: "Countries" })
Word.create({ word_name: "Armenia", definition: "", emoji: "🇦🇲", category: "Countries" })
Word.create({ word_name: "Albania", definition: "", emoji: "🇦🇱", category: "Countries" })
Word.create({ word_name: "Egypt", definition: "", emoji: "🇪🇬", category: "Countries" })

Word.create({ word_name: "Vienna", definition: "", emoji: "", category: "Cities" })
# Word.create({ word_name: "Bratislava", definition: "", emoji: "", category: "Cities" })

Word.create({ word_name: "Sunday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Monday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Tuesday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Wednesday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Thursday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Friday", definition: "", emoji: "", category: "Weekdays" })
Word.create({ word_name: "Saturday", definition: "", emoji: "", category: "Weekdays" })

Word.create({ word_name: "red", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "orange", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "yellow", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "green", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "blue", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "purple", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "black", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "white", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "gray", definition: "", emoji: "", category: "Colors" })
Word.create({ word_name: "pink", definition: "", emoji: "", category: "Colors" })

puts "Seeded database."
