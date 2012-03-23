module entity;

immutable dchar[string] namedCharacters;
shared static this()
{
    namedCharacters = _init;
}

enum _init = [
"AElig"                        : '\U000000C6', // LATIN CAPITAL LETTER AE
"AMP"                          : '\x26'      , // AMPERSAND
"Aacgr"                        : '\U00000386', // GREEK CAPITAL LETTER ALPHA WITH TONOS
"Aacute"                       : '\U000000C1', // LATIN CAPITAL LETTER A WITH ACUTE
"Abreve"                       : '\U00000102', // LATIN CAPITAL LETTER A WITH BREVE
"Acirc"                        : '\U000000C2', // LATIN CAPITAL LETTER A WITH CIRCUMFLEX
"Acy"                          : '\U00000410', // CYRILLIC CAPITAL LETTER A
"Afr"                          : '\U0001D504', // MATHEMATICAL FRAKTUR CAPITAL A
"Agr"                          : '\U00000391', // GREEK CAPITAL LETTER ALPHA
"Agrave"                       : '\U000000C0', // LATIN CAPITAL LETTER A WITH GRAVE
"Alpha"                        : '\U00000391', // GREEK CAPITAL LETTER ALPHA
"Amacr"                        : '\U00000100', // LATIN CAPITAL LETTER A WITH MACRON
"And"                          : '\U00002A53', // DOUBLE LOGICAL AND
"Aogon"                        : '\U00000104', // LATIN CAPITAL LETTER A WITH OGONEK
"Aopf"                         : '\U0001D538', // MATHEMATICAL DOUBLE-STRUCK CAPITAL A
"ApplyFunction"                : '\U00002061', // FUNCTION APPLICATION
"Aring"                        : '\U000000C5', // LATIN CAPITAL LETTER A WITH RING ABOVE
"Ascr"                         : '\U0001D49C', // MATHEMATICAL SCRIPT CAPITAL A
"Assign"                       : '\U00002254', // COLON EQUALS
"Atilde"                       : '\U000000C3', // LATIN CAPITAL LETTER A WITH TILDE
"Auml"                         : '\U000000C4', // LATIN CAPITAL LETTER A WITH DIAERESIS
"Backslash"                    : '\U00002216', // SET MINUS
"Barv"                         : '\U00002AE7', // SHORT DOWN TACK WITH OVERBAR
"Barwed"                       : '\U00002306', // PERSPECTIVE
"Bcy"                          : '\U00000411', // CYRILLIC CAPITAL LETTER BE
"Because"                      : '\U00002235', // BECAUSE
"Bernoullis"                   : '\U0000212C', // SCRIPT CAPITAL B
"Beta"                         : '\U00000392', // GREEK CAPITAL LETTER BETA
"Bfr"                          : '\U0001D505', // MATHEMATICAL FRAKTUR CAPITAL B
"Bgr"                          : '\U00000392', // GREEK CAPITAL LETTER BETA
"Bopf"                         : '\U0001D539', // MATHEMATICAL DOUBLE-STRUCK CAPITAL B
"Breve"                        : '\U000002D8', // BREVE
"Bscr"                         : '\U0000212C', // SCRIPT CAPITAL B
"Bumpeq"                       : '\U0000224E', // GEOMETRICALLY EQUIVALENT TO
"CHcy"                         : '\U00000427', // CYRILLIC CAPITAL LETTER CHE
"COPY"                         : '\U000000A9', // COPYRIGHT SIGN
"Cacute"                       : '\U00000106', // LATIN CAPITAL LETTER C WITH ACUTE
"Cap"                          : '\U000022D2', // DOUBLE INTERSECTION
"CapitalDifferentialD"         : '\U00002145', // DOUBLE-STRUCK ITALIC CAPITAL D
"Cayleys"                      : '\U0000212D', // BLACK-LETTER CAPITAL C
"Ccaron"                       : '\U0000010C', // LATIN CAPITAL LETTER C WITH CARON
"Ccedil"                       : '\U000000C7', // LATIN CAPITAL LETTER C WITH CEDILLA
"Ccirc"                        : '\U00000108', // LATIN CAPITAL LETTER C WITH CIRCUMFLEX
"Cconint"                      : '\U00002230', // VOLUME INTEGRAL
"Cdot"                         : '\U0000010A', // LATIN CAPITAL LETTER C WITH DOT ABOVE
"Cedilla"                      : '\U000000B8', // CEDILLA
"CenterDot"                    : '\U000000B7', // MIDDLE DOT
"Cfr"                          : '\U0000212D', // BLACK-LETTER CAPITAL C
"Chi"                          : '\U000003A7', // GREEK CAPITAL LETTER CHI
"CircleDot"                    : '\U00002299', // CIRCLED DOT OPERATOR
"CircleMinus"                  : '\U00002296', // CIRCLED MINUS
"CirclePlus"                   : '\U00002295', // CIRCLED PLUS
"CircleTimes"                  : '\U00002297', // CIRCLED TIMES
"ClockwiseContourIntegral"     : '\U00002232', // CLOCKWISE CONTOUR INTEGRAL
"CloseCurlyDoubleQuote"        : '\U0000201D', // RIGHT DOUBLE QUOTATION MARK
"CloseCurlyQuote"              : '\U00002019', // RIGHT SINGLE QUOTATION MARK
"Colon"                        : '\U00002237', // PROPORTION
"Colone"                       : '\U00002A74', // DOUBLE COLON EQUAL
"Congruent"                    : '\U00002261', // IDENTICAL TO
"Conint"                       : '\U0000222F', // SURFACE INTEGRAL
"ContourIntegral"              : '\U0000222E', // CONTOUR INTEGRAL
"Copf"                         : '\U00002102', // DOUBLE-STRUCK CAPITAL C
"Coproduct"                    : '\U00002210', // N-ARY COPRODUCT
"CounterClockwiseContourIntegral" : '\U00002233', // ANTICLOCKWISE CONTOUR INTEGRAL
"Cross"                        : '\U00002A2F', // VECTOR OR CROSS PRODUCT
"Cscr"                         : '\U0001D49E', // MATHEMATICAL SCRIPT CAPITAL C
"Cup"                          : '\U000022D3', // DOUBLE UNION
"CupCap"                       : '\U0000224D', // EQUIVALENT TO
"DD"                           : '\U00002145', // DOUBLE-STRUCK ITALIC CAPITAL D
"DDotrahd"                     : '\U00002911', // RIGHTWARDS ARROW WITH DOTTED STEM
"DJcy"                         : '\U00000402', // CYRILLIC CAPITAL LETTER DJE
"DScy"                         : '\U00000405', // CYRILLIC CAPITAL LETTER DZE
"DZcy"                         : '\U0000040F', // CYRILLIC CAPITAL LETTER DZHE
"Dagger"                       : '\U00002021', // DOUBLE DAGGER
"Darr"                         : '\U000021A1', // DOWNWARDS TWO HEADED ARROW
"Dashv"                        : '\U00002AE4', // VERTICAL BAR DOUBLE LEFT TURNSTILE
"Dcaron"                       : '\U0000010E', // LATIN CAPITAL LETTER D WITH CARON
"Dcy"                          : '\U00000414', // CYRILLIC CAPITAL LETTER DE
"Del"                          : '\U00002207', // NABLA
"Delta"                        : '\U00000394', // GREEK CAPITAL LETTER DELTA
"Dfr"                          : '\U0001D507', // MATHEMATICAL FRAKTUR CAPITAL D
"Dgr"                          : '\U00000394', // GREEK CAPITAL LETTER DELTA
"DiacriticalAcute"             : '\U000000B4', // ACUTE ACCENT
"DiacriticalDot"               : '\U000002D9', // DOT ABOVE
"DiacriticalDoubleAcute"       : '\U000002DD', // DOUBLE ACUTE ACCENT
"DiacriticalGrave"             : '\U00000060', // GRAVE ACCENT
"DiacriticalTilde"             : '\U000002DC', // SMALL TILDE
"Diamond"                      : '\U000022C4', // DIAMOND OPERATOR
"DifferentialD"                : '\U00002146', // DOUBLE-STRUCK ITALIC SMALL D
"Dopf"                         : '\U0001D53B', // MATHEMATICAL DOUBLE-STRUCK CAPITAL D
"Dot"                          : '\U000000A8', // DIAERESIS
"DotDot"                       : '\U000020DC', // COMBINING FOUR DOTS ABOVE
"DotEqual"                     : '\U00002250', // APPROACHES THE LIMIT
"DoubleContourIntegral"        : '\U0000222F', // SURFACE INTEGRAL
"DoubleDot"                    : '\U000000A8', // DIAERESIS
"DoubleDownArrow"              : '\U000021D3', // DOWNWARDS DOUBLE ARROW
"DoubleLeftArrow"              : '\U000021D0', // LEFTWARDS DOUBLE ARROW
"DoubleLeftRightArrow"         : '\U000021D4', // LEFT RIGHT DOUBLE ARROW
"DoubleLeftTee"                : '\U00002AE4', // VERTICAL BAR DOUBLE LEFT TURNSTILE
"DoubleLongLeftArrow"          : '\U000027F8', // LONG LEFTWARDS DOUBLE ARROW
"DoubleLongLeftRightArrow"     : '\U000027FA', // LONG LEFT RIGHT DOUBLE ARROW
"DoubleLongRightArrow"         : '\U000027F9', // LONG RIGHTWARDS DOUBLE ARROW
"DoubleRightArrow"             : '\U000021D2', // RIGHTWARDS DOUBLE ARROW
"DoubleRightTee"               : '\U000022A8', // TRUE
"DoubleUpArrow"                : '\U000021D1', // UPWARDS DOUBLE ARROW
"DoubleUpDownArrow"            : '\U000021D5', // UP DOWN DOUBLE ARROW
"DoubleVerticalBar"            : '\U00002225', // PARALLEL TO
"DownArrow"                    : '\U00002193', // DOWNWARDS ARROW
"DownArrowBar"                 : '\U00002913', // DOWNWARDS ARROW TO BAR
"DownArrowUpArrow"             : '\U000021F5', // DOWNWARDS ARROW LEFTWARDS OF UPWARDS ARROW
"DownBreve"                    : '\U00000311', // COMBINING INVERTED BREVE
"DownLeftRightVector"          : '\U00002950', // LEFT BARB DOWN RIGHT BARB DOWN HARPOON
"DownLeftTeeVector"            : '\U0000295E', // LEFTWARDS HARPOON WITH BARB DOWN FROM BAR
"DownLeftVector"               : '\U000021BD', // LEFTWARDS HARPOON WITH BARB DOWNWARDS
"DownLeftVectorBar"            : '\U00002956', // LEFTWARDS HARPOON WITH BARB DOWN TO BAR
"DownRightTeeVector"           : '\U0000295F', // RIGHTWARDS HARPOON WITH BARB DOWN FROM BAR
"DownRightVector"              : '\U000021C1', // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
"DownRightVectorBar"           : '\U00002957', // RIGHTWARDS HARPOON WITH BARB DOWN TO BAR
"DownTee"                      : '\U000022A4', // DOWN TACK
"DownTeeArrow"                 : '\U000021A7', // DOWNWARDS ARROW FROM BAR
"Downarrow"                    : '\U000021D3', // DOWNWARDS DOUBLE ARROW
"Dscr"                         : '\U0001D49F', // MATHEMATICAL SCRIPT CAPITAL D
"Dstrok"                       : '\U00000110', // LATIN CAPITAL LETTER D WITH STROKE
"EEacgr"                       : '\U00000389', // GREEK CAPITAL LETTER ETA WITH TONOS
"EEgr"                         : '\U00000397', // GREEK CAPITAL LETTER ETA
"ENG"                          : '\U0000014A', // LATIN CAPITAL LETTER ENG
"ETH"                          : '\U000000D0', // LATIN CAPITAL LETTER ETH
"Eacgr"                        : '\U00000388', // GREEK CAPITAL LETTER EPSILON WITH TONOS
"Eacute"                       : '\U000000C9', // LATIN CAPITAL LETTER E WITH ACUTE
"Ecaron"                       : '\U0000011A', // LATIN CAPITAL LETTER E WITH CARON
"Ecirc"                        : '\U000000CA', // LATIN CAPITAL LETTER E WITH CIRCUMFLEX
"Ecy"                          : '\U0000042D', // CYRILLIC CAPITAL LETTER E
"Edot"                         : '\U00000116', // LATIN CAPITAL LETTER E WITH DOT ABOVE
"Efr"                          : '\U0001D508', // MATHEMATICAL FRAKTUR CAPITAL E
"Egr"                          : '\U00000395', // GREEK CAPITAL LETTER EPSILON
"Egrave"                       : '\U000000C8', // LATIN CAPITAL LETTER E WITH GRAVE
"Element"                      : '\U00002208', // ELEMENT OF
"Emacr"                        : '\U00000112', // LATIN CAPITAL LETTER E WITH MACRON
"EmptySmallSquare"             : '\U000025FB', // WHITE MEDIUM SQUARE
"EmptyVerySmallSquare"         : '\U000025AB', // WHITE SMALL SQUARE
"Eogon"                        : '\U00000118', // LATIN CAPITAL LETTER E WITH OGONEK
"Eopf"                         : '\U0001D53C', // MATHEMATICAL DOUBLE-STRUCK CAPITAL E
"Epsilon"                      : '\U00000395', // GREEK CAPITAL LETTER EPSILON
"Equal"                        : '\U00002A75', // TWO CONSECUTIVE EQUALS SIGNS
"EqualTilde"                   : '\U00002242', // MINUS TILDE
"Equilibrium"                  : '\U000021CC', // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
"Escr"                         : '\U00002130', // SCRIPT CAPITAL E
"Esim"                         : '\U00002A73', // EQUALS SIGN ABOVE TILDE OPERATOR
"Eta"                          : '\U00000397', // GREEK CAPITAL LETTER ETA
"Euml"                         : '\U000000CB', // LATIN CAPITAL LETTER E WITH DIAERESIS
"Exists"                       : '\U00002203', // THERE EXISTS
"ExponentialE"                 : '\U00002147', // DOUBLE-STRUCK ITALIC SMALL E
"Fcy"                          : '\U00000424', // CYRILLIC CAPITAL LETTER EF
"Ffr"                          : '\U0001D509', // MATHEMATICAL FRAKTUR CAPITAL F
"FilledSmallSquare"            : '\U000025FC', // BLACK MEDIUM SQUARE
"FilledVerySmallSquare"        : '\U000025AA', // BLACK SMALL SQUARE
"Fopf"                         : '\U0001D53D', // MATHEMATICAL DOUBLE-STRUCK CAPITAL F
"ForAll"                       : '\U00002200', // FOR ALL
"Fouriertrf"                   : '\U00002131', // SCRIPT CAPITAL F
"Fscr"                         : '\U00002131', // SCRIPT CAPITAL F
"GJcy"                         : '\U00000403', // CYRILLIC CAPITAL LETTER GJE
"GT"                           : '\U0000003E', // GREATER-THAN SIGN
"Gamma"                        : '\U00000393', // GREEK CAPITAL LETTER GAMMA
"Gammad"                       : '\U000003DC', // GREEK LETTER DIGAMMA
"Gbreve"                       : '\U0000011E', // LATIN CAPITAL LETTER G WITH BREVE
"Gcedil"                       : '\U00000122', // LATIN CAPITAL LETTER G WITH CEDILLA
"Gcirc"                        : '\U0000011C', // LATIN CAPITAL LETTER G WITH CIRCUMFLEX
"Gcy"                          : '\U00000413', // CYRILLIC CAPITAL LETTER GHE
"Gdot"                         : '\U00000120', // LATIN CAPITAL LETTER G WITH DOT ABOVE
"Gfr"                          : '\U0001D50A', // MATHEMATICAL FRAKTUR CAPITAL G
"Gg"                           : '\U000022D9', // VERY MUCH GREATER-THAN
"Ggr"                          : '\U00000393', // GREEK CAPITAL LETTER GAMMA
"Gopf"                         : '\U0001D53E', // MATHEMATICAL DOUBLE-STRUCK CAPITAL G
"GreaterEqual"                 : '\U00002265', // GREATER-THAN OR EQUAL TO
"GreaterEqualLess"             : '\U000022DB', // GREATER-THAN EQUAL TO OR LESS-THAN
"GreaterFullEqual"             : '\U00002267', // GREATER-THAN OVER EQUAL TO
"GreaterGreater"               : '\U00002AA2', // DOUBLE NESTED GREATER-THAN
"GreaterLess"                  : '\U00002277', // GREATER-THAN OR LESS-THAN
"GreaterSlantEqual"            : '\U00002A7E', // GREATER-THAN OR SLANTED EQUAL TO
"GreaterTilde"                 : '\U00002273', // GREATER-THAN OR EQUIVALENT TO
"Gscr"                         : '\U0001D4A2', // MATHEMATICAL SCRIPT CAPITAL G
"Gt"                           : '\U0000226B', // MUCH GREATER-THAN
"HARDcy"                       : '\U0000042A', // CYRILLIC CAPITAL LETTER HARD SIGN
"Hacek"                        : '\U000002C7', // CARON
"Hat"                          : '\U0000005E', // CIRCUMFLEX ACCENT
"Hcirc"                        : '\U00000124', // LATIN CAPITAL LETTER H WITH CIRCUMFLEX
"Hfr"                          : '\U0000210C', // BLACK-LETTER CAPITAL H
"HilbertSpace"                 : '\U0000210B', // SCRIPT CAPITAL H
"Hopf"                         : '\U0000210D', // DOUBLE-STRUCK CAPITAL H
"HorizontalLine"               : '\U00002500', // BOX DRAWINGS LIGHT HORIZONTAL
"Hscr"                         : '\U0000210B', // SCRIPT CAPITAL H
"Hstrok"                       : '\U00000126', // LATIN CAPITAL LETTER H WITH STROKE
"HumpDownHump"                 : '\U0000224E', // GEOMETRICALLY EQUIVALENT TO
"HumpEqual"                    : '\U0000224F', // DIFFERENCE BETWEEN
"IEcy"                         : '\U00000415', // CYRILLIC CAPITAL LETTER IE
"IJlig"                        : '\U00000132', // LATIN CAPITAL LIGATURE IJ
"IOcy"                         : '\U00000401', // CYRILLIC CAPITAL LETTER IO
"Iacgr"                        : '\U0000038A', // GREEK CAPITAL LETTER IOTA WITH TONOS
"Iacute"                       : '\U000000CD', // LATIN CAPITAL LETTER I WITH ACUTE
"Icirc"                        : '\U000000CE', // LATIN CAPITAL LETTER I WITH CIRCUMFLEX
"Icy"                          : '\U00000418', // CYRILLIC CAPITAL LETTER I
"Idigr"                        : '\U000003AA', // GREEK CAPITAL LETTER IOTA WITH DIALYTIKA
"Idot"                         : '\U00000130', // LATIN CAPITAL LETTER I WITH DOT ABOVE
"Ifr"                          : '\U00002111', // BLACK-LETTER CAPITAL I
"Igr"                          : '\U00000399', // GREEK CAPITAL LETTER IOTA
"Igrave"                       : '\U000000CC', // LATIN CAPITAL LETTER I WITH GRAVE
"Im"                           : '\U00002111', // BLACK-LETTER CAPITAL I
"Imacr"                        : '\U0000012A', // LATIN CAPITAL LETTER I WITH MACRON
"ImaginaryI"                   : '\U00002148', // DOUBLE-STRUCK ITALIC SMALL I
"Implies"                      : '\U000021D2', // RIGHTWARDS DOUBLE ARROW
"Int"                          : '\U0000222C', // DOUBLE INTEGRAL
"Integral"                     : '\U0000222B', // INTEGRAL
"Intersection"                 : '\U000022C2', // N-ARY INTERSECTION
"InvisibleComma"               : '\U00002063', // INVISIBLE SEPARATOR
"InvisibleTimes"               : '\U00002062', // INVISIBLE TIMES
"Iogon"                        : '\U0000012E', // LATIN CAPITAL LETTER I WITH OGONEK
"Iopf"                         : '\U0001D540', // MATHEMATICAL DOUBLE-STRUCK CAPITAL I
"Iota"                         : '\U00000399', // GREEK CAPITAL LETTER IOTA
"Iscr"                         : '\U00002110', // SCRIPT CAPITAL I
"Itilde"                       : '\U00000128', // LATIN CAPITAL LETTER I WITH TILDE
"Iukcy"                        : '\U00000406', // CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
"Iuml"                         : '\U000000CF', // LATIN CAPITAL LETTER I WITH DIAERESIS
"Jcirc"                        : '\U00000134', // LATIN CAPITAL LETTER J WITH CIRCUMFLEX
"Jcy"                          : '\U00000419', // CYRILLIC CAPITAL LETTER SHORT I
"Jfr"                          : '\U0001D50D', // MATHEMATICAL FRAKTUR CAPITAL J
"Jopf"                         : '\U0001D541', // MATHEMATICAL DOUBLE-STRUCK CAPITAL J
"Jscr"                         : '\U0001D4A5', // MATHEMATICAL SCRIPT CAPITAL J
"Jsercy"                       : '\U00000408', // CYRILLIC CAPITAL LETTER JE
"Jukcy"                        : '\U00000404', // CYRILLIC CAPITAL LETTER UKRAINIAN IE
"KHcy"                         : '\U00000425', // CYRILLIC CAPITAL LETTER HA
"KHgr"                         : '\U000003A7', // GREEK CAPITAL LETTER CHI
"KJcy"                         : '\U0000040C', // CYRILLIC CAPITAL LETTER KJE
"Kappa"                        : '\U0000039A', // GREEK CAPITAL LETTER KAPPA
"Kcedil"                       : '\U00000136', // LATIN CAPITAL LETTER K WITH CEDILLA
"Kcy"                          : '\U0000041A', // CYRILLIC CAPITAL LETTER KA
"Kfr"                          : '\U0001D50E', // MATHEMATICAL FRAKTUR CAPITAL K
"Kgr"                          : '\U0000039A', // GREEK CAPITAL LETTER KAPPA
"Kopf"                         : '\U0001D542', // MATHEMATICAL DOUBLE-STRUCK CAPITAL K
"Kscr"                         : '\U0001D4A6', // MATHEMATICAL SCRIPT CAPITAL K
"LJcy"                         : '\U00000409', // CYRILLIC CAPITAL LETTER LJE
"LT"                           : '\x3C'       , // LESS-THAN SIGN
"Lacute"                       : '\U00000139', // LATIN CAPITAL LETTER L WITH ACUTE
"Lambda"                       : '\U0000039B', // GREEK CAPITAL LETTER LAMDA
"Lang"                         : '\U000027EA', // MATHEMATICAL LEFT DOUBLE ANGLE BRACKET
"Laplacetrf"                   : '\U00002112', // SCRIPT CAPITAL L
"Larr"                         : '\U0000219E', // LEFTWARDS TWO HEADED ARROW
"Lcaron"                       : '\U0000013D', // LATIN CAPITAL LETTER L WITH CARON
"Lcedil"                       : '\U0000013B', // LATIN CAPITAL LETTER L WITH CEDILLA
"Lcy"                          : '\U0000041B', // CYRILLIC CAPITAL LETTER EL
"LeftAngleBracket"             : '\U000027E8', // MATHEMATICAL LEFT ANGLE BRACKET
"LeftArrow"                    : '\U00002190', // LEFTWARDS ARROW
"LeftArrowBar"                 : '\U000021E4', // LEFTWARDS ARROW TO BAR
"LeftArrowRightArrow"          : '\U000021C6', // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
"LeftCeiling"                  : '\U00002308', // LEFT CEILING
"LeftDoubleBracket"            : '\U000027E6', // MATHEMATICAL LEFT WHITE SQUARE BRACKET
"LeftDownTeeVector"            : '\U00002961', // DOWNWARDS HARPOON WITH BARB LEFT FROM BAR
"LeftDownVector"               : '\U000021C3', // DOWNWARDS HARPOON WITH BARB LEFTWARDS
"LeftDownVectorBar"            : '\U00002959', // DOWNWARDS HARPOON WITH BARB LEFT TO BAR
"LeftFloor"                    : '\U0000230A', // LEFT FLOOR
"LeftRightArrow"               : '\U00002194', // LEFT RIGHT ARROW
"LeftRightVector"              : '\U0000294E', // LEFT BARB UP RIGHT BARB UP HARPOON
"LeftTee"                      : '\U000022A3', // LEFT TACK
"LeftTeeArrow"                 : '\U000021A4', // LEFTWARDS ARROW FROM BAR
"LeftTeeVector"                : '\U0000295A', // LEFTWARDS HARPOON WITH BARB UP FROM BAR
"LeftTriangle"                 : '\U000022B2', // NORMAL SUBGROUP OF
"LeftTriangleBar"              : '\U000029CF', // LEFT TRIANGLE BESIDE VERTICAL BAR
"LeftTriangleEqual"            : '\U000022B4', // NORMAL SUBGROUP OF OR EQUAL TO
"LeftUpDownVector"             : '\U00002951', // UP BARB LEFT DOWN BARB LEFT HARPOON
"LeftUpTeeVector"              : '\U00002960', // UPWARDS HARPOON WITH BARB LEFT FROM BAR
"LeftUpVector"                 : '\U000021BF', // UPWARDS HARPOON WITH BARB LEFTWARDS
"LeftUpVectorBar"              : '\U00002958', // UPWARDS HARPOON WITH BARB LEFT TO BAR
"LeftVector"                   : '\U000021BC', // LEFTWARDS HARPOON WITH BARB UPWARDS
"LeftVectorBar"                : '\U00002952', // LEFTWARDS HARPOON WITH BARB UP TO BAR
"Leftarrow"                    : '\U000021D0', // LEFTWARDS DOUBLE ARROW
"Leftrightarrow"               : '\U000021D4', // LEFT RIGHT DOUBLE ARROW
"LessEqualGreater"             : '\U000022DA', // LESS-THAN EQUAL TO OR GREATER-THAN
"LessFullEqual"                : '\U00002266', // LESS-THAN OVER EQUAL TO
"LessGreater"                  : '\U00002276', // LESS-THAN OR GREATER-THAN
"LessLess"                     : '\U00002AA1', // DOUBLE NESTED LESS-THAN
"LessSlantEqual"               : '\U00002A7D', // LESS-THAN OR SLANTED EQUAL TO
"LessTilde"                    : '\U00002272', // LESS-THAN OR EQUIVALENT TO
"Lfr"                          : '\U0001D50F', // MATHEMATICAL FRAKTUR CAPITAL L
"Lgr"                          : '\U0000039B', // GREEK CAPITAL LETTER LAMDA
"Ll"                           : '\U000022D8', // VERY MUCH LESS-THAN
"Lleftarrow"                   : '\U000021DA', // LEFTWARDS TRIPLE ARROW
"Lmidot"                       : '\U0000013F', // LATIN CAPITAL LETTER L WITH MIDDLE DOT
"LongLeftArrow"                : '\U000027F5', // LONG LEFTWARDS ARROW
"LongLeftRightArrow"           : '\U000027F7', // LONG LEFT RIGHT ARROW
"LongRightArrow"               : '\U000027F6', // LONG RIGHTWARDS ARROW
"Longleftarrow"                : '\U000027F8', // LONG LEFTWARDS DOUBLE ARROW
"Longleftrightarrow"           : '\U000027FA', // LONG LEFT RIGHT DOUBLE ARROW
"Longrightarrow"               : '\U000027F9', // LONG RIGHTWARDS DOUBLE ARROW
"Lopf"                         : '\U0001D543', // MATHEMATICAL DOUBLE-STRUCK CAPITAL L
"LowerLeftArrow"               : '\U00002199', // SOUTH WEST ARROW
"LowerRightArrow"              : '\U00002198', // SOUTH EAST ARROW
"Lscr"                         : '\U00002112', // SCRIPT CAPITAL L
"Lsh"                          : '\U000021B0', // UPWARDS ARROW WITH TIP LEFTWARDS
"Lstrok"                       : '\U00000141', // LATIN CAPITAL LETTER L WITH STROKE
"Lt"                           : '\U0000226A', // MUCH LESS-THAN
"Map"                          : '\U00002905', // RIGHTWARDS TWO-HEADED ARROW FROM BAR
"Mcy"                          : '\U0000041C', // CYRILLIC CAPITAL LETTER EM
"MediumSpace"                  : '\U0000205F', // MEDIUM MATHEMATICAL SPACE
"Mellintrf"                    : '\U00002133', // SCRIPT CAPITAL M
"Mfr"                          : '\U0001D510', // MATHEMATICAL FRAKTUR CAPITAL M
"Mgr"                          : '\U0000039C', // GREEK CAPITAL LETTER MU
"MinusPlus"                    : '\U00002213', // MINUS-OR-PLUS SIGN
"Mopf"                         : '\U0001D544', // MATHEMATICAL DOUBLE-STRUCK CAPITAL M
"Mscr"                         : '\U00002133', // SCRIPT CAPITAL M
"Mu"                           : '\U0000039C', // GREEK CAPITAL LETTER MU
"NJcy"                         : '\U0000040A', // CYRILLIC CAPITAL LETTER NJE
"Nacute"                       : '\U00000143', // LATIN CAPITAL LETTER N WITH ACUTE
"Ncaron"                       : '\U00000147', // LATIN CAPITAL LETTER N WITH CARON
"Ncedil"                       : '\U00000145', // LATIN CAPITAL LETTER N WITH CEDILLA
"Ncy"                          : '\U0000041D', // CYRILLIC CAPITAL LETTER EN
"NegativeMediumSpace"          : '\U0000200B', // ZERO WIDTH SPACE
"NegativeThickSpace"           : '\U0000200B', // ZERO WIDTH SPACE
"NegativeThinSpace"            : '\U0000200B', // ZERO WIDTH SPACE
"NegativeVeryThinSpace"        : '\U0000200B', // ZERO WIDTH SPACE
"NestedGreaterGreater"         : '\U0000226B', // MUCH GREATER-THAN
"NestedLessLess"               : '\U0000226A', // MUCH LESS-THAN
"NewLine"                      : '\U0000000A', // LINE FEED (LF)
"Nfr"                          : '\U0001D511', // MATHEMATICAL FRAKTUR CAPITAL N
"Ngr"                          : '\U0000039D', // GREEK CAPITAL LETTER NU
"NoBreak"                      : '\U00002060', // WORD JOINER
"NonBreakingSpace"             : '\U000000A0', // NO-BREAK SPACE
"Nopf"                         : '\U00002115', // DOUBLE-STRUCK CAPITAL N
"Not"                          : '\U00002AEC', // DOUBLE STROKE NOT SIGN
"NotCongruent"                 : '\U00002262', // NOT IDENTICAL TO
"NotCupCap"                    : '\U0000226D', // NOT EQUIVALENT TO
"NotDoubleVerticalBar"         : '\U00002226', // NOT PARALLEL TO
"NotElement"                   : '\U00002209', // NOT AN ELEMENT OF
"NotEqual"                     : '\U00002260', // NOT EQUAL TO
// "NotEqualTilde"                : &#x02242;&#x00338, // MINUS TILDE with slash
"NotExists"                    : '\U00002204', // THERE DOES NOT EXIST
"NotGreater"                   : '\U0000226F', // NOT GREATER-THAN
"NotGreaterEqual"              : '\U00002271', // NEITHER GREATER-THAN NOR EQUAL TO
// "NotGreaterFullEqual"          : &#x02267;&#x00338, // GREATER-THAN OVER EQUAL TO with slash
// "NotGreaterGreater"            : &#x0226B;&#x00338, // MUCH GREATER THAN with slash
"NotGreaterLess"               : '\U00002279', // NEITHER GREATER-THAN NOR LESS-THAN
// "NotGreaterSlantEqual"         : &#x02A7E;&#x00338, // GREATER-THAN OR SLANTED EQUAL TO with slash
"NotGreaterTilde"              : '\U00002275', // NEITHER GREATER-THAN NOR EQUIVALENT TO
// "NotHumpDownHump"              : &#x0224E;&#x00338, // GEOMETRICALLY EQUIVALENT TO with slash
// "NotHumpEqual"                 : &#x0224F;&#x00338, // DIFFERENCE BETWEEN with slash
"NotLeftTriangle"              : '\U000022EA', // NOT NORMAL SUBGROUP OF
// "NotLeftTriangleBar"           : &#x029CF;&#x00338, // LEFT TRIANGLE BESIDE VERTICAL BAR with slash
"NotLeftTriangleEqual"         : '\U000022EC', // NOT NORMAL SUBGROUP OF OR EQUAL TO
"NotLess"                      : '\U0000226E', // NOT LESS-THAN
"NotLessEqual"                 : '\U00002270', // NEITHER LESS-THAN NOR EQUAL TO
"NotLessGreater"               : '\U00002278', // NEITHER LESS-THAN NOR GREATER-THAN
// "NotLessLess"                  : &#x0226A;&#x00338, // MUCH LESS THAN with slash
// "NotLessSlantEqual"            : &#x02A7D;&#x00338, // LESS-THAN OR SLANTED EQUAL TO with slash
"NotLessTilde"                 : '\U00002274', // NEITHER LESS-THAN NOR EQUIVALENT TO
// "NotNestedGreaterGreater"      : &#x02AA2;&#x00338, // DOUBLE NESTED GREATER-THAN with slash
// "NotNestedLessLess"            : &#x02AA1;&#x00338, // DOUBLE NESTED LESS-THAN with slash
"NotPrecedes"                  : '\U00002280', // DOES NOT PRECEDE
// "NotPrecedesEqual"             : &#x02AAF;&#x00338, // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN with slash
"NotPrecedesSlantEqual"        : '\U000022E0', // DOES NOT PRECEDE OR EQUAL
"NotReverseElement"            : '\U0000220C', // DOES NOT CONTAIN AS MEMBER
"NotRightTriangle"             : '\U000022EB', // DOES NOT CONTAIN AS NORMAL SUBGROUP
// "NotRightTriangleBar"          : &#x029D0;&#x00338, // VERTICAL BAR BESIDE RIGHT TRIANGLE with slash
"NotRightTriangleEqual"        : '\U000022ED', // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
// "NotSquareSubset"              : &#x0228F;&#x00338, // SQUARE IMAGE OF with slash
"NotSquareSubsetEqual"         : '\U000022E2', // NOT SQUARE IMAGE OF OR EQUAL TO
// "NotSquareSuperset"            : &#x02290;&#x00338, // SQUARE ORIGINAL OF with slash
"NotSquareSupersetEqual"       : '\U000022E3', // NOT SQUARE ORIGINAL OF OR EQUAL TO
// "NotSubset"                    : &#x02282;&#x020D2, // SUBSET OF with vertical line
"NotSubsetEqual"               : '\U00002288', // NEITHER A SUBSET OF NOR EQUAL TO
"NotSucceeds"                  : '\U00002281', // DOES NOT SUCCEED
// "NotSucceedsEqual"             : &#x02AB0;&#x00338, // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN with slash
"NotSucceedsSlantEqual"        : '\U000022E1', // DOES NOT SUCCEED OR EQUAL
// "NotSucceedsTilde"             : &#x0227F;&#x00338, // SUCCEEDS OR EQUIVALENT TO with slash
// "NotSuperset"                  : &#x02283;&#x020D2, // SUPERSET OF with vertical line
"NotSupersetEqual"             : '\U00002289', // NEITHER A SUPERSET OF NOR EQUAL TO
"NotTilde"                     : '\U00002241', // NOT TILDE
"NotTildeEqual"                : '\U00002244', // NOT ASYMPTOTICALLY EQUAL TO
"NotTildeFullEqual"            : '\U00002247', // NEITHER APPROXIMATELY NOR ACTUALLY EQUAL TO
"NotTildeTilde"                : '\U00002249', // NOT ALMOST EQUAL TO
"NotVerticalBar"               : '\U00002224', // DOES NOT DIVIDE
"Nscr"                         : '\U0001D4A9', // MATHEMATICAL SCRIPT CAPITAL N
"Ntilde"                       : '\U000000D1', // LATIN CAPITAL LETTER N WITH TILDE
"Nu"                           : '\U0000039D', // GREEK CAPITAL LETTER NU
"OElig"                        : '\U00000152', // LATIN CAPITAL LIGATURE OE
"OHacgr"                       : '\U0000038F', // GREEK CAPITAL LETTER OMEGA WITH TONOS
"OHgr"                         : '\U000003A9', // GREEK CAPITAL LETTER OMEGA
"Oacgr"                        : '\U0000038C', // GREEK CAPITAL LETTER OMICRON WITH TONOS
"Oacute"                       : '\U000000D3', // LATIN CAPITAL LETTER O WITH ACUTE
"Ocirc"                        : '\U000000D4', // LATIN CAPITAL LETTER O WITH CIRCUMFLEX
"Ocy"                          : '\U0000041E', // CYRILLIC CAPITAL LETTER O
"Odblac"                       : '\U00000150', // LATIN CAPITAL LETTER O WITH DOUBLE ACUTE
"Ofr"                          : '\U0001D512', // MATHEMATICAL FRAKTUR CAPITAL O
"Ogr"                          : '\U0000039F', // GREEK CAPITAL LETTER OMICRON
"Ograve"                       : '\U000000D2', // LATIN CAPITAL LETTER O WITH GRAVE
"Omacr"                        : '\U0000014C', // LATIN CAPITAL LETTER O WITH MACRON
"Omega"                        : '\U000003A9', // GREEK CAPITAL LETTER OMEGA
"Omicron"                      : '\U0000039F', // GREEK CAPITAL LETTER OMICRON
"Oopf"                         : '\U0001D546', // MATHEMATICAL DOUBLE-STRUCK CAPITAL O
"OpenCurlyDoubleQuote"         : '\U0000201C', // LEFT DOUBLE QUOTATION MARK
"OpenCurlyQuote"               : '\U00002018', // LEFT SINGLE QUOTATION MARK
"Or"                           : '\U00002A54', // DOUBLE LOGICAL OR
"Oscr"                         : '\U0001D4AA', // MATHEMATICAL SCRIPT CAPITAL O
"Oslash"                       : '\U000000D8', // LATIN CAPITAL LETTER O WITH STROKE
"Otilde"                       : '\U000000D5', // LATIN CAPITAL LETTER O WITH TILDE
"Otimes"                       : '\U00002A37', // MULTIPLICATION SIGN IN DOUBLE CIRCLE
"Ouml"                         : '\U000000D6', // LATIN CAPITAL LETTER O WITH DIAERESIS
"OverBar"                      : '\U0000203E', // OVERLINE
"OverBrace"                    : '\U000023DE', // TOP CURLY BRACKET
"OverBracket"                  : '\U000023B4', // TOP SQUARE BRACKET
"OverParenthesis"              : '\U000023DC', // TOP PARENTHESIS
"PHgr"                         : '\U000003A6', // GREEK CAPITAL LETTER PHI
"PSgr"                         : '\U000003A8', // GREEK CAPITAL LETTER PSI
"PartialD"                     : '\U00002202', // PARTIAL DIFFERENTIAL
"Pcy"                          : '\U0000041F', // CYRILLIC CAPITAL LETTER PE
"Pfr"                          : '\U0001D513', // MATHEMATICAL FRAKTUR CAPITAL P
"Pgr"                          : '\U000003A0', // GREEK CAPITAL LETTER PI
"Phi"                          : '\U000003A6', // GREEK CAPITAL LETTER PHI
"Pi"                           : '\U000003A0', // GREEK CAPITAL LETTER PI
"PlusMinus"                    : '\U000000B1', // PLUS-MINUS SIGN
"Poincareplane"                : '\U0000210C', // BLACK-LETTER CAPITAL H
"Popf"                         : '\U00002119', // DOUBLE-STRUCK CAPITAL P
"Pr"                           : '\U00002ABB', // DOUBLE PRECEDES
"Precedes"                     : '\U0000227A', // PRECEDES
"PrecedesEqual"                : '\U00002AAF', // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
"PrecedesSlantEqual"           : '\U0000227C', // PRECEDES OR EQUAL TO
"PrecedesTilde"                : '\U0000227E', // PRECEDES OR EQUIVALENT TO
"Prime"                        : '\U00002033', // DOUBLE PRIME
"Product"                      : '\U0000220F', // N-ARY PRODUCT
"Proportion"                   : '\U00002237', // PROPORTION
"Proportional"                 : '\U0000221D', // PROPORTIONAL TO
"Pscr"                         : '\U0001D4AB', // MATHEMATICAL SCRIPT CAPITAL P
"Psi"                          : '\U000003A8', // GREEK CAPITAL LETTER PSI
"QUOT"                         : '\U00000022', // QUOTATION MARK
"Qfr"                          : '\U0001D514', // MATHEMATICAL FRAKTUR CAPITAL Q
"Qopf"                         : '\U0000211A', // DOUBLE-STRUCK CAPITAL Q
"Qscr"                         : '\U0001D4AC', // MATHEMATICAL SCRIPT CAPITAL Q
"RBarr"                        : '\U00002910', // RIGHTWARDS TWO-HEADED TRIPLE DASH ARROW
"REG"                          : '\U000000AE', // REGISTERED SIGN
"Racute"                       : '\U00000154', // LATIN CAPITAL LETTER R WITH ACUTE
"Rang"                         : '\U000027EB', // MATHEMATICAL RIGHT DOUBLE ANGLE BRACKET
"Rarr"                         : '\U000021A0', // RIGHTWARDS TWO HEADED ARROW
"Rarrtl"                       : '\U00002916', // RIGHTWARDS TWO-HEADED ARROW WITH TAIL
"Rcaron"                       : '\U00000158', // LATIN CAPITAL LETTER R WITH CARON
"Rcedil"                       : '\U00000156', // LATIN CAPITAL LETTER R WITH CEDILLA
"Rcy"                          : '\U00000420', // CYRILLIC CAPITAL LETTER ER
"Re"                           : '\U0000211C', // BLACK-LETTER CAPITAL R
"ReverseElement"               : '\U0000220B', // CONTAINS AS MEMBER
"ReverseEquilibrium"           : '\U000021CB', // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
"ReverseUpEquilibrium"         : '\U0000296F', // DOWNWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
"Rfr"                          : '\U0000211C', // BLACK-LETTER CAPITAL R
"Rgr"                          : '\U000003A1', // GREEK CAPITAL LETTER RHO
"Rho"                          : '\U000003A1', // GREEK CAPITAL LETTER RHO
"RightAngleBracket"            : '\U000027E9', // MATHEMATICAL RIGHT ANGLE BRACKET
"RightArrow"                   : '\U00002192', // RIGHTWARDS ARROW
"RightArrowBar"                : '\U000021E5', // RIGHTWARDS ARROW TO BAR
"RightArrowLeftArrow"          : '\U000021C4', // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
"RightCeiling"                 : '\U00002309', // RIGHT CEILING
"RightDoubleBracket"           : '\U000027E7', // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
"RightDownTeeVector"           : '\U0000295D', // DOWNWARDS HARPOON WITH BARB RIGHT FROM BAR
"RightDownVector"              : '\U000021C2', // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
"RightDownVectorBar"           : '\U00002955', // DOWNWARDS HARPOON WITH BARB RIGHT TO BAR
"RightFloor"                   : '\U0000230B', // RIGHT FLOOR
"RightTee"                     : '\U000022A2', // RIGHT TACK
"RightTeeArrow"                : '\U000021A6', // RIGHTWARDS ARROW FROM BAR
"RightTeeVector"               : '\U0000295B', // RIGHTWARDS HARPOON WITH BARB UP FROM BAR
"RightTriangle"                : '\U000022B3', // CONTAINS AS NORMAL SUBGROUP
"RightTriangleBar"             : '\U000029D0', // VERTICAL BAR BESIDE RIGHT TRIANGLE
"RightTriangleEqual"           : '\U000022B5', // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
"RightUpDownVector"            : '\U0000294F', // UP BARB RIGHT DOWN BARB RIGHT HARPOON
"RightUpTeeVector"             : '\U0000295C', // UPWARDS HARPOON WITH BARB RIGHT FROM BAR
"RightUpVector"                : '\U000021BE', // UPWARDS HARPOON WITH BARB RIGHTWARDS
"RightUpVectorBar"             : '\U00002954', // UPWARDS HARPOON WITH BARB RIGHT TO BAR
"RightVector"                  : '\U000021C0', // RIGHTWARDS HARPOON WITH BARB UPWARDS
"RightVectorBar"               : '\U00002953', // RIGHTWARDS HARPOON WITH BARB UP TO BAR
"Rightarrow"                   : '\U000021D2', // RIGHTWARDS DOUBLE ARROW
"Ropf"                         : '\U0000211D', // DOUBLE-STRUCK CAPITAL R
"RoundImplies"                 : '\U00002970', // RIGHT DOUBLE ARROW WITH ROUNDED HEAD
"Rrightarrow"                  : '\U000021DB', // RIGHTWARDS TRIPLE ARROW
"Rscr"                         : '\U0000211B', // SCRIPT CAPITAL R
"Rsh"                          : '\U000021B1', // UPWARDS ARROW WITH TIP RIGHTWARDS
"RuleDelayed"                  : '\U000029F4', // RULE-DELAYED
"SHCHcy"                       : '\U00000429', // CYRILLIC CAPITAL LETTER SHCHA
"SHcy"                         : '\U00000428', // CYRILLIC CAPITAL LETTER SHA
"SOFTcy"                       : '\U0000042C', // CYRILLIC CAPITAL LETTER SOFT SIGN
"Sacute"                       : '\U0000015A', // LATIN CAPITAL LETTER S WITH ACUTE
"Sc"                           : '\U00002ABC', // DOUBLE SUCCEEDS
"Scaron"                       : '\U00000160', // LATIN CAPITAL LETTER S WITH CARON
"Scedil"                       : '\U0000015E', // LATIN CAPITAL LETTER S WITH CEDILLA
"Scirc"                        : '\U0000015C', // LATIN CAPITAL LETTER S WITH CIRCUMFLEX
"Scy"                          : '\U00000421', // CYRILLIC CAPITAL LETTER ES
"Sfr"                          : '\U0001D516', // MATHEMATICAL FRAKTUR CAPITAL S
"Sgr"                          : '\U000003A3', // GREEK CAPITAL LETTER SIGMA
"ShortDownArrow"               : '\U00002193', // DOWNWARDS ARROW
"ShortLeftArrow"               : '\U00002190', // LEFTWARDS ARROW
"ShortRightArrow"              : '\U00002192', // RIGHTWARDS ARROW
"ShortUpArrow"                 : '\U00002191', // UPWARDS ARROW
"Sigma"                        : '\U000003A3', // GREEK CAPITAL LETTER SIGMA
"SmallCircle"                  : '\U00002218', // RING OPERATOR
"Sopf"                         : '\U0001D54A', // MATHEMATICAL DOUBLE-STRUCK CAPITAL S
"Sqrt"                         : '\U0000221A', // SQUARE ROOT
"Square"                       : '\U000025A1', // WHITE SQUARE
"SquareIntersection"           : '\U00002293', // SQUARE CAP
"SquareSubset"                 : '\U0000228F', // SQUARE IMAGE OF
"SquareSubsetEqual"            : '\U00002291', // SQUARE IMAGE OF OR EQUAL TO
"SquareSuperset"               : '\U00002290', // SQUARE ORIGINAL OF
"SquareSupersetEqual"          : '\U00002292', // SQUARE ORIGINAL OF OR EQUAL TO
"SquareUnion"                  : '\U00002294', // SQUARE CUP
"Sscr"                         : '\U0001D4AE', // MATHEMATICAL SCRIPT CAPITAL S
"Star"                         : '\U000022C6', // STAR OPERATOR
"Sub"                          : '\U000022D0', // DOUBLE SUBSET
"Subset"                       : '\U000022D0', // DOUBLE SUBSET
"SubsetEqual"                  : '\U00002286', // SUBSET OF OR EQUAL TO
"Succeeds"                     : '\U0000227B', // SUCCEEDS
"SucceedsEqual"                : '\U00002AB0', // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
"SucceedsSlantEqual"           : '\U0000227D', // SUCCEEDS OR EQUAL TO
"SucceedsTilde"                : '\U0000227F', // SUCCEEDS OR EQUIVALENT TO
"SuchThat"                     : '\U0000220B', // CONTAINS AS MEMBER
"Sum"                          : '\U00002211', // N-ARY SUMMATION
"Sup"                          : '\U000022D1', // DOUBLE SUPERSET
"Superset"                     : '\U00002283', // SUPERSET OF
"SupersetEqual"                : '\U00002287', // SUPERSET OF OR EQUAL TO
"Supset"                       : '\U000022D1', // DOUBLE SUPERSET
"THORN"                        : '\U000000DE', // LATIN CAPITAL LETTER THORN
"THgr"                         : '\U00000398', // GREEK CAPITAL LETTER THETA
"TRADE"                        : '\U00002122', // TRADE MARK SIGN
"TSHcy"                        : '\U0000040B', // CYRILLIC CAPITAL LETTER TSHE
"TScy"                         : '\U00000426', // CYRILLIC CAPITAL LETTER TSE
"Tab"                          : '\U00000009', // CHARACTER TABULATION
"Tau"                          : '\U000003A4', // GREEK CAPITAL LETTER TAU
"Tcaron"                       : '\U00000164', // LATIN CAPITAL LETTER T WITH CARON
"Tcedil"                       : '\U00000162', // LATIN CAPITAL LETTER T WITH CEDILLA
"Tcy"                          : '\U00000422', // CYRILLIC CAPITAL LETTER TE
"Tfr"                          : '\U0001D517', // MATHEMATICAL FRAKTUR CAPITAL T
"Tgr"                          : '\U000003A4', // GREEK CAPITAL LETTER TAU
"Therefore"                    : '\U00002234', // THEREFORE
"Theta"                        : '\U00000398', // GREEK CAPITAL LETTER THETA
// "ThickSpace"                   : &#x0205F;&#x0200A, // space of width 5/18 em
"ThinSpace"                    : '\U00002009', // THIN SPACE
"Tilde"                        : '\U0000223C', // TILDE OPERATOR
"TildeEqual"                   : '\U00002243', // ASYMPTOTICALLY EQUAL TO
"TildeFullEqual"               : '\U00002245', // APPROXIMATELY EQUAL TO
"TildeTilde"                   : '\U00002248', // ALMOST EQUAL TO
"Topf"                         : '\U0001D54B', // MATHEMATICAL DOUBLE-STRUCK CAPITAL T
"TripleDot"                    : '\U000020DB', // COMBINING THREE DOTS ABOVE
"Tscr"                         : '\U0001D4AF', // MATHEMATICAL SCRIPT CAPITAL T
"Tstrok"                       : '\U00000166', // LATIN CAPITAL LETTER T WITH STROKE
"Uacgr"                        : '\U0000038E', // GREEK CAPITAL LETTER UPSILON WITH TONOS
"Uacute"                       : '\U000000DA', // LATIN CAPITAL LETTER U WITH ACUTE
"Uarr"                         : '\U0000219F', // UPWARDS TWO HEADED ARROW
"Uarrocir"                     : '\U00002949', // UPWARDS TWO-HEADED ARROW FROM SMALL CIRCLE
"Ubrcy"                        : '\U0000040E', // CYRILLIC CAPITAL LETTER SHORT U
"Ubreve"                       : '\U0000016C', // LATIN CAPITAL LETTER U WITH BREVE
"Ucirc"                        : '\U000000DB', // LATIN CAPITAL LETTER U WITH CIRCUMFLEX
"Ucy"                          : '\U00000423', // CYRILLIC CAPITAL LETTER U
"Udblac"                       : '\U00000170', // LATIN CAPITAL LETTER U WITH DOUBLE ACUTE
"Udigr"                        : '\U000003AB', // GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA
"Ufr"                          : '\U0001D518', // MATHEMATICAL FRAKTUR CAPITAL U
"Ugr"                          : '\U000003A5', // GREEK CAPITAL LETTER UPSILON
"Ugrave"                       : '\U000000D9', // LATIN CAPITAL LETTER U WITH GRAVE
"Umacr"                        : '\U0000016A', // LATIN CAPITAL LETTER U WITH MACRON
"UnderBar"                     : '\U0000005F', // LOW LINE
"UnderBrace"                   : '\U000023DF', // BOTTOM CURLY BRACKET
"UnderBracket"                 : '\U000023B5', // BOTTOM SQUARE BRACKET
"UnderParenthesis"             : '\U000023DD', // BOTTOM PARENTHESIS
"Union"                        : '\U000022C3', // N-ARY UNION
"UnionPlus"                    : '\U0000228E', // MULTISET UNION
"Uogon"                        : '\U00000172', // LATIN CAPITAL LETTER U WITH OGONEK
"Uopf"                         : '\U0001D54C', // MATHEMATICAL DOUBLE-STRUCK CAPITAL U
"UpArrow"                      : '\U00002191', // UPWARDS ARROW
"UpArrowBar"                   : '\U00002912', // UPWARDS ARROW TO BAR
"UpArrowDownArrow"             : '\U000021C5', // UPWARDS ARROW LEFTWARDS OF DOWNWARDS ARROW
"UpDownArrow"                  : '\U00002195', // UP DOWN ARROW
"UpEquilibrium"                : '\U0000296E', // UPWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
"UpTee"                        : '\U000022A5', // UP TACK
"UpTeeArrow"                   : '\U000021A5', // UPWARDS ARROW FROM BAR
"Uparrow"                      : '\U000021D1', // UPWARDS DOUBLE ARROW
"Updownarrow"                  : '\U000021D5', // UP DOWN DOUBLE ARROW
"UpperLeftArrow"               : '\U00002196', // NORTH WEST ARROW
"UpperRightArrow"              : '\U00002197', // NORTH EAST ARROW
"Upsi"                         : '\U000003D2', // GREEK UPSILON WITH HOOK SYMBOL
"Upsilon"                      : '\U000003A5', // GREEK CAPITAL LETTER UPSILON
"Uring"                        : '\U0000016E', // LATIN CAPITAL LETTER U WITH RING ABOVE
"Uscr"                         : '\U0001D4B0', // MATHEMATICAL SCRIPT CAPITAL U
"Utilde"                       : '\U00000168', // LATIN CAPITAL LETTER U WITH TILDE
"Uuml"                         : '\U000000DC', // LATIN CAPITAL LETTER U WITH DIAERESIS
"VDash"                        : '\U000022AB', // DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
"Vbar"                         : '\U00002AEB', // DOUBLE UP TACK
"Vcy"                          : '\U00000412', // CYRILLIC CAPITAL LETTER VE
"Vdash"                        : '\U000022A9', // FORCES
"Vdashl"                       : '\U00002AE6', // LONG DASH FROM LEFT MEMBER OF DOUBLE VERTICAL
"Vee"                          : '\U000022C1', // N-ARY LOGICAL OR
"Verbar"                       : '\U00002016', // DOUBLE VERTICAL LINE
"Vert"                         : '\U00002016', // DOUBLE VERTICAL LINE
"VerticalBar"                  : '\U00002223', // DIVIDES
"VerticalLine"                 : '\U0000007C', // VERTICAL LINE
"VerticalSeparator"            : '\U00002758', // LIGHT VERTICAL BAR
"VerticalTilde"                : '\U00002240', // WREATH PRODUCT
"VeryThinSpace"                : '\U0000200A', // HAIR SPACE
"Vfr"                          : '\U0001D519', // MATHEMATICAL FRAKTUR CAPITAL V
"Vopf"                         : '\U0001D54D', // MATHEMATICAL DOUBLE-STRUCK CAPITAL V
"Vscr"                         : '\U0001D4B1', // MATHEMATICAL SCRIPT CAPITAL V
"Vvdash"                       : '\U000022AA', // TRIPLE VERTICAL BAR RIGHT TURNSTILE
"Wcirc"                        : '\U00000174', // LATIN CAPITAL LETTER W WITH CIRCUMFLEX
"Wedge"                        : '\U000022C0', // N-ARY LOGICAL AND
"Wfr"                          : '\U0001D51A', // MATHEMATICAL FRAKTUR CAPITAL W
"Wopf"                         : '\U0001D54E', // MATHEMATICAL DOUBLE-STRUCK CAPITAL W
"Wscr"                         : '\U0001D4B2', // MATHEMATICAL SCRIPT CAPITAL W
"Xfr"                          : '\U0001D51B', // MATHEMATICAL FRAKTUR CAPITAL X
"Xgr"                          : '\U0000039E', // GREEK CAPITAL LETTER XI
"Xi"                           : '\U0000039E', // GREEK CAPITAL LETTER XI
"Xopf"                         : '\U0001D54F', // MATHEMATICAL DOUBLE-STRUCK CAPITAL X
"Xscr"                         : '\U0001D4B3', // MATHEMATICAL SCRIPT CAPITAL X
"YAcy"                         : '\U0000042F', // CYRILLIC CAPITAL LETTER YA
"YIcy"                         : '\U00000407', // CYRILLIC CAPITAL LETTER YI
"YUcy"                         : '\U0000042E', // CYRILLIC CAPITAL LETTER YU
"Yacute"                       : '\U000000DD', // LATIN CAPITAL LETTER Y WITH ACUTE
"Ycirc"                        : '\U00000176', // LATIN CAPITAL LETTER Y WITH CIRCUMFLEX
"Ycy"                          : '\U0000042B', // CYRILLIC CAPITAL LETTER YERU
"Yfr"                          : '\U0001D51C', // MATHEMATICAL FRAKTUR CAPITAL Y
"Yopf"                         : '\U0001D550', // MATHEMATICAL DOUBLE-STRUCK CAPITAL Y
"Yscr"                         : '\U0001D4B4', // MATHEMATICAL SCRIPT CAPITAL Y
"Yuml"                         : '\U00000178', // LATIN CAPITAL LETTER Y WITH DIAERESIS
"ZHcy"                         : '\U00000416', // CYRILLIC CAPITAL LETTER ZHE
"Zacute"                       : '\U00000179', // LATIN CAPITAL LETTER Z WITH ACUTE
"Zcaron"                       : '\U0000017D', // LATIN CAPITAL LETTER Z WITH CARON
"Zcy"                          : '\U00000417', // CYRILLIC CAPITAL LETTER ZE
"Zdot"                         : '\U0000017B', // LATIN CAPITAL LETTER Z WITH DOT ABOVE
"ZeroWidthSpace"               : '\U0000200B', // ZERO WIDTH SPACE
"Zeta"                         : '\U00000396', // GREEK CAPITAL LETTER ZETA
"Zfr"                          : '\U00002128', // BLACK-LETTER CAPITAL Z
"Zgr"                          : '\U00000396', // GREEK CAPITAL LETTER ZETA
"Zopf"                         : '\U00002124', // DOUBLE-STRUCK CAPITAL Z
"Zscr"                         : '\U0001D4B5', // MATHEMATICAL SCRIPT CAPITAL Z
"aacgr"                        : '\U000003AC', // GREEK SMALL LETTER ALPHA WITH TONOS
"aacute"                       : '\U000000E1', // LATIN SMALL LETTER A WITH ACUTE
"abreve"                       : '\U00000103', // LATIN SMALL LETTER A WITH BREVE
"ac"                           : '\U0000223E', // INVERTED LAZY S
// "acE"                          : &#x0223E;&#x00333, // INVERTED LAZY S with double underline
"acd"                          : '\U0000223F', // SINE WAVE
"acirc"                        : '\U000000E2', // LATIN SMALL LETTER A WITH CIRCUMFLEX
"acute"                        : '\U000000B4', // ACUTE ACCENT
"acy"                          : '\U00000430', // CYRILLIC SMALL LETTER A
"aelig"                        : '\U000000E6', // LATIN SMALL LETTER AE
"af"                           : '\U00002061', // FUNCTION APPLICATION
"afr"                          : '\U0001D51E', // MATHEMATICAL FRAKTUR SMALL A
"agr"                          : '\U000003B1', // GREEK SMALL LETTER ALPHA
"agrave"                       : '\U000000E0', // LATIN SMALL LETTER A WITH GRAVE
"alefsym"                      : '\U00002135', // ALEF SYMBOL
"aleph"                        : '\U00002135', // ALEF SYMBOL
"alpha"                        : '\U000003B1', // GREEK SMALL LETTER ALPHA
"amacr"                        : '\U00000101', // LATIN SMALL LETTER A WITH MACRON
"amalg"                        : '\U00002A3F', // AMALGAMATION OR COPRODUCT
"amp"                          : '\x26'      , // AMPERSAND
"and"                          : '\U00002227', // LOGICAL AND
"andand"                       : '\U00002A55', // TWO INTERSECTING LOGICAL AND
"andd"                         : '\U00002A5C', // LOGICAL AND WITH HORIZONTAL DASH
"andslope"                     : '\U00002A58', // SLOPING LARGE AND
"andv"                         : '\U00002A5A', // LOGICAL AND WITH MIDDLE STEM
"ang"                          : '\U00002220', // ANGLE
"ange"                         : '\U000029A4', // ANGLE WITH UNDERBAR
"angle"                        : '\U00002220', // ANGLE
"angmsd"                       : '\U00002221', // MEASURED ANGLE
"angmsdaa"                     : '\U000029A8', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND RIGHT
"angmsdab"                     : '\U000029A9', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING UP AND LEFT
"angmsdac"                     : '\U000029AA', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND RIGHT
"angmsdad"                     : '\U000029AB', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING DOWN AND LEFT
"angmsdae"                     : '\U000029AC', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND UP
"angmsdaf"                     : '\U000029AD', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND UP
"angmsdag"                     : '\U000029AE', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING RIGHT AND DOWN
"angmsdah"                     : '\U000029AF', // MEASURED ANGLE WITH OPEN ARM ENDING IN ARROW POINTING LEFT AND DOWN
"angrt"                        : '\U0000221F', // RIGHT ANGLE
"angrtvb"                      : '\U000022BE', // RIGHT ANGLE WITH ARC
"angrtvbd"                     : '\U0000299D', // MEASURED RIGHT ANGLE WITH DOT
"angsph"                       : '\U00002222', // SPHERICAL ANGLE
"angst"                        : '\U000000C5', // LATIN CAPITAL LETTER A WITH RING ABOVE
"angzarr"                      : '\U0000237C', // RIGHT ANGLE WITH DOWNWARDS ZIGZAG ARROW
"aogon"                        : '\U00000105', // LATIN SMALL LETTER A WITH OGONEK
"aopf"                         : '\U0001D552', // MATHEMATICAL DOUBLE-STRUCK SMALL A
"ap"                           : '\U00002248', // ALMOST EQUAL TO
"apE"                          : '\U00002A70', // APPROXIMATELY EQUAL OR EQUAL TO
"apacir"                       : '\U00002A6F', // ALMOST EQUAL TO WITH CIRCUMFLEX ACCENT
"ape"                          : '\U0000224A', // ALMOST EQUAL OR EQUAL TO
"apid"                         : '\U0000224B', // TRIPLE TILDE
"apos"                         : '\U00000027', // APOSTROPHE
"approx"                       : '\U00002248', // ALMOST EQUAL TO
"approxeq"                     : '\U0000224A', // ALMOST EQUAL OR EQUAL TO
"aring"                        : '\U000000E5', // LATIN SMALL LETTER A WITH RING ABOVE
"ascr"                         : '\U0001D4B6', // MATHEMATICAL SCRIPT SMALL A
"ast"                          : '\U0000002A', // ASTERISK
"asymp"                        : '\U00002248', // ALMOST EQUAL TO
"asympeq"                      : '\U0000224D', // EQUIVALENT TO
"atilde"                       : '\U000000E3', // LATIN SMALL LETTER A WITH TILDE
"auml"                         : '\U000000E4', // LATIN SMALL LETTER A WITH DIAERESIS
"awconint"                     : '\U00002233', // ANTICLOCKWISE CONTOUR INTEGRAL
"awint"                        : '\U00002A11', // ANTICLOCKWISE INTEGRATION
// "b.Delta"                      : &#x1D6AB, // MATHEMATICAL BOLD CAPITAL DELTA
// "b.Gamma"                      : &#x1D6AA, // MATHEMATICAL BOLD CAPITAL GAMMA
// "b.Gammad"                     : &#x1D7CA, // MATHEMATICAL BOLD CAPITAL DIGAMMA
// "b.Lambda"                     : &#x1D6B2, // MATHEMATICAL BOLD CAPITAL LAMDA
// "b.Omega"                      : &#x1D6C0, // MATHEMATICAL BOLD CAPITAL OMEGA
// "b.Phi"                        : &#x1D6BD, // MATHEMATICAL BOLD CAPITAL PHI
// "b.Pi"                         : &#x1D6B7, // MATHEMATICAL BOLD CAPITAL PI
// "b.Psi"                        : &#x1D6BF, // MATHEMATICAL BOLD CAPITAL PSI
// "b.Sigma"                      : &#x1D6BA, // MATHEMATICAL BOLD CAPITAL SIGMA
// "b.Theta"                      : &#x1D6AF, // MATHEMATICAL BOLD CAPITAL THETA
// "b.Upsi"                       : &#x1D6BC, // MATHEMATICAL BOLD CAPITAL UPSILON
// "b.Xi"                         : &#x1D6B5, // MATHEMATICAL BOLD CAPITAL XI
// "b.alpha"                      : &#x1D6C2, // MATHEMATICAL BOLD SMALL ALPHA
// "b.beta"                       : &#x1D6C3, // MATHEMATICAL BOLD SMALL BETA
// "b.chi"                        : &#x1D6D8, // MATHEMATICAL BOLD SMALL CHI
// "b.delta"                      : &#x1D6C5, // MATHEMATICAL BOLD SMALL DELTA
// "b.epsi"                       : &#x1D6C6, // MATHEMATICAL BOLD SMALL EPSILON
// "b.epsiv"                      : &#x1D6DC, // MATHEMATICAL BOLD EPSILON SYMBOL
// "b.eta"                        : &#x1D6C8, // MATHEMATICAL BOLD SMALL ETA
// "b.gamma"                      : &#x1D6C4, // MATHEMATICAL BOLD SMALL GAMMA
// "b.gammad"                     : &#x1D7CB, // MATHEMATICAL BOLD SMALL DIGAMMA
// "b.iota"                       : &#x1D6CA, // MATHEMATICAL BOLD SMALL IOTA
// "b.kappa"                      : &#x1D6CB, // MATHEMATICAL BOLD SMALL KAPPA
// "b.kappav"                     : &#x1D6DE, // MATHEMATICAL BOLD KAPPA SYMBOL
// "b.lambda"                     : &#x1D6CC, // MATHEMATICAL BOLD SMALL LAMDA
// "b.mu"                         : &#x1D6CD, // MATHEMATICAL BOLD SMALL MU
// "b.nu"                         : &#x1D6CE, // MATHEMATICAL BOLD SMALL NU
// "b.omega"                      : &#x1D6DA, // MATHEMATICAL BOLD SMALL OMEGA
// "b.phi"                        : &#x1D6D7, // MATHEMATICAL BOLD SMALL PHI
// "b.phiv"                       : &#x1D6DF, // MATHEMATICAL BOLD PHI SYMBOL
// "b.pi"                         : &#x1D6D1, // MATHEMATICAL BOLD SMALL PI
// "b.piv"                        : &#x1D6E1, // MATHEMATICAL BOLD PI SYMBOL
// "b.psi"                        : &#x1D6D9, // MATHEMATICAL BOLD SMALL PSI
// "b.rho"                        : &#x1D6D2, // MATHEMATICAL BOLD SMALL RHO
// "b.rhov"                       : &#x1D6E0, // MATHEMATICAL BOLD RHO SYMBOL
// "b.sigma"                      : &#x1D6D4, // MATHEMATICAL BOLD SMALL SIGMA
// "b.sigmav"                     : &#x1D6D3, // MATHEMATICAL BOLD SMALL FINAL SIGMA
// "b.tau"                        : &#x1D6D5, // MATHEMATICAL BOLD SMALL TAU
// "b.thetas"                     : &#x1D6C9, // MATHEMATICAL BOLD SMALL THETA
// "b.thetav"                     : &#x1D6DD, // MATHEMATICAL BOLD THETA SYMBOL
// "b.upsi"                       : &#x1D6D6, // MATHEMATICAL BOLD SMALL UPSILON
// "b.xi"                         : &#x1D6CF, // MATHEMATICAL BOLD SMALL XI
// "b.zeta"                       : &#x1D6C7, // MATHEMATICAL BOLD SMALL ZETA
"bNot"                         : '\U00002AED', // REVERSED DOUBLE STROKE NOT SIGN
"backcong"                     : '\U0000224C', // ALL EQUAL TO
"backepsilon"                  : '\U000003F6', // GREEK REVERSED LUNATE EPSILON SYMBOL
"backprime"                    : '\U00002035', // REVERSED PRIME
"backsim"                      : '\U0000223D', // REVERSED TILDE
"backsimeq"                    : '\U000022CD', // REVERSED TILDE EQUALS
"barvee"                       : '\U000022BD', // NOR
"barwed"                       : '\U00002305', // PROJECTIVE
"barwedge"                     : '\U00002305', // PROJECTIVE
"bbrk"                         : '\U000023B5', // BOTTOM SQUARE BRACKET
"bbrktbrk"                     : '\U000023B6', // BOTTOM SQUARE BRACKET OVER TOP SQUARE BRACKET
"bcong"                        : '\U0000224C', // ALL EQUAL TO
"bcy"                          : '\U00000431', // CYRILLIC SMALL LETTER BE
"bdquo"                        : '\U0000201E', // DOUBLE LOW-9 QUOTATION MARK
"becaus"                       : '\U00002235', // BECAUSE
"because"                      : '\U00002235', // BECAUSE
"bemptyv"                      : '\U000029B0', // REVERSED EMPTY SET
"bepsi"                        : '\U000003F6', // GREEK REVERSED LUNATE EPSILON SYMBOL
"bernou"                       : '\U0000212C', // SCRIPT CAPITAL B
"beta"                         : '\U000003B2', // GREEK SMALL LETTER BETA
"beth"                         : '\U00002136', // BET SYMBOL
"between"                      : '\U0000226C', // BETWEEN
"bfr"                          : '\U0001D51F', // MATHEMATICAL FRAKTUR SMALL B
"bgr"                          : '\U000003B2', // GREEK SMALL LETTER BETA
"bigcap"                       : '\U000022C2', // N-ARY INTERSECTION
"bigcirc"                      : '\U000025EF', // LARGE CIRCLE
"bigcup"                       : '\U000022C3', // N-ARY UNION
"bigodot"                      : '\U00002A00', // N-ARY CIRCLED DOT OPERATOR
"bigoplus"                     : '\U00002A01', // N-ARY CIRCLED PLUS OPERATOR
"bigotimes"                    : '\U00002A02', // N-ARY CIRCLED TIMES OPERATOR
"bigsqcup"                     : '\U00002A06', // N-ARY SQUARE UNION OPERATOR
"bigstar"                      : '\U00002605', // BLACK STAR
"bigtriangledown"              : '\U000025BD', // WHITE DOWN-POINTING TRIANGLE
"bigtriangleup"                : '\U000025B3', // WHITE UP-POINTING TRIANGLE
"biguplus"                     : '\U00002A04', // N-ARY UNION OPERATOR WITH PLUS
"bigvee"                       : '\U000022C1', // N-ARY LOGICAL OR
"bigwedge"                     : '\U000022C0', // N-ARY LOGICAL AND
"bkarow"                       : '\U0000290D', // RIGHTWARDS DOUBLE DASH ARROW
"blacklozenge"                 : '\U000029EB', // BLACK LOZENGE
"blacksquare"                  : '\U000025AA', // BLACK SMALL SQUARE
"blacktriangle"                : '\U000025B4', // BLACK UP-POINTING SMALL TRIANGLE
"blacktriangledown"            : '\U000025BE', // BLACK DOWN-POINTING SMALL TRIANGLE
"blacktriangleleft"            : '\U000025C2', // BLACK LEFT-POINTING SMALL TRIANGLE
"blacktriangleright"           : '\U000025B8', // BLACK RIGHT-POINTING SMALL TRIANGLE
"blank"                        : '\U00002423', // OPEN BOX
"blk12"                        : '\U00002592', // MEDIUM SHADE
"blk14"                        : '\U00002591', // LIGHT SHADE
"blk34"                        : '\U00002593', // DARK SHADE
"block"                        : '\U00002588', // FULL BLOCK
// "bne"                          : &#x0003D;&#x020E5, // EQUALS SIGN with reverse slash
// "bnequiv"                      : &#x02261;&#x020E5, // IDENTICAL TO with reverse slash
"bnot"                         : '\U00002310', // REVERSED NOT SIGN
"bopf"                         : '\U0001D553', // MATHEMATICAL DOUBLE-STRUCK SMALL B
"bot"                          : '\U000022A5', // UP TACK
"bottom"                       : '\U000022A5', // UP TACK
"bowtie"                       : '\U000022C8', // BOWTIE
"boxDL"                        : '\U00002557', // BOX DRAWINGS DOUBLE DOWN AND LEFT
"boxDR"                        : '\U00002554', // BOX DRAWINGS DOUBLE DOWN AND RIGHT
"boxDl"                        : '\U00002556', // BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE
"boxDr"                        : '\U00002553', // BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE
"boxH"                         : '\U00002550', // BOX DRAWINGS DOUBLE HORIZONTAL
"boxHD"                        : '\U00002566', // BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
"boxHU"                        : '\U00002569', // BOX DRAWINGS DOUBLE UP AND HORIZONTAL
"boxHd"                        : '\U00002564', // BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE
"boxHu"                        : '\U00002567', // BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
"boxUL"                        : '\U0000255D', // BOX DRAWINGS DOUBLE UP AND LEFT
"boxUR"                        : '\U0000255A', // BOX DRAWINGS DOUBLE UP AND RIGHT
"boxUl"                        : '\U0000255C', // BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
"boxUr"                        : '\U00002559', // BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
"boxV"                         : '\U00002551', // BOX DRAWINGS DOUBLE VERTICAL
"boxVH"                        : '\U0000256C', // BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
"boxVL"                        : '\U00002563', // BOX DRAWINGS DOUBLE VERTICAL AND LEFT
"boxVR"                        : '\U00002560', // BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
"boxVh"                        : '\U0000256B', // BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE
"boxVl"                        : '\U00002562', // BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE
"boxVr"                        : '\U0000255F', // BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE
"boxbox"                       : '\U000029C9', // TWO JOINED SQUARES
"boxdL"                        : '\U00002555', // BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE
"boxdR"                        : '\U00002552', // BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
"boxdl"                        : '\U00002510', // BOX DRAWINGS LIGHT DOWN AND LEFT
"boxdr"                        : '\U0000250C', // BOX DRAWINGS LIGHT DOWN AND RIGHT
"boxh"                         : '\U00002500', // BOX DRAWINGS LIGHT HORIZONTAL
"boxhD"                        : '\U00002565', // BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE
"boxhU"                        : '\U00002568', // BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
"boxhd"                        : '\U0000252C', // BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
"boxhu"                        : '\U00002534', // BOX DRAWINGS LIGHT UP AND HORIZONTAL
"boxminus"                     : '\U0000229F', // SQUARED MINUS
"boxplus"                      : '\U0000229E', // SQUARED PLUS
"boxtimes"                     : '\U000022A0', // SQUARED TIMES
"boxuL"                        : '\U0000255B', // BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
"boxuR"                        : '\U00002558', // BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
"boxul"                        : '\U00002518', // BOX DRAWINGS LIGHT UP AND LEFT
"boxur"                        : '\U00002514', // BOX DRAWINGS LIGHT UP AND RIGHT
"boxv"                         : '\U00002502', // BOX DRAWINGS LIGHT VERTICAL
"boxvH"                        : '\U0000256A', // BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
"boxvL"                        : '\U00002561', // BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
"boxvR"                        : '\U0000255E', // BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
"boxvh"                        : '\U0000253C', // BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
"boxvl"                        : '\U00002524', // BOX DRAWINGS LIGHT VERTICAL AND LEFT
"boxvr"                        : '\U0000251C', // BOX DRAWINGS LIGHT VERTICAL AND RIGHT
"bprime"                       : '\U00002035', // REVERSED PRIME
"breve"                        : '\U000002D8', // BREVE
"brvbar"                       : '\U000000A6', // BROKEN BAR
"bscr"                         : '\U0001D4B7', // MATHEMATICAL SCRIPT SMALL B
"bsemi"                        : '\U0000204F', // REVERSED SEMICOLON
"bsim"                         : '\U0000223D', // REVERSED TILDE
"bsime"                        : '\U000022CD', // REVERSED TILDE EQUALS
"bsol"                         : '\U0000005C', // REVERSE SOLIDUS
"bsolb"                        : '\U000029C5', // SQUARED FALLING DIAGONAL SLASH
"bsolhsub"                     : '\U000027C8', // REVERSE SOLIDUS PRECEDING SUBSET
"bull"                         : '\U00002022', // BULLET
"bullet"                       : '\U00002022', // BULLET
"bump"                         : '\U0000224E', // GEOMETRICALLY EQUIVALENT TO
"bumpE"                        : '\U00002AAE', // EQUALS SIGN WITH BUMPY ABOVE
"bumpe"                        : '\U0000224F', // DIFFERENCE BETWEEN
"bumpeq"                       : '\U0000224F', // DIFFERENCE BETWEEN
"cacute"                       : '\U00000107', // LATIN SMALL LETTER C WITH ACUTE
"cap"                          : '\U00002229', // INTERSECTION
"capand"                       : '\U00002A44', // INTERSECTION WITH LOGICAL AND
"capbrcup"                     : '\U00002A49', // INTERSECTION ABOVE BAR ABOVE UNION
"capcap"                       : '\U00002A4B', // INTERSECTION BESIDE AND JOINED WITH INTERSECTION
"capcup"                       : '\U00002A47', // INTERSECTION ABOVE UNION
"capdot"                       : '\U00002A40', // INTERSECTION WITH DOT
// "caps"                         : &#x02229;&#x0FE00, // INTERSECTION with serifs
"caret"                        : '\U00002041', // CARET INSERTION POINT
"caron"                        : '\U000002C7', // CARON
"ccaps"                        : '\U00002A4D', // CLOSED INTERSECTION WITH SERIFS
"ccaron"                       : '\U0000010D', // LATIN SMALL LETTER C WITH CARON
"ccedil"                       : '\U000000E7', // LATIN SMALL LETTER C WITH CEDILLA
"ccirc"                        : '\U00000109', // LATIN SMALL LETTER C WITH CIRCUMFLEX
"ccups"                        : '\U00002A4C', // CLOSED UNION WITH SERIFS
"ccupssm"                      : '\U00002A50', // CLOSED UNION WITH SERIFS AND SMASH PRODUCT
"cdot"                         : '\U0000010B', // LATIN SMALL LETTER C WITH DOT ABOVE
"cedil"                        : '\U000000B8', // CEDILLA
"cemptyv"                      : '\U000029B2', // EMPTY SET WITH SMALL CIRCLE ABOVE
"cent"                         : '\U000000A2', // CENT SIGN
"centerdot"                    : '\U000000B7', // MIDDLE DOT
"cfr"                          : '\U0001D520', // MATHEMATICAL FRAKTUR SMALL C
"chcy"                         : '\U00000447', // CYRILLIC SMALL LETTER CHE
"check"                        : '\U00002713', // CHECK MARK
"checkmark"                    : '\U00002713', // CHECK MARK
"chi"                          : '\U000003C7', // GREEK SMALL LETTER CHI
"cir"                          : '\U000025CB', // WHITE CIRCLE
"cirE"                         : '\U000029C3', // CIRCLE WITH TWO HORIZONTAL STROKES TO THE RIGHT
"circ"                         : '\U000002C6', // MODIFIER LETTER CIRCUMFLEX ACCENT
"circeq"                       : '\U00002257', // RING EQUAL TO
"circlearrowleft"              : '\U000021BA', // ANTICLOCKWISE OPEN CIRCLE ARROW
"circlearrowright"             : '\U000021BB', // CLOCKWISE OPEN CIRCLE ARROW
"circledR"                     : '\U000000AE', // REGISTERED SIGN
"circledS"                     : '\U000024C8', // CIRCLED LATIN CAPITAL LETTER S
"circledast"                   : '\U0000229B', // CIRCLED ASTERISK OPERATOR
"circledcirc"                  : '\U0000229A', // CIRCLED RING OPERATOR
"circleddash"                  : '\U0000229D', // CIRCLED DASH
"cire"                         : '\U00002257', // RING EQUAL TO
"cirfnint"                     : '\U00002A10', // CIRCULATION FUNCTION
"cirmid"                       : '\U00002AEF', // VERTICAL LINE WITH CIRCLE ABOVE
"cirscir"                      : '\U000029C2', // CIRCLE WITH SMALL CIRCLE TO THE RIGHT
"clubs"                        : '\U00002663', // BLACK CLUB SUIT
"clubsuit"                     : '\U00002663', // BLACK CLUB SUIT
"colon"                        : '\U0000003A', // COLON
"colone"                       : '\U00002254', // COLON EQUALS
"coloneq"                      : '\U00002254', // COLON EQUALS
"comma"                        : '\U0000002C', // COMMA
"commat"                       : '\U00000040', // COMMERCIAL AT
"comp"                         : '\U00002201', // COMPLEMENT
"compfn"                       : '\U00002218', // RING OPERATOR
"complement"                   : '\U00002201', // COMPLEMENT
"complexes"                    : '\U00002102', // DOUBLE-STRUCK CAPITAL C
"cong"                         : '\U00002245', // APPROXIMATELY EQUAL TO
"congdot"                      : '\U00002A6D', // CONGRUENT WITH DOT ABOVE
"conint"                       : '\U0000222E', // CONTOUR INTEGRAL
"copf"                         : '\U0001D554', // MATHEMATICAL DOUBLE-STRUCK SMALL C
"coprod"                       : '\U00002210', // N-ARY COPRODUCT
"copy"                         : '\U000000A9', // COPYRIGHT SIGN
"copysr"                       : '\U00002117', // SOUND RECORDING COPYRIGHT
"crarr"                        : '\U000021B5', // DOWNWARDS ARROW WITH CORNER LEFTWARDS
"cross"                        : '\U00002717', // BALLOT X
"cscr"                         : '\U0001D4B8', // MATHEMATICAL SCRIPT SMALL C
"csub"                         : '\U00002ACF', // CLOSED SUBSET
"csube"                        : '\U00002AD1', // CLOSED SUBSET OR EQUAL TO
"csup"                         : '\U00002AD0', // CLOSED SUPERSET
"csupe"                        : '\U00002AD2', // CLOSED SUPERSET OR EQUAL TO
"ctdot"                        : '\U000022EF', // MIDLINE HORIZONTAL ELLIPSIS
"cudarrl"                      : '\U00002938', // RIGHT-SIDE ARC CLOCKWISE ARROW
"cudarrr"                      : '\U00002935', // ARROW POINTING RIGHTWARDS THEN CURVING DOWNWARDS
"cuepr"                        : '\U000022DE', // EQUAL TO OR PRECEDES
"cuesc"                        : '\U000022DF', // EQUAL TO OR SUCCEEDS
"cularr"                       : '\U000021B6', // ANTICLOCKWISE TOP SEMICIRCLE ARROW
"cularrp"                      : '\U0000293D', // TOP ARC ANTICLOCKWISE ARROW WITH PLUS
"cup"                          : '\U0000222A', // UNION
"cupbrcap"                     : '\U00002A48', // UNION ABOVE BAR ABOVE INTERSECTION
"cupcap"                       : '\U00002A46', // UNION ABOVE INTERSECTION
"cupcup"                       : '\U00002A4A', // UNION BESIDE AND JOINED WITH UNION
"cupdot"                       : '\U0000228D', // MULTISET MULTIPLICATION
"cupor"                        : '\U00002A45', // UNION WITH LOGICAL OR
// "cups"                         : &#x0222A;&#x0FE00, // UNION with serifs
"curarr"                       : '\U000021B7', // CLOCKWISE TOP SEMICIRCLE ARROW
"curarrm"                      : '\U0000293C', // TOP ARC CLOCKWISE ARROW WITH MINUS
"curlyeqprec"                  : '\U000022DE', // EQUAL TO OR PRECEDES
"curlyeqsucc"                  : '\U000022DF', // EQUAL TO OR SUCCEEDS
"curlyvee"                     : '\U000022CE', // CURLY LOGICAL OR
"curlywedge"                   : '\U000022CF', // CURLY LOGICAL AND
"curren"                       : '\U000000A4', // CURRENCY SIGN
"curvearrowleft"               : '\U000021B6', // ANTICLOCKWISE TOP SEMICIRCLE ARROW
"curvearrowright"              : '\U000021B7', // CLOCKWISE TOP SEMICIRCLE ARROW
"cuvee"                        : '\U000022CE', // CURLY LOGICAL OR
"cuwed"                        : '\U000022CF', // CURLY LOGICAL AND
"cwconint"                     : '\U00002232', // CLOCKWISE CONTOUR INTEGRAL
"cwint"                        : '\U00002231', // CLOCKWISE INTEGRAL
"cylcty"                       : '\U0000232D', // CYLINDRICITY
"dArr"                         : '\U000021D3', // DOWNWARDS DOUBLE ARROW
"dHar"                         : '\U00002965', // DOWNWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
"dagger"                       : '\U00002020', // DAGGER
"daleth"                       : '\U00002138', // DALET SYMBOL
"darr"                         : '\U00002193', // DOWNWARDS ARROW
"dash"                         : '\U00002010', // HYPHEN
"dashv"                        : '\U000022A3', // LEFT TACK
"dbkarow"                      : '\U0000290F', // RIGHTWARDS TRIPLE DASH ARROW
"dblac"                        : '\U000002DD', // DOUBLE ACUTE ACCENT
"dcaron"                       : '\U0000010F', // LATIN SMALL LETTER D WITH CARON
"dcy"                          : '\U00000434', // CYRILLIC SMALL LETTER DE
"dd"                           : '\U00002146', // DOUBLE-STRUCK ITALIC SMALL D
"ddagger"                      : '\U00002021', // DOUBLE DAGGER
"ddarr"                        : '\U000021CA', // DOWNWARDS PAIRED ARROWS
"ddotseq"                      : '\U00002A77', // EQUALS SIGN WITH TWO DOTS ABOVE AND TWO DOTS BELOW
"deg"                          : '\U000000B0', // DEGREE SIGN
"delta"                        : '\U000003B4', // GREEK SMALL LETTER DELTA
"demptyv"                      : '\U000029B1', // EMPTY SET WITH OVERBAR
"dfisht"                       : '\U0000297F', // DOWN FISH TAIL
"dfr"                          : '\U0001D521', // MATHEMATICAL FRAKTUR SMALL D
"dgr"                          : '\U000003B4', // GREEK SMALL LETTER DELTA
"dharl"                        : '\U000021C3', // DOWNWARDS HARPOON WITH BARB LEFTWARDS
"dharr"                        : '\U000021C2', // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
"diam"                         : '\U000022C4', // DIAMOND OPERATOR
"diamond"                      : '\U000022C4', // DIAMOND OPERATOR
"diamondsuit"                  : '\U00002666', // BLACK DIAMOND SUIT
"diams"                        : '\U00002666', // BLACK DIAMOND SUIT
"die"                          : '\U000000A8', // DIAERESIS
"digamma"                      : '\U000003DD', // GREEK SMALL LETTER DIGAMMA
"disin"                        : '\U000022F2', // ELEMENT OF WITH LONG HORIZONTAL STROKE
"div"                          : '\U000000F7', // DIVISION SIGN
"divide"                       : '\U000000F7', // DIVISION SIGN
"divideontimes"                : '\U000022C7', // DIVISION TIMES
"divonx"                       : '\U000022C7', // DIVISION TIMES
"djcy"                         : '\U00000452', // CYRILLIC SMALL LETTER DJE
"dlcorn"                       : '\U0000231E', // BOTTOM LEFT CORNER
"dlcrop"                       : '\U0000230D', // BOTTOM LEFT CROP
"dollar"                       : '\U00000024', // DOLLAR SIGN
"dopf"                         : '\U0001D555', // MATHEMATICAL DOUBLE-STRUCK SMALL D
"dot"                          : '\U000002D9', // DOT ABOVE
"doteq"                        : '\U00002250', // APPROACHES THE LIMIT
"doteqdot"                     : '\U00002251', // GEOMETRICALLY EQUAL TO
"dotminus"                     : '\U00002238', // DOT MINUS
"dotplus"                      : '\U00002214', // DOT PLUS
"dotsquare"                    : '\U000022A1', // SQUARED DOT OPERATOR
"doublebarwedge"               : '\U00002306', // PERSPECTIVE
"downarrow"                    : '\U00002193', // DOWNWARDS ARROW
"downdownarrows"               : '\U000021CA', // DOWNWARDS PAIRED ARROWS
"downharpoonleft"              : '\U000021C3', // DOWNWARDS HARPOON WITH BARB LEFTWARDS
"downharpoonright"             : '\U000021C2', // DOWNWARDS HARPOON WITH BARB RIGHTWARDS
"drbkarow"                     : '\U00002910', // RIGHTWARDS TWO-HEADED TRIPLE DASH ARROW
"drcorn"                       : '\U0000231F', // BOTTOM RIGHT CORNER
"drcrop"                       : '\U0000230C', // BOTTOM RIGHT CROP
"dscr"                         : '\U0001D4B9', // MATHEMATICAL SCRIPT SMALL D
"dscy"                         : '\U00000455', // CYRILLIC SMALL LETTER DZE
"dsol"                         : '\U000029F6', // SOLIDUS WITH OVERBAR
"dstrok"                       : '\U00000111', // LATIN SMALL LETTER D WITH STROKE
"dtdot"                        : '\U000022F1', // DOWN RIGHT DIAGONAL ELLIPSIS
"dtri"                         : '\U000025BF', // WHITE DOWN-POINTING SMALL TRIANGLE
"dtrif"                        : '\U000025BE', // BLACK DOWN-POINTING SMALL TRIANGLE
"duarr"                        : '\U000021F5', // DOWNWARDS ARROW LEFTWARDS OF UPWARDS ARROW
"duhar"                        : '\U0000296F', // DOWNWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
"dwangle"                      : '\U000029A6', // OBLIQUE ANGLE OPENING UP
"dzcy"                         : '\U0000045F', // CYRILLIC SMALL LETTER DZHE
"dzigrarr"                     : '\U000027FF', // LONG RIGHTWARDS SQUIGGLE ARROW
"eDDot"                        : '\U00002A77', // EQUALS SIGN WITH TWO DOTS ABOVE AND TWO DOTS BELOW
"eDot"                         : '\U00002251', // GEOMETRICALLY EQUAL TO
"eacgr"                        : '\U000003AD', // GREEK SMALL LETTER EPSILON WITH TONOS
"eacute"                       : '\U000000E9', // LATIN SMALL LETTER E WITH ACUTE
"easter"                       : '\U00002A6E', // EQUALS WITH ASTERISK
"ecaron"                       : '\U0000011B', // LATIN SMALL LETTER E WITH CARON
"ecir"                         : '\U00002256', // RING IN EQUAL TO
"ecirc"                        : '\U000000EA', // LATIN SMALL LETTER E WITH CIRCUMFLEX
"ecolon"                       : '\U00002255', // EQUALS COLON
"ecy"                          : '\U0000044D', // CYRILLIC SMALL LETTER E
"edot"                         : '\U00000117', // LATIN SMALL LETTER E WITH DOT ABOVE
"ee"                           : '\U00002147', // DOUBLE-STRUCK ITALIC SMALL E
"eeacgr"                       : '\U000003AE', // GREEK SMALL LETTER ETA WITH TONOS
"eegr"                         : '\U000003B7', // GREEK SMALL LETTER ETA
"efDot"                        : '\U00002252', // APPROXIMATELY EQUAL TO OR THE IMAGE OF
"efr"                          : '\U0001D522', // MATHEMATICAL FRAKTUR SMALL E
"eg"                           : '\U00002A9A', // DOUBLE-LINE EQUAL TO OR GREATER-THAN
"egr"                          : '\U000003B5', // GREEK SMALL LETTER EPSILON
"egrave"                       : '\U000000E8', // LATIN SMALL LETTER E WITH GRAVE
"egs"                          : '\U00002A96', // SLANTED EQUAL TO OR GREATER-THAN
"egsdot"                       : '\U00002A98', // SLANTED EQUAL TO OR GREATER-THAN WITH DOT INSIDE
"el"                           : '\U00002A99', // DOUBLE-LINE EQUAL TO OR LESS-THAN
"elinters"                     : '\U000023E7', // ELECTRICAL INTERSECTION
"ell"                          : '\U00002113', // SCRIPT SMALL L
"els"                          : '\U00002A95', // SLANTED EQUAL TO OR LESS-THAN
"elsdot"                       : '\U00002A97', // SLANTED EQUAL TO OR LESS-THAN WITH DOT INSIDE
"emacr"                        : '\U00000113', // LATIN SMALL LETTER E WITH MACRON
"empty"                        : '\U00002205', // EMPTY SET
"emptyset"                     : '\U00002205', // EMPTY SET
"emptyv"                       : '\U00002205', // EMPTY SET
"emsp"                         : '\U00002003', // EM SPACE
"emsp13"                       : '\U00002004', // THREE-PER-EM SPACE
"emsp14"                       : '\U00002005', // FOUR-PER-EM SPACE
"eng"                          : '\U0000014B', // LATIN SMALL LETTER ENG
"ensp"                         : '\U00002002', // EN SPACE
"eogon"                        : '\U00000119', // LATIN SMALL LETTER E WITH OGONEK
"eopf"                         : '\U0001D556', // MATHEMATICAL DOUBLE-STRUCK SMALL E
"epar"                         : '\U000022D5', // EQUAL AND PARALLEL TO
"eparsl"                       : '\U000029E3', // EQUALS SIGN AND SLANTED PARALLEL
"eplus"                        : '\U00002A71', // EQUALS SIGN ABOVE PLUS SIGN
"epsi"                         : '\U000003B5', // GREEK SMALL LETTER EPSILON
"epsilon"                      : '\U000003B5', // GREEK SMALL LETTER EPSILON
"epsiv"                        : '\U000003F5', // GREEK LUNATE EPSILON SYMBOL
"eqcirc"                       : '\U00002256', // RING IN EQUAL TO
"eqcolon"                      : '\U00002255', // EQUALS COLON
"eqsim"                        : '\U00002242', // MINUS TILDE
"eqslantgtr"                   : '\U00002A96', // SLANTED EQUAL TO OR GREATER-THAN
"eqslantless"                  : '\U00002A95', // SLANTED EQUAL TO OR LESS-THAN
"equals"                       : '\U0000003D', // EQUALS SIGN
"equest"                       : '\U0000225F', // QUESTIONED EQUAL TO
"equiv"                        : '\U00002261', // IDENTICAL TO
"equivDD"                      : '\U00002A78', // EQUIVALENT WITH FOUR DOTS ABOVE
"eqvparsl"                     : '\U000029E5', // IDENTICAL TO AND SLANTED PARALLEL
"erDot"                        : '\U00002253', // IMAGE OF OR APPROXIMATELY EQUAL TO
"erarr"                        : '\U00002971', // EQUALS SIGN ABOVE RIGHTWARDS ARROW
"escr"                         : '\U0000212F', // SCRIPT SMALL E
"esdot"                        : '\U00002250', // APPROACHES THE LIMIT
"esim"                         : '\U00002242', // MINUS TILDE
"eta"                          : '\U000003B7', // GREEK SMALL LETTER ETA
"eth"                          : '\U000000F0', // LATIN SMALL LETTER ETH
"euml"                         : '\U000000EB', // LATIN SMALL LETTER E WITH DIAERESIS
"euro"                         : '\U000020AC', // EURO SIGN
"excl"                         : '\U00000021', // EXCLAMATION MARK
"exist"                        : '\U00002203', // THERE EXISTS
"expectation"                  : '\U00002130', // SCRIPT CAPITAL E
"exponentiale"                 : '\U00002147', // DOUBLE-STRUCK ITALIC SMALL E
"fallingdotseq"                : '\U00002252', // APPROXIMATELY EQUAL TO OR THE IMAGE OF
"fcy"                          : '\U00000444', // CYRILLIC SMALL LETTER EF
"female"                       : '\U00002640', // FEMALE SIGN
"ffilig"                       : '\U0000FB03', // LATIN SMALL LIGATURE FFI
"fflig"                        : '\U0000FB00', // LATIN SMALL LIGATURE FF
"ffllig"                       : '\U0000FB04', // LATIN SMALL LIGATURE FFL
"ffr"                          : '\U0001D523', // MATHEMATICAL FRAKTUR SMALL F
"filig"                        : '\U0000FB01', // LATIN SMALL LIGATURE FI
// "fjlig"                        : &#x00066;&#x0006A, // fj ligature
"flat"                         : '\U0000266D', // MUSIC FLAT SIGN
"fllig"                        : '\U0000FB02', // LATIN SMALL LIGATURE FL
"fltns"                        : '\U000025B1', // WHITE PARALLELOGRAM
"fnof"                         : '\U00000192', // LATIN SMALL LETTER F WITH HOOK
"fopf"                         : '\U0001D557', // MATHEMATICAL DOUBLE-STRUCK SMALL F
"forall"                       : '\U00002200', // FOR ALL
"fork"                         : '\U000022D4', // PITCHFORK
"forkv"                        : '\U00002AD9', // ELEMENT OF OPENING DOWNWARDS
"fpartint"                     : '\U00002A0D', // FINITE PART INTEGRAL
"frac12"                       : '\U000000BD', // VULGAR FRACTION ONE HALF
"frac13"                       : '\U00002153', // VULGAR FRACTION ONE THIRD
"frac14"                       : '\U000000BC', // VULGAR FRACTION ONE QUARTER
"frac15"                       : '\U00002155', // VULGAR FRACTION ONE FIFTH
"frac16"                       : '\U00002159', // VULGAR FRACTION ONE SIXTH
"frac18"                       : '\U0000215B', // VULGAR FRACTION ONE EIGHTH
"frac23"                       : '\U00002154', // VULGAR FRACTION TWO THIRDS
"frac25"                       : '\U00002156', // VULGAR FRACTION TWO FIFTHS
"frac34"                       : '\U000000BE', // VULGAR FRACTION THREE QUARTERS
"frac35"                       : '\U00002157', // VULGAR FRACTION THREE FIFTHS
"frac38"                       : '\U0000215C', // VULGAR FRACTION THREE EIGHTHS
"frac45"                       : '\U00002158', // VULGAR FRACTION FOUR FIFTHS
"frac56"                       : '\U0000215A', // VULGAR FRACTION FIVE SIXTHS
"frac58"                       : '\U0000215D', // VULGAR FRACTION FIVE EIGHTHS
"frac78"                       : '\U0000215E', // VULGAR FRACTION SEVEN EIGHTHS
"frasl"                        : '\U00002044', // FRACTION SLASH
"frown"                        : '\U00002322', // FROWN
"fscr"                         : '\U0001D4BB', // MATHEMATICAL SCRIPT SMALL F
"gE"                           : '\U00002267', // GREATER-THAN OVER EQUAL TO
"gEl"                          : '\U00002A8C', // GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
"gacute"                       : '\U000001F5', // LATIN SMALL LETTER G WITH ACUTE
"gamma"                        : '\U000003B3', // GREEK SMALL LETTER GAMMA
"gammad"                       : '\U000003DD', // GREEK SMALL LETTER DIGAMMA
"gap"                          : '\U00002A86', // GREATER-THAN OR APPROXIMATE
"gbreve"                       : '\U0000011F', // LATIN SMALL LETTER G WITH BREVE
"gcirc"                        : '\U0000011D', // LATIN SMALL LETTER G WITH CIRCUMFLEX
"gcy"                          : '\U00000433', // CYRILLIC SMALL LETTER GHE
"gdot"                         : '\U00000121', // LATIN SMALL LETTER G WITH DOT ABOVE
"ge"                           : '\U00002265', // GREATER-THAN OR EQUAL TO
"gel"                          : '\U000022DB', // GREATER-THAN EQUAL TO OR LESS-THAN
"geq"                          : '\U00002265', // GREATER-THAN OR EQUAL TO
"geqq"                         : '\U00002267', // GREATER-THAN OVER EQUAL TO
"geqslant"                     : '\U00002A7E', // GREATER-THAN OR SLANTED EQUAL TO
"ges"                          : '\U00002A7E', // GREATER-THAN OR SLANTED EQUAL TO
"gescc"                        : '\U00002AA9', // GREATER-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
"gesdot"                       : '\U00002A80', // GREATER-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
"gesdoto"                      : '\U00002A82', // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
"gesdotol"                     : '\U00002A84', // GREATER-THAN OR SLANTED EQUAL TO WITH DOT ABOVE LEFT
// "gesl"                         : &#x022DB;&#x0FE00, // GREATER-THAN slanted EQUAL TO OR LESS-THAN
"gesles"                       : '\U00002A94', // GREATER-THAN ABOVE SLANTED EQUAL ABOVE LESS-THAN ABOVE SLANTED EQUAL
"gfr"                          : '\U0001D524', // MATHEMATICAL FRAKTUR SMALL G
"gg"                           : '\U0000226B', // MUCH GREATER-THAN
"ggg"                          : '\U000022D9', // VERY MUCH GREATER-THAN
"ggr"                          : '\U000003B3', // GREEK SMALL LETTER GAMMA
"gimel"                        : '\U00002137', // GIMEL SYMBOL
"gjcy"                         : '\U00000453', // CYRILLIC SMALL LETTER GJE
"gl"                           : '\U00002277', // GREATER-THAN OR LESS-THAN
"glE"                          : '\U00002A92', // GREATER-THAN ABOVE LESS-THAN ABOVE DOUBLE-LINE EQUAL
"gla"                          : '\U00002AA5', // GREATER-THAN BESIDE LESS-THAN
"glj"                          : '\U00002AA4', // GREATER-THAN OVERLAPPING LESS-THAN
"gnE"                          : '\U00002269', // GREATER-THAN BUT NOT EQUAL TO
"gnap"                         : '\U00002A8A', // GREATER-THAN AND NOT APPROXIMATE
"gnapprox"                     : '\U00002A8A', // GREATER-THAN AND NOT APPROXIMATE
"gne"                          : '\U00002A88', // GREATER-THAN AND SINGLE-LINE NOT EQUAL TO
"gneq"                         : '\U00002A88', // GREATER-THAN AND SINGLE-LINE NOT EQUAL TO
"gneqq"                        : '\U00002269', // GREATER-THAN BUT NOT EQUAL TO
"gnsim"                        : '\U000022E7', // GREATER-THAN BUT NOT EQUIVALENT TO
"gopf"                         : '\U0001D558', // MATHEMATICAL DOUBLE-STRUCK SMALL G
"grave"                        : '\U00000060', // GRAVE ACCENT
"gscr"                         : '\U0000210A', // SCRIPT SMALL G
"gsim"                         : '\U00002273', // GREATER-THAN OR EQUIVALENT TO
"gsime"                        : '\U00002A8E', // GREATER-THAN ABOVE SIMILAR OR EQUAL
"gsiml"                        : '\U00002A90', // GREATER-THAN ABOVE SIMILAR ABOVE LESS-THAN
"gt"                           : '\U0000003E', // GREATER-THAN SIGN
"gtcc"                         : '\U00002AA7', // GREATER-THAN CLOSED BY CURVE
"gtcir"                        : '\U00002A7A', // GREATER-THAN WITH CIRCLE INSIDE
"gtdot"                        : '\U000022D7', // GREATER-THAN WITH DOT
"gtlPar"                       : '\U00002995', // DOUBLE LEFT ARC GREATER-THAN BRACKET
"gtquest"                      : '\U00002A7C', // GREATER-THAN WITH QUESTION MARK ABOVE
"gtrapprox"                    : '\U00002A86', // GREATER-THAN OR APPROXIMATE
"gtrarr"                       : '\U00002978', // GREATER-THAN ABOVE RIGHTWARDS ARROW
"gtrdot"                       : '\U000022D7', // GREATER-THAN WITH DOT
"gtreqless"                    : '\U000022DB', // GREATER-THAN EQUAL TO OR LESS-THAN
"gtreqqless"                   : '\U00002A8C', // GREATER-THAN ABOVE DOUBLE-LINE EQUAL ABOVE LESS-THAN
"gtrless"                      : '\U00002277', // GREATER-THAN OR LESS-THAN
"gtrsim"                       : '\U00002273', // GREATER-THAN OR EQUIVALENT TO
// "gvertneqq"                    : &#x02269;&#x0FE00, // GREATER-THAN BUT NOT EQUAL TO - with vertical stroke
// "gvnE"                         : &#x02269;&#x0FE00, // GREATER-THAN BUT NOT EQUAL TO - with vertical stroke
"hArr"                         : '\U000021D4', // LEFT RIGHT DOUBLE ARROW
"hairsp"                       : '\U0000200A', // HAIR SPACE
"half"                         : '\U000000BD', // VULGAR FRACTION ONE HALF
"hamilt"                       : '\U0000210B', // SCRIPT CAPITAL H
"hardcy"                       : '\U0000044A', // CYRILLIC SMALL LETTER HARD SIGN
"harr"                         : '\U00002194', // LEFT RIGHT ARROW
"harrcir"                      : '\U00002948', // LEFT RIGHT ARROW THROUGH SMALL CIRCLE
"harrw"                        : '\U000021AD', // LEFT RIGHT WAVE ARROW
"hbar"                         : '\U0000210F', // PLANCK CONSTANT OVER TWO PI
"hcirc"                        : '\U00000125', // LATIN SMALL LETTER H WITH CIRCUMFLEX
"hearts"                       : '\U00002665', // BLACK HEART SUIT
"heartsuit"                    : '\U00002665', // BLACK HEART SUIT
"hellip"                       : '\U00002026', // HORIZONTAL ELLIPSIS
"hercon"                       : '\U000022B9', // HERMITIAN CONJUGATE MATRIX
"hfr"                          : '\U0001D525', // MATHEMATICAL FRAKTUR SMALL H
"hksearow"                     : '\U00002925', // SOUTH EAST ARROW WITH HOOK
"hkswarow"                     : '\U00002926', // SOUTH WEST ARROW WITH HOOK
"hoarr"                        : '\U000021FF', // LEFT RIGHT OPEN-HEADED ARROW
"homtht"                       : '\U0000223B', // HOMOTHETIC
"hookleftarrow"                : '\U000021A9', // LEFTWARDS ARROW WITH HOOK
"hookrightarrow"               : '\U000021AA', // RIGHTWARDS ARROW WITH HOOK
"hopf"                         : '\U0001D559', // MATHEMATICAL DOUBLE-STRUCK SMALL H
"horbar"                       : '\U00002015', // HORIZONTAL BAR
"hscr"                         : '\U0001D4BD', // MATHEMATICAL SCRIPT SMALL H
"hslash"                       : '\U0000210F', // PLANCK CONSTANT OVER TWO PI
"hstrok"                       : '\U00000127', // LATIN SMALL LETTER H WITH STROKE
"hybull"                       : '\U00002043', // HYPHEN BULLET
"hyphen"                       : '\U00002010', // HYPHEN
"iacgr"                        : '\U000003AF', // GREEK SMALL LETTER IOTA WITH TONOS
"iacute"                       : '\U000000ED', // LATIN SMALL LETTER I WITH ACUTE
"ic"                           : '\U00002063', // INVISIBLE SEPARATOR
"icirc"                        : '\U000000EE', // LATIN SMALL LETTER I WITH CIRCUMFLEX
"icy"                          : '\U00000438', // CYRILLIC SMALL LETTER I
"idiagr"                       : '\U00000390', // GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS
"idigr"                        : '\U000003CA', // GREEK SMALL LETTER IOTA WITH DIALYTIKA
"iecy"                         : '\U00000435', // CYRILLIC SMALL LETTER IE
"iexcl"                        : '\U000000A1', // INVERTED EXCLAMATION MARK
"iff"                          : '\U000021D4', // LEFT RIGHT DOUBLE ARROW
"ifr"                          : '\U0001D526', // MATHEMATICAL FRAKTUR SMALL I
"igr"                          : '\U000003B9', // GREEK SMALL LETTER IOTA
"igrave"                       : '\U000000EC', // LATIN SMALL LETTER I WITH GRAVE
"ii"                           : '\U00002148', // DOUBLE-STRUCK ITALIC SMALL I
"iiiint"                       : '\U00002A0C', // QUADRUPLE INTEGRAL OPERATOR
"iiint"                        : '\U0000222D', // TRIPLE INTEGRAL
"iinfin"                       : '\U000029DC', // INCOMPLETE INFINITY
"iiota"                        : '\U00002129', // TURNED GREEK SMALL LETTER IOTA
"ijlig"                        : '\U00000133', // LATIN SMALL LIGATURE IJ
"imacr"                        : '\U0000012B', // LATIN SMALL LETTER I WITH MACRON
"image"                        : '\U00002111', // BLACK-LETTER CAPITAL I
"imagline"                     : '\U00002110', // SCRIPT CAPITAL I
"imagpart"                     : '\U00002111', // BLACK-LETTER CAPITAL I
"imath"                        : '\U00000131', // LATIN SMALL LETTER DOTLESS I
"imof"                         : '\U000022B7', // IMAGE OF
"imped"                        : '\U000001B5', // LATIN CAPITAL LETTER Z WITH STROKE
"in"                           : '\U00002208', // ELEMENT OF
"incare"                       : '\U00002105', // CARE OF
"infin"                        : '\U0000221E', // INFINITY
"infintie"                     : '\U000029DD', // TIE OVER INFINITY
"inodot"                       : '\U00000131', // LATIN SMALL LETTER DOTLESS I
"int"                          : '\U0000222B', // INTEGRAL
"intcal"                       : '\U000022BA', // INTERCALATE
"integers"                     : '\U00002124', // DOUBLE-STRUCK CAPITAL Z
"intercal"                     : '\U000022BA', // INTERCALATE
"intlarhk"                     : '\U00002A17', // INTEGRAL WITH LEFTWARDS ARROW WITH HOOK
"intprod"                      : '\U00002A3C', // INTERIOR PRODUCT
"iocy"                         : '\U00000451', // CYRILLIC SMALL LETTER IO
"iogon"                        : '\U0000012F', // LATIN SMALL LETTER I WITH OGONEK
"iopf"                         : '\U0001D55A', // MATHEMATICAL DOUBLE-STRUCK SMALL I
"iota"                         : '\U000003B9', // GREEK SMALL LETTER IOTA
"iprod"                        : '\U00002A3C', // INTERIOR PRODUCT
"iquest"                       : '\U000000BF', // INVERTED QUESTION MARK
"iscr"                         : '\U0001D4BE', // MATHEMATICAL SCRIPT SMALL I
"isin"                         : '\U00002208', // ELEMENT OF
"isinE"                        : '\U000022F9', // ELEMENT OF WITH TWO HORIZONTAL STROKES
"isindot"                      : '\U000022F5', // ELEMENT OF WITH DOT ABOVE
"isins"                        : '\U000022F4', // SMALL ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
"isinsv"                       : '\U000022F3', // ELEMENT OF WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
"isinv"                        : '\U00002208', // ELEMENT OF
"it"                           : '\U00002062', // INVISIBLE TIMES
"itilde"                       : '\U00000129', // LATIN SMALL LETTER I WITH TILDE
"iukcy"                        : '\U00000456', // CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
"iuml"                         : '\U000000EF', // LATIN SMALL LETTER I WITH DIAERESIS
"jcirc"                        : '\U00000135', // LATIN SMALL LETTER J WITH CIRCUMFLEX
"jcy"                          : '\U00000439', // CYRILLIC SMALL LETTER SHORT I
"jfr"                          : '\U0001D527', // MATHEMATICAL FRAKTUR SMALL J
"jmath"                        : '\U00000237', // LATIN SMALL LETTER DOTLESS J
"jopf"                         : '\U0001D55B', // MATHEMATICAL DOUBLE-STRUCK SMALL J
"jscr"                         : '\U0001D4BF', // MATHEMATICAL SCRIPT SMALL J
"jsercy"                       : '\U00000458', // CYRILLIC SMALL LETTER JE
"jukcy"                        : '\U00000454', // CYRILLIC SMALL LETTER UKRAINIAN IE
"kappa"                        : '\U000003BA', // GREEK SMALL LETTER KAPPA
"kappav"                       : '\U000003F0', // GREEK KAPPA SYMBOL
"kcedil"                       : '\U00000137', // LATIN SMALL LETTER K WITH CEDILLA
"kcy"                          : '\U0000043A', // CYRILLIC SMALL LETTER KA
"kfr"                          : '\U0001D528', // MATHEMATICAL FRAKTUR SMALL K
"kgr"                          : '\U000003BA', // GREEK SMALL LETTER KAPPA
"kgreen"                       : '\U00000138', // LATIN SMALL LETTER KRA
"khcy"                         : '\U00000445', // CYRILLIC SMALL LETTER HA
"khgr"                         : '\U000003C7', // GREEK SMALL LETTER CHI
"kjcy"                         : '\U0000045C', // CYRILLIC SMALL LETTER KJE
"kopf"                         : '\U0001D55C', // MATHEMATICAL DOUBLE-STRUCK SMALL K
"kscr"                         : '\U0001D4C0', // MATHEMATICAL SCRIPT SMALL K
"lAarr"                        : '\U000021DA', // LEFTWARDS TRIPLE ARROW
"lArr"                         : '\U000021D0', // LEFTWARDS DOUBLE ARROW
"lAtail"                       : '\U0000291B', // LEFTWARDS DOUBLE ARROW-TAIL
"lBarr"                        : '\U0000290E', // LEFTWARDS TRIPLE DASH ARROW
"lE"                           : '\U00002266', // LESS-THAN OVER EQUAL TO
"lEg"                          : '\U00002A8B', // LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
"lHar"                         : '\U00002962', // LEFTWARDS HARPOON WITH BARB UP ABOVE LEFTWARDS HARPOON WITH BARB DOWN
"lacute"                       : '\U0000013A', // LATIN SMALL LETTER L WITH ACUTE
"laemptyv"                     : '\U000029B4', // EMPTY SET WITH LEFT ARROW ABOVE
"lagran"                       : '\U00002112', // SCRIPT CAPITAL L
"lambda"                       : '\U000003BB', // GREEK SMALL LETTER LAMDA
"lang"                         : '\U000027E8', // MATHEMATICAL LEFT ANGLE BRACKET
"langd"                        : '\U00002991', // LEFT ANGLE BRACKET WITH DOT
"langle"                       : '\U000027E8', // MATHEMATICAL LEFT ANGLE BRACKET
"lap"                          : '\U00002A85', // LESS-THAN OR APPROXIMATE
"laquo"                        : '\U000000AB', // LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
"larr"                         : '\U00002190', // LEFTWARDS ARROW
"larrb"                        : '\U000021E4', // LEFTWARDS ARROW TO BAR
"larrbfs"                      : '\U0000291F', // LEFTWARDS ARROW FROM BAR TO BLACK DIAMOND
"larrfs"                       : '\U0000291D', // LEFTWARDS ARROW TO BLACK DIAMOND
"larrhk"                       : '\U000021A9', // LEFTWARDS ARROW WITH HOOK
"larrlp"                       : '\U000021AB', // LEFTWARDS ARROW WITH LOOP
"larrpl"                       : '\U00002939', // LEFT-SIDE ARC ANTICLOCKWISE ARROW
"larrsim"                      : '\U00002973', // LEFTWARDS ARROW ABOVE TILDE OPERATOR
"larrtl"                       : '\U000021A2', // LEFTWARDS ARROW WITH TAIL
"lat"                          : '\U00002AAB', // LARGER THAN
"latail"                       : '\U00002919', // LEFTWARDS ARROW-TAIL
"late"                         : '\U00002AAD', // LARGER THAN OR EQUAL TO
// "lates"                        : &#x02AAD;&#x0FE00, // LARGER THAN OR slanted EQUAL
"lbarr"                        : '\U0000290C', // LEFTWARDS DOUBLE DASH ARROW
"lbbrk"                        : '\U00002772', // LIGHT LEFT TORTOISE SHELL BRACKET ORNAMENT
"lbrace"                       : '\U0000007B', // LEFT CURLY BRACKET
"lbrack"                       : '\U0000005B', // LEFT SQUARE BRACKET
"lbrke"                        : '\U0000298B', // LEFT SQUARE BRACKET WITH UNDERBAR
"lbrksld"                      : '\U0000298F', // LEFT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
"lbrkslu"                      : '\U0000298D', // LEFT SQUARE BRACKET WITH TICK IN TOP CORNER
"lcaron"                       : '\U0000013E', // LATIN SMALL LETTER L WITH CARON
"lcedil"                       : '\U0000013C', // LATIN SMALL LETTER L WITH CEDILLA
"lceil"                        : '\U00002308', // LEFT CEILING
"lcub"                         : '\U0000007B', // LEFT CURLY BRACKET
"lcy"                          : '\U0000043B', // CYRILLIC SMALL LETTER EL
"ldca"                         : '\U00002936', // ARROW POINTING DOWNWARDS THEN CURVING LEFTWARDS
"ldquo"                        : '\U0000201C', // LEFT DOUBLE QUOTATION MARK
"ldquor"                       : '\U0000201E', // DOUBLE LOW-9 QUOTATION MARK
"ldrdhar"                      : '\U00002967', // LEFTWARDS HARPOON WITH BARB DOWN ABOVE RIGHTWARDS HARPOON WITH BARB DOWN
"ldrushar"                     : '\U0000294B', // LEFT BARB DOWN RIGHT BARB UP HARPOON
"ldsh"                         : '\U000021B2', // DOWNWARDS ARROW WITH TIP LEFTWARDS
"le"                           : '\U00002264', // LESS-THAN OR EQUAL TO
"leftarrow"                    : '\U00002190', // LEFTWARDS ARROW
"leftarrowtail"                : '\U000021A2', // LEFTWARDS ARROW WITH TAIL
"leftharpoondown"              : '\U000021BD', // LEFTWARDS HARPOON WITH BARB DOWNWARDS
"leftharpoonup"                : '\U000021BC', // LEFTWARDS HARPOON WITH BARB UPWARDS
"leftleftarrows"               : '\U000021C7', // LEFTWARDS PAIRED ARROWS
"leftrightarrow"               : '\U00002194', // LEFT RIGHT ARROW
"leftrightarrows"              : '\U000021C6', // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
"leftrightharpoons"            : '\U000021CB', // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
"leftrightsquigarrow"          : '\U000021AD', // LEFT RIGHT WAVE ARROW
"leftthreetimes"               : '\U000022CB', // LEFT SEMIDIRECT PRODUCT
"leg"                          : '\U000022DA', // LESS-THAN EQUAL TO OR GREATER-THAN
"leq"                          : '\U00002264', // LESS-THAN OR EQUAL TO
"leqq"                         : '\U00002266', // LESS-THAN OVER EQUAL TO
"leqslant"                     : '\U00002A7D', // LESS-THAN OR SLANTED EQUAL TO
"les"                          : '\U00002A7D', // LESS-THAN OR SLANTED EQUAL TO
"lescc"                        : '\U00002AA8', // LESS-THAN CLOSED BY CURVE ABOVE SLANTED EQUAL
"lesdot"                       : '\U00002A7F', // LESS-THAN OR SLANTED EQUAL TO WITH DOT INSIDE
"lesdoto"                      : '\U00002A81', // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE
"lesdotor"                     : '\U00002A83', // LESS-THAN OR SLANTED EQUAL TO WITH DOT ABOVE RIGHT
// "lesg"                         : &#x022DA;&#x0FE00, // LESS-THAN slanted EQUAL TO OR GREATER-THAN
"lesges"                       : '\U00002A93', // LESS-THAN ABOVE SLANTED EQUAL ABOVE GREATER-THAN ABOVE SLANTED EQUAL
"lessapprox"                   : '\U00002A85', // LESS-THAN OR APPROXIMATE
"lessdot"                      : '\U000022D6', // LESS-THAN WITH DOT
"lesseqgtr"                    : '\U000022DA', // LESS-THAN EQUAL TO OR GREATER-THAN
"lesseqqgtr"                   : '\U00002A8B', // LESS-THAN ABOVE DOUBLE-LINE EQUAL ABOVE GREATER-THAN
"lessgtr"                      : '\U00002276', // LESS-THAN OR GREATER-THAN
"lesssim"                      : '\U00002272', // LESS-THAN OR EQUIVALENT TO
"lfisht"                       : '\U0000297C', // LEFT FISH TAIL
"lfloor"                       : '\U0000230A', // LEFT FLOOR
"lfr"                          : '\U0001D529', // MATHEMATICAL FRAKTUR SMALL L
"lg"                           : '\U00002276', // LESS-THAN OR GREATER-THAN
"lgE"                          : '\U00002A91', // LESS-THAN ABOVE GREATER-THAN ABOVE DOUBLE-LINE EQUAL
"lgr"                          : '\U000003BB', // GREEK SMALL LETTER LAMDA
"lhard"                        : '\U000021BD', // LEFTWARDS HARPOON WITH BARB DOWNWARDS
"lharu"                        : '\U000021BC', // LEFTWARDS HARPOON WITH BARB UPWARDS
"lharul"                       : '\U0000296A', // LEFTWARDS HARPOON WITH BARB UP ABOVE LONG DASH
"lhblk"                        : '\U00002584', // LOWER HALF BLOCK
"ljcy"                         : '\U00000459', // CYRILLIC SMALL LETTER LJE
"ll"                           : '\U0000226A', // MUCH LESS-THAN
"llarr"                        : '\U000021C7', // LEFTWARDS PAIRED ARROWS
"llcorner"                     : '\U0000231E', // BOTTOM LEFT CORNER
"llhard"                       : '\U0000296B', // LEFTWARDS HARPOON WITH BARB DOWN BELOW LONG DASH
"lltri"                        : '\U000025FA', // LOWER LEFT TRIANGLE
"lmidot"                       : '\U00000140', // LATIN SMALL LETTER L WITH MIDDLE DOT
"lmoust"                       : '\U000023B0', // UPPER LEFT OR LOWER RIGHT CURLY BRACKET SECTION
"lmoustache"                   : '\U000023B0', // UPPER LEFT OR LOWER RIGHT CURLY BRACKET SECTION
"lnE"                          : '\U00002268', // LESS-THAN BUT NOT EQUAL TO
"lnap"                         : '\U00002A89', // LESS-THAN AND NOT APPROXIMATE
"lnapprox"                     : '\U00002A89', // LESS-THAN AND NOT APPROXIMATE
"lne"                          : '\U00002A87', // LESS-THAN AND SINGLE-LINE NOT EQUAL TO
"lneq"                         : '\U00002A87', // LESS-THAN AND SINGLE-LINE NOT EQUAL TO
"lneqq"                        : '\U00002268', // LESS-THAN BUT NOT EQUAL TO
"lnsim"                        : '\U000022E6', // LESS-THAN BUT NOT EQUIVALENT TO
"loang"                        : '\U000027EC', // MATHEMATICAL LEFT WHITE TORTOISE SHELL BRACKET
"loarr"                        : '\U000021FD', // LEFTWARDS OPEN-HEADED ARROW
"lobrk"                        : '\U000027E6', // MATHEMATICAL LEFT WHITE SQUARE BRACKET
"longleftarrow"                : '\U000027F5', // LONG LEFTWARDS ARROW
"longleftrightarrow"           : '\U000027F7', // LONG LEFT RIGHT ARROW
"longmapsto"                   : '\U000027FC', // LONG RIGHTWARDS ARROW FROM BAR
"longrightarrow"               : '\U000027F6', // LONG RIGHTWARDS ARROW
"looparrowleft"                : '\U000021AB', // LEFTWARDS ARROW WITH LOOP
"looparrowright"               : '\U000021AC', // RIGHTWARDS ARROW WITH LOOP
"lopar"                        : '\U00002985', // LEFT WHITE PARENTHESIS
"lopf"                         : '\U0001D55D', // MATHEMATICAL DOUBLE-STRUCK SMALL L
"loplus"                       : '\U00002A2D', // PLUS SIGN IN LEFT HALF CIRCLE
"lotimes"                      : '\U00002A34', // MULTIPLICATION SIGN IN LEFT HALF CIRCLE
"lowast"                       : '\U00002217', // ASTERISK OPERATOR
"lowbar"                       : '\U0000005F', // LOW LINE
"loz"                          : '\U000025CA', // LOZENGE
"lozenge"                      : '\U000025CA', // LOZENGE
"lozf"                         : '\U000029EB', // BLACK LOZENGE
"lpar"                         : '\U00000028', // LEFT PARENTHESIS
"lparlt"                       : '\U00002993', // LEFT ARC LESS-THAN BRACKET
"lrarr"                        : '\U000021C6', // LEFTWARDS ARROW OVER RIGHTWARDS ARROW
"lrcorner"                     : '\U0000231F', // BOTTOM RIGHT CORNER
"lrhar"                        : '\U000021CB', // LEFTWARDS HARPOON OVER RIGHTWARDS HARPOON
"lrhard"                       : '\U0000296D', // RIGHTWARDS HARPOON WITH BARB DOWN BELOW LONG DASH
"lrm"                          : '\U0000200E', // LEFT-TO-RIGHT MARK
"lrtri"                        : '\U000022BF', // RIGHT TRIANGLE
"lsaquo"                       : '\U00002039', // SINGLE LEFT-POINTING ANGLE QUOTATION MARK
"lscr"                         : '\U0001D4C1', // MATHEMATICAL SCRIPT SMALL L
"lsh"                          : '\U000021B0', // UPWARDS ARROW WITH TIP LEFTWARDS
"lsim"                         : '\U00002272', // LESS-THAN OR EQUIVALENT TO
"lsime"                        : '\U00002A8D', // LESS-THAN ABOVE SIMILAR OR EQUAL
"lsimg"                        : '\U00002A8F', // LESS-THAN ABOVE SIMILAR ABOVE GREATER-THAN
"lsqb"                         : '\U0000005B', // LEFT SQUARE BRACKET
"lsquo"                        : '\U00002018', // LEFT SINGLE QUOTATION MARK
"lsquor"                       : '\U0000201A', // SINGLE LOW-9 QUOTATION MARK
"lstrok"                       : '\U00000142', // LATIN SMALL LETTER L WITH STROKE
"lt"                           : '\x3C'      , // LESS-THAN SIGN
"ltcc"                         : '\U00002AA6', // LESS-THAN CLOSED BY CURVE
"ltcir"                        : '\U00002A79', // LESS-THAN WITH CIRCLE INSIDE
"ltdot"                        : '\U000022D6', // LESS-THAN WITH DOT
"lthree"                       : '\U000022CB', // LEFT SEMIDIRECT PRODUCT
"ltimes"                       : '\U000022C9', // LEFT NORMAL FACTOR SEMIDIRECT PRODUCT
"ltlarr"                       : '\U00002976', // LESS-THAN ABOVE LEFTWARDS ARROW
"ltquest"                      : '\U00002A7B', // LESS-THAN WITH QUESTION MARK ABOVE
"ltrPar"                       : '\U00002996', // DOUBLE RIGHT ARC LESS-THAN BRACKET
"ltri"                         : '\U000025C3', // WHITE LEFT-POINTING SMALL TRIANGLE
"ltrie"                        : '\U000022B4', // NORMAL SUBGROUP OF OR EQUAL TO
"ltrif"                        : '\U000025C2', // BLACK LEFT-POINTING SMALL TRIANGLE
"lurdshar"                     : '\U0000294A', // LEFT BARB UP RIGHT BARB DOWN HARPOON
"luruhar"                      : '\U00002966', // LEFTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB UP
// "lvertneqq"                    : &#x02268;&#x0FE00, // LESS-THAN BUT NOT EQUAL TO - with vertical stroke
// "lvnE"                         : &#x02268;&#x0FE00, // LESS-THAN BUT NOT EQUAL TO - with vertical stroke
"mDDot"                        : '\U0000223A', // GEOMETRIC PROPORTION
"macr"                         : '\U000000AF', // MACRON
"male"                         : '\U00002642', // MALE SIGN
"malt"                         : '\U00002720', // MALTESE CROSS
"maltese"                      : '\U00002720', // MALTESE CROSS
"map"                          : '\U000021A6', // RIGHTWARDS ARROW FROM BAR
"mapsto"                       : '\U000021A6', // RIGHTWARDS ARROW FROM BAR
"mapstodown"                   : '\U000021A7', // DOWNWARDS ARROW FROM BAR
"mapstoleft"                   : '\U000021A4', // LEFTWARDS ARROW FROM BAR
"mapstoup"                     : '\U000021A5', // UPWARDS ARROW FROM BAR
"marker"                       : '\U000025AE', // BLACK VERTICAL RECTANGLE
"mcomma"                       : '\U00002A29', // MINUS SIGN WITH COMMA ABOVE
"mcy"                          : '\U0000043C', // CYRILLIC SMALL LETTER EM
"mdash"                        : '\U00002014', // EM DASH
"measuredangle"                : '\U00002221', // MEASURED ANGLE
"mfr"                          : '\U0001D52A', // MATHEMATICAL FRAKTUR SMALL M
"mgr"                          : '\U000003BC', // GREEK SMALL LETTER MU
"mho"                          : '\U00002127', // INVERTED OHM SIGN
"micro"                        : '\U000000B5', // MICRO SIGN
"mid"                          : '\U00002223', // DIVIDES
"midast"                       : '\U0000002A', // ASTERISK
"midcir"                       : '\U00002AF0', // VERTICAL LINE WITH CIRCLE BELOW
"middot"                       : '\U000000B7', // MIDDLE DOT
"minus"                        : '\U00002212', // MINUS SIGN
"minusb"                       : '\U0000229F', // SQUARED MINUS
"minusd"                       : '\U00002238', // DOT MINUS
"minusdu"                      : '\U00002A2A', // MINUS SIGN WITH DOT BELOW
"mlcp"                         : '\U00002ADB', // TRANSVERSAL INTERSECTION
"mldr"                         : '\U00002026', // HORIZONTAL ELLIPSIS
"mnplus"                       : '\U00002213', // MINUS-OR-PLUS SIGN
"models"                       : '\U000022A7', // MODELS
"mopf"                         : '\U0001D55E', // MATHEMATICAL DOUBLE-STRUCK SMALL M
"mp"                           : '\U00002213', // MINUS-OR-PLUS SIGN
"mscr"                         : '\U0001D4C2', // MATHEMATICAL SCRIPT SMALL M
"mstpos"                       : '\U0000223E', // INVERTED LAZY S
"mu"                           : '\U000003BC', // GREEK SMALL LETTER MU
"multimap"                     : '\U000022B8', // MULTIMAP
"mumap"                        : '\U000022B8', // MULTIMAP
// "nGg"                          : &#x022D9;&#x00338, // VERY MUCH GREATER-THAN with slash
// "nGt"                          : &#x0226B;&#x020D2, // MUCH GREATER THAN with vertical line
// "nGtv"                         : &#x0226B;&#x00338, // MUCH GREATER THAN with slash
"nLeftarrow"                   : '\U000021CD', // LEFTWARDS DOUBLE ARROW WITH STROKE
"nLeftrightarrow"              : '\U000021CE', // LEFT RIGHT DOUBLE ARROW WITH STROKE
// "nLl"                          : &#x022D8;&#x00338, // VERY MUCH LESS-THAN with slash
// "nLt"                          : &#x0226A;&#x020D2, // MUCH LESS THAN with vertical line
// "nLtv"                         : &#x0226A;&#x00338, // MUCH LESS THAN with slash
"nRightarrow"                  : '\U000021CF', // RIGHTWARDS DOUBLE ARROW WITH STROKE
"nVDash"                       : '\U000022AF', // NEGATED DOUBLE VERTICAL BAR DOUBLE RIGHT TURNSTILE
"nVdash"                       : '\U000022AE', // DOES NOT FORCE
"nabla"                        : '\U00002207', // NABLA
"nacute"                       : '\U00000144', // LATIN SMALL LETTER N WITH ACUTE
// "nang"                         : &#x02220;&#x020D2, // ANGLE with vertical line
"nap"                          : '\U00002249', // NOT ALMOST EQUAL TO
// "napE"                         : &#x02A70;&#x00338, // APPROXIMATELY EQUAL OR EQUAL TO with slash
// "napid"                        : &#x0224B;&#x00338, // TRIPLE TILDE with slash
"napos"                        : '\U00000149', // LATIN SMALL LETTER N PRECEDED BY APOSTROPHE
"napprox"                      : '\U00002249', // NOT ALMOST EQUAL TO
"natur"                        : '\U0000266E', // MUSIC NATURAL SIGN
"natural"                      : '\U0000266E', // MUSIC NATURAL SIGN
"naturals"                     : '\U00002115', // DOUBLE-STRUCK CAPITAL N
"nbsp"                         : '\U000000A0', // NO-BREAK SPACE
// "nbump"                        : &#x0224E;&#x00338, // GEOMETRICALLY EQUIVALENT TO with slash
// "nbumpe"                       : &#x0224F;&#x00338, // DIFFERENCE BETWEEN with slash
"ncap"                         : '\U00002A43', // INTERSECTION WITH OVERBAR
"ncaron"                       : '\U00000148', // LATIN SMALL LETTER N WITH CARON
"ncedil"                       : '\U00000146', // LATIN SMALL LETTER N WITH CEDILLA
"ncong"                        : '\U00002247', // NEITHER APPROXIMATELY NOR ACTUALLY EQUAL TO
// "ncongdot"                     : &#x02A6D;&#x00338, // CONGRUENT WITH DOT ABOVE with slash
"ncup"                         : '\U00002A42', // UNION WITH OVERBAR
"ncy"                          : '\U0000043D', // CYRILLIC SMALL LETTER EN
"ndash"                        : '\U00002013', // EN DASH
"ne"                           : '\U00002260', // NOT EQUAL TO
"neArr"                        : '\U000021D7', // NORTH EAST DOUBLE ARROW
"nearhk"                       : '\U00002924', // NORTH EAST ARROW WITH HOOK
"nearr"                        : '\U00002197', // NORTH EAST ARROW
"nearrow"                      : '\U00002197', // NORTH EAST ARROW
// "nedot"                        : &#x02250;&#x00338, // APPROACHES THE LIMIT with slash
"nequiv"                       : '\U00002262', // NOT IDENTICAL TO
"nesear"                       : '\U00002928', // NORTH EAST ARROW AND SOUTH EAST ARROW
// "nesim"                        : &#x02242;&#x00338, // MINUS TILDE with slash
"nexist"                       : '\U00002204', // THERE DOES NOT EXIST
"nexists"                      : '\U00002204', // THERE DOES NOT EXIST
"nfr"                          : '\U0001D52B', // MATHEMATICAL FRAKTUR SMALL N
// "ngE"                          : &#x02267;&#x00338, // GREATER-THAN OVER EQUAL TO with slash
"nge"                          : '\U00002271', // NEITHER GREATER-THAN NOR EQUAL TO
"ngeq"                         : '\U00002271', // NEITHER GREATER-THAN NOR EQUAL TO
// "ngeqq"                        : &#x02267;&#x00338, // GREATER-THAN OVER EQUAL TO with slash
// "ngeqslant"                    : &#x02A7E;&#x00338, // GREATER-THAN OR SLANTED EQUAL TO with slash
// "nges"                         : &#x02A7E;&#x00338, // GREATER-THAN OR SLANTED EQUAL TO with slash
"ngr"                          : '\U000003BD', // GREEK SMALL LETTER NU
"ngsim"                        : '\U00002275', // NEITHER GREATER-THAN NOR EQUIVALENT TO
"ngt"                          : '\U0000226F', // NOT GREATER-THAN
"ngtr"                         : '\U0000226F', // NOT GREATER-THAN
"nhArr"                        : '\U000021CE', // LEFT RIGHT DOUBLE ARROW WITH STROKE
"nharr"                        : '\U000021AE', // LEFT RIGHT ARROW WITH STROKE
"nhpar"                        : '\U00002AF2', // PARALLEL WITH HORIZONTAL STROKE
"ni"                           : '\U0000220B', // CONTAINS AS MEMBER
"nis"                          : '\U000022FC', // SMALL CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
"nisd"                         : '\U000022FA', // CONTAINS WITH LONG HORIZONTAL STROKE
"niv"                          : '\U0000220B', // CONTAINS AS MEMBER
"njcy"                         : '\U0000045A', // CYRILLIC SMALL LETTER NJE
"nlArr"                        : '\U000021CD', // LEFTWARDS DOUBLE ARROW WITH STROKE
// "nlE"                          : &#x02266;&#x00338, // LESS-THAN OVER EQUAL TO with slash
"nlarr"                        : '\U0000219A', // LEFTWARDS ARROW WITH STROKE
"nldr"                         : '\U00002025', // TWO DOT LEADER
"nle"                          : '\U00002270', // NEITHER LESS-THAN NOR EQUAL TO
"nleftarrow"                   : '\U0000219A', // LEFTWARDS ARROW WITH STROKE
"nleftrightarrow"              : '\U000021AE', // LEFT RIGHT ARROW WITH STROKE
"nleq"                         : '\U00002270', // NEITHER LESS-THAN NOR EQUAL TO
// "nleqq"                        : &#x02266;&#x00338, // LESS-THAN OVER EQUAL TO with slash
// "nleqslant"                    : &#x02A7D;&#x00338, // LESS-THAN OR SLANTED EQUAL TO with slash
// "nles"                         : &#x02A7D;&#x00338, // LESS-THAN OR SLANTED EQUAL TO with slash
"nless"                        : '\U0000226E', // NOT LESS-THAN
"nlsim"                        : '\U00002274', // NEITHER LESS-THAN NOR EQUIVALENT TO
"nlt"                          : '\U0000226E', // NOT LESS-THAN
"nltri"                        : '\U000022EA', // NOT NORMAL SUBGROUP OF
"nltrie"                       : '\U000022EC', // NOT NORMAL SUBGROUP OF OR EQUAL TO
"nmid"                         : '\U00002224', // DOES NOT DIVIDE
"nopf"                         : '\U0001D55F', // MATHEMATICAL DOUBLE-STRUCK SMALL N
"not"                          : '\U000000AC', // NOT SIGN
"notin"                        : '\U00002209', // NOT AN ELEMENT OF
// "notinE"                       : &#x022F9;&#x00338, // ELEMENT OF WITH TWO HORIZONTAL STROKES with slash
// "notindot"                     : &#x022F5;&#x00338, // ELEMENT OF WITH DOT ABOVE with slash
"notinva"                      : '\U00002209', // NOT AN ELEMENT OF
"notinvb"                      : '\U000022F7', // SMALL ELEMENT OF WITH OVERBAR
"notinvc"                      : '\U000022F6', // ELEMENT OF WITH OVERBAR
"notni"                        : '\U0000220C', // DOES NOT CONTAIN AS MEMBER
"notniva"                      : '\U0000220C', // DOES NOT CONTAIN AS MEMBER
"notnivb"                      : '\U000022FE', // SMALL CONTAINS WITH OVERBAR
"notnivc"                      : '\U000022FD', // CONTAINS WITH OVERBAR
"npar"                         : '\U00002226', // NOT PARALLEL TO
"nparallel"                    : '\U00002226', // NOT PARALLEL TO
// "nparsl"                       : &#x02AFD;&#x020E5, // DOUBLE SOLIDUS OPERATOR with reverse slash
// "npart"                        : &#x02202;&#x00338, // PARTIAL DIFFERENTIAL with slash
"npolint"                      : '\U00002A14', // LINE INTEGRATION NOT INCLUDING THE POLE
"npr"                          : '\U00002280', // DOES NOT PRECEDE
"nprcue"                       : '\U000022E0', // DOES NOT PRECEDE OR EQUAL
// "npre"                         : &#x02AAF;&#x00338, // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN with slash
"nprec"                        : '\U00002280', // DOES NOT PRECEDE
// "npreceq"                      : &#x02AAF;&#x00338, // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN with slash
"nrArr"                        : '\U000021CF', // RIGHTWARDS DOUBLE ARROW WITH STROKE
"nrarr"                        : '\U0000219B', // RIGHTWARDS ARROW WITH STROKE
// "nrarrc"                       : &#x02933;&#x00338, // WAVE ARROW POINTING DIRECTLY RIGHT with slash
// "nrarrw"                       : &#x0219D;&#x00338, // RIGHTWARDS WAVE ARROW with slash
"nrightarrow"                  : '\U0000219B', // RIGHTWARDS ARROW WITH STROKE
"nrtri"                        : '\U000022EB', // DOES NOT CONTAIN AS NORMAL SUBGROUP
"nrtrie"                       : '\U000022ED', // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
"nsc"                          : '\U00002281', // DOES NOT SUCCEED
"nsccue"                       : '\U000022E1', // DOES NOT SUCCEED OR EQUAL
// "nsce"                         : &#x02AB0;&#x00338, // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN with slash
"nscr"                         : '\U0001D4C3', // MATHEMATICAL SCRIPT SMALL N
"nshortmid"                    : '\U00002224', // DOES NOT DIVIDE
"nshortparallel"               : '\U00002226', // NOT PARALLEL TO
"nsim"                         : '\U00002241', // NOT TILDE
"nsime"                        : '\U00002244', // NOT ASYMPTOTICALLY EQUAL TO
"nsimeq"                       : '\U00002244', // NOT ASYMPTOTICALLY EQUAL TO
"nsmid"                        : '\U00002224', // DOES NOT DIVIDE
"nspar"                        : '\U00002226', // NOT PARALLEL TO
"nsqsube"                      : '\U000022E2', // NOT SQUARE IMAGE OF OR EQUAL TO
"nsqsupe"                      : '\U000022E3', // NOT SQUARE ORIGINAL OF OR EQUAL TO
"nsub"                         : '\U00002284', // NOT A SUBSET OF
// "nsubE"                        : &#x02AC5;&#x00338, // SUBSET OF ABOVE EQUALS SIGN with slash
"nsube"                        : '\U00002288', // NEITHER A SUBSET OF NOR EQUAL TO
// "nsubset"                      : &#x02282;&#x020D2, // SUBSET OF with vertical line
"nsubseteq"                    : '\U00002288', // NEITHER A SUBSET OF NOR EQUAL TO
// "nsubseteqq"                   : &#x02AC5;&#x00338, // SUBSET OF ABOVE EQUALS SIGN with slash
"nsucc"                        : '\U00002281', // DOES NOT SUCCEED
// "nsucceq"                      : &#x02AB0;&#x00338, // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN with slash
"nsup"                         : '\U00002285', // NOT A SUPERSET OF
// "nsupE"                        : &#x02AC6;&#x00338, // SUPERSET OF ABOVE EQUALS SIGN with slash
"nsupe"                        : '\U00002289', // NEITHER A SUPERSET OF NOR EQUAL TO
// "nsupset"                      : &#x02283;&#x020D2, // SUPERSET OF with vertical line
"nsupseteq"                    : '\U00002289', // NEITHER A SUPERSET OF NOR EQUAL TO
// "nsupseteqq"                   : &#x02AC6;&#x00338, // SUPERSET OF ABOVE EQUALS SIGN with slash
"ntgl"                         : '\U00002279', // NEITHER GREATER-THAN NOR LESS-THAN
"ntilde"                       : '\U000000F1', // LATIN SMALL LETTER N WITH TILDE
"ntlg"                         : '\U00002278', // NEITHER LESS-THAN NOR GREATER-THAN
"ntriangleleft"                : '\U000022EA', // NOT NORMAL SUBGROUP OF
"ntrianglelefteq"              : '\U000022EC', // NOT NORMAL SUBGROUP OF OR EQUAL TO
"ntriangleright"               : '\U000022EB', // DOES NOT CONTAIN AS NORMAL SUBGROUP
"ntrianglerighteq"             : '\U000022ED', // DOES NOT CONTAIN AS NORMAL SUBGROUP OR EQUAL
"nu"                           : '\U000003BD', // GREEK SMALL LETTER NU
"num"                          : '\U00000023', // NUMBER SIGN
"numero"                       : '\U00002116', // NUMERO SIGN
"numsp"                        : '\U00002007', // FIGURE SPACE
"nvDash"                       : '\U000022AD', // NOT TRUE
"nvHarr"                       : '\U00002904', // LEFT RIGHT DOUBLE ARROW WITH VERTICAL STROKE
// "nvap"                         : &#x0224D;&#x020D2, // EQUIVALENT TO with vertical line
"nvdash"                       : '\U000022AC', // DOES NOT PROVE
// "nvge"                         : &#x02265;&#x020D2, // GREATER-THAN OR EQUAL TO with vertical line
// "nvgt"                         : &#x0003E;&#x020D2, // GREATER-THAN SIGN with vertical line
"nvinfin"                      : '\U000029DE', // INFINITY NEGATED WITH VERTICAL BAR
"nvlArr"                       : '\U00002902', // LEFTWARDS DOUBLE ARROW WITH VERTICAL STROKE
// "nvle"                         : &#x02264;&#x020D2, // LESS-THAN OR EQUAL TO with vertical line
// "nvlt"                         : &#38;#x0003C;&#x020D2, // LESS-THAN SIGN with vertical line
// "nvltrie"                      : &#x022B4;&#x020D2, // NORMAL SUBGROUP OF OR EQUAL TO with vertical line
"nvrArr"                       : '\U00002903', // RIGHTWARDS DOUBLE ARROW WITH VERTICAL STROKE
// "nvrtrie"                      : &#x022B5;&#x020D2, // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO with vertical line
// "nvsim"                        : &#x0223C;&#x020D2, // TILDE OPERATOR with vertical line
"nwArr"                        : '\U000021D6', // NORTH WEST DOUBLE ARROW
"nwarhk"                       : '\U00002923', // NORTH WEST ARROW WITH HOOK
"nwarr"                        : '\U00002196', // NORTH WEST ARROW
"nwarrow"                      : '\U00002196', // NORTH WEST ARROW
"nwnear"                       : '\U00002927', // NORTH WEST ARROW AND NORTH EAST ARROW
"oS"                           : '\U000024C8', // CIRCLED LATIN CAPITAL LETTER S
"oacgr"                        : '\U000003CC', // GREEK SMALL LETTER OMICRON WITH TONOS
"oacute"                       : '\U000000F3', // LATIN SMALL LETTER O WITH ACUTE
"oast"                         : '\U0000229B', // CIRCLED ASTERISK OPERATOR
"ocir"                         : '\U0000229A', // CIRCLED RING OPERATOR
"ocirc"                        : '\U000000F4', // LATIN SMALL LETTER O WITH CIRCUMFLEX
"ocy"                          : '\U0000043E', // CYRILLIC SMALL LETTER O
"odash"                        : '\U0000229D', // CIRCLED DASH
"odblac"                       : '\U00000151', // LATIN SMALL LETTER O WITH DOUBLE ACUTE
"odiv"                         : '\U00002A38', // CIRCLED DIVISION SIGN
"odot"                         : '\U00002299', // CIRCLED DOT OPERATOR
"odsold"                       : '\U000029BC', // CIRCLED ANTICLOCKWISE-ROTATED DIVISION SIGN
"oelig"                        : '\U00000153', // LATIN SMALL LIGATURE OE
"ofcir"                        : '\U000029BF', // CIRCLED BULLET
"ofr"                          : '\U0001D52C', // MATHEMATICAL FRAKTUR SMALL O
"ogon"                         : '\U000002DB', // OGONEK
"ogr"                          : '\U000003BF', // GREEK SMALL LETTER OMICRON
"ograve"                       : '\U000000F2', // LATIN SMALL LETTER O WITH GRAVE
"ogt"                          : '\U000029C1', // CIRCLED GREATER-THAN
"ohacgr"                       : '\U000003CE', // GREEK SMALL LETTER OMEGA WITH TONOS
"ohbar"                        : '\U000029B5', // CIRCLE WITH HORIZONTAL BAR
"ohgr"                         : '\U000003C9', // GREEK SMALL LETTER OMEGA
"ohm"                          : '\U000003A9', // GREEK CAPITAL LETTER OMEGA
"oint"                         : '\U0000222E', // CONTOUR INTEGRAL
"olarr"                        : '\U000021BA', // ANTICLOCKWISE OPEN CIRCLE ARROW
"olcir"                        : '\U000029BE', // CIRCLED WHITE BULLET
"olcross"                      : '\U000029BB', // CIRCLE WITH SUPERIMPOSED X
"oline"                        : '\U0000203E', // OVERLINE
"olt"                          : '\U000029C0', // CIRCLED LESS-THAN
"omacr"                        : '\U0000014D', // LATIN SMALL LETTER O WITH MACRON
"omega"                        : '\U000003C9', // GREEK SMALL LETTER OMEGA
"omicron"                      : '\U000003BF', // GREEK SMALL LETTER OMICRON
"omid"                         : '\U000029B6', // CIRCLED VERTICAL BAR
"ominus"                       : '\U00002296', // CIRCLED MINUS
"oopf"                         : '\U0001D560', // MATHEMATICAL DOUBLE-STRUCK SMALL O
"opar"                         : '\U000029B7', // CIRCLED PARALLEL
"operp"                        : '\U000029B9', // CIRCLED PERPENDICULAR
"oplus"                        : '\U00002295', // CIRCLED PLUS
"or"                           : '\U00002228', // LOGICAL OR
"orarr"                        : '\U000021BB', // CLOCKWISE OPEN CIRCLE ARROW
"ord"                          : '\U00002A5D', // LOGICAL OR WITH HORIZONTAL DASH
"order"                        : '\U00002134', // SCRIPT SMALL O
"orderof"                      : '\U00002134', // SCRIPT SMALL O
"ordf"                         : '\U000000AA', // FEMININE ORDINAL INDICATOR
"ordm"                         : '\U000000BA', // MASCULINE ORDINAL INDICATOR
"origof"                       : '\U000022B6', // ORIGINAL OF
"oror"                         : '\U00002A56', // TWO INTERSECTING LOGICAL OR
"orslope"                      : '\U00002A57', // SLOPING LARGE OR
"orv"                          : '\U00002A5B', // LOGICAL OR WITH MIDDLE STEM
"oscr"                         : '\U00002134', // SCRIPT SMALL O
"oslash"                       : '\U000000F8', // LATIN SMALL LETTER O WITH STROKE
"osol"                         : '\U00002298', // CIRCLED DIVISION SLASH
"otilde"                       : '\U000000F5', // LATIN SMALL LETTER O WITH TILDE
"otimes"                       : '\U00002297', // CIRCLED TIMES
"otimesas"                     : '\U00002A36', // CIRCLED MULTIPLICATION SIGN WITH CIRCUMFLEX ACCENT
"ouml"                         : '\U000000F6', // LATIN SMALL LETTER O WITH DIAERESIS
"ovbar"                        : '\U0000233D', // APL FUNCTIONAL SYMBOL CIRCLE STILE
"par"                          : '\U00002225', // PARALLEL TO
"para"                         : '\U000000B6', // PILCROW SIGN
"parallel"                     : '\U00002225', // PARALLEL TO
"parsim"                       : '\U00002AF3', // PARALLEL WITH TILDE OPERATOR
"parsl"                        : '\U00002AFD', // DOUBLE SOLIDUS OPERATOR
"part"                         : '\U00002202', // PARTIAL DIFFERENTIAL
"pcy"                          : '\U0000043F', // CYRILLIC SMALL LETTER PE
"percnt"                       : '\U00000025', // PERCENT SIGN
"period"                       : '\U0000002E', // FULL STOP
"permil"                       : '\U00002030', // PER MILLE SIGN
"perp"                         : '\U000022A5', // UP TACK
"pertenk"                      : '\U00002031', // PER TEN THOUSAND SIGN
"pfr"                          : '\U0001D52D', // MATHEMATICAL FRAKTUR SMALL P
"pgr"                          : '\U000003C0', // GREEK SMALL LETTER PI
"phgr"                         : '\U000003C6', // GREEK SMALL LETTER PHI
"phi"                          : '\U000003C6', // GREEK SMALL LETTER PHI
"phiv"                         : '\U000003D5', // GREEK PHI SYMBOL
"phmmat"                       : '\U00002133', // SCRIPT CAPITAL M
"phone"                        : '\U0000260E', // BLACK TELEPHONE
"pi"                           : '\U000003C0', // GREEK SMALL LETTER PI
"pitchfork"                    : '\U000022D4', // PITCHFORK
"piv"                          : '\U000003D6', // GREEK PI SYMBOL
"planck"                       : '\U0000210F', // PLANCK CONSTANT OVER TWO PI
"planckh"                      : '\U0000210E', // PLANCK CONSTANT
"plankv"                       : '\U0000210F', // PLANCK CONSTANT OVER TWO PI
"plus"                         : '\U0000002B', // PLUS SIGN
"plusacir"                     : '\U00002A23', // PLUS SIGN WITH CIRCUMFLEX ACCENT ABOVE
"plusb"                        : '\U0000229E', // SQUARED PLUS
"pluscir"                      : '\U00002A22', // PLUS SIGN WITH SMALL CIRCLE ABOVE
"plusdo"                       : '\U00002214', // DOT PLUS
"plusdu"                       : '\U00002A25', // PLUS SIGN WITH DOT BELOW
"pluse"                        : '\U00002A72', // PLUS SIGN ABOVE EQUALS SIGN
"plusmn"                       : '\U000000B1', // PLUS-MINUS SIGN
"plussim"                      : '\U00002A26', // PLUS SIGN WITH TILDE BELOW
"plustwo"                      : '\U00002A27', // PLUS SIGN WITH SUBSCRIPT TWO
"pm"                           : '\U000000B1', // PLUS-MINUS SIGN
"pointint"                     : '\U00002A15', // INTEGRAL AROUND A POINT OPERATOR
"popf"                         : '\U0001D561', // MATHEMATICAL DOUBLE-STRUCK SMALL P
"pound"                        : '\U000000A3', // POUND SIGN
"pr"                           : '\U0000227A', // PRECEDES
"prE"                          : '\U00002AB3', // PRECEDES ABOVE EQUALS SIGN
"prap"                         : '\U00002AB7', // PRECEDES ABOVE ALMOST EQUAL TO
"prcue"                        : '\U0000227C', // PRECEDES OR EQUAL TO
"pre"                          : '\U00002AAF', // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
"prec"                         : '\U0000227A', // PRECEDES
"precapprox"                   : '\U00002AB7', // PRECEDES ABOVE ALMOST EQUAL TO
"preccurlyeq"                  : '\U0000227C', // PRECEDES OR EQUAL TO
"preceq"                       : '\U00002AAF', // PRECEDES ABOVE SINGLE-LINE EQUALS SIGN
"precnapprox"                  : '\U00002AB9', // PRECEDES ABOVE NOT ALMOST EQUAL TO
"precneqq"                     : '\U00002AB5', // PRECEDES ABOVE NOT EQUAL TO
"precnsim"                     : '\U000022E8', // PRECEDES BUT NOT EQUIVALENT TO
"precsim"                      : '\U0000227E', // PRECEDES OR EQUIVALENT TO
"prime"                        : '\U00002032', // PRIME
"primes"                       : '\U00002119', // DOUBLE-STRUCK CAPITAL P
"prnE"                         : '\U00002AB5', // PRECEDES ABOVE NOT EQUAL TO
"prnap"                        : '\U00002AB9', // PRECEDES ABOVE NOT ALMOST EQUAL TO
"prnsim"                       : '\U000022E8', // PRECEDES BUT NOT EQUIVALENT TO
"prod"                         : '\U0000220F', // N-ARY PRODUCT
"profalar"                     : '\U0000232E', // ALL AROUND-PROFILE
"profline"                     : '\U00002312', // ARC
"profsurf"                     : '\U00002313', // SEGMENT
"prop"                         : '\U0000221D', // PROPORTIONAL TO
"propto"                       : '\U0000221D', // PROPORTIONAL TO
"prsim"                        : '\U0000227E', // PRECEDES OR EQUIVALENT TO
"prurel"                       : '\U000022B0', // PRECEDES UNDER RELATION
"pscr"                         : '\U0001D4C5', // MATHEMATICAL SCRIPT SMALL P
"psgr"                         : '\U000003C8', // GREEK SMALL LETTER PSI
"psi"                          : '\U000003C8', // GREEK SMALL LETTER PSI
"puncsp"                       : '\U00002008', // PUNCTUATION SPACE
"qfr"                          : '\U0001D52E', // MATHEMATICAL FRAKTUR SMALL Q
"qint"                         : '\U00002A0C', // QUADRUPLE INTEGRAL OPERATOR
"qopf"                         : '\U0001D562', // MATHEMATICAL DOUBLE-STRUCK SMALL Q
"qprime"                       : '\U00002057', // QUADRUPLE PRIME
"qscr"                         : '\U0001D4C6', // MATHEMATICAL SCRIPT SMALL Q
"quaternions"                  : '\U0000210D', // DOUBLE-STRUCK CAPITAL H
"quatint"                      : '\U00002A16', // QUATERNION INTEGRAL OPERATOR
"quest"                        : '\U0000003F', // QUESTION MARK
"questeq"                      : '\U0000225F', // QUESTIONED EQUAL TO
"quot"                         : '\U00000022', // QUOTATION MARK
"rAarr"                        : '\U000021DB', // RIGHTWARDS TRIPLE ARROW
"rArr"                         : '\U000021D2', // RIGHTWARDS DOUBLE ARROW
"rAtail"                       : '\U0000291C', // RIGHTWARDS DOUBLE ARROW-TAIL
"rBarr"                        : '\U0000290F', // RIGHTWARDS TRIPLE DASH ARROW
"rHar"                         : '\U00002964', // RIGHTWARDS HARPOON WITH BARB UP ABOVE RIGHTWARDS HARPOON WITH BARB DOWN
// "race"                         : &#x0223D;&#x00331, // REVERSED TILDE with underline
"racute"                       : '\U00000155', // LATIN SMALL LETTER R WITH ACUTE
"radic"                        : '\U0000221A', // SQUARE ROOT
"raemptyv"                     : '\U000029B3', // EMPTY SET WITH RIGHT ARROW ABOVE
"rang"                         : '\U000027E9', // MATHEMATICAL RIGHT ANGLE BRACKET
"rangd"                        : '\U00002992', // RIGHT ANGLE BRACKET WITH DOT
"range"                        : '\U000029A5', // REVERSED ANGLE WITH UNDERBAR
"rangle"                       : '\U000027E9', // MATHEMATICAL RIGHT ANGLE BRACKET
"raquo"                        : '\U000000BB', // RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
"rarr"                         : '\U00002192', // RIGHTWARDS ARROW
"rarrap"                       : '\U00002975', // RIGHTWARDS ARROW ABOVE ALMOST EQUAL TO
"rarrb"                        : '\U000021E5', // RIGHTWARDS ARROW TO BAR
"rarrbfs"                      : '\U00002920', // RIGHTWARDS ARROW FROM BAR TO BLACK DIAMOND
"rarrc"                        : '\U00002933', // WAVE ARROW POINTING DIRECTLY RIGHT
"rarrfs"                       : '\U0000291E', // RIGHTWARDS ARROW TO BLACK DIAMOND
"rarrhk"                       : '\U000021AA', // RIGHTWARDS ARROW WITH HOOK
"rarrlp"                       : '\U000021AC', // RIGHTWARDS ARROW WITH LOOP
"rarrpl"                       : '\U00002945', // RIGHTWARDS ARROW WITH PLUS BELOW
"rarrsim"                      : '\U00002974', // RIGHTWARDS ARROW ABOVE TILDE OPERATOR
"rarrtl"                       : '\U000021A3', // RIGHTWARDS ARROW WITH TAIL
"rarrw"                        : '\U0000219D', // RIGHTWARDS WAVE ARROW
"ratail"                       : '\U0000291A', // RIGHTWARDS ARROW-TAIL
"ratio"                        : '\U00002236', // RATIO
"rationals"                    : '\U0000211A', // DOUBLE-STRUCK CAPITAL Q
"rbarr"                        : '\U0000290D', // RIGHTWARDS DOUBLE DASH ARROW
"rbbrk"                        : '\U00002773', // LIGHT RIGHT TORTOISE SHELL BRACKET ORNAMENT
"rbrace"                       : '\U0000007D', // RIGHT CURLY BRACKET
"rbrack"                       : '\U0000005D', // RIGHT SQUARE BRACKET
"rbrke"                        : '\U0000298C', // RIGHT SQUARE BRACKET WITH UNDERBAR
"rbrksld"                      : '\U0000298E', // RIGHT SQUARE BRACKET WITH TICK IN BOTTOM CORNER
"rbrkslu"                      : '\U00002990', // RIGHT SQUARE BRACKET WITH TICK IN TOP CORNER
"rcaron"                       : '\U00000159', // LATIN SMALL LETTER R WITH CARON
"rcedil"                       : '\U00000157', // LATIN SMALL LETTER R WITH CEDILLA
"rceil"                        : '\U00002309', // RIGHT CEILING
"rcub"                         : '\U0000007D', // RIGHT CURLY BRACKET
"rcy"                          : '\U00000440', // CYRILLIC SMALL LETTER ER
"rdca"                         : '\U00002937', // ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS
"rdldhar"                      : '\U00002969', // RIGHTWARDS HARPOON WITH BARB DOWN ABOVE LEFTWARDS HARPOON WITH BARB DOWN
"rdquo"                        : '\U0000201D', // RIGHT DOUBLE QUOTATION MARK
"rdquor"                       : '\U0000201D', // RIGHT DOUBLE QUOTATION MARK
"rdsh"                         : '\U000021B3', // DOWNWARDS ARROW WITH TIP RIGHTWARDS
"real"                         : '\U0000211C', // BLACK-LETTER CAPITAL R
"realine"                      : '\U0000211B', // SCRIPT CAPITAL R
"realpart"                     : '\U0000211C', // BLACK-LETTER CAPITAL R
"reals"                        : '\U0000211D', // DOUBLE-STRUCK CAPITAL R
"rect"                         : '\U000025AD', // WHITE RECTANGLE
"reg"                          : '\U000000AE', // REGISTERED SIGN
"rfisht"                       : '\U0000297D', // RIGHT FISH TAIL
"rfloor"                       : '\U0000230B', // RIGHT FLOOR
"rfr"                          : '\U0001D52F', // MATHEMATICAL FRAKTUR SMALL R
"rgr"                          : '\U000003C1', // GREEK SMALL LETTER RHO
"rhard"                        : '\U000021C1', // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
"rharu"                        : '\U000021C0', // RIGHTWARDS HARPOON WITH BARB UPWARDS
"rharul"                       : '\U0000296C', // RIGHTWARDS HARPOON WITH BARB UP ABOVE LONG DASH
"rho"                          : '\U000003C1', // GREEK SMALL LETTER RHO
"rhov"                         : '\U000003F1', // GREEK RHO SYMBOL
"rightarrow"                   : '\U00002192', // RIGHTWARDS ARROW
"rightarrowtail"               : '\U000021A3', // RIGHTWARDS ARROW WITH TAIL
"rightharpoondown"             : '\U000021C1', // RIGHTWARDS HARPOON WITH BARB DOWNWARDS
"rightharpoonup"               : '\U000021C0', // RIGHTWARDS HARPOON WITH BARB UPWARDS
"rightleftarrows"              : '\U000021C4', // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
"rightleftharpoons"            : '\U000021CC', // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
"rightrightarrows"             : '\U000021C9', // RIGHTWARDS PAIRED ARROWS
"rightsquigarrow"              : '\U0000219D', // RIGHTWARDS WAVE ARROW
"rightthreetimes"              : '\U000022CC', // RIGHT SEMIDIRECT PRODUCT
"ring"                         : '\U000002DA', // RING ABOVE
"risingdotseq"                 : '\U00002253', // IMAGE OF OR APPROXIMATELY EQUAL TO
"rlarr"                        : '\U000021C4', // RIGHTWARDS ARROW OVER LEFTWARDS ARROW
"rlhar"                        : '\U000021CC', // RIGHTWARDS HARPOON OVER LEFTWARDS HARPOON
"rlm"                          : '\U0000200F', // RIGHT-TO-LEFT MARK
"rmoust"                       : '\U000023B1', // UPPER RIGHT OR LOWER LEFT CURLY BRACKET SECTION
"rmoustache"                   : '\U000023B1', // UPPER RIGHT OR LOWER LEFT CURLY BRACKET SECTION
"rnmid"                        : '\U00002AEE', // DOES NOT DIVIDE WITH REVERSED NEGATION SLASH
"roang"                        : '\U000027ED', // MATHEMATICAL RIGHT WHITE TORTOISE SHELL BRACKET
"roarr"                        : '\U000021FE', // RIGHTWARDS OPEN-HEADED ARROW
"robrk"                        : '\U000027E7', // MATHEMATICAL RIGHT WHITE SQUARE BRACKET
"ropar"                        : '\U00002986', // RIGHT WHITE PARENTHESIS
"ropf"                         : '\U0001D563', // MATHEMATICAL DOUBLE-STRUCK SMALL R
"roplus"                       : '\U00002A2E', // PLUS SIGN IN RIGHT HALF CIRCLE
"rotimes"                      : '\U00002A35', // MULTIPLICATION SIGN IN RIGHT HALF CIRCLE
"rpar"                         : '\U00000029', // RIGHT PARENTHESIS
"rpargt"                       : '\U00002994', // RIGHT ARC GREATER-THAN BRACKET
"rppolint"                     : '\U00002A12', // LINE INTEGRATION WITH RECTANGULAR PATH AROUND POLE
"rrarr"                        : '\U000021C9', // RIGHTWARDS PAIRED ARROWS
"rsaquo"                       : '\U0000203A', // SINGLE RIGHT-POINTING ANGLE QUOTATION MARK
"rscr"                         : '\U0001D4C7', // MATHEMATICAL SCRIPT SMALL R
"rsh"                          : '\U000021B1', // UPWARDS ARROW WITH TIP RIGHTWARDS
"rsqb"                         : '\U0000005D', // RIGHT SQUARE BRACKET
"rsquo"                        : '\U00002019', // RIGHT SINGLE QUOTATION MARK
"rsquor"                       : '\U00002019', // RIGHT SINGLE QUOTATION MARK
"rthree"                       : '\U000022CC', // RIGHT SEMIDIRECT PRODUCT
"rtimes"                       : '\U000022CA', // RIGHT NORMAL FACTOR SEMIDIRECT PRODUCT
"rtri"                         : '\U000025B9', // WHITE RIGHT-POINTING SMALL TRIANGLE
"rtrie"                        : '\U000022B5', // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
"rtrif"                        : '\U000025B8', // BLACK RIGHT-POINTING SMALL TRIANGLE
"rtriltri"                     : '\U000029CE', // RIGHT TRIANGLE ABOVE LEFT TRIANGLE
"ruluhar"                      : '\U00002968', // RIGHTWARDS HARPOON WITH BARB UP ABOVE LEFTWARDS HARPOON WITH BARB UP
"rx"                           : '\U0000211E', // PRESCRIPTION TAKE
"sacute"                       : '\U0000015B', // LATIN SMALL LETTER S WITH ACUTE
"sbquo"                        : '\U0000201A', // SINGLE LOW-9 QUOTATION MARK
"sc"                           : '\U0000227B', // SUCCEEDS
"scE"                          : '\U00002AB4', // SUCCEEDS ABOVE EQUALS SIGN
"scap"                         : '\U00002AB8', // SUCCEEDS ABOVE ALMOST EQUAL TO
"scaron"                       : '\U00000161', // LATIN SMALL LETTER S WITH CARON
"sccue"                        : '\U0000227D', // SUCCEEDS OR EQUAL TO
"sce"                          : '\U00002AB0', // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
"scedil"                       : '\U0000015F', // LATIN SMALL LETTER S WITH CEDILLA
"scirc"                        : '\U0000015D', // LATIN SMALL LETTER S WITH CIRCUMFLEX
"scnE"                         : '\U00002AB6', // SUCCEEDS ABOVE NOT EQUAL TO
"scnap"                        : '\U00002ABA', // SUCCEEDS ABOVE NOT ALMOST EQUAL TO
"scnsim"                       : '\U000022E9', // SUCCEEDS BUT NOT EQUIVALENT TO
"scpolint"                     : '\U00002A13', // LINE INTEGRATION WITH SEMICIRCULAR PATH AROUND POLE
"scsim"                        : '\U0000227F', // SUCCEEDS OR EQUIVALENT TO
"scy"                          : '\U00000441', // CYRILLIC SMALL LETTER ES
"sdot"                         : '\U000022C5', // DOT OPERATOR
"sdotb"                        : '\U000022A1', // SQUARED DOT OPERATOR
"sdote"                        : '\U00002A66', // EQUALS SIGN WITH DOT BELOW
"seArr"                        : '\U000021D8', // SOUTH EAST DOUBLE ARROW
"searhk"                       : '\U00002925', // SOUTH EAST ARROW WITH HOOK
"searr"                        : '\U00002198', // SOUTH EAST ARROW
"searrow"                      : '\U00002198', // SOUTH EAST ARROW
"sect"                         : '\U000000A7', // SECTION SIGN
"semi"                         : '\U0000003B', // SEMICOLON
"seswar"                       : '\U00002929', // SOUTH EAST ARROW AND SOUTH WEST ARROW
"setminus"                     : '\U00002216', // SET MINUS
"setmn"                        : '\U00002216', // SET MINUS
"sext"                         : '\U00002736', // SIX POINTED BLACK STAR
"sfgr"                         : '\U000003C2', // GREEK SMALL LETTER FINAL SIGMA
"sfr"                          : '\U0001D530', // MATHEMATICAL FRAKTUR SMALL S
"sfrown"                       : '\U00002322', // FROWN
"sgr"                          : '\U000003C3', // GREEK SMALL LETTER SIGMA
"sharp"                        : '\U0000266F', // MUSIC SHARP SIGN
"shchcy"                       : '\U00000449', // CYRILLIC SMALL LETTER SHCHA
"shcy"                         : '\U00000448', // CYRILLIC SMALL LETTER SHA
"shortmid"                     : '\U00002223', // DIVIDES
"shortparallel"                : '\U00002225', // PARALLEL TO
"shy"                          : '\U000000AD', // SOFT HYPHEN
"sigma"                        : '\U000003C3', // GREEK SMALL LETTER SIGMA
"sigmaf"                       : '\U000003C2', // GREEK SMALL LETTER FINAL SIGMA
"sigmav"                       : '\U000003C2', // GREEK SMALL LETTER FINAL SIGMA
"sim"                          : '\U0000223C', // TILDE OPERATOR
"simdot"                       : '\U00002A6A', // TILDE OPERATOR WITH DOT ABOVE
"sime"                         : '\U00002243', // ASYMPTOTICALLY EQUAL TO
"simeq"                        : '\U00002243', // ASYMPTOTICALLY EQUAL TO
"simg"                         : '\U00002A9E', // SIMILAR OR GREATER-THAN
"simgE"                        : '\U00002AA0', // SIMILAR ABOVE GREATER-THAN ABOVE EQUALS SIGN
"siml"                         : '\U00002A9D', // SIMILAR OR LESS-THAN
"simlE"                        : '\U00002A9F', // SIMILAR ABOVE LESS-THAN ABOVE EQUALS SIGN
"simne"                        : '\U00002246', // APPROXIMATELY BUT NOT ACTUALLY EQUAL TO
"simplus"                      : '\U00002A24', // PLUS SIGN WITH TILDE ABOVE
"simrarr"                      : '\U00002972', // TILDE OPERATOR ABOVE RIGHTWARDS ARROW
"slarr"                        : '\U00002190', // LEFTWARDS ARROW
"smallsetminus"                : '\U00002216', // SET MINUS
"smashp"                       : '\U00002A33', // SMASH PRODUCT
"smeparsl"                     : '\U000029E4', // EQUALS SIGN AND SLANTED PARALLEL WITH TILDE ABOVE
"smid"                         : '\U00002223', // DIVIDES
"smile"                        : '\U00002323', // SMILE
"smt"                          : '\U00002AAA', // SMALLER THAN
"smte"                         : '\U00002AAC', // SMALLER THAN OR EQUAL TO
// "smtes"                        : &#x02AAC;&#x0FE00, // SMALLER THAN OR slanted EQUAL
"softcy"                       : '\U0000044C', // CYRILLIC SMALL LETTER SOFT SIGN
"sol"                          : '\U0000002F', // SOLIDUS
"solb"                         : '\U000029C4', // SQUARED RISING DIAGONAL SLASH
"solbar"                       : '\U0000233F', // APL FUNCTIONAL SYMBOL SLASH BAR
"sopf"                         : '\U0001D564', // MATHEMATICAL DOUBLE-STRUCK SMALL S
"spades"                       : '\U00002660', // BLACK SPADE SUIT
"spadesuit"                    : '\U00002660', // BLACK SPADE SUIT
"spar"                         : '\U00002225', // PARALLEL TO
"sqcap"                        : '\U00002293', // SQUARE CAP
// "sqcaps"                       : &#x02293;&#x0FE00, // SQUARE CAP with serifs
"sqcup"                        : '\U00002294', // SQUARE CUP
// "sqcups"                       : &#x02294;&#x0FE00, // SQUARE CUP with serifs
"sqsub"                        : '\U0000228F', // SQUARE IMAGE OF
"sqsube"                       : '\U00002291', // SQUARE IMAGE OF OR EQUAL TO
"sqsubset"                     : '\U0000228F', // SQUARE IMAGE OF
"sqsubseteq"                   : '\U00002291', // SQUARE IMAGE OF OR EQUAL TO
"sqsup"                        : '\U00002290', // SQUARE ORIGINAL OF
"sqsupe"                       : '\U00002292', // SQUARE ORIGINAL OF OR EQUAL TO
"sqsupset"                     : '\U00002290', // SQUARE ORIGINAL OF
"sqsupseteq"                   : '\U00002292', // SQUARE ORIGINAL OF OR EQUAL TO
"squ"                          : '\U000025A1', // WHITE SQUARE
"square"                       : '\U000025A1', // WHITE SQUARE
"squarf"                       : '\U000025AA', // BLACK SMALL SQUARE
"squf"                         : '\U000025AA', // BLACK SMALL SQUARE
"srarr"                        : '\U00002192', // RIGHTWARDS ARROW
"sscr"                         : '\U0001D4C8', // MATHEMATICAL SCRIPT SMALL S
"ssetmn"                       : '\U00002216', // SET MINUS
"ssmile"                       : '\U00002323', // SMILE
"sstarf"                       : '\U000022C6', // STAR OPERATOR
"star"                         : '\U00002606', // WHITE STAR
"starf"                        : '\U00002605', // BLACK STAR
"straightepsilon"              : '\U000003F5', // GREEK LUNATE EPSILON SYMBOL
"straightphi"                  : '\U000003D5', // GREEK PHI SYMBOL
"strns"                        : '\U000000AF', // MACRON
"sub"                          : '\U00002282', // SUBSET OF
"subE"                         : '\U00002AC5', // SUBSET OF ABOVE EQUALS SIGN
"subdot"                       : '\U00002ABD', // SUBSET WITH DOT
"sube"                         : '\U00002286', // SUBSET OF OR EQUAL TO
"subedot"                      : '\U00002AC3', // SUBSET OF OR EQUAL TO WITH DOT ABOVE
"submult"                      : '\U00002AC1', // SUBSET WITH MULTIPLICATION SIGN BELOW
"subnE"                        : '\U00002ACB', // SUBSET OF ABOVE NOT EQUAL TO
"subne"                        : '\U0000228A', // SUBSET OF WITH NOT EQUAL TO
"subplus"                      : '\U00002ABF', // SUBSET WITH PLUS SIGN BELOW
"subrarr"                      : '\U00002979', // SUBSET ABOVE RIGHTWARDS ARROW
"subset"                       : '\U00002282', // SUBSET OF
"subseteq"                     : '\U00002286', // SUBSET OF OR EQUAL TO
"subseteqq"                    : '\U00002AC5', // SUBSET OF ABOVE EQUALS SIGN
"subsetneq"                    : '\U0000228A', // SUBSET OF WITH NOT EQUAL TO
"subsetneqq"                   : '\U00002ACB', // SUBSET OF ABOVE NOT EQUAL TO
"subsim"                       : '\U00002AC7', // SUBSET OF ABOVE TILDE OPERATOR
"subsub"                       : '\U00002AD5', // SUBSET ABOVE SUBSET
"subsup"                       : '\U00002AD3', // SUBSET ABOVE SUPERSET
"succ"                         : '\U0000227B', // SUCCEEDS
"succapprox"                   : '\U00002AB8', // SUCCEEDS ABOVE ALMOST EQUAL TO
"succcurlyeq"                  : '\U0000227D', // SUCCEEDS OR EQUAL TO
"succeq"                       : '\U00002AB0', // SUCCEEDS ABOVE SINGLE-LINE EQUALS SIGN
"succnapprox"                  : '\U00002ABA', // SUCCEEDS ABOVE NOT ALMOST EQUAL TO
"succneqq"                     : '\U00002AB6', // SUCCEEDS ABOVE NOT EQUAL TO
"succnsim"                     : '\U000022E9', // SUCCEEDS BUT NOT EQUIVALENT TO
"succsim"                      : '\U0000227F', // SUCCEEDS OR EQUIVALENT TO
"sum"                          : '\U00002211', // N-ARY SUMMATION
"sung"                         : '\U0000266A', // EIGHTH NOTE
"sup"                          : '\U00002283', // SUPERSET OF
"sup1"                         : '\U000000B9', // SUPERSCRIPT ONE
"sup2"                         : '\U000000B2', // SUPERSCRIPT TWO
"sup3"                         : '\U000000B3', // SUPERSCRIPT THREE
"supE"                         : '\U00002AC6', // SUPERSET OF ABOVE EQUALS SIGN
"supdot"                       : '\U00002ABE', // SUPERSET WITH DOT
"supdsub"                      : '\U00002AD8', // SUPERSET BESIDE AND JOINED BY DASH WITH SUBSET
"supe"                         : '\U00002287', // SUPERSET OF OR EQUAL TO
"supedot"                      : '\U00002AC4', // SUPERSET OF OR EQUAL TO WITH DOT ABOVE
"suphsol"                      : '\U000027C9', // SUPERSET PRECEDING SOLIDUS
"suphsub"                      : '\U00002AD7', // SUPERSET BESIDE SUBSET
"suplarr"                      : '\U0000297B', // SUPERSET ABOVE LEFTWARDS ARROW
"supmult"                      : '\U00002AC2', // SUPERSET WITH MULTIPLICATION SIGN BELOW
"supnE"                        : '\U00002ACC', // SUPERSET OF ABOVE NOT EQUAL TO
"supne"                        : '\U0000228B', // SUPERSET OF WITH NOT EQUAL TO
"supplus"                      : '\U00002AC0', // SUPERSET WITH PLUS SIGN BELOW
"supset"                       : '\U00002283', // SUPERSET OF
"supseteq"                     : '\U00002287', // SUPERSET OF OR EQUAL TO
"supseteqq"                    : '\U00002AC6', // SUPERSET OF ABOVE EQUALS SIGN
"supsetneq"                    : '\U0000228B', // SUPERSET OF WITH NOT EQUAL TO
"supsetneqq"                   : '\U00002ACC', // SUPERSET OF ABOVE NOT EQUAL TO
"supsim"                       : '\U00002AC8', // SUPERSET OF ABOVE TILDE OPERATOR
"supsub"                       : '\U00002AD4', // SUPERSET ABOVE SUBSET
"supsup"                       : '\U00002AD6', // SUPERSET ABOVE SUPERSET
"swArr"                        : '\U000021D9', // SOUTH WEST DOUBLE ARROW
"swarhk"                       : '\U00002926', // SOUTH WEST ARROW WITH HOOK
"swarr"                        : '\U00002199', // SOUTH WEST ARROW
"swarrow"                      : '\U00002199', // SOUTH WEST ARROW
"swnwar"                       : '\U0000292A', // SOUTH WEST ARROW AND NORTH WEST ARROW
"szlig"                        : '\U000000DF', // LATIN SMALL LETTER SHARP S
"target"                       : '\U00002316', // POSITION INDICATOR
"tau"                          : '\U000003C4', // GREEK SMALL LETTER TAU
"tbrk"                         : '\U000023B4', // TOP SQUARE BRACKET
"tcaron"                       : '\U00000165', // LATIN SMALL LETTER T WITH CARON
"tcedil"                       : '\U00000163', // LATIN SMALL LETTER T WITH CEDILLA
"tcy"                          : '\U00000442', // CYRILLIC SMALL LETTER TE
"tdot"                         : '\U000020DB', // COMBINING THREE DOTS ABOVE
"telrec"                       : '\U00002315', // TELEPHONE RECORDER
"tfr"                          : '\U0001D531', // MATHEMATICAL FRAKTUR SMALL T
"tgr"                          : '\U000003C4', // GREEK SMALL LETTER TAU
"there4"                       : '\U00002234', // THEREFORE
"therefore"                    : '\U00002234', // THEREFORE
"theta"                        : '\U000003B8', // GREEK SMALL LETTER THETA
"thetasym"                     : '\U000003D1', // GREEK THETA SYMBOL
"thetav"                       : '\U000003D1', // GREEK THETA SYMBOL
"thgr"                         : '\U000003B8', // GREEK SMALL LETTER THETA
"thickapprox"                  : '\U00002248', // ALMOST EQUAL TO
"thicksim"                     : '\U0000223C', // TILDE OPERATOR
"thinsp"                       : '\U00002009', // THIN SPACE
"thkap"                        : '\U00002248', // ALMOST EQUAL TO
"thksim"                       : '\U0000223C', // TILDE OPERATOR
"thorn"                        : '\U000000FE', // LATIN SMALL LETTER THORN
"tilde"                        : '\U000002DC', // SMALL TILDE
"times"                        : '\U000000D7', // MULTIPLICATION SIGN
"timesb"                       : '\U000022A0', // SQUARED TIMES
"timesbar"                     : '\U00002A31', // MULTIPLICATION SIGN WITH UNDERBAR
"timesd"                       : '\U00002A30', // MULTIPLICATION SIGN WITH DOT ABOVE
"tint"                         : '\U0000222D', // TRIPLE INTEGRAL
"toea"                         : '\U00002928', // NORTH EAST ARROW AND SOUTH EAST ARROW
"top"                          : '\U000022A4', // DOWN TACK
"topbot"                       : '\U00002336', // APL FUNCTIONAL SYMBOL I-BEAM
"topcir"                       : '\U00002AF1', // DOWN TACK WITH CIRCLE BELOW
"topf"                         : '\U0001D565', // MATHEMATICAL DOUBLE-STRUCK SMALL T
"topfork"                      : '\U00002ADA', // PITCHFORK WITH TEE TOP
"tosa"                         : '\U00002929', // SOUTH EAST ARROW AND SOUTH WEST ARROW
"tprime"                       : '\U00002034', // TRIPLE PRIME
"trade"                        : '\U00002122', // TRADE MARK SIGN
"triangle"                     : '\U000025B5', // WHITE UP-POINTING SMALL TRIANGLE
"triangledown"                 : '\U000025BF', // WHITE DOWN-POINTING SMALL TRIANGLE
"triangleleft"                 : '\U000025C3', // WHITE LEFT-POINTING SMALL TRIANGLE
"trianglelefteq"               : '\U000022B4', // NORMAL SUBGROUP OF OR EQUAL TO
"triangleq"                    : '\U0000225C', // DELTA EQUAL TO
"triangleright"                : '\U000025B9', // WHITE RIGHT-POINTING SMALL TRIANGLE
"trianglerighteq"              : '\U000022B5', // CONTAINS AS NORMAL SUBGROUP OR EQUAL TO
"tridot"                       : '\U000025EC', // WHITE UP-POINTING TRIANGLE WITH DOT
"trie"                         : '\U0000225C', // DELTA EQUAL TO
"triminus"                     : '\U00002A3A', // MINUS SIGN IN TRIANGLE
"triplus"                      : '\U00002A39', // PLUS SIGN IN TRIANGLE
"trisb"                        : '\U000029CD', // TRIANGLE WITH SERIFS AT BOTTOM
"tritime"                      : '\U00002A3B', // MULTIPLICATION SIGN IN TRIANGLE
"trpezium"                     : '\U000023E2', // WHITE TRAPEZIUM
"tscr"                         : '\U0001D4C9', // MATHEMATICAL SCRIPT SMALL T
"tscy"                         : '\U00000446', // CYRILLIC SMALL LETTER TSE
"tshcy"                        : '\U0000045B', // CYRILLIC SMALL LETTER TSHE
"tstrok"                       : '\U00000167', // LATIN SMALL LETTER T WITH STROKE
"twixt"                        : '\U0000226C', // BETWEEN
"twoheadleftarrow"             : '\U0000219E', // LEFTWARDS TWO HEADED ARROW
"twoheadrightarrow"            : '\U000021A0', // RIGHTWARDS TWO HEADED ARROW
"uArr"                         : '\U000021D1', // UPWARDS DOUBLE ARROW
"uHar"                         : '\U00002963', // UPWARDS HARPOON WITH BARB LEFT BESIDE UPWARDS HARPOON WITH BARB RIGHT
"uacgr"                        : '\U000003CD', // GREEK SMALL LETTER UPSILON WITH TONOS
"uacute"                       : '\U000000FA', // LATIN SMALL LETTER U WITH ACUTE
"uarr"                         : '\U00002191', // UPWARDS ARROW
"ubrcy"                        : '\U0000045E', // CYRILLIC SMALL LETTER SHORT U
"ubreve"                       : '\U0000016D', // LATIN SMALL LETTER U WITH BREVE
"ucirc"                        : '\U000000FB', // LATIN SMALL LETTER U WITH CIRCUMFLEX
"ucy"                          : '\U00000443', // CYRILLIC SMALL LETTER U
"udarr"                        : '\U000021C5', // UPWARDS ARROW LEFTWARDS OF DOWNWARDS ARROW
"udblac"                       : '\U00000171', // LATIN SMALL LETTER U WITH DOUBLE ACUTE
"udhar"                        : '\U0000296E', // UPWARDS HARPOON WITH BARB LEFT BESIDE DOWNWARDS HARPOON WITH BARB RIGHT
"udiagr"                       : '\U000003B0', // GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS
"udigr"                        : '\U000003CB', // GREEK SMALL LETTER UPSILON WITH DIALYTIKA
"ufisht"                       : '\U0000297E', // UP FISH TAIL
"ufr"                          : '\U0001D532', // MATHEMATICAL FRAKTUR SMALL U
"ugr"                          : '\U000003C5', // GREEK SMALL LETTER UPSILON
"ugrave"                       : '\U000000F9', // LATIN SMALL LETTER U WITH GRAVE
"uharl"                        : '\U000021BF', // UPWARDS HARPOON WITH BARB LEFTWARDS
"uharr"                        : '\U000021BE', // UPWARDS HARPOON WITH BARB RIGHTWARDS
"uhblk"                        : '\U00002580', // UPPER HALF BLOCK
"ulcorn"                       : '\U0000231C', // TOP LEFT CORNER
"ulcorner"                     : '\U0000231C', // TOP LEFT CORNER
"ulcrop"                       : '\U0000230F', // TOP LEFT CROP
"ultri"                        : '\U000025F8', // UPPER LEFT TRIANGLE
"umacr"                        : '\U0000016B', // LATIN SMALL LETTER U WITH MACRON
"uml"                          : '\U000000A8', // DIAERESIS
"uogon"                        : '\U00000173', // LATIN SMALL LETTER U WITH OGONEK
"uopf"                         : '\U0001D566', // MATHEMATICAL DOUBLE-STRUCK SMALL U
"uparrow"                      : '\U00002191', // UPWARDS ARROW
"updownarrow"                  : '\U00002195', // UP DOWN ARROW
"upharpoonleft"                : '\U000021BF', // UPWARDS HARPOON WITH BARB LEFTWARDS
"upharpoonright"               : '\U000021BE', // UPWARDS HARPOON WITH BARB RIGHTWARDS
"uplus"                        : '\U0000228E', // MULTISET UNION
"upsi"                         : '\U000003C5', // GREEK SMALL LETTER UPSILON
"upsih"                        : '\U000003D2', // GREEK UPSILON WITH HOOK SYMBOL
"upsilon"                      : '\U000003C5', // GREEK SMALL LETTER UPSILON
"upuparrows"                   : '\U000021C8', // UPWARDS PAIRED ARROWS
"urcorn"                       : '\U0000231D', // TOP RIGHT CORNER
"urcorner"                     : '\U0000231D', // TOP RIGHT CORNER
"urcrop"                       : '\U0000230E', // TOP RIGHT CROP
"uring"                        : '\U0000016F', // LATIN SMALL LETTER U WITH RING ABOVE
"urtri"                        : '\U000025F9', // UPPER RIGHT TRIANGLE
"uscr"                         : '\U0001D4CA', // MATHEMATICAL SCRIPT SMALL U
"utdot"                        : '\U000022F0', // UP RIGHT DIAGONAL ELLIPSIS
"utilde"                       : '\U00000169', // LATIN SMALL LETTER U WITH TILDE
"utri"                         : '\U000025B5', // WHITE UP-POINTING SMALL TRIANGLE
"utrif"                        : '\U000025B4', // BLACK UP-POINTING SMALL TRIANGLE
"uuarr"                        : '\U000021C8', // UPWARDS PAIRED ARROWS
"uuml"                         : '\U000000FC', // LATIN SMALL LETTER U WITH DIAERESIS
"uwangle"                      : '\U000029A7', // OBLIQUE ANGLE OPENING DOWN
"vArr"                         : '\U000021D5', // UP DOWN DOUBLE ARROW
"vBar"                         : '\U00002AE8', // SHORT UP TACK WITH UNDERBAR
"vBarv"                        : '\U00002AE9', // SHORT UP TACK ABOVE SHORT DOWN TACK
"vDash"                        : '\U000022A8', // TRUE
"vangrt"                       : '\U0000299C', // RIGHT ANGLE VARIANT WITH SQUARE
"varepsilon"                   : '\U000003F5', // GREEK LUNATE EPSILON SYMBOL
"varkappa"                     : '\U000003F0', // GREEK KAPPA SYMBOL
"varnothing"                   : '\U00002205', // EMPTY SET
"varphi"                       : '\U000003D5', // GREEK PHI SYMBOL
"varpi"                        : '\U000003D6', // GREEK PI SYMBOL
"varpropto"                    : '\U0000221D', // PROPORTIONAL TO
"varr"                         : '\U00002195', // UP DOWN ARROW
"varrho"                       : '\U000003F1', // GREEK RHO SYMBOL
"varsigma"                     : '\U000003C2', // GREEK SMALL LETTER FINAL SIGMA
// "varsubsetneq"                 : &#x0228A;&#x0FE00, // SUBSET OF WITH NOT EQUAL TO - variant with stroke through bottom members
// "varsubsetneqq"                : &#x02ACB;&#x0FE00, // SUBSET OF ABOVE NOT EQUAL TO - variant with stroke through bottom members
// "varsupsetneq"                 : &#x0228B;&#x0FE00, // SUPERSET OF WITH NOT EQUAL TO - variant with stroke through bottom members
// "varsupsetneqq"                : &#x02ACC;&#x0FE00, // SUPERSET OF ABOVE NOT EQUAL TO - variant with stroke through bottom members
"vartheta"                     : '\U000003D1', // GREEK THETA SYMBOL
"vartriangleleft"              : '\U000022B2', // NORMAL SUBGROUP OF
"vartriangleright"             : '\U000022B3', // CONTAINS AS NORMAL SUBGROUP
"vcy"                          : '\U00000432', // CYRILLIC SMALL LETTER VE
"vdash"                        : '\U000022A2', // RIGHT TACK
"vee"                          : '\U00002228', // LOGICAL OR
"veebar"                       : '\U000022BB', // XOR
"veeeq"                        : '\U0000225A', // EQUIANGULAR TO
"vellip"                       : '\U000022EE', // VERTICAL ELLIPSIS
"verbar"                       : '\U0000007C', // VERTICAL LINE
"vert"                         : '\U0000007C', // VERTICAL LINE
"vfr"                          : '\U0001D533', // MATHEMATICAL FRAKTUR SMALL V
"vltri"                        : '\U000022B2', // NORMAL SUBGROUP OF
// "vnsub"                        : &#x02282;&#x020D2, // SUBSET OF with vertical line
// "vnsup"                        : &#x02283;&#x020D2, // SUPERSET OF with vertical line
"vopf"                         : '\U0001D567', // MATHEMATICAL DOUBLE-STRUCK SMALL V
"vprop"                        : '\U0000221D', // PROPORTIONAL TO
"vrtri"                        : '\U000022B3', // CONTAINS AS NORMAL SUBGROUP
"vscr"                         : '\U0001D4CB', // MATHEMATICAL SCRIPT SMALL V
// "vsubnE"                       : &#x02ACB;&#x0FE00, // SUBSET OF ABOVE NOT EQUAL TO - variant with stroke through bottom members
// "vsubne"                       : &#x0228A;&#x0FE00, // SUBSET OF WITH NOT EQUAL TO - variant with stroke through bottom members
// "vsupnE"                       : &#x02ACC;&#x0FE00, // SUPERSET OF ABOVE NOT EQUAL TO - variant with stroke through bottom members
// "vsupne"                       : &#x0228B;&#x0FE00, // SUPERSET OF WITH NOT EQUAL TO - variant with stroke through bottom members
"vzigzag"                      : '\U0000299A', // VERTICAL ZIGZAG LINE
"wcirc"                        : '\U00000175', // LATIN SMALL LETTER W WITH CIRCUMFLEX
"wedbar"                       : '\U00002A5F', // LOGICAL AND WITH UNDERBAR
"wedge"                        : '\U00002227', // LOGICAL AND
"wedgeq"                       : '\U00002259', // ESTIMATES
"weierp"                       : '\U00002118', // SCRIPT CAPITAL P
"wfr"                          : '\U0001D534', // MATHEMATICAL FRAKTUR SMALL W
"wopf"                         : '\U0001D568', // MATHEMATICAL DOUBLE-STRUCK SMALL W
"wp"                           : '\U00002118', // SCRIPT CAPITAL P
"wr"                           : '\U00002240', // WREATH PRODUCT
"wreath"                       : '\U00002240', // WREATH PRODUCT
"wscr"                         : '\U0001D4CC', // MATHEMATICAL SCRIPT SMALL W
"xcap"                         : '\U000022C2', // N-ARY INTERSECTION
"xcirc"                        : '\U000025EF', // LARGE CIRCLE
"xcup"                         : '\U000022C3', // N-ARY UNION
"xdtri"                        : '\U000025BD', // WHITE DOWN-POINTING TRIANGLE
"xfr"                          : '\U0001D535', // MATHEMATICAL FRAKTUR SMALL X
"xgr"                          : '\U000003BE', // GREEK SMALL LETTER XI
"xhArr"                        : '\U000027FA', // LONG LEFT RIGHT DOUBLE ARROW
"xharr"                        : '\U000027F7', // LONG LEFT RIGHT ARROW
"xi"                           : '\U000003BE', // GREEK SMALL LETTER XI
"xlArr"                        : '\U000027F8', // LONG LEFTWARDS DOUBLE ARROW
"xlarr"                        : '\U000027F5', // LONG LEFTWARDS ARROW
"xmap"                         : '\U000027FC', // LONG RIGHTWARDS ARROW FROM BAR
"xnis"                         : '\U000022FB', // CONTAINS WITH VERTICAL BAR AT END OF HORIZONTAL STROKE
"xodot"                        : '\U00002A00', // N-ARY CIRCLED DOT OPERATOR
"xopf"                         : '\U0001D569', // MATHEMATICAL DOUBLE-STRUCK SMALL X
"xoplus"                       : '\U00002A01', // N-ARY CIRCLED PLUS OPERATOR
"xotime"                       : '\U00002A02', // N-ARY CIRCLED TIMES OPERATOR
"xrArr"                        : '\U000027F9', // LONG RIGHTWARDS DOUBLE ARROW
"xrarr"                        : '\U000027F6', // LONG RIGHTWARDS ARROW
"xscr"                         : '\U0001D4CD', // MATHEMATICAL SCRIPT SMALL X
"xsqcup"                       : '\U00002A06', // N-ARY SQUARE UNION OPERATOR
"xuplus"                       : '\U00002A04', // N-ARY UNION OPERATOR WITH PLUS
"xutri"                        : '\U000025B3', // WHITE UP-POINTING TRIANGLE
"xvee"                         : '\U000022C1', // N-ARY LOGICAL OR
"xwedge"                       : '\U000022C0', // N-ARY LOGICAL AND
"yacute"                       : '\U000000FD', // LATIN SMALL LETTER Y WITH ACUTE
"yacy"                         : '\U0000044F', // CYRILLIC SMALL LETTER YA
"ycirc"                        : '\U00000177', // LATIN SMALL LETTER Y WITH CIRCUMFLEX
"ycy"                          : '\U0000044B', // CYRILLIC SMALL LETTER YERU
"yen"                          : '\U000000A5', // YEN SIGN
"yfr"                          : '\U0001D536', // MATHEMATICAL FRAKTUR SMALL Y
"yicy"                         : '\U00000457', // CYRILLIC SMALL LETTER YI
"yopf"                         : '\U0001D56A', // MATHEMATICAL DOUBLE-STRUCK SMALL Y
"yscr"                         : '\U0001D4CE', // MATHEMATICAL SCRIPT SMALL Y
"yucy"                         : '\U0000044E', // CYRILLIC SMALL LETTER YU
"yuml"                         : '\U000000FF', // LATIN SMALL LETTER Y WITH DIAERESIS
"zacute"                       : '\U0000017A', // LATIN SMALL LETTER Z WITH ACUTE
"zcaron"                       : '\U0000017E', // LATIN SMALL LETTER Z WITH CARON
"zcy"                          : '\U00000437', // CYRILLIC SMALL LETTER ZE
"zdot"                         : '\U0000017C', // LATIN SMALL LETTER Z WITH DOT ABOVE
"zeetrf"                       : '\U00002128', // BLACK-LETTER CAPITAL Z
"zeta"                         : '\U000003B6', // GREEK SMALL LETTER ZETA
"zfr"                          : '\U0001D537', // MATHEMATICAL FRAKTUR SMALL Z
"zgr"                          : '\U000003B6', // GREEK SMALL LETTER ZETA
"zhcy"                         : '\U00000436', // CYRILLIC SMALL LETTER ZHE
"zigrarr"                      : '\U000021DD', // RIGHTWARDS SQUIGGLE ARROW
"zopf"                         : '\U0001D56B', // MATHEMATICAL DOUBLE-STRUCK SMALL Z
"zscr"                         : '\U0001D4CF', // MATHEMATICAL SCRIPT SMALL Z
"zwj"                          : '\U0000200D', // ZERO WIDTH JOINER
"zwnj"                         : '\U0000200C', // ZERO WIDTH NON-JOINER
];
