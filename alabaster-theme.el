;;; alabaster-theme.el --- Alabaster theme for Emacs.
;;; Commentary:
;;; Version: 0.1.0
;;; Optional choices:
;;; (rg "#024347")
;;; (st "#4b9e6b")
;;; Code:

(deftheme alabaster
  "Alabaster theme for Emacs.")

(defvar theme-header-scale '(1.0 1.0 1.0 1.0 1.0 1.0 1.0)
  "Scales for headers.")

(let ((active     "#007ACC")
      (sel "#BFDBFE")                   ; selection: lighter cyan
      (ss  "#84AEE3")
      (fg  "#000")
      (bg  "#F7F7F7")

      (cm "#707070")
      (lh "#0DA59B")
      (cur "#363636")
      (pop "#e8e8e8")

      (blue "#325CC0")                  ; defs: blue
      (fn   "#325CC0")
      (tb   "#000000")

      (green "#448C27")
      (str   "#448C27")                 ; string: green
      (doc   "#2D97A1")                 ; docs: cyan
      (err   "#AA3731")
      (cmt   "#AA3731")
      (inf   "#AA9031")

      (st    "#7A3E9D")                 ; static: magenta
      (num   "#7A3E9D")                 ; static: magenta
      (grey  "#777")
      (hl    "#FFBC5D"))                ; highlight: orange

  (custom-theme-set-faces
   'alabaster
   `(default                       ((((type tty)))
                                    (((type graphic)) :background ,bg :foreground ,fg)))
   ;; Basics
   `(cursor                         ((t (:background ,cur))))
   `(region                         ((t (:background ,sel :extend nil))))
   `(hl-line                        ((t (:background ,hl))))
   `(fringe                         ((t (:background ,bg))))
   `(show-paren-match               ((t (:background ,hl :box (:line-width (-1 . -1) :style nil)))))
   `(highlight                      ((t (:inverse-video t))))
   `(button                         ((t (:box (:line-width (-1 . -1))))))
   `(vertical-border                ((t ())))
   ;; `(window-divider                 ((t (:foreground ,cm))))
   ;; `(window-divider-first-pixel     ((t (:foreground ,cm))))
   ;; `(window-divider-last-pixel      ((t (:foreground ,cm))))
   ;; `(line-number                    ((t (:foreground ,cm))))
   `(line-number-current-line       ((t (:foreground ,fn :background ,hl))))
   `(completions-common-part        ((t ())))
   `(minibuffer-prompt              ((t ())))
   `(lazy-highlight                 ((t (:foreground ,lh :underline t))))
   `(compilation-info               ((t ())))
   `(compilation-warning            ((t ())))
   `(warning                        ((t ())))
   `(match                          ((t (:inverse-video t))))
   `(secondary-selection            ((t (:background ,ss :extend nil))))
   `(help-key-binding               ((t (:bold t))))
   `(shadow                         ((t (:foreground ,cm))))

   ;; ISearch
   `(isearch                        ((t (:inverse-video t))))
   `(isearch-fail                   ((t (:inverse-video t))))

   ;; Font Locks
   `(font-lock-comment-face         ((t (:foreground ,cmt))))
   `(font-lock-comment-delimiter-face  ((t (:foreground ,cmt))))
   `(font-lock-string-face          ((t (:foreground ,str))))
   `(font-lock-doc-face             ((t (:foreground ,doc))))
   `(font-lock-builtin-face         ((t ())))
   `(font-lock-type-face            ((t ())))
   `(font-lock-variable-name-face   ((t ())))
   `(font-lock-keyword-face         ((t ())))
   `(font-lock-constant-face        ((t (:foreground ,st))))
   `(font-lock-function-name-face   ((t (:foreground ,fn))))
   `(font-lock-warning-face         ((t ())))
   `(font-lock-preprocessor-face    ((t ())))
   `(font-lock-number-face          ((t (:foreground ,st))))
   `(error                          ((t (:background "red" :foreground ,fn))))

   `(highlight-numbers-number       ((t (:foreground ,num))))

   ;; shell
   `(sh-quoted-exec                 ((t ())))

   ;; IMenu
   `(imenu-list-entry-face-0          ((t ())))
   `(imenu-list-entry-subalist-face-0 ((t (:bold t))))

   ;; Mode Line
   `(tab-line                       ((t ())))
   `(mode-line                      ((t (:background ,fg :foreground ,bg))))
   `(mode-line-inactive             ((t (:background ,cm :foreground ,hl))))
   `(header-line                    ((t ())))
   `(header-line-inactive           ((t ())))

   ;; Company
   `(company-tooltip-common         ((t ())))
   `(company-tooltip-common-selection ((t (:bold t :foreground ,fg))))
   `(company-tooltip                ((t (:background ,pop))))
   `(company-tooltip-search         ((t ())))
   `(company-tooltip-selection      ((t (:inverse-video t))))
   `(company-tooltip-annotation     ((t ())))
   ;; `(company-scrollbar-bg           ((t (:background ,cm))))
   ;; `(company-scrollbar-fg           ((t (:background ,fg))))
   `(company-tooltip-scrollbar-track   ((t (:background ,cm))))
   `(company-tooltip-scrollbar-thumb   ((t (:background ,fg))))
   `(company-template-field         ((t (:inherit yas-field-highlight-face))))

   ;; Yasnippet
   `(yas-field-highlight-face       ((t (:underline t))))

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
   `(clojure-keyword-face         ((t (:foreground ,st))))
   `(clojure-keyword-face         ((t (:foreground ,st))))

   ;; Magit
   `(magit-branch-local                ((t (:foreground ,st))))
   `(magit-branch-remote               ((t (:foreground ,fn))))
   `(magit-header-line                 ((t ())))
   `(magit-head                        ((t ())))
   `(magit-section-highlight           ((t (:background ,hl))))
   `(magit-section-heading             ((t ())))
   `(magit-section-selection           ((t ())))
   `(magit-diff-removed                ((t (:background "#311"))))
   `(magit-diff-removed-highlight      ((t (:background "#311"))))
   `(magit-diff-added                  ((t (:background "#131"))))
   `(magit-diff-added-highlight        ((t (:background "#131"))))
   `(magit-diff-context-highlight      ((t (:background ,hl :foreground ,fg))))

   ;; ;; SMerge
   ;; `(smerge-refined-added           ((t (:background "#253325"))))
   ;; `(smerge-lower                   ((t (:background "#173017"))))
   ;;
   ;; Diff-hl
   `(diff-hl-insert                 ((t (:foreground ,cm :background ,cm))))
   `(diff-hl-change                 ((t (:foreground ,hl :background ,hl))))
   `(diff-hl-delete                 ((t (:foreground ,fg :background ,fg))))

   `(eshell-prompt                  ((t (:bold t))))
   ;;
   ;; ;; Term
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
   ;;
   ;; Markdown
   `(markdown-header-face-1         ((t (:underline t :height ,(nth 0 theme-header-scale)))))
   `(markdown-header-face-2         ((t (:underline t :height ,(nth 1 theme-header-scale)))))
   `(markdown-header-face-3         ((t (:underline t :height ,(nth 2 theme-header-scale)))))
   `(markdown-header-face-4         ((t (:underline t :height ,(nth 3 theme-header-scale)))))
   `(markdown-header-face-5         ((t (:underline t :height ,(nth 4 theme-header-scale)))))
   `(markdown-header-face-6         ((t (:underline t :height ,(nth 5 theme-header-scale)))))
   `(markdown-header-face-7         ((t (:underline t :height ,(nth 6 theme-header-scale)))))
   ;;
   ;; ;; Telega
   `(telega-entity-type-code        ((t ())))
   `(telega-msg-heading             ((t ())))
   `(telega-msg-self-title          ((t (:foreground ,fn))))
   `(telega-unmuted-count           ((t ())))
   ;;
   ;; ;; Org-mode
   `(org-document-title             ((t (:bold t :height ,(nth 0 theme-header-scale)))))
   `(org-link                       ((t (:underline t))))
   `(org-document-title             ((t ())))
   `(org-code                       ((t (:inherit font-lock-constant-face))))
   `(org-level-1                    ((t (:inherit font-lock-string-face :height ,(nth 0 theme-header-scale)))))
   `(org-level-2                    ((t (:inherit font-lock-function-name-face :height ,(nth 1 theme-header-scale)))))
   `(org-level-3                    ((t (:inherit font-lock-keyword-face :height ,(nth 2 theme-header-scale)))))
   `(org-level-4                    ((t (:height ,(nth 3 theme-header-scale)))))
   `(org-level-5                    ((t (:height ,(nth 4 theme-header-scale)))))
   `(org-level-6                    ((t (:height ,(nth 5 theme-header-scale)))))
   `(org-level-7                    ((t (:height ,(nth 6 theme-header-scale)))))
   ;;
   ;; ;; Treemacs
   ;; `(treemacs-root-face             ((t (:inherit font-lock-function-name-face :height 1.4 :underline t))))
   `(fill-column-indicator          ((t (:foreground ,cm))))
   `(scroll-bar                     ((t (:foreground ,fg))))
   `(parenthesis                    ((t (:foreground ,cm))))
   `(eldoc-box-body                 ((t (:background ,pop :inherit variable-pitch))))

   `(flycheck-warning               ((t (:underline (:style wave :color ,cm)))))
   `(flycheck-info                  ((t (:underline (:style wave :color ,inf)))))
   `(flycheck-error                 ((t (:underline (:style wave :color ,st)))))
   `(flymake-warning                ((t (:underline (:style wave :color ,st)))))
   `(flymake-error                  ((t (:underline (:style wave :color ,st)))))
   `(flymake-note                   ((t (:underline (:style wave :color ,cm)))))

   `(wgrep-face                     ((t (:underline ,st))))

   `(anzu-mode-line                 ((t (:foreground ,bg :background ,fg))))
   `(erc-nick-default-face          ((t (:inherit font-lock-keyword-face))))
   `(erc-input-face                 ((t (:inherit font-lock-function-name-face))))
   `(erc-timestamp-face             ((t (:inherit font-lock-constant-face))))
   `(erc-notice-face                ((t (:inherit font-lock-comment-face))))

   `(tab-bar                        ((t (:background ,fg :foreground ,bg))))
   `(tab-bar-tab                    ((t (:inverse-video t :bold t))))
   `(tab-bar-tab-inactive           ((t ())))

   `(ansi-color-blue                ((t (:foreground "#169EDD"))))
   `(ansi-color-bright-blue         ((t (:foreground "#169EDD"))))
   `(yascroll:thumb-fringe          ((t (:foreground ,cm :background ,cm))))
   `(yascroll:thumb-text-area       ((t (:foreground ,cm :background ,cm))))

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
   `(tree-sitter-hl-face:comment ((t (:foreground ,cmt))))
   ;;
   `(tree-sitter-hl-face:doc ((t (:foreground ,doc))))
   `(tree-sitter-hl-face:string ((t (:foreground ,str))))
   ;;
   `(tree-sitter-hl-face:string.special ((t (:foreground ,str))))
   ;;
   `(tree-sitter-hl-face:escape ((t ())))
   `(tree-sitter-hl-face:embedded ((t ())))
   ;;
   `(tree-sitter-hl-face:keyword ((t ())))
   ;;
   `(tree-sitter-hl-face:function ((t (:foreground ,fn))))
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
   `(tree-sitter-hl-face:punctuation.bracket ((t ())))
   `(tree-sitter-hl-face:punctuation.delimiter ((t ())))
   `(tree-sitter-hl-face:punctuation.special ((t ())))
   ;; dim
   `(tree-sitter-hl-face:label ((t ())))
   `(tree-sitter-hl-face:constant ((t ())))
   `(tree-sitter-hl-face:constant.builtin ((t (:foreground ,st))))
   ;;
   `(tree-sitter-hl-face:number ((t (:foreground ,st))))
   `(tree-sitter-hl-face:tag ((t ())))
   `(tree-sitter-hl-face:attribute ((t ())))))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'alabaster)

;;; alabaster-theme.el ends here
