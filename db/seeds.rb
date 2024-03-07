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
Language.create({ name: "Luxembourgish", abbreviation: "lb", alphabet: "Latn", macrofamily: "Indo-European", family: "Germanic", subfamily: "West Germanic", area1: "Europe", area2: "Central Europe", area3: "Germany", notes: nil, has_gender: true, alive: true })

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
Language.create({ name: "Ladin", abbreviation: "lld", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Rhaeto-Romance", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
Language.create({ name: "Friulian", abbreviation: "fur", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Rhaeto-Romance", area1: "Europe", area2: "Central Europe", area3: "Italy", notes: nil, has_gender: true, alive: true })
["pms", "lij", "vnc", "nap", "scn", "sc"]
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

Language.create({ name: "Sardinian", abbreviation: "sc", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Sardinian", area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, alive: flag: "", true })

Language.create({ name: "Romanian", abbreviation: "ro", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: "Eastern Romance", area1: "Europe", area2: "East Europe", area3: nil, notes: nil, has_gender: true, alive: flag: "🇷🇴", true })
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

Language.create({ name: "Bulgarian", abbreviation: "bg", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Serbo-Croatian", abbreviation: "sh", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Macedonian", abbreviation: "mk", alphabet: "Cyrl", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "", alive: true })
Language.create({ name: "Slovene", abbreviation: "sl", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "South Slavic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, flag: "🇸🇮", alive: true })

# Baltic
Language.create({ name: "Latvian", abbreviation: "lv", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Baltic", area1: "Europe", area2: "North Europe", area3: nil, notes: nil, has_gender: true, flag: "🇱🇻", alive: true })
Language.create({ name: "Lithuanian", abbreviation: "lt", alphabet: "Latn", macrofamily: "Indo-European", family: "Balto-Slavic", subfamily: "East Baltic", area1: "Europe", area2: "North Europe", area3: nil, notes: nil, has_gender: true, flag: "🇱🇹", alive: true })

# Singles in Indo-European
Language.create({ name: "Greek", abbreviation: "el", alphabet: "Grek", macrofamily: "Indo-European", family: "Hellenic", subfamily: nil, area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, alive: flag:"🇬🇷", true })

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
Language.create({ name: "Kazakh", abbreviation: "kk", alphabet: "Latn", macrofamily: "Turkic", family: "Kipchak-Nogai", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, flag:"🇰🇿", alive: true })
Language.create({ name: "Kyrgyz", abbreviation: "ky", alphabet: "Latn", macrofamily: "Turkic", family: "Kipchak", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, flag: "🇰🇬", alive: false })
Language.create({ name: "Uyghur", abbreviation: "ug", alphabet: "Latn", macrofamily: "Turkic", family: "Karluk", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "East Asia", notes: nil, has_gender: false, alive: true })
Language.create({ name: "Tatar", abbreviation: "tt", alphabet: "Cyrl", macrofamily: "Turkic", family: "Kipchak-Bulgar", subfamily: nil, area1: "Central Asia", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, alive: true })

# Mongolian
Language.create({ name: "Mongolian", abbreviation: "mn", alphabet: "Mong", macrofamily: "Mongolic", family: "Central", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })
Language.create({ name: "Kalmyk", abbreviation: "xal", alphabet: "Cyrl", macrofamily: "Mongolic", family: "Central", subfamily: nil, area1: "Caucasus", area2: "Altaic", area3: "Europe", notes: nil, has_gender: false, alive: true })

# Tungusic
Language.create({ name: "Xibe", abbreviation: "sjo", alphabet: "Mong", macrofamily: "Tungusic", family: "Southwestern", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })

# Japonic
# Language.create({ name: "Japanese", abbreviation: "ja", alphabet: "Jpan", macrofamily: "Isolate", family: "Japonic", subfamily: "Altaic", area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: true, alive: true })

# Koreanic
Language.create({ name: "Korean", abbreviation: "ko", alphabet: "Kore", macrofamily: "Isolate", family: "Koreanic", subfamily: nil, area1: "East Asia", area2: "Altaic", area3: nil, notes: nil, has_gender: false, alive: true })

# Kartvelian
Language.create({ name: "Georgian", abbreviation: "ka", alphabet: "Geor", macrofamily: "Kartvelian", family: "Zan", subfamily: nil, area1: "Anatolia", area2: "Caucasus", area3: "Europe", notes: nil, has_gender: false, alive: true })
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
Language.create({ name: "Maltese", abbreviation: "mt", alphabet: "Latn", macrofamily: "Afro-Asiatic", family: "Semitic", subfamily: "Arabic", area1: "Middle East", area2: nil, area3: "Europe", notes: nil, has_gender: true, alive: true })

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
Language.create({ name: "Latin", abbreviation: "la", alphabet: "Latn", macrofamily: "Indo-European", family: "Italic", subfamily: nil, area1: "Europe", area2: "Western Europe", area3: "Italy", notes: nil, has_gender: true, flag: "🇻🇦",alive: false })

Language.create({ name: "Ancient Greek", abbreviation: "grc", alphabet: "Latn", macrofamily: "Indo-European", subfamily: nil, family: "Hellenic", area1: "Europe", area2: "South Europe", area3: nil, notes: nil, has_gender: true, alive: false })

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

# Translation.create({language_id: Language.find_by(name: nil).id, word_id: Word.find_by(name: nil).id, translation: nil, romanization: nil, link: nil, etymology: nil, gender: nil })

Word.create({word_name: 'Gold', definition: '', emoji: '🥇', category: 'Elements'})
Word.create({word_name: 'Silver', definition: '', emoji: '🥈', category: 'Elements'})
Word.create({word_name: 'Copper', definition: '', emoji: '🜠', category: 'Elements'})
Word.create({word_name: 'Iron', definition: '', emoji: '🜜', category: 'Elements'})
Word.create({word_name: 'Tin', definition: '', emoji: '♃', category: 'Elements'})
Word.create({word_name: 'Lead', definition: '', emoji: '🜪', category: 'Elements'})
Word.create({word_name: 'Mercury', definition: '', emoji: '☿', category: 'Elements'})

Word.create({word_name: 'Salt', definition: '', emoji: '🧂', category: 'Chemicals'})
Word.create({word_name: 'Bronze', definition: '', emoji: '🥉', category: 'Chemicals'})
Word.create({word_name: 'Brass', definition: '', emoji: '', category: 'Chemicals'})
Word.create({word_name: 'Water', definition: '', emoji: '💧', category: 'Chemicals'})

Word.create({word_name: 'Horse', definition: '', emoji: '🐎', category: 'Domestic Animals'})
Word.create({word_name: 'Donkey', definition: '', emoji: '🫏', category: 'Domestic Animals'})
Word.create({word_name: 'Ox', definition: '', emoji: '🐂', category: 'Domestic Animals'})
Word.create({word_name: 'Cow', definition: '', emoji: '🐮', category: 'Domestic Animals'})
Word.create({word_name: 'Bull', definition: '', emoji: '🐂', category: 'Domestic Animals'})
Word.create({word_name: 'Sheep', definition: '', emoji: '🐑', category: 'Domestic Animals'})
Word.create({word_name: 'Ram', definition: '', emoji: '🐏', category: 'Domestic Animals'})
Word.create({word_name: 'Pig', definition: '', emoji: '🐷', category: 'Domestic Animals'})
Word.create({word_name: 'Goat', definition: '', emoji: '🐐', category: 'Domestic Animals'})
Word.create({word_name: 'Dog', definition: '', emoji: '🐶', category: 'Domestic Animals'})
Word.create({word_name: 'Cat', definition: '', emoji: '🐱', category: 'Domestic Animals'})
Word.create({word_name: 'Chicken', definition: '', emoji: '🐓', category: 'Domestic Animals'})

Word.create({word_name: 'Wolf', definition: '', emoji: '🐺', category: 'Mammals'})
Word.create({word_name: 'Fox', definition: '', emoji: '🦊', category: 'Mammals'})
Word.create({word_name: 'Lion', definition: '', emoji: '🦁', category: 'Mammals'})
Word.create({word_name: 'Lynx', definition: '', emoji: '', category: 'Mammals'})
Word.create({word_name: 'Bear', definition: '', emoji: '🧸', category: 'Mammals'})
Word.create({word_name: 'Mouse', definition: '', emoji: '🐭', category: 'Mammals'})
Word.create({word_name: 'Otter', definition: '', emoji: '🦦', category: 'Mammals'})
Word.create({word_name: 'Deer', definition: '', emoji: '🦌', category: 'Mammals'})
Word.create({word_name: 'Badger', definition: '', emoji: '🦡', category: 'Mammals'})
Word.create({word_name: 'Rabbit', definition: '', emoji: '🐰', category: 'Mammals'})
Word.create({word_name: 'Beaver', definition: '', emoji: '🦫', category: 'Mammals'})
Word.create({word_name: 'Weasel', definition: '', emoji: '', category: 'Mammals'})
Word.create({word_name: 'Hedgehog', definition: '', emoji: '🦔', category: 'Mammals'})

Word.create({word_name: 'Bird', definition: '', emoji: '🐣', category: 'Birds'})
Word.create({word_name: 'Feather', definition: '', emoji: '🪶', category: 'Birds'})
Word.create({word_name: 'Wing', definition: '', emoji: '🪽', category: 'Birds'})
Word.create({word_name: 'Swan', definition: '', emoji: '🦢', category: 'Birds'})
Word.create({word_name: 'Goose', definition: '', emoji: '🦉', category: 'Birds'})
Word.create({word_name: 'Owl', definition: '', emoji: '🦉', category: 'Birds'})
Word.create({word_name: 'Falcon', definition: '', emoji: '', category: 'Birds'})
Word.create({word_name: 'Crow', definition: '', emoji: '', category: 'Birds'})
Word.create({word_name: 'Dove', definition: '', emoji: '🕊️', category: 'Birds'})
Word.create({word_name: 'Eagle', definition: '', emoji: '🦅', category: 'Birds'})
Word.create({word_name: 'Gull', definition: '', emoji: '', category: 'Birds'})
Word.create({word_name: 'Robin', definition: '', emoji: '', category: 'Birds'})
Word.create({word_name: 'Raven', definition: '', emoji: '', category: 'Birds'})
Word.create({word_name: 'Blackbird', definition: '', emoji: '🐦‍⬛', category: 'Birds'})

Word.create({word_name: 'Fish', definition: '', emoji: '🪵', category: 'Fish'})
Word.create({word_name: 'Trout', definition: '', emoji: '', category: 'Fish'})
Word.create({word_name: 'Shark', definition: '', emoji: '🦈', category: 'Fish'})
Word.create({word_name: 'Salmon', definition: '', emoji: '', category: 'Fish'})
Word.create({word_name: 'Eel', definition: '', emoji: '🐢', category: 'Fish'})

Word.create({word_name: 'Turtle', definition: '', emoji: '', category: 'Reptiles'})
Word.create({word_name: 'Snake', definition: '', emoji: '🐍', category: 'Reptiles'})
Word.create({word_name: 'Lizard', definition: '', emoji: '🦎', category: 'Reptiles'})

Word.create({word_name: 'Frog', definition: '', emoji: '🐸', category: 'Amphibians'})

Word.create({word_name: 'Ant', definition: '', emoji: '🐜', category: 'Insects'})
Word.create({word_name: 'Bee', definition: '', emoji: '🐝', category: 'Insects'})
Word.create({word_name: 'Flea', definition: '', emoji: '', category: 'Insects'})
Word.create({word_name: 'Wasp', definition: '', emoji: '', category: 'Insects'})
Word.create({word_name: 'Spider', definition: '', emoji: '🕷️', category: 'Insects'})
Word.create({word_name: 'Butterfly', definition: '', emoji: '🦋', category: 'Insects'})
Word.create({word_name: 'Dragonfly', definition: '', emoji: '', category: 'Insects'})

Word.create({word_name: 'Apple', definition: '', emoji: '🍎', category: 'Food'})
Word.create({word_name: 'Hazelnut', definition: '', emoji: '', category: 'Food'})
Word.create({word_name: 'Carrot', definition: '', emoji: '🥕', category: 'Food'})
Word.create({word_name: 'Pear', definition: '', emoji: '🍐', category: 'Food'})
Word.create({word_name: 'Olive', definition: '', emoji: '🫒', category: 'Food'})
Word.create({word_name: 'Grape', definition: '', emoji: '🍇', category: 'Food'})
Word.create({word_name: 'Peanut', definition: '', emoji: '🥜', category: 'Food'})
Word.create({word_name: 'Cherry', definition: '', emoji: '🍒', category: 'Food'})

Word.create({word_name: 'Lemon', definition: '', emoji: '🍋', category: 'Citrus'})
Word.create({word_name: 'Lime', definition: '', emoji: '', category: 'Citrus'})
Word.create({word_name: 'Orange', definition: '', emoji: '🍊', category: 'Citrus'})
Word.create({word_name: 'Tangerine', definition: '', emoji: '🍊', category: 'Citrus'})
Word.create({word_name: 'Grapefruit', definition: '', emoji: '', category: 'Citrus'})

Word.create({word_name: 'Berry', definition: '', emoji: '', category: 'Berries'})
Word.create({word_name: 'Strawberry', definition: '', emoji: '🍓', category: 'Berries'})
Word.create({word_name: 'Raspberry', definition: '', emoji: '', category: 'Berries'})
Word.create({word_name: 'Blueberry', definition: '', emoji: '🫐', category: 'Berries'})
Word.create({word_name: 'Mulberry', definition: '', emoji: '', category: 'Berries'})

Word.create({word_name: 'Honey', definition: '', emoji: '🍯', category: 'Agricultural Products'})
Word.create({word_name: 'Milk', definition: '', emoji: '🥛', category: 'Agricultural Products'})
Word.create({word_name: 'Egg', definition: '', emoji: '🥚', category: 'Agricultural Products'})
Word.create({word_name: 'Wool', definition: '', emoji: '🐑➕✂️', category: 'Agricultural Products'})

Word.create({word_name: 'Beer', definition: '', emoji: '🍺', category: 'Refined Agricultural Products'})
Word.create({word_name: 'Wine', definition: '', emoji: '🍷', category: 'Refined Agricultural Products'})
Word.create({word_name: 'Bread', definition: '', emoji: '🍞', category: 'Refined Agricultural Products'})
Word.create({word_name: 'Cheese', definition: '', emoji: '🧀', category: 'Refined Agricultural Products'})

Word.create({word_name: 'Tree', definition: '', emoji: '🌳', category: 'Plants'})
Word.create({word_name: 'Flower', definition: '', emoji: '🌸', category: 'Plants'})
Word.create({word_name: 'Rose', definition: '', emoji: '🌹', category: 'Plants'})
Word.create({word_name: 'Grass', definition: '', emoji: '', category: 'Plants'})
Word.create({word_name: 'Forest', definition: '', emoji: '', category: 'Plants'})
Word.create({word_name: 'Leaf', definition: '', emoji: '🍁', category: 'Plants'})
Word.create({word_name: 'Seed', definition: '', emoji: '', category: 'Plants'})
Word.create({word_name: 'Vine', definition: '', emoji: '', category: 'Plants'})
Word.create({word_name: 'Mushroom', definition: '', emoji: '🍄', category: 'Plants'})

Word.create({word_name: 'Amber', definition: '', emoji: '', category: 'Materials'})

Word.create({word_name: 'Tar', definition: '', emoji: '', category: 'Materials'})
Word.create({word_name: 'Wood', definition: '', emoji: '🪵', category: 'Materials'})
Word.create({word_name: 'Clay', definition: '', emoji: '', category: 'Materials'})
Word.create({word_name: 'Sand', definition: '', emoji: '', category: 'Materials'})

Word.create({word_name: 'Coal', definition: '', emoji: '', category: 'Industrial Materials'})
Word.create({word_name: 'Oil', definition: '', emoji: '🛢️', category: 'Industrial Materials'})
Word.create({word_name: 'Concrete', definition: '', emoji: '', category: 'Industrial Materials'})
Word.create({word_name: 'Steel', definition: '', emoji: '', category: 'Industrial Materials'})

Word.create({word_name: 'Mouth', definition: '', emoji: '👄', category: 'Head Parts'})
Word.create({word_name: 'Tongue', definition: '', emoji: '👅', category: 'Head Parts'})
Word.create({word_name: 'Tooth', definition: '', emoji: '🦷', category: 'Head Parts'})
Word.create({word_name: 'Ear', definition: '', emoji: '👂', category: 'Head Parts'})
Word.create({word_name: 'Eye', definition: '', emoji: '👁️', category: 'Head Parts'})
Word.create({word_name: 'Nose', definition: '', emoji: '👃', category: 'Head Parts'})

Word.create({word_name: 'Blood', definition: '', emoji: '🩸', category: 'Body Parts'})
Word.create({word_name: 'Arm', definition: '', emoji: '💪', category: 'Body Parts'})
Word.create({word_name: 'Hand', definition: '', emoji: '✋', category: 'Body Parts'})
Word.create({word_name: 'Finger', definition: '', emoji: '👇', category: 'Body Parts'})
Word.create({word_name: 'Thumb', definition: '', emoji: '👍', category: 'Body Parts'})
Word.create({word_name: 'Leg', definition: '', emoji: '🦵', category: 'Body Parts'})
Word.create({word_name: 'Foot', definition: '', emoji: '👣', category: 'Body Parts'})
Word.create({word_name: 'Toe', definition: '', emoji: '', category: 'Body Parts'})
Word.create({word_name: 'Bone', definition: '', emoji: '🦴', category: 'Body Parts'})
Word.create({word_name: 'Hair', definition: '', emoji: '💈', category: 'Body Parts'})

Word.create({word_name: 'Brain', definition: '', emoji: '🧠', category: 'Organs'})
Word.create({word_name: 'Heart', definition: '', emoji: '❤️', category: 'Organs'})
Word.create({word_name: 'Lung', definition: '', emoji: '', category: 'Organs'})
Word.create({word_name: 'Liver', definition: '', emoji: '', category: 'Organs'})
Word.create({word_name: 'Stomach', definition: '', emoji: '', category: 'Organs'})

Word.create({word_name: 'Snow', definition: '', emoji: '❄️', category: 'Weather'})
Word.create({word_name: 'Rain', definition: '', emoji: '🌧️', category: 'Weather'})
Word.create({word_name: 'Hail', definition: '', emoji: '', category: 'Weather'})
Word.create({word_name: 'Ice', definition: '', emoji: '🧊', category: 'Weather'})
Word.create({word_name: 'Frost', definition: '', emoji: '', category: 'Weather'})
Word.create({word_name: 'Wind', definition: '', emoji: '💨', category: 'Weather'})

Word.create({word_name: 'Cloud', definition: '', emoji: '☁️', category: 'Atmosphere'})
Word.create({word_name: 'Fog', definition: '', emoji: '🌫️', category: 'Atmosphere'})
Word.create({word_name: 'Rainbow', definition: '', emoji: '🌈', category: 'Atmosphere'})
Word.create({word_name: 'Thunder', definition: '', emoji: '', category: 'Atmosphere'})
Word.create({word_name: 'Lightning', definition: '', emoji: '🌩️', category: 'Atmosphere'})
Word.create({word_name: 'Steam', definition: '', emoji: '', category: 'Atmosphere'})
Word.create({word_name: 'Smoke', definition: '', emoji: '💨', category: 'Atmosphere'})

Word.create({word_name: 'Dawn', definition: '', emoji: '', category: 'Time of Day'})
Word.create({word_name: 'Day', definition: '', emoji: '', category: 'Time of Day'})
Word.create({word_name: 'Noon', definition: '', emoji: '', category: 'Time of Day'})
Word.create({word_name: 'Night', definition: '', emoji: '✨', category: 'Time of Day'})
Word.create({word_name: 'Dusk', definition: '', emoji: '', category: 'Time of Day'})

Word.create({word_name: 'Winter', definition: '', emoji: '⛄️', category: 'Seasons'})
Word.create({word_name: 'Summer', definition: '', emoji: '', category: 'Seasons'})
Word.create({word_name: 'Autumn', definition: '', emoji: '🍂', category: 'Seasons'})

Word.create({word_name: 'Sun', definition: '', emoji: '☀️', category: 'Astronomy'})
Word.create({word_name: 'Moon', definition: '', emoji: '🌕', category: 'Astronomy'})
Word.create({word_name: 'Sky', definition: '', emoji: '', category: 'Astronomy'})
Word.create({word_name: 'Star', definition: '', emoji: '⭐️', category: 'Astronomy'})

Word.create({word_name: 'Sea', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'Mountain', definition: '', emoji: '🗻', category: 'Geography'})
Word.create({word_name: 'Lake', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'River', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'Island', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'Forest', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'Swamp', definition: '', emoji: '', category: 'Geography'})
Word.create({word_name: 'Volcano', definition: '', emoji: '🌋', category: 'Geography'})

Word.create({word_name: 'Wheel', definition: '', emoji: '🛞', category: 'Technology'})
Word.create({word_name: 'Sail', definition: '', emoji: '', category: 'Technology'})
Word.create({word_name: 'Boat', definition: '', emoji: '⛵️', category: 'Technology'})
Word.create({word_name: 'Oven', definition: '', emoji: '', category: 'Technology'})
Word.create({word_name: 'Fire', definition: '', emoji: '🔥', category: 'Technology'})
Word.create({word_name: 'Anvil', definition: '', emoji: '', category: 'Technology'})
Word.create({word_name: 'Hammer', definition: '', emoji: '🔨', category: 'Technology'})
Word.create({word_name: 'Yoke', definition: '', emoji: '', category: 'Technology'})
Word.create({word_name: 'Candle', definition: '', emoji: '🕯️', category: 'Technology'})
Word.create({word_name: 'Shoe', definition: '', emoji: '👟', category: 'Technology'})
Word.create({word_name: 'Key', definition: '', emoji: '🔑', category: 'Technology'})
Word.create({word_name: 'Money', definition: '', emoji: '💰', category: 'Technology'})
Word.create({word_name: 'Chariot', definition: '', emoji: '', category: 'Technology'})
Word.create({word_name: 'Umbrella', definition: '', emoji: '☂️', category: 'Technology'})

Word.create({word_name: 'Thread', definition: '', emoji: '🧵', category: 'Textile Technology'})
Word.create({word_name: 'Needle', definition: '', emoji: '🪡', category: 'Textile Technology'})
Word.create({word_name: 'Thimble', definition: '', emoji: '', category: 'Textile Technology'})
Word.create({word_name: 'Loom', definition: '', emoji: '', category: 'Textile Technology'})

Word.create({word_name: 'Cloth', definition: '', emoji: '', category: 'Textiles'})
Word.create({word_name: 'Silk', definition: '', emoji: '', category: 'Textiles'})
Word.create({word_name: 'Cotton', definition: '', emoji: '', category: 'Textiles'})

Word.create({word_name: 'Shield', definition: '', emoji: '🛡️', category: 'Military'})
Word.create({word_name: 'Sword', definition: '', emoji: '🗡️', category: 'Military'})
Word.create({word_name: 'Bow', definition: '', emoji: '🏹', category: 'Military'})
Word.create({word_name: 'Arrow', definition: '', emoji: '', category: 'Military'})
Word.create({word_name: 'Spear', definition: '', emoji: '', category: 'Military'})

Word.create({word_name: 'Castle', definition: '', emoji: '🏰', category: 'Buildings'})
Word.create({word_name: 'Bridge', definition: '', emoji: '', category: 'Buildings'})

Word.create({word_name: 'Wall', definition: '', emoji: '', category: 'City Life'})
Word.create({word_name: 'Soap', definition: '', emoji: '🧼', category: 'City Life'})
Word.create({word_name: 'Pharmacy', definition: '', emoji: '', category: 'City Life'})

Word.create({word_name: 'Song', definition: '', emoji: '', category: 'Culture'})
Word.create({word_name: 'King', definition: '', emoji: '👑', category: 'Culture'})
Word.create({word_name: 'Book', definition: '', emoji: '📘', category: 'Culture'})

Word.create({word_name: 'Bible', definition: '', emoji: '', category: 'Christianity'})
Word.create({word_name: 'Church', definition: '', emoji: '⛪️', category: 'Christianity'})
Word.create({word_name: 'Christmas', definition: '', emoji: '', category: 'Christianity'})
Word.create({word_name: 'Easter', definition: '', emoji: '', category: 'Christianity'})
Word.create({word_name: 'Bishop', definition: '', emoji: '♝', category: 'Christianity'})

Word.create({word_name: 'Finland', definition: '', emoji: '🇫🇮', category: 'Countries'})
Word.create({word_name: 'Germany', definition: '', emoji: '🇩🇪', category: 'Countries'})
Word.create({word_name: 'Armenia', definition: '', emoji: '🇦🇲', category: 'Countries'})
Word.create({word_name: 'Albania', definition: '', emoji: '🇦🇱', category: 'Countries'})
Word.create({word_name: 'Egypt', definition: '', emoji: '🇪🇬', category: 'Countries'})

Word.create({word_name: 'Vienna', definition: '', emoji: '', category: 'Cities'})
Word.create({word_name: 'Bratislava', definition: '', emoji: '', category: 'Cities'})

Word.create({word_name: 'Sunday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Monday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Tuesday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Wednesdday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Thursday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Friday', definition: '', emoji: '', category: 'Weekdays'})
Word.create({word_name: 'Saturday', definition: '', emoji: '', category: 'Weekdays'})

Word.create({word_name: 'Red', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Orange', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Yellow', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Green', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Blue', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Purple', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Black', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'White', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Gray', definition: '', emoji: '', category: 'Colors'})
Word.create({word_name: 'Pink', definition: '', emoji: '', category: 'Colors'})

puts "Seeded database."
