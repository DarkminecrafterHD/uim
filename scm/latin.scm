;;;
;;; Copyright (c) 2003-2006 uim Project http://uim.freedesktop.org/
;;;
;;; All rights reserved.
;;;
;;; Redistribution and use in source and binary forms, with or without
;;; modification, are permitted provided that the following conditions
;;; are met:
;;; 1. Redistributions of source code must retain the above copyright
;;;    notice, this list of conditions and the following disclaimer.
;;; 2. Redistributions in binary form must reproduce the above copyright
;;;    notice, this list of conditions and the following disclaimer in the
;;;    documentation and/or other materials provided with the distribution.
;;; 3. Neither the name of authors nor the names of its contributors
;;;    may be used to endorse or promote products derived from this software
;;;    without specific prior written permission.
;;;
;;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS ``AS IS'' AND
;;; ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;;; IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;;; ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE LIABLE
;;; FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
;;; DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
;;; OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
;;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
;;; LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
;;; OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
;;; SUCH DAMAGE.
;;;;

;; Charset of this file is UTF-8

(require "util.scm")
(require "rk.scm")
(require "generic.scm")

(define-key latin-backspace-key? '("backspace" "<Control>h"))
(define-key latin-commit-key? "return")
(define-key latin-multi-key? '("<IgnoreShift>Multi_key"))

;; latin-compose-rule is generated from key sequences in
;; /usr/share/X11/locale/en_US.UTF-8/Compose which begin with Multi_key
;; and followed by only ascii characters.

(define latin-compose-rule '(
((("+" "+"))("#"))
((("'" " "))("'"))
(((" " "'"))("'"))
((("A" "T"))("@"))
((("(" "("))("["))
((("/" "/"))("\\"))
((("/" "<"))("\\"))
((("<" "/"))("\\"))
(((")" ")"))("]"))
((("^" " "))("^"))
(((" " "^"))("^"))
(((">" " "))("^"))
(((" " ">"))("^"))
((("`" " "))("`"))
(((" " "`"))("`"))
((("," " "))("¸"))
(((" " ","))("¸"))
((("(" "-"))("{"))
((("-" "("))("{"))
((("/" "^"))("|"))
((("^" "/"))("|"))
((("V" "L"))("|"))
((("L" "V"))("|"))
((("v" "l"))("|"))
((("l" "v"))("|"))
(((")" "-"))("}"))
((("-" ")"))("}"))
((("~" " "))("~"))
(((" " "~"))("~"))
((("-" " "))("~"))
(((" " "-"))("~"))
(((" " " "))(" "))
(((" " "."))(" "))
((("o" "c"))("©"))
((("o" "C"))("©"))
((("O" "c"))("©"))
((("O" "C"))("©"))
((("o" "r"))("®"))
((("o" "R"))("®"))
((("O" "r"))("®"))
((("O" "R"))("®"))
((("." ">"))("›"))
((("." "<"))("‹"))
((("." "."))("·"))
((("!" "^"))("¦"))
((("!" "!"))("¡"))
((("p" "!"))("¶"))
((("P" "!"))("¶"))
((("+" "-"))("±"))
((("?" "?"))("¿"))
((("-" "d"))("đ"))
((("-" "D"))("Đ"))
((("s" "s"))("ß"))
((("o" "e"))("œ"))
((("O" "E"))("Œ"))
((("a" "e"))("æ"))
((("A" "E"))("Æ"))
((("o" "o"))("°"))
((("\"" "\\"))("〝"))
((("\"" "/"))("〞"))
((("<" "<"))("«"))
(((">" ">"))("»"))
((("<" "'"))("‘"))
((("'" "<"))("‘"))
(((">" "'"))("’"))
((("'" ">"))("’"))
((("," "'"))("‚"))
((("'" ","))("‚"))
((("<" "\""))("“"))
((("\"" "<"))("“"))
(((">" "\""))("”"))
((("\"" ">"))("”"))
((("," "\""))("„"))
((("\"" ","))("„"))
((("%" "o"))("‰"))
((("C" "E"))("₠"))
((("C" "/"))("₡"))
((("/" "C"))("₡"))
((("C" "r"))("₢"))
((("F" "r"))("₣"))
((("L" "="))("₤"))
((("=" "L"))("₤"))
((("m" "/"))("₥"))
((("/" "m"))("₥"))
((("N" "="))("₦"))
((("=" "N"))("₦"))
((("P" "t"))("₧"))
((("R" "s"))("₨"))
((("W" "="))("₩"))
((("=" "W"))("₩"))
((("d" "-"))("₫"))
((("C" "="))("€"))
((("=" "C"))("€"))
((("c" "="))("€"))
((("=" "c"))("€"))
((("E" "="))("€"))
((("=" "E"))("€"))
((("|" "c"))("¢"))
((("|" "C"))("¢"))
((("c" "|"))("¢"))
((("C" "|"))("¢"))
((("c" "/"))("¢"))
((("C" "/"))("¢"))
((("/" "c"))("¢"))
((("/" "C"))("¢"))
((("L" "-"))("£"))
((("-" "L"))("£"))
((("Y" "="))("¥"))
((("=" "Y"))("¥"))
((("f" "s"))("ſ"))
((("f" "S"))("ſ"))
((("-" "-" "."))("–"))
((("-" "-" "-"))("—"))
((("#" "b"))("♭"))
((("#" "f"))("♮"))
((("#" "#"))("♯"))
((("s" "o"))("§"))
((("o" "s"))("§"))
((("o" "x"))("¤"))
((("x" "o"))("¤"))
((("P" "P"))("¶"))
((("," "-"))("¬"))
((("-" ","))("¬"))
((("^" "_" "a"))("ª"))
((("^" "2"))("²"))
((("^" "3"))("³"))
((("m" "u"))("µ"))
((("^" "1"))("¹"))
((("^" "_" "o"))("º"))
((("1" "4"))("¼"))
((("1" "2"))("½"))
((("3" "4"))("¾"))
((("`" "A"))("À"))
((("'" "A"))("Á"))
((("^" "A"))("Â"))
((("~" "A"))("Ã"))
((("\"" "A"))("Ä"))
((("o" "A"))("Å"))
((("," "C"))("Ç"))
((("`" "E"))("È"))
((("'" "E"))("É"))
((("^" "E"))("Ê"))
((("\"" "E"))("Ë"))
((("`" "I"))("Ì"))
((("'" "I"))("Í"))
((("^" "I"))("Î"))
((("\"" "I"))("Ï"))
((("D" "H"))("Ð"))
((("~" "N"))("Ñ"))
((("`" "O"))("Ò"))
((("'" "O"))("Ó"))
((("^" "O"))("Ô"))
((("~" "O"))("Õ"))
((("\"" "O"))("Ö"))
((("x" "x"))("×"))
((("/" "O"))("Ø"))
((("`" "U"))("Ù"))
((("'" "U"))("Ú"))
((("^" "U"))("Û"))
((("\"" "U"))("Ü"))
((("'" "Y"))("Ý"))
((("T" "H"))("Þ"))
((("`" "a"))("à"))
((("'" "a"))("á"))
((("^" "a"))("â"))
((("~" "a"))("ã"))
((("\"" "a"))("ä"))
((("o" "a"))("å"))
((("," "c"))("ç"))
((("`" "e"))("è"))
((("'" "e"))("é"))
((("^" "e"))("ê"))
((("\"" "e"))("ë"))
((("`" "i"))("ì"))
((("'" "i"))("í"))
((("^" "i"))("î"))
((("\"" "i"))("ï"))
((("d" "h"))("ð"))
((("~" "n"))("ñ"))
((("`" "o"))("ò"))
((("'" "o"))("ó"))
((("^" "o"))("ô"))
((("~" "o"))("õ"))
((("\"" "o"))("ö"))
(((":" "-"))("÷"))
((("-" ":"))("÷"))
((("/" "o"))("ø"))
((("`" "u"))("ù"))
((("'" "u"))("ú"))
((("^" "u"))("û"))
((("\"" "u"))("ü"))
((("'" "y"))("ý"))
((("t" "h"))("þ"))
((("\"" "y"))("ÿ"))
((("_" "A"))("Ā"))
((("_" "a"))("ā"))
((("U" "A"))("Ă"))
((("b" "A"))("Ă"))
((("U" "a"))("ă"))
((("b" "a"))("ă"))
(((";" "A"))("Ą"))
(((";" "a"))("ą"))
((("'" "C"))("Ć"))
((("'" "c"))("ć"))
((("^" "C"))("Ĉ"))
((("^" "c"))("ĉ"))
((("." "C"))("Ċ"))
((("." "c"))("ċ"))
((("c" "C"))("Č"))
((("c" "c"))("č"))
((("c" "D"))("Ď"))
((("c" "d"))("ď"))
((("/" "D"))("Đ"))
((("/" "d"))("đ"))
((("_" "E"))("Ē"))
((("_" "e"))("ē"))
((("U" "E"))("Ĕ"))
((("b" "E"))("Ĕ"))
((("U" "e"))("ĕ"))
((("b" "e"))("ĕ"))
((("." "E"))("Ė"))
((("." "e"))("ė"))
(((";" "E"))("Ę"))
(((";" "e"))("ę"))
((("c" "E"))("Ě"))
((("c" "e"))("ě"))
((("^" "G"))("Ĝ"))
((("^" "g"))("ĝ"))
((("U" "G"))("Ğ"))
((("b" "G"))("Ğ"))
((("U" "g"))("ğ"))
((("b" "g"))("ğ"))
((("." "G"))("Ġ"))
((("." "g"))("ġ"))
((("," "G"))("Ģ"))
((("," "g"))("ģ"))
((("^" "H"))("Ĥ"))
((("^" "h"))("ĥ"))
((("/" "H"))("Ħ"))
((("/" "h"))("ħ"))
((("~" "I"))("Ĩ"))
((("~" "i"))("ĩ"))
((("_" "I"))("Ī"))
((("_" "i"))("ī"))
((("U" "I"))("Ĭ"))
((("b" "I"))("Ĭ"))
((("U" "i"))("ĭ"))
((("b" "i"))("ĭ"))
(((";" "I"))("Į"))
(((";" "i"))("į"))
((("." "I"))("İ"))
((("i" "."))("ı"))
((("^" "J"))("Ĵ"))
((("^" "j"))("ĵ"))
((("," "K"))("Ķ"))
((("," "k"))("ķ"))
((("k" "k"))("ĸ"))
((("'" "L"))("Ĺ"))
((("'" "l"))("ĺ"))
((("," "L"))("Ļ"))
((("," "l"))("ļ"))
((("c" "L"))("Ľ"))
((("c" "l"))("ľ"))
((("/" "L"))("Ł"))
((("/" "l"))("ł"))
((("'" "N"))("Ń"))
((("'" "n"))("ń"))
((("," "N"))("Ņ"))
((("," "n"))("ņ"))
((("c" "N"))("Ň"))
((("c" "n"))("ň"))
((("N" "G"))("Ŋ"))
((("n" "g"))("ŋ"))
((("_" "O"))("Ō"))
((("_" "o"))("ō"))
((("U" "O"))("Ŏ"))
((("b" "O"))("Ŏ"))
((("U" "o"))("ŏ"))
((("b" "o"))("ŏ"))
((("=" "O"))("Ő"))
((("=" "o"))("ő"))
((("'" "R"))("Ŕ"))
((("'" "r"))("ŕ"))
((("," "R"))("Ŗ"))
((("," "r"))("ŗ"))
((("c" "R"))("Ř"))
((("c" "r"))("ř"))
((("'" "S"))("Ś"))
((("'" "s"))("ś"))
((("^" "S"))("Ŝ"))
((("^" "s"))("ŝ"))
((("," "S"))("Ş"))
((("," "s"))("ş"))
((("c" "S"))("Š"))
((("c" "s"))("š"))
((("," "T"))("Ţ"))
((("," "t"))("ţ"))
((("c" "T"))("Ť"))
((("c" "t"))("ť"))
((("/" "T"))("Ŧ"))
((("/" "t"))("ŧ"))
((("~" "U"))("Ũ"))
((("~" "u"))("ũ"))
((("_" "U"))("Ū"))
((("_" "u"))("ū"))
((("U" "U"))("Ŭ"))
((("b" "U"))("Ŭ"))
((("U" "u"))("ŭ"))
((("b" "u"))("ŭ"))
((("o" "U"))("Ů"))
((("o" "u"))("ů"))
((("=" "U"))("Ű"))
((("=" "u"))("ű"))
(((";" "U"))("Ų"))
(((";" "u"))("ų"))
((("^" "W"))("Ŵ"))
((("^" "w"))("ŵ"))
((("^" "Y"))("Ŷ"))
((("^" "y"))("ŷ"))
((("\"" "Y"))("Ÿ"))
((("'" "Z"))("Ź"))
((("'" "z"))("ź"))
((("." "Z"))("Ż"))
((("." "z"))("ż"))
((("c" "Z"))("Ž"))
((("c" "z"))("ž"))
((("/" "b"))("ƀ"))
((("/" "I"))("Ɨ"))
((("+" "O"))("Ơ"))
((("+" "o"))("ơ"))
((("+" "U"))("Ư"))
((("+" "u"))("ư"))
((("/" "Z"))("Ƶ"))
((("/" "z"))("ƶ"))
((("c" "A"))("Ǎ"))
((("c" "a"))("ǎ"))
((("c" "I"))("Ǐ"))
((("c" "i"))("ǐ"))
((("c" "O"))("Ǒ"))
((("c" "o"))("ǒ"))
((("c" "U"))("Ǔ"))
((("c" "u"))("ǔ"))
((("_" "\"" "U"))("Ǖ"))
((("_" "\"" "u"))("ǖ"))
((("'" "\"" "U"))("Ǘ"))
((("'" "\"" "u"))("ǘ"))
((("c" "\"" "U"))("Ǚ"))
((("c" "\"" "u"))("ǚ"))
((("`" "\"" "U"))("Ǜ"))
((("`" "\"" "u"))("ǜ"))
((("_" "\"" "A"))("Ǟ"))
((("_" "\"" "a"))("ǟ"))
((("_" "." "A"))("Ǡ"))
((("_" "." "a"))("ǡ"))
((("/" "G"))("Ǥ"))
((("/" "g"))("ǥ"))
((("c" "G"))("Ǧ"))
((("c" "g"))("ǧ"))
((("c" "K"))("Ǩ"))
((("c" "k"))("ǩ"))
(((";" "O"))("Ǫ"))
(((";" "o"))("ǫ"))
((("_" ";" "O"))("Ǭ"))
((("_" ";" "o"))("ǭ"))
((("c" "j"))("ǰ"))
((("'" "G"))("Ǵ"))
((("'" "g"))("ǵ"))
((("`" "N"))("Ǹ"))
((("`" "n"))("ǹ"))
((("o" "'" "A"))("Ǻ"))
((("o" "'" "a"))("ǻ"))
((("'" "/" "O"))("Ǿ"))
((("'" "/" "o"))("ǿ"))
((("c" "H"))("Ȟ"))
((("c" "h"))("ȟ"))
((("." "A"))("Ȧ"))
((("." "a"))("ȧ"))
((("," "E"))("Ȩ"))
((("," "e"))("ȩ"))
((("_" "\"" "O"))("Ȫ"))
((("_" "\"" "o"))("ȫ"))
((("_" "~" "O"))("Ȭ"))
((("_" "~" "o"))("ȭ"))
((("." "O"))("Ȯ"))
((("." "o"))("ȯ"))
((("_" "." "O"))("Ȱ"))
((("_" "." "o"))("ȱ"))
((("_" "Y"))("Ȳ"))
((("_" "y"))("ȳ"))
((("e" "e"))("ə"))
((("/" "i"))("ɨ"))
((("^" "_" "h"))("ʰ"))
((("^" "_" "j"))("ʲ"))
((("^" "_" "r"))("ʳ"))
((("^" "_" "w"))("ʷ"))
((("^" "_" "y"))("ʸ"))
((("^" "_" "l"))("ˡ"))
((("^" "_" "s"))("ˢ"))
((("^" "_" "x"))("ˣ"))
((("\"" "'"))("̈́"))
((("." "B"))("Ḃ"))
((("." "b"))("ḃ"))
((("!" "B"))("Ḅ"))
((("!" "b"))("ḅ"))
((("'" "," "C"))("Ḉ"))
((("'" "," "c"))("ḉ"))
((("." "D"))("Ḋ"))
((("." "d"))("ḋ"))
((("!" "D"))("Ḍ"))
((("!" "d"))("ḍ"))
((("," "D"))("Ḑ"))
((("," "d"))("ḑ"))
((("`" "_" "E"))("Ḕ"))
((("`" "_" "e"))("ḕ"))
((("'" "_" "E"))("Ḗ"))
((("'" "_" "e"))("ḗ"))
((("U" "," "E"))("Ḝ"))
((("b" "," "E"))("Ḝ"))
((("U" "," "e"))("ḝ"))
((("b" "," "e"))("ḝ"))
((("." "F"))("Ḟ"))
((("." "f"))("ḟ"))
((("_" "G"))("Ḡ"))
((("_" "g"))("ḡ"))
((("." "H"))("Ḣ"))
((("." "h"))("ḣ"))
((("!" "H"))("Ḥ"))
((("!" "h"))("ḥ"))
((("\"" "H"))("Ḧ"))
((("\"" "h"))("ḧ"))
((("," "H"))("Ḩ"))
((("," "h"))("ḩ"))
((("'" "\"" "I"))("Ḯ"))
((("'" "\"" "i"))("ḯ"))
((("'" "K"))("Ḱ"))
((("'" "k"))("ḱ"))
((("!" "K"))("Ḳ"))
((("!" "k"))("ḳ"))
((("!" "L"))("Ḷ"))
((("!" "l"))("ḷ"))
((("_" "!" "L"))("Ḹ"))
((("_" "!" "l"))("ḹ"))
((("'" "M"))("Ḿ"))
((("'" "m"))("ḿ"))
((("." "M"))("Ṁ"))
((("." "m"))("ṁ"))
((("!" "M"))("Ṃ"))
((("!" "m"))("ṃ"))
((("." "N"))("Ṅ"))
((("." "n"))("ṅ"))
((("!" "N"))("Ṇ"))
((("!" "n"))("ṇ"))
((("'" "~" "O"))("Ṍ"))
((("'" "~" "o"))("ṍ"))
((("\"" "~" "O"))("Ṏ"))
((("\"" "~" "o"))("ṏ"))
((("`" "_" "O"))("Ṑ"))
((("`" "_" "o"))("ṑ"))
((("'" "_" "O"))("Ṓ"))
((("'" "_" "o"))("ṓ"))
((("'" "P"))("Ṕ"))
((("'" "p"))("ṕ"))
((("." "P"))("Ṗ"))
((("." "p"))("ṗ"))
((("." "R"))("Ṙ"))
((("." "r"))("ṙ"))
((("!" "R"))("Ṛ"))
((("!" "r"))("ṛ"))
((("_" "!" "R"))("Ṝ"))
((("_" "!" "r"))("ṝ"))
((("." "S"))("Ṡ"))
((("." "s"))("ṡ"))
((("!" "S"))("Ṣ"))
((("!" "s"))("ṣ"))
((("." "'" "S"))("Ṥ"))
((("." "'" "s"))("ṥ"))
((("." "c" "S"))("Ṧ"))
((("." "c" "s"))("ṧ"))
((("." "!" "S"))("Ṩ"))
((("." "!" "s"))("ṩ"))
((("." "T"))("Ṫ"))
((("." "t"))("ṫ"))
((("!" "T"))("Ṭ"))
((("!" "t"))("ṭ"))
((("'" "~" "U"))("Ṹ"))
((("'" "~" "u"))("ṹ"))
((("\"" "_" "U"))("Ṻ"))
((("\"" "_" "u"))("ṻ"))
((("~" "V"))("Ṽ"))
((("~" "v"))("ṽ"))
((("!" "V"))("Ṿ"))
((("!" "v"))("ṿ"))
((("`" "W"))("Ẁ"))
((("`" "w"))("ẁ"))
((("'" "W"))("Ẃ"))
((("'" "w"))("ẃ"))
((("\"" "W"))("Ẅ"))
((("\"" "w"))("ẅ"))
((("." "W"))("Ẇ"))
((("." "w"))("ẇ"))
((("!" "W"))("Ẉ"))
((("!" "w"))("ẉ"))
((("." "X"))("Ẋ"))
((("." "x"))("ẋ"))
((("\"" "X"))("Ẍ"))
((("\"" "x"))("ẍ"))
((("." "Y"))("Ẏ"))
((("." "y"))("ẏ"))
((("^" "Z"))("Ẑ"))
((("^" "z"))("ẑ"))
((("!" "Z"))("Ẓ"))
((("!" "z"))("ẓ"))
((("\"" "t"))("ẗ"))
((("o" "w"))("ẘ"))
((("o" "y"))("ẙ"))
((("!" "A"))("Ạ"))
((("!" "a"))("ạ"))
((("?" "A"))("Ả"))
((("?" "a"))("ả"))
((("'" "^" "A"))("Ấ"))
((("'" "^" "a"))("ấ"))
((("`" "^" "A"))("Ầ"))
((("`" "^" "a"))("ầ"))
((("?" "^" "A"))("Ẩ"))
((("?" "^" "a"))("ẩ"))
((("~" "^" "A"))("Ẫ"))
((("~" "^" "a"))("ẫ"))
((("^" "!" "A"))("Ậ"))
((("^" "!" "a"))("ậ"))
((("'" "U" "A"))("Ắ"))
((("'" "b" "A"))("Ắ"))
((("'" "U" "a"))("ắ"))
((("'" "b" "a"))("ắ"))
((("`" "U" "A"))("Ằ"))
((("`" "b" "A"))("Ằ"))
((("`" "U" "a"))("ằ"))
((("`" "b" "a"))("ằ"))
((("?" "U" "A"))("Ẳ"))
((("?" "b" "A"))("Ẳ"))
((("?" "U" "a"))("ẳ"))
((("?" "b" "a"))("ẳ"))
((("~" "U" "A"))("Ẵ"))
((("~" "b" "A"))("Ẵ"))
((("~" "U" "a"))("ẵ"))
((("~" "b" "a"))("ẵ"))
((("U" "!" "A"))("Ặ"))
((("b" "!" "A"))("Ặ"))
((("U" "!" "a"))("ặ"))
((("b" "!" "a"))("ặ"))
((("!" "E"))("Ẹ"))
((("!" "e"))("ẹ"))
((("?" "E"))("Ẻ"))
((("?" "e"))("ẻ"))
((("~" "E"))("Ẽ"))
((("~" "e"))("ẽ"))
((("'" "^" "E"))("Ế"))
((("'" "^" "e"))("ế"))
((("`" "^" "E"))("Ề"))
((("`" "^" "e"))("ề"))
((("?" "^" "E"))("Ể"))
((("?" "^" "e"))("ể"))
((("~" "^" "E"))("Ễ"))
((("~" "^" "e"))("ễ"))
((("^" "!" "E"))("Ệ"))
((("^" "!" "e"))("ệ"))
((("?" "I"))("Ỉ"))
((("?" "i"))("ỉ"))
((("!" "I"))("Ị"))
((("!" "i"))("ị"))
((("!" "O"))("Ọ"))
((("!" "o"))("ọ"))
((("?" "O"))("Ỏ"))
((("?" "o"))("ỏ"))
((("'" "^" "O"))("Ố"))
((("'" "^" "o"))("ố"))
((("`" "^" "O"))("Ồ"))
((("`" "^" "o"))("ồ"))
((("?" "^" "O"))("Ổ"))
((("?" "^" "o"))("ổ"))
((("~" "^" "O"))("Ỗ"))
((("~" "^" "o"))("ỗ"))
((("^" "!" "O"))("Ộ"))
((("^" "!" "o"))("ộ"))
((("'" "+" "O"))("Ớ"))
((("'" "+" "o"))("ớ"))
((("`" "+" "O"))("Ờ"))
((("`" "+" "o"))("ờ"))
((("?" "+" "O"))("Ở"))
((("?" "+" "o"))("ở"))
((("~" "+" "O"))("Ỡ"))
((("~" "+" "o"))("ỡ"))
((("!" "+" "O"))("Ợ"))
((("!" "+" "o"))("ợ"))
((("!" "U"))("Ụ"))
((("!" "u"))("ụ"))
((("?" "U"))("Ủ"))
((("?" "u"))("ủ"))
((("'" "+" "U"))("Ứ"))
((("'" "+" "u"))("ứ"))
((("`" "+" "U"))("Ừ"))
((("`" "+" "u"))("ừ"))
((("?" "+" "U"))("Ử"))
((("?" "+" "u"))("ử"))
((("~" "+" "U"))("Ữ"))
((("~" "+" "u"))("ữ"))
((("!" "+" "U"))("Ự"))
((("!" "+" "u"))("ự"))
((("`" "Y"))("Ỳ"))
((("`" "y"))("ỳ"))
((("!" "Y"))("Ỵ"))
((("!" "y"))("ỵ"))
((("?" "Y"))("Ỷ"))
((("?" "y"))("ỷ"))
((("~" "Y"))("Ỹ"))
((("~" "y"))("ỹ"))
((("^" "0"))("⁰"))
((("^" "_" "i"))("ⁱ"))
((("^" "4"))("⁴"))
((("^" "5"))("⁵"))
((("^" "6"))("⁶"))
((("^" "7"))("⁷"))
((("^" "8"))("⁸"))
((("^" "9"))("⁹"))
((("^" "+"))("⁺"))
((("^" "="))("⁼"))
((("^" "("))("⁽"))
((("^" ")"))("⁾"))
((("^" "_" "n"))("ⁿ"))
((("_" "0"))("₀"))
((("_" "1"))("₁"))
((("_" "2"))("₂"))
((("_" "3"))("₃"))
((("_" "4"))("₄"))
((("_" "5"))("₅"))
((("_" "6"))("₆"))
((("_" "7"))("₇"))
((("_" "8"))("₈"))
((("_" "9"))("₉"))
((("_" "+"))("₊"))
((("_" "="))("₌"))
((("_" "("))("₍"))
((("_" ")"))("₎"))
((("^" "S" "M"))("℠"))
((("^" "T" "M"))("™"))
((("(" "1" ")"))("①"))
((("(" "2" ")"))("②"))
((("(" "3" ")"))("③"))
((("(" "4" ")"))("④"))
((("(" "5" ")"))("⑤"))
((("(" "6" ")"))("⑥"))
((("(" "7" ")"))("⑦"))
((("(" "8" ")"))("⑧"))
((("(" "9" ")"))("⑨"))
((("(" "1" "0" ")"))("⑩"))
((("(" "1" "1" ")"))("⑪"))
((("(" "1" "2" ")"))("⑫"))
((("(" "1" "3" ")"))("⑬"))
((("(" "1" "4" ")"))("⑭"))
((("(" "1" "5" ")"))("⑮"))
((("(" "1" "6" ")"))("⑯"))
((("(" "1" "7" ")"))("⑰"))
((("(" "1" "8" ")"))("⑱"))
((("(" "1" "9" ")"))("⑲"))
((("(" "2" "0" ")"))("⑳"))
((("(" "A" ")"))("Ⓐ"))
((("(" "B" ")"))("Ⓑ"))
((("(" "C" ")"))("Ⓒ"))
((("(" "D" ")"))("Ⓓ"))
((("(" "E" ")"))("Ⓔ"))
((("(" "F" ")"))("Ⓕ"))
((("(" "G" ")"))("Ⓖ"))
((("(" "H" ")"))("Ⓗ"))
((("(" "I" ")"))("Ⓘ"))
((("(" "J" ")"))("Ⓙ"))
((("(" "K" ")"))("Ⓚ"))
((("(" "L" ")"))("Ⓛ"))
((("(" "M" ")"))("Ⓜ"))
((("(" "N" ")"))("Ⓝ"))
((("(" "O" ")"))("Ⓞ"))
((("(" "P" ")"))("Ⓟ"))
((("(" "Q" ")"))("Ⓠ"))
((("(" "R" ")"))("Ⓡ"))
((("(" "S" ")"))("Ⓢ"))
((("(" "T" ")"))("Ⓣ"))
((("(" "U" ")"))("Ⓤ"))
((("(" "V" ")"))("Ⓥ"))
((("(" "W" ")"))("Ⓦ"))
((("(" "X" ")"))("Ⓧ"))
((("(" "Y" ")"))("Ⓨ"))
((("(" "Z" ")"))("Ⓩ"))
((("(" "a" ")"))("ⓐ"))
((("(" "b" ")"))("ⓑ"))
((("(" "c" ")"))("ⓒ"))
((("(" "d" ")"))("ⓓ"))
((("(" "e" ")"))("ⓔ"))
((("(" "f" ")"))("ⓕ"))
((("(" "g" ")"))("ⓖ"))
((("(" "h" ")"))("ⓗ"))
((("(" "i" ")"))("ⓘ"))
((("(" "j" ")"))("ⓙ"))
((("(" "k" ")"))("ⓚ"))
((("(" "l" ")"))("ⓛ"))
((("(" "m" ")"))("ⓜ"))
((("(" "n" ")"))("ⓝ"))
((("(" "o" ")"))("ⓞ"))
((("(" "p" ")"))("ⓟ"))
((("(" "q" ")"))("ⓠ"))
((("(" "r" ")"))("ⓡ"))
((("(" "s" ")"))("ⓢ"))
((("(" "t" ")"))("ⓣ"))
((("(" "u" ")"))("ⓤ"))
((("(" "v" ")"))("ⓥ"))
((("(" "w" ")"))("ⓦ"))
((("(" "x" ")"))("ⓧ"))
((("(" "y" ")"))("ⓨ"))
((("(" "z" ")"))("ⓩ"))
((("(" "0" ")"))("⓪"))
((("(" "2" "1" ")"))("㉑"))
((("(" "2" "2" ")"))("㉒"))
((("(" "2" "3" ")"))("㉓"))
((("(" "2" "4" ")"))("㉔"))
((("(" "2" "5" ")"))("㉕"))
((("(" "2" "6" ")"))("㉖"))
((("(" "2" "7" ")"))("㉗"))
((("(" "2" "8" ")"))("㉘"))
((("(" "2" "9" ")"))("㉙"))
((("(" "3" "0" ")"))("㉚"))
((("(" "3" "1" ")"))("㉛"))
((("(" "3" "2" ")"))("㉜"))
((("(" "3" "3" ")"))("㉝"))
((("(" "3" "4" ")"))("㉞"))
((("(" "3" "5" ")"))("㉟"))
((("(" "3" "6" ")"))("㊱"))
((("(" "3" "7" ")"))("㊲"))
((("(" "3" "8" ")"))("㊳"))
((("(" "3" "9" ")"))("㊴"))
((("(" "4" "0" ")"))("㊵"))
((("(" "4" "1" ")"))("㊶"))
((("(" "4" "2" ")"))("㊷"))
((("(" "4" "3" ")"))("㊸"))
((("(" "4" "4" ")"))("㊹"))
((("(" "4" "5" ")"))("㊺"))
((("(" "4" "6" ")"))("㊻"))
((("(" "4" "7" ")"))("㊼"))
((("(" "4" "8" ")"))("㊽"))
((("(" "4" "9" ")"))("㊾"))
((("(" "5" "0" ")"))("㊿"))
))

(define latin-im-rule
  (append ascii-rule latin-compose-rule))

(define latin-init-handler
  (lambda (id im arg)
    (latin-context-new id im)))

;;; implementations

(define ascii-rule
  (map (compose (lambda (entry)
		  (list (list entry) entry))
		list
		charcode->string)
       (iota 127 32)))

(define latin-context-rec-spec
  (append
   context-rec-spec
   '((rk-context         #f)
     (rk-nth             0)
     (composing?         #f)
     (on                 #f)
     (raw-commit         #f)
     (converting         #f))))
(define-record 'latin-context latin-context-rec-spec)
(define latin-context-new-internal latin-context-new)

(define latin-context-new
  (lambda (id im)
    (let ((gc (latin-context-new-internal id im))
	  (rkc (rk-context-new latin-im-rule #f #f)))
      (latin-context-set-rk-context! gc rkc)
      gc)))

(define latin-context-flush
  (lambda (pc)
    (latin-context-set-rk-nth! pc 0)
    (latin-context-set-converting! pc #f)))

(define latin-update-preedit
  (lambda (pc)
    (let* ((rkc (latin-context-rk-context pc))
	   (cs (rk-current-seq rkc))
	   (n (latin-context-rk-nth pc)))
      (im-clear-preedit pc)
      (im-pushback-preedit
       pc preedit-underline
       (if cs
	   (nth n (cadr cs))
	   (rk-pending rkc)))
      (im-pushback-preedit
       pc preedit-cursor "")

      (im-update-preedit pc))))

(define latin-commit-raw
  (lambda (pc)
    (im-commit-raw pc)
    (latin-context-set-raw-commit! pc #t)))

(define latin-commit
  (lambda (pc)
    (let* ((rkc (latin-context-rk-context pc))
	   (cs (rk-current-seq rkc)))
      (if (= (length (cadr cs)) 1)
	  (im-commit pc (car (cadr cs))))
      (latin-context-set-composing?! pc #f)
      (rk-flush rkc))))

(define latin-proc-composing-state
  (lambda (pc key state)
    (let* ((rkc (latin-context-rk-context pc))
	   (n (latin-context-rk-nth pc))
	   (cs (cadr (rk-current-seq rkc)))
	   (res))
      (cond
       ((latin-backspace-key? key state)
	(if (not (rk-backspace rkc))
	    (latin-commit-raw pc)))

       ((latin-commit-key? key state)
	(latin-commit pc))

       ((or (symbol? key)
	    (and
	     (= 32 key) ; space
	     (not (string-find (rk-expect rkc) " "))))
	(latin-commit pc)
	(latin-commit-raw pc)
	(latin-context-flush pc))

       (else
	(let ((res (rk-push-key! rkc (charcode->string key))))
	  (if (not (rk-partial? rkc))
	      (let ((cs (rk-current-seq rkc)))
		(if (and
		     (= (length (cadr cs)) 1)
		     (not (= (length (car (car cs))) 1)))
		    (latin-commit pc))))
	  (if res
	      (begin
		(latin-context-set-composing?! pc #f)
		(rk-flush rkc)))
	  ))))))

(define latin-proc-raw-state
  (lambda (pc key state)
    (if (latin-multi-key? key state)
	(latin-context-set-composing?! pc #t)
	(latin-commit-raw pc))))

(define latin-press-key-handler
  (lambda (pc key state)
    (if (control-char? key)
	(im-commit-raw pc)
	(if (latin-context-composing? pc)
	    (latin-proc-composing-state pc key state)
	    (latin-proc-raw-state pc key state)))
    (latin-update-preedit pc)))

(define latin-release-key-handler
  (lambda (pc key state)
    (if (or (control-char? key)
	    (not (latin-context-on pc)))
	;; don't discard key release event for apps
	(latin-commit-raw pc))))

(define latin-reset-handler
  (lambda (pc)
    (let ((rkc (latin-context-rk-context pc)))
      (rk-flush rkc))))

(define latin-get-candidate-handler
  (lambda (pc idx accel-enum-hint)
    ()))

(define latin-set-candidate-index-handler
  (lambda (pc idx)
    ()))

(register-im
 'latin
 ""
 "UTF-8"
 (N_ "Latin characters")
 (N_ "Latin characters mainly used for Latin and Germanic languages")
 #f
 latin-init-handler
 #f
 context-mode-handler
 latin-press-key-handler
 latin-release-key-handler
 latin-reset-handler
 #f
 #f
 context-prop-activate-handler
)
