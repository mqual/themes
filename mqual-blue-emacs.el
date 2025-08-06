;;; mqual-blue-theme.el --- Blue theme for Emacs

;; Copyright (C) 2025

;; Author: Generated from Vim blue colorscheme
;; Keywords: faces
;; Version: 1.0

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Blue theme for Emacs, ported from Vim's blue colorscheme.
;; Features a dark blue background with gold foreground text.

;;; Code:

(deftheme mqual-blue
  "Blue theme - dark blue background with vibrant syntax highlighting")

(let ((class '((class color) (min-colors 256)))
      ;; Color palette
      (bg-main "#000087")           ; Dark blue background
      (fg-main "#ffd700")           ; Gold foreground
      (bg-dim "#005faf")            ; Lighter blue
      (bg-alt "#008787")            ; Dark cyan
      (fg-alt "#5fffff")            ; Cyan
      (fg-dim "#bcbcbc")            ; Gray
      (red "#ff7f50")               ; Coral
      (green "#00ff00")             ; Bright green
      (yellow "#ffd700")            ; Gold
      (blue "#5c5cff")              ; Bright blue
      (magenta "#d787d7")           ; Light magenta
      (cyan "#5fffff")              ; Bright cyan
      (orange "#ffa500")            ; Orange
      (comment "#878787")           ; Gray comment
      (cursor "#00ff00")            ; Bright green cursor
      (selection "#008787")         ; Dark cyan selection
      (match "#d787d7")             ; Magenta match
      (diff-add "#5f875f")          ; Dark green
      (diff-changed "#5f87af")      ; Blue
      (diff-removed "#af5faf")      ; Magenta
      (warning "#d787d7")           ; Magenta
      (error "#ff7f50"))            ; Coral

  (custom-theme-set-faces
   'mqual-blue

   ;; Basic faces
   `(default ((,class (:background ,bg-main :foreground ,fg-main))))
   `(cursor ((,class (:background ,cursor))))
   `(region ((,class (:background ,selection :foreground "#ffffff"))))
   `(highlight ((,class (:background ,bg-dim))))
   `(secondary-selection ((,class (:background ,bg-alt))))
   `(trailing-whitespace ((,class (:background ,red))))
   `(escape-glyph ((,class (:foreground ,magenta))))
   `(homoglyph ((,class (:foreground ,magenta))))
   `(nobreak-space ((,class (:foreground ,cyan :underline t))))
   `(nobreak-hyphen ((,class (:foreground ,cyan :underline t))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,fg-dim))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,comment :weight bold))))
   `(font-lock-comment-face ((,class (:foreground ,comment :weight bold))))
   `(font-lock-constant-face ((,class (:foreground ,cyan))))
   `(font-lock-doc-face ((,class (:foreground ,comment :weight bold))))
   `(font-lock-function-name-face ((,class (:foreground ,fg-dim))))
   `(font-lock-keyword-face ((,class (:foreground "#ffffff"))))
   `(font-lock-negation-char-face ((,class (:foreground ,red))))
   `(font-lock-preprocessor-face ((,class (:foreground ,green))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,magenta))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,magenta))))
   `(font-lock-string-face ((,class (:foreground ,cyan))))
   `(font-lock-type-face ((,class (:foreground ,orange :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,fg-dim))))
   `(font-lock-warning-face ((,class (:foreground ,warning))))

   ;; Mode line
   `(mode-line ((,class (:background ,cyan :foreground ,bg-main))))
   `(mode-line-inactive ((,class (:background ,bg-alt :foreground ,bg-main))))
   `(mode-line-buffer-id ((,class (:weight bold))))
   `(mode-line-emphasis ((,class (:weight bold))))
   `(mode-line-highlight ((,class (:background ,bg-dim))))

   ;; Line numbers
   `(line-number ((,class (:foreground ,cyan))))
   `(line-number-current-line ((,class (:foreground ,yellow :background ,bg-dim :weight bold))))

   ;; Search and matching
   `(isearch ((,class (:background "#000000" :foreground ,yellow :inverse-video t))))
   `(isearch-fail ((,class (:background ,red :foreground "#ffffff"))))
   `(lazy-highlight ((,class (:background "#000000" :foreground ,yellow :inverse-video t))))
   `(match ((,class (:background ,match))))
   `(show-paren-match ((,class (:inverse-video t))))
   `(show-paren-mismatch ((,class (:background ,error :foreground "#ffffff"))))

   ;; Minibuffer
   `(minibuffer-prompt ((,class (:foreground ,green))))

   ;; Completions
   `(completions-annotations ((,class (:foreground ,comment))))
   `(completions-common-part ((,class (:foreground ,yellow))))
   `(completions-first-difference ((,class (:foreground ,magenta))))

   ;; Error and warning faces
   `(error ((,class (:foreground ,error :weight bold))))
   `(warning ((,class (:foreground ,warning :weight bold))))
   `(success ((,class (:foreground ,green :weight bold))))

   ;; Dired
   `(dired-directory ((,class (:foreground ,cyan))))
   `(dired-flagged ((,class (:foreground ,red))))
   `(dired-header ((,class (:foreground ,magenta))))
   `(dired-ignored ((,class (:foreground ,comment))))
   `(dired-mark ((,class (:foreground ,green))))
   `(dired-marked ((,class (:foreground ,yellow))))
   `(dired-perm-write ((,class (:foreground ,red))))
   `(dired-symlink ((,class (:foreground ,cyan))))
   `(dired-warning ((,class (:foreground ,warning))))

   ;; Org mode
   `(org-block ((,class (:background ,bg-dim))))
   `(org-block-begin-line ((,class (:foreground ,comment))))
   `(org-block-end-line ((,class (:foreground ,comment))))
   `(org-code ((,class (:foreground ,cyan))))
   `(org-date ((,class (:foreground ,blue))))
   `(org-done ((,class (:foreground ,green :weight bold))))
   `(org-headline-done ((,class (:foreground ,comment))))
   `(org-hide ((,class (:foreground ,bg-main))))
   `(org-level-1 ((,class (:foreground ,magenta :weight bold))))
   `(org-level-2 ((,class (:foreground ,cyan :weight bold))))
   `(org-level-3 ((,class (:foreground ,green :weight bold))))
   `(org-level-4 ((,class (:foreground ,yellow :weight bold))))
   `(org-level-5 ((,class (:foreground ,blue :weight bold))))
   `(org-level-6 ((,class (:foreground ,orange :weight bold))))
   `(org-level-7 ((,class (:foreground ,red :weight bold))))
   `(org-level-8 ((,class (:foreground ,fg-dim :weight bold))))
   `(org-link ((,class (:foreground ,cyan :underline t))))
   `(org-special-keyword ((,class (:foreground ,comment))))
   `(org-table ((,class (:foreground ,cyan))))
   `(org-tag ((,class (:foreground ,magenta))))
   `(org-todo ((,class (:foreground ,red :weight bold))))
   `(org-verbatim ((,class (:foreground ,cyan))))

   ;; Diff mode
   `(diff-added ((,class (:background ,diff-add :foreground "#ffffff"))))
   `(diff-changed ((,class (:background ,diff-changed :foreground "#ffffff"))))
   `(diff-removed ((,class (:background ,diff-removed :foreground "#ffffff"))))
   `(diff-refine-added ((,class (:background ,green :foreground "#000000"))))
   `(diff-refine-changed ((,class (:background ,blue :foreground "#000000"))))
   `(diff-refine-removed ((,class (:background ,red :foreground "#000000"))))
   `(diff-header ((,class (:background ,bg-dim))))
   `(diff-file-header ((,class (:background ,bg-alt :foreground "#ffffff" :weight bold))))

   ;; Company mode
   `(company-tooltip ((,class (:background ,bg-alt :foreground "#ffffff"))))
   `(company-tooltip-selection ((,class (:background "#ffffff" :foreground ,bg-alt))))
   `(company-tooltip-common ((,class (:foreground ,yellow))))
   `(company-tooltip-common-selection ((,class (:foreground ,error))))
   `(company-scrollbar-bg ((,class (:background ,bg-dim))))
   `(company-scrollbar-fg ((,class (:background "#ffffff"))))

   ;; Helm
   `(helm-source-header ((,class (:background ,bg-alt :foreground "#ffffff" :weight bold))))
   `(helm-selection ((,class (:background ,selection :foreground "#ffffff"))))
   `(helm-match ((,class (:foreground ,yellow))))
   `(helm-candidate-number ((,class (:foreground ,green))))

   ;; Ivy
   `(ivy-current-match ((,class (:background ,selection :foreground "#ffffff"))))
   `(ivy-minibuffer-match-face-1 ((,class (:foreground ,yellow))))
   `(ivy-minibuffer-match-face-2 ((,class (:foreground ,green))))
   `(ivy-minibuffer-match-face-3 ((,class (:foreground ,blue))))
   `(ivy-minibuffer-match-face-4 ((,class (:foreground ,magenta))))

   ;; Flycheck
   `(flycheck-error ((,class (:underline (:color ,error :style wave)))))
   `(flycheck-warning ((,class (:underline (:color ,warning :style wave)))))
   `(flycheck-info ((,class (:underline (:color ,cyan :style wave)))))

   ;; Magit
   `(magit-branch-local ((,class (:foreground ,cyan))))
   `(magit-branch-remote ((,class (:foreground ,green))))
   `(magit-diff-added ((,class (:background ,diff-add :foreground "#ffffff"))))
   `(magit-diff-added-highlight ((,class (:background ,diff-add :foreground "#ffffff"))))
   `(magit-diff-removed ((,class (:background ,diff-removed :foreground "#ffffff"))))
   `(magit-diff-removed-highlight ((,class (:background ,diff-removed :foreground "#ffffff"))))
   `(magit-diff-context ((,class (:foreground ,comment))))
   `(magit-diff-context-highlight ((,class (:background ,bg-dim :foreground ,comment))))
   `(magit-section-heading ((,class (:foreground ,magenta :weight bold))))
   `(magit-section-highlight ((,class (:background ,bg-dim))))

   ;; Terminal
   `(term-color-black ((,class (:background "#000000" :foreground "#000000"))))
   `(term-color-red ((,class (:background ,red :foreground ,red))))
   `(term-color-green ((,class (:background ,green :foreground ,green))))
   `(term-color-yellow ((,class (:background ,yellow :foreground ,yellow))))
   `(term-color-blue ((,class (:background ,blue :foreground ,blue))))
   `(term-color-magenta ((,class (:background ,magenta :foreground ,magenta))))
   `(term-color-cyan ((,class (:background ,cyan :foreground ,cyan))))
   `(term-color-white ((,class (:background "#ffffff" :foreground "#ffffff"))))))

(provide-theme 'mqual-blue)

;;; mqual-blue-theme.el ends here
