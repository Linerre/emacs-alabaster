;;; alabaster-theme.el --- Alabaster theme for Emacs.
;;; Commentary:

;;; Version: 0.1.7

;;; Original color palette
;;; (active     "#007ACC")
;;; (inactive   "#E0E0E0")
;;; (selection  "#BFDBFE")
;;; (ignored    "#AAAAAA")
;;; (blue       "#325CC0")
;;; (green      "#448C27")
;;; (red        "#AA3731")
;;; (megenta    "#7A3E9D")
;;; (grey       "#777777")
;;; (orange     "#FFBC5D")
;;; (yellow     "#FFFABC")
;;; (fg         "#000000")
;;; (bg         "#F7F7F7")

;;; Optional choices:
;;; (rg "#024347")
;;; (st "#4b9e6b")
;;; (blue "#169EDD")
;;; Code:

(deftheme alabaster
  "Alabaster theme for Emacs.")

(defvar theme-header-scale '(1.5 1.2 1.1 1.0 1.0 1.0 1.0)
  "Scales for headers.")

(let (;; original alabaster color palette
      (active     "#007ACC")
      (inactive   "#E0E0E0")
      (selection  "#BFDBFE")
      (ignored    "#AAAAAA")
      (blue       "#325CC0")            ; identifiers
      (green      "#448C27")            ; string
      (red        "#AA3731")            ; error, comment
      (magenta    "#7A3E9D")            ; static: number, constants
      (grey       "#777777")
      (orange     "#FFBC5D")            ; highlight
      (yellow     "#FFFABC")
      (fg         "#000000")
      (bg         "#F7F7F7")

      ;; lighter variantions of the above, prefiex with `l'
      (lblue      "#DBF1FF")            ; secondary selection, session background
      (lgree      "#DBECB6")            ; git added
      (ad         "#B0D9A0")            ; git added highlit
      (lred       "#FFE0E0")            ; git removed
      (rm         "#EBB9BC")            ; git removed highlight
      (lmagenta   "#F9E0FF")
      (lfg        "#363636")                 ; dim version of bg
      (lgrey      "#A3A3A3")                 ; selection: lighter grey
      (cm         "#707070")
      (lh         "#0DA59B")
      (cur        "#363636")
      (pop        "#E8E8E8")
      (fn         "#325CC0")
      (tb         "#000000")
      (doc        "#2D97A1")                 ; docs: cyan
      (here       "#0D7680")                 ; shell heredoc: ft-gree
      (solg       "#1DD79B")                 ; flycheck-info: solana green
      (inf        "#AA9031")
      (hl         "#FFBC5D"))                ; highlight: orange

  (custom-theme-set-faces
   'alabaster
   `(default                       ((((type tty)))
                                    (((type graphic)) :background ,bg :foreground ,fg)))
   ;; Basics
   `(cursor                         ((t (:background ,cur))))
   `(region                         ((t (:background ,selection :extend nil))))
   `(hl-line                        ((t (:background ,lblue))))
   `(fringe                         ((t (:background ,bg))))
   ;; `(show-paren-match               ((t (:background ,hl :box (:line-width (-1 . -1) :style nil)))))
   `(show-paren-match               ((t (:foreground ,active :underline ,active))))
   `(highlight                      ((t (:background ,lblue :foreground ,bg))))
   `(button                         ((t (:box (:line-width (-1 . -1))))))
   `(vertical-border                ((t ())))
   ;; `(window-divider                 ((t (:foreground ,cm))))
   ;; `(window-divider-first-pixel     ((t (:foreground ,cm))))
   ;; `(window-divider-last-pixel      ((t (:foreground ,cm))))
   ;; `(line-number                    ((t (:foreground ,cm))))
   `(line-number-current-line       ((t (:foreground ,fg :background ,hl))))
   `(completions-common-part        ((t (:bold t))))
   `(minibuffer-prompt              ((t ())))
   `(lazy-highlight                 ((t (:foreground ,lh :underline t))))
   `(compilation-info               ((t ())))
   `(compilation-warning            ((t ())))
   `(completions-highlight          ((t ())))
   `(warning                        ((t ())))
   `(match                          ((t (:background ,selection))))
   `(secondary-selection            ((t (:background ,lblue :extend nil))))
   `(help-key-binding               ((t (:bold t))))
   `(shadow                         ((t (:foreground ,cm))))
   `(error                          ((t (:foreground ,red))))

   ;; ISearch
   `(isearch                        ((t (:background ,selection :foreground ,fg))))
   `(isearch-fail                   ((t (:background ,rm :foreground ,fg))))

   ;; Font Locks
   `(font-lock-comment-delimiter-face ((t (:foreground ,red))))
   `(font-lock-string-face            ((t (:foreground ,green))))
   `(font-lock-doc-face               ((t (:foreground ,doc))))
   `(font-lock-builtin-face           ((t ())))
   `(font-lock-type-face              ((t ())))
   `(font-lock-variable-name-face     ((t ())))
   `(font-lock-keyword-face           ((t ())))
   `(font-lock-constant-face          ((t (:foreground ,magenta))))
   `(font-lock-function-name-face     ((t (:foreground ,blue))))
   `(font-lock-warning-face           ((t ())))
   `(font-lock-preprocessor-face      ((t ())))
   `(font-lock-number-face            ((t (:foreground ,magenta))))
   `(highlight-numbers-number         ((t (:foreground ,magenta))))

   ;; shell
   `(sh-quoted-exec             ((t ())))
   `(sh-heredoc                 ((t (:foreground ,here))))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,cm :foreground ,bg))))
   `(mode-line-inactive             ((t (:background ,lgrey :foreground ,bg))))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Company
   `(company-tooltip-common            ((t ())))
   `(company-tooltip-common-selection  ((t (:bold t :foreground ,fg))))
   `(company-tooltip                   ((t (:background ,pop))))
   `(company-tooltip-search            ((t ())))
   `(company-tooltip-search-selection  ((t (:background ,lgrey))))
   `(company-tooltip-selection         ((t (:background ,lgrey))))
   `(company-tooltip-mouse             ((t (:background ,lgrey))))
   `(company-tooltip-preview           ((t (:background ,lgrey))))
   `(company-tooltip-annotation        ((t ())))
   ;; This nulls the scrollbar in effect
   `(company-tooltip-scrollbar-track   ((t (:background ,bg))))
   `(company-tooltip-scrollbar-thumb   ((t (:background ,bg))))
   `(company-template-field            ((t (:inherit yas-field-highlight-face))))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:underline t))))

   ;; Vertico
   `(vertico-current  ((t (:background ,lblue))))

   ;; Vundo
   `(vundo-highlight  ((t (:foreground ,hl))))

   ;; Meow
   `(meow-beacon-indicator          ((t (:bold t))))
   `(meow-keypad-indicator          ((t (:bold t))))
   `(meow-insert-indicator          ((t (:bold t))))
   `(meow-normal-indicator          ((t (:bold t))))
   `(meow-motion-indicator          ((t (:bold t))))
   `(meow-keypad-cursor             ((t (:background ,cur))))
   `(meow-insert-cursor             ((t (:background ,cur))))
   `(meow-normal-cursor             ((t (:background ,cur))))
   `(meow-motion-cursor             ((t (:background ,cur))))
   `(meow-unknown-cursor            ((t (:background ,cur))))
   `(meow-beacon-cursor             ((t (:background ,cur))))

   ;; Cider
   `(cider-result-overlay-face      ((t (:inverse-video t))))
   `(cider-repl-stderr-face         ((t ())))
   `(cider-repl-stdout-face         ((t (:foreground "gray60"))))
   `(cider-test-error-face          ((t (:foreground "yellow" :inverse-video t))))

   ;; Clojure
   `(clojure-character-face       ((t ())))
   `(clojure-keyword-face         ((t (:foreground ,magenta))))

   ;; Magit
   `(magit-branch-local                ((t (:foreground ,magenta))))
   `(magit-branch-remote               ((t (:foreground ,blue))))
   `(magit-header-line                 ((t ())))
   `(magit-head                        ((t ())))
   `(magit-tag                         ((t (:foreground ,cm))))
   `(magit-section-highlight           ((t (:background ,lblue))))
   `(magit-section-heading             ((t (:foreground ,blue))))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background ,lred))))
   `(magit-diff-removed-highlight      ((t (:background ,rm))))
   `(magit-diff-added                  ((t (:background ,lgree))))
   `(magit-diff-added-highlight        ((t (:background ,ad))))
   `(magit-diff-context-highlight      ((t (:background ,bg :foreground ,fg))))
   `(magit-diff-whitespace-warning     ((t (:foreground ,bg))))

   ;; SMerge
   ;; `(smerge-refined-added           ((t (:background "#253325"))))
   ;; `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,cm :background ,cm))))
   `(diff-hl-change                 ((t (:foreground ,hl :background ,hl))))
   `(diff-hl-delete                 ((t (:foreground ,fg :background ,fg))))
   `(diff-error                     ((t (:foreground ,red))))

   `(eshell-prompt                  ((t (:bold t))))

   ;; Term
   ;; `(term-color-blue                ((t (:foreground ,blue :background ,blue))))
   ;; `(term-color-green               ((t (:foreground ,green :background ,green))))
   ;; `(term-color-red                 ((t (:foreground ,red :background ,red))))
   ;;
   ;; ;; Popup
   ;; `(popup-tip-face                 ((t (:background ,bg+4 :foreground ,fg))))
   ;; `(popup-isearch-match            ((t (:background "#CFA300" :foreground "black"))))
   ;;
   ;; `(tooltip                        ((t ())))
   ;; `(dired-directory                ((t (:foreground ,light-purple))))
   ;; `(web-mode-html-attr-name-face   ((t ())))
   ;; `(web-mode-html-tag-face         ((t ())))
   ;;
   ;; Emacs Rime
   `(rime-preedit-face              ((t (:underline t))))
   `(rime-cursor-face               ((t (:inherit font-lock-constant-face))))
   `(rime-indicator-face            ((t ())))
   `(rime-indicator-dim-face        ((t ())))
   `(rime-candidate-num-face        ((t ())))
   `(rime-comment-face              ((t ())))
   `(rime-code-face                 ((t (:bold t))))
   `(rime-default-face              ((t ())))
   `(rime-highlight-candidate-face  ((t ())))

   ;;
   ;; ;; Web Mode
   `(web-mode-function-call-face    ((t ())))
   `(web-mode-function-name-face    ((t ())))
   `(web-mode-html-tag-bracket-face ((t (:inherit parenthesis))))
   `(web-mode-symbol-face           ((t ())))
   `(css-selector                   ((t ())))

   ;; Markdown
   `(markdown-header-face-1             ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(markdown-header-face-2             ((t (:bold t :height ,(nth 1 theme-header-scale)))))
   `(markdown-header-face-3             ((t (:bold t :height ,(nth 2 theme-header-scale)))))
   `(markdown-header-face-4             ((t (:bold t))))
   `(markdown-header-face-5             ((t ())))
   `(markdown-header-face-6             ((t ())))
   `(markdown-pre-face                  ((t (:inherit default :foreground ,cm))))
   `(markdown-url-face                  ((t (:foreground ,cm))))
   `(markdown-code-face                 ((t (:inherit default))))
   `(markdown-inline-code-face          ((t (:inherit default :foreground ,red))))
   `(markdown-highlighting-face         ((t (:background ,hl))))

   ;; Telega
   `(telega-entity-type-code        ((t ())))
   `(telega-msg-heading             ((t ())))
   `(telega-msg-self-title          ((t (:foreground ,blue))))
   `(telega-unmuted-count           ((t ())))

   ;; Org-mode
   `(org-document-title             ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(org-link                       ((t (:underline t))))
   `(org-document-title             ((t ())))
   `(org-code                       ((t (:inherit font-lock-constant-face))))
   `(org-level-1                    ((t (:foreground ,fg :bold t :height ,(nth 0 theme-header-scale)))))
   `(org-level-2                    ((t (:foreground ,fg))))
   `(org-level-3                    ((t (:foreground ,cm))))
   `(org-level-4                    ((t ())))
   `(org-level-5                    ((t ())))
   `(org-level-6                    ((t ())))
   `(org-level-7                    ((t ())))

   ;; Treemacs
   ;; `(treemacs-root-face             ((t (:inherit font-lock-function-name-face :height 1.4 :underline t))))
   `(fill-column-indicator          ((t (:foreground ,cm))))
   `(scroll-bar                     ((t (:foreground ,fg))))
   `(parenthesis                    ((t (:foreground ,cm))))
   `(eldoc-box-body                 ((t (:background ,pop :inherit default))))

   `(flycheck-warning               ((t (:underline (:style wave :color ,hl)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,inf)))))
   `(flycheck-error                 ((t (:underline (:style wave :color ,red)))))
   `(flycheck-error-list-info       ((t (:foreground ,bg :background ,green))))
   `(flymake-warning                ((t (:underline (:style wave :color ,hl)))))
   `(flymake-error                  ((t (:underline (:style wave :color ,red)))))
   `(flymake-note                   ((t (:underline (:style wave :color ,cm)))))

   `(wgrep-face                     ((t (:underline ,magenta))))

   `(anzu-mode-line                 ((t (:foreground ,bg :background ,fg))))
   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))
   `(lsp-modeline-code-actions-face ((t (:foreground ,bg))))
   `(lsp-modeline-code-actions-preferred-face ((t (:foreground ,hl))))


   `(tab-bar                        ((t (:background ,fg :foreground ,bg))))
   `(tab-bar-tab                    ((t (:inverse-video t :bold t))))
   `(tab-bar-tab-inactive           ((t ())))

   `(ansi-color-blue                ((t (:foreground ,active))))
   `(ansi-color-bright-blue         ((t (:foreground ,selection))))
   `(yascroll:thumb-fringe          ((t (:foreground ,cm :background ,cm))))
   `(yascroll:thumb-text-area       ((t (:foreground ,cm :background ,cm))))
   `(yas-field-highlight-face       ((t (:foreground ,fg :background ,lblue))))

   `(embark-keybinding              ((t (:inherit font-lock-constant-face))))

   ;; Treesitter
   `(tree-sitter-hl-face:type       ((t ())))
   `(tree-sitter-hl-face:type.parameter ((t ())))
   `(tree-sitter-hl-face:type.argument ((t ())))
   `(tree-sitter-hl-face:type.builtin ((t ())))
   `(tree-sitter-hl-face:type.super ((t ())))
   `(tree-sitter-hl-face:constructor ((t ())))
   `(tree-sitter-hl-face:variable ((t ())))
   `(tree-sitter-hl-face:variable.parameter ((t ())))
   `(tree-sitter-hl-face:variable.builtin ((t ())))
   `(tree-sitter-hl-face:variable.special ((t ())))
   `(tree-sitter-hl-face:property ((t ())))
   `(tree-sitter-hl-face:property.definition ((t ())))
   `(tree-sitter-hl-face:comment ((t (:foreground ,red))))
   ;;
   `(tree-sitter-hl-face:doc ((t (:foreground ,doc))))
   `(tree-sitter-hl-face:string ((t (:foreground ,green))))
   ;;
   `(tree-sitter-hl-face:string.special ((t (:foreground ,green))))
   ;;
   `(tree-sitter-hl-face:escape ((t ())))
   `(tree-sitter-hl-face:embedded ((t ())))
   ;;
   `(tree-sitter-hl-face:keyword ((t ())))
   ;;
   `(tree-sitter-hl-face:function ((t (:foreground ,blue))))
   `(tree-sitter-hl-face:function.builtin ((t ())))
   `(tree-sitter-hl-face:function.call ((t ())))
   `(tree-sitter-hl-face:function.macro ((t ())))
   `(tree-sitter-hl-face:function.method ((t ())))
   `(tree-sitter-hl-face:function.method.call ((t ())))
   `(tree-sitter-hl-face:function.special ((t ())))

   `(tree-sitter-hl-face:method ((t ())))
   `(tree-sitter-hl-face:method.call ((t ())))
   `(tree-sitter-hl-face:operator ((t ())))
   `(tree-sitter-hl-face:punctuation ((t ())))
   `(tree-sitter-hl-face:punctuation.bracket ((t (:foreground ,cm))))
   `(tree-sitter-hl-face:punctuation.delimiter ((t ())))
   `(tree-sitter-hl-face:punctuation.special ((t ())))
   ;; dim
   `(tree-sitter-hl-face:label ((t ())))
   `(tree-sitter-hl-face:constant ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,magenta))))
   ;;
   `(tree-sitter-hl-face:number ((t (:foreground ,magenta))))
   `(tree-sitter-hl-face:tag ((t ())))
   `(tree-sitter-hl-face:attribute ((t ())))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'alabaster)

;;; alabaster-theme.el ends here
