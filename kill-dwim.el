;;; kill-dwim.el --- A minor-mode display docstrings for the symbol at point
;;
;; maintained in kill-dwim.org
;;
;; Copyright (C) 2010-2024 rileyrg
;;
;; Author: rileyrg <rileyrg@gmx.de>
;; Created: 22 April 2021
;; Keywords: internal lisp docs help maint tools
;; Version : 1.1
;; Package-Requires: ((emacs "25.1")
;; Optional :
;; URL: git@github.com/rileyrg/kill-dwim.git
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;;

;;; commentary:
;;
;; bind a key to kill-dwim
;;
;; Usage example:

;;       (use-package kill-dwim
;;       :straight (kill-dwim :type git :host github :repo "rileyrg/kill-dwim" )
;;       :bind
;;       ("M-w" . kill-dwim))
;;
;; customization:
;;   see `kill-dwim-tap-symbols'
;;
;;; code:
(use-package emacs
  :init

  (add-to-list  'thing-at-point-provider-alist '(tap-kdwim . tap-kill-dwim))

  :config
  (defcustom kill-dwim-tap-symbols '(url filename email symbol sexp word line)
    "`thing-at-point' candidates for killing")

  (defun tap-kill-dwim()
    "loop through  `thing-at-point' symbols in `kill-dwim-tap-symbols' and return first hit"
    (catch 'found
      (mapcar (lambda(x)
                (let ((v (thing-at-point x)))
                  (when v (throw 'found v)))) kill-dwim-tap-symbols)))

  (defun kill-dwim ()
    "work out what to pick up from point and stick in the kill ring. region has priority."
    (interactive)
    (if (use-region-p)
        (copy-region-as-kill (mark) (point))
      (let ((s (thing-at-point 'tap-kdwim)))
        (if current-prefix-arg
            (setq s (read-string "text:" s)))
        (when s
          (kill-new s))))
    (message "%s" (current-kill 0 t))))

(provide 'kill-dwim)
;;; kill-dwim.el ends here
