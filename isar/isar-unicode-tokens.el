;;; -*- coding: utf-8; -*-
;; isar-unicode-tokens.el --- Tokens for Unicode Tokens package
;;
;; Copyright(C) 2008 David Aspinall / LFCS Edinburgh
;; Author:    David Aspinall <David.Aspinall@ed.ac.uk>
;;
;; This file is loaded by `proof-unicode-tokens.el'.
;;
;; It sets the variables defined at the top of unicode-tokens.el,
;; unicode-tokens-<foo> is set from isar-<foo>.  See the corresponding
;; variable for documentation.
;;

(defconst isar-token-format "\\<%s>")
(defconst isar-charref-format "\\<#x%x>")
(defconst isar-token-prefix "\\<")
(defconst isar-token-suffix ">")
(defconst isar-token-match "\\\\<\\([a-zA-Z0-9]+\\)")
(defconst isar-hexcode-match "\\\\<\\(#[xX][0-9A-Fa-f]+\\)")

(defcustom isar-token-name-alist
  '(; token name, unicode char sequence
   ("alpha" . "α")
   ("beta" . "β")
   ("gamma" . "γ")
   ("delta" . "δ")
   ("epsilon" . "ϵ")
   ("varepsilon" . "ε")
   ("zeta" . "ζ")
   ("eta" . "η")
   ("theta" . "θ")
   ("vartheta" . "ϑ")
   ("iota" . "ι")
   ("kappa" . "κ")
   ("lambda" . "λ")
   ("mu" . "μ")
   ("nu" . "ν")
   ("xi" . "ξ")
   ("o" . "ø")
   ("pi" . "π")
   ("varpi" . "ϖ")
   ("rho" . "ρ")
   ("varrho" . "ϱ")
   ("sigma" . "σ")
   ("varsigma" . "ς")
   ("tau" . "τ")
   ("upsilon" . "υ")
   ("phi" . "ϕ")
   ("varphi" . "φ")
   ("chi" . "χ")
   ("psi" . "ψ")
   ("omega" . "ω")
   ("Gamma" . "Γ")
   ("Delta" . "Δ")
   ("Theta" . "Θ")
   ("Lambda" . "Λ")
   ("Xi" . "Ξ")
   ("Pi" . "Π")
   ("Sigma" . "Σ")
   ("Upsilon" . "Υ")
   ("Phi" . "Φ")
   ("Psi" . "Ψ")
   ("Omega" . "Ω")
   ("aleph" . "ℵ")
   ("hbar" . "ℏ")
   ("index" . "ı")
   ("ell" . "ℓ")
   ("wp" . "℘")
   ("Re" . "ℜ")
   ("Im" . "ℑ")
   ("partial" . "∂")
   ("infinity" . "∞")
   ("box" . "□")
   ("emptyset" . "∅")
   ("nabla" . "∇")
   ("surd" . "√")
   ("top" . "⊤")
   ("angle" . "∠")
   ("triangle" . "△")
   ("Diamond" . "◇")
   ("exists" . "∃")
   ("forall" . "∀")
   ("not" . "¬")
   ("flat" . "♭")
   ("natural" . "♮")
   ("sharp" . "♯")
   ("clubsuit" . "♣")
   ("diamondsuit" . "♢")
   ("heartsuit" . "♡")
   ("spadesuit" . "♠")
   ("Sum" . "∑")
   ("Prod" . "∏")
   ("Coprod" . "∐")
   ("integral" . "∫")
   ("ointegral" . "∮")
   ("Inter" . "⋂")
   ("Union" . "⋃")
   ("Squnion" . "⨆")
   ("Or" . "⋁")
   ("And" . "⋀")
   ("Odot" . "⨀")
   ("Otimes" . "⨂")
   ("Oplus" . "⨁")
   ("Uplus" . "⨄")
   ("pm" . "±")
   ("mp" . "∓")
   ("setminus" . "∖")
   ("cdot" . "⋅")
   ("times" . "×")
   ("ast" . "∗")
   ("star" . "⋆")
   ("diamond" . "⋄")
   ("circ" . "∘")
   ("bullet" . "∙")
   ("div" . "÷")
   ("lhd" . "⊲")
   ("inter" . "∩")
   ("union" . "∪")
   ("uplus" . "⊎")
   ("sqinter" . "⊓")
   ("squnion" . "⊔")
   ("triangleleft" . "◁")
   ("triangleright" . "▷")
   ("wr" . "≀")
   ("bigcirc" . "◯")
   ("bigtriangleup" . "△")
   ("bigtriangledown" . "▽")
   ("rhd" . "⊳")
   ("or" . "∨")
   ("and" . "∧")
   ("oplus" . "⊕")
   ("ominus" . "⊖")
   ("otimes" . "⊗")
   ("oslash" . "⊘")
   ("odot" . "⊙")
   ("dagger" . "†")
   ("ddagger" . "‡")
   ("amalg" . "⨿")
   ("unlhd" . "⊴")
   ("unrhd" . "⊵")
   ("le" . "≤")
   ("prec" . "≺")
   ("preceq" . "≼")
   ("lless" . "≪")
   ("subset" . "⊂")
   ("subseteq" . "⊆")
   ("sqsubseteq" . "⊑")
   ("in" . "∈")
   ("turnstile" . "⊢")
   ("smile" . "⌣")
   ("frown" . "⌢")
   ("sqsubset" . "⊏")
   ("ge" . "≥")
   ("succ" . "≻")
   ("succeq" . "≽")
   ("ggreater" . "≫")
   ("supset" . "⊃")
   ("supseteq" . "⊇")
   ("sqsupseteq" . "⊒")
   ("ni" . "∋")
   ("dashv" . "⊣")
   ("mid" . "∣")
   ("parallel" . "∥")
   ("sqsupset" . "⊐")
   ("equiv" . "≡")
   ("sim" . "∼")
   ("simeq" . "≃")
   ("asymp" . "≍")
   ("approx" . "≈")
   ("cong" . "≅")
   ("bowtie" . "⋈")
   ("propto" . "∝")
   ("Turnstile" . "⊨")
   ("doteq" . "≐")
   ("bottom" . "⊥")
   ("Join" . "⨝")
   ("nexists" . "∄")
   ("notlt" . "≮")
   ("notle" . "≰")
   ("notprec" . "⊀")
   ("notpreceq" . "⋠")
   ("notsubset" . "⊄")
   ("notsubseteq" . "⊈")
   ("notsqsubseteq" . "⋢")
   ("notgt" . "≯")
   ("notge" . "≱")
   ("notsucc" . "⊁")
   ("notsucceq" . "⋡")
   ("notsupset" . "⊅")
   ("notsupseteq" . "⊉")
   ("notsqsupseteq" . "⋣")
   ("noteq" . "≠")
   ("notequiv" . "≢")
   ("notsim" . "≁")
   ("notsimeq" . "≄")
   ("notapprox" . "≉")
   ("notcong" . "≇")
   ("notasymp" . "≭")
   ("midarrow" . "–") ; en dash
   ("leftarrow" . "←")
   ("Leftarrow" . "⇐")
   ("rightarrow" . "→")
   ("Rightarrow" . "⇒")
   ("leftrightarrow" . "↔")
   ("Leftrightarrow" . "⇔")
   ("mapsto" . "↦")
   ("hookleftarrow" . "↩")
   ("leftharpoonup" . "↼")
   ("leftharpoondown" . "↽")
   ("rightleftharpoons" . "⇌")
;; Real long symbols, may work in some places
    ("longleftarrow" . "⟵")
    ("Longleftarrow" . "⟸")
    ("longrightarrow" . "⟶")
    ("Longrightarrow" . "⟹")
    ("longleftrightarrow" . "⟷")
    ("longmapsto" . "⟼")
;; Faked long symbols, for use otherwise:
;;;     ("longleftarrow" . "←–")
;;;     ("Longleftarrow" . "⇐–")
;;;     ("longrightarrow" . "–→")
;;;     ("Longrightarrow" . "–⇒")
;;;     ("longleftrightarrow" . "←→")
;;;     ("Longleftrightarrow" . "⇐⇒")
;;;     ("longmapsto" . "❘→")
   ("hookrightarrow" . "↪")
   ("rightharpoonup" . "⇀")
   ("rightharpoondown" . "⇁")
   ("leadsto" . "↝")
   ("up" . "↑")
   ("Up" . "⇑")
   ("down" . "↓")
   ("Down" . "⇓")
   ("updown" . "↕")
   ("Updown" . "⇕")
   ("nearrow" . "↗")
   ("searrow" . "↘")
   ("swarrow" . "↙")
   ("nwarrow" . "↖")
   ("lfloor" . "⌊")
   ("langle" . "⟪")
   ("lceil" . "⌈")
   ("langle" . "⟪")
   ("lbrakk" . "⟦")
   ("rfloor" . "⌋")
   ("rangle" . "⟫")
   ("rceil" . "⌉")
   ("rangle" . "⟫")
   ("rbrakk" . "⟧")
   ("vdots" . "⋮")
   ("cdots" . "⋯")
   ("ddots" . "⋱")
   ("closequote" . "’")
   ("openquote" . "‘")
   ("opendblquote" . "”")
   ("closedblquote" . "“")
   ("hyphen" . "‐")
   ("endash" . "–")
   ("emdash" . "—")
   ("prime" . "′")
   ("doubleprime" . "″")
   ("tripleprime" . "‴")
   ("quadrupleprime" . "⁗")
   ("exclamdown" . "¡")
   ("questiondown" . "¿")
   ("nbspace" . " ")
   ("thinspace" . " ")
   ("copyright" . "©")
   ("pounds" . "£")
   ("dots" . "…")
   ("nat" . "ℕ")
   ("int" . "ℤ")
   ("rat" . "ℚ")
   ("real" . "ℝ")
   ("complex" . "ℂ")
   ("notin" . "∉")
   ("Colon" . "∷")
   ("bar" . "¦")
   ("Sqinter" . "⨅")
   ("guillemotleft" . "«")
   ("guillemotright" . "»")
   ("acute" . "´")
   ("inverse" . "¯¹") ; X-Symb: just "¯"
   ("notni" . "∌")
   ("euro" . "€")
   ("yen" . "¥")
   ("cent" . "¢")
   ("mho" . "℧")
   ("section" . "§")
   ("paragraph" . "¶")
   ("registered" . "®")
   ("degree" . "°")
   ("onequarter" . "¼")
   ("onehalf" . "½")
   ("threequarters" . "¾")
   ("ordmasculine" . "º")
   ("ordfeminine" . "ª")
   ("lparr" . "⦇")
   ("rparr" . "⦈")
   ;; these are the subscript numbers, 
   ;; not bold numerals as in X-Symbol.  
   ("one" . "₁")
   ("two" . "₂")
   ("three" . "₃")
   ("four" . "₄")
   ("five" . "₅")
   ("six" . "₆")
   ("seven" . "₇")
   ("eight" . "₈")
   ("nine" . "₉")
   ("onesuperior" . "¹")
   ("twosuperior" . "²")
   ("threesuperior" . "³")
   ("foursuperior" . "⁴")
   ("fivesuperior" . "⁵")
   ("sixsuperior" . "⁶")
   ("sevensuperior" . "⁷")
   ("eightsuperior" . "⁸")
   ("ninesuperior" . "⁹")
   ;; not in plain X-Symbol
   ("oe" . "œ")
   ("OE" . "Œ")
   ("ae" . "æ")
   ("AE" . "Æ")
   ("aa" . "å")
   ("AA" . "Å")
   ("o" . "ø") ;; LaTeX \o
   ("O" . "Ø") ;; LaTeX \O
   ("l" . "ł") ;; LaTeX \l
   ("L" . "Ł") ;; LaTeX \L
   ("ss" . "ß") ;; LaTeX \ss
   ("colonequals" . "≔")
   ("ff" . "ﬀ")
   ("fi" . "ﬁ")
   ("fl" . "ﬂ")
   ("ffi" . "ﬃ")
   ("ffl" . "ﬄ"))
  "Table mapping Isabelle ``xsymbol'' token names to Unicode strings.

You can adjust this table to add more entries, or to change entries for
glyphs that not are available in your Emacs or chosen font.

The token TNAME is made into the token \\< TNAME >.
The string mapping can be anything, but should be such that
tokens can be uniquely recovered from a decoded text; otherwise
results will be undefined when files are saved."
  :type '(repeat (cons (string :tag "Token name")
		       (string :tag "Unicode string")))
  :set 'proof-set-value
  :group 'isabelle
  :tag "Isabelle Unicode Token Mapping")


(defcustom isar-shortcut-alist
  '(; short cut, unicode string
    ("<>" . "⋄")
    ("|>" . "⊳")
    ("\\/" . "∨")
    ("/\\" . "∧")
    ("+O" . "⊕")
    ("-O" . "⊖")
    ("xO" . "⊗")
    ("/O" . "⊘")
    (".O" . "⊙")
    ("|+" . "†")
    ("|++" . "‡")
    ("<=" . "≤")
    ("|-" . "⊢")
    (">=" . "≥")
    ("-|" . "⊣")
    ("||" . "∥")
    ("==" . "≡")
    ("~=" . "≃")
    ("~~~" . "≍")
    ("~~" . "≈")
    ("~==" . "≅")
    ("|<>|" . "⋈")
    ("|=" . "⊨")
    ("=." . "≐")
    ("_|_" . "⊥")
    ("</" . "≮")
    (">=/" . "≱")
    ("=/" . "≠")
    ("==/" . "≢")
    ("~/" . "≁")
    ("~=/" . "≄")
    ("~~/" . "≉")
    ("~==/" . "≇")
    ("<-" . "←")
    ("<=" . "⇐")
    ("->" . "→")
    ("=>" . "⇒")
    ("<->" . "↔")
    ("<=>" . "⇔")
    ("|->" . "↦")
    ("<--" . "⟵")
    ("<==" . "⟸")
    ("-->" . "⟶")
    ("==>" . "⟹")
    ("<==>" . "⟷")
    ("|-->" . "⟼")
    ("<--" . "←⎯")
    ("<-->" . "⟷")
    ("<<" . "⟪")
    ("[|" . "⟦")
    (">>" . "⟫")
    ("|]" . "⟧")
    ("``" . "”")
    ("''" . "“")
    ("--" . "–")
    ("---" . "—")
    ("''" . "″")
    ("'''" . "‴")
    ("''''" . "⁗")
    (":=" . "≔")
    ;; some word shortcuts, started with backslash otherwise
    ;; too annoying.
    ("\nat" . "ℕ")
    ("\int" . "ℤ")
    ("\rat" . "ℚ")
    ("\real" . "ℝ")
    ("\complex" . "ℂ")
    ("\euro" . "€")
    ("\yen" . "¥")
    ("\cent" . "¢"))
  "Shortcut key sequence table for Unicode strings.

You can adjust this table to add more entries, or to change entries for
glyphs that not are available in your Emacs or chosen font.

These shortcuts are only used for input; no reverse conversion is
performed.  But if tokens exist for the target of shortcuts, they
will be used on saving the buffer."
  :type '(repeat (cons (string :tag "Shortcut sequence")
		       (string :tag "Unicode string")))
  :set 'proof-set-value
  :group 'isabelle
  :tag "Isabelle Unicode Token Mapping")

  


;;
;; prover symbol support 
;;

(eval-after-load "isar" 
  '(setq 
    proof-xsym-activate-command
    (isar-markup-ml "change print_mode (insert (op =) \"xsymbols\")")
    proof-xsym-deactivate-command
    (isar-markup-ml "change print_mode (remove (op =) \"xsymbols\")")))



(provide 'isar-unicode-tokens)

;;; isar-unicode-tokens.el ends here