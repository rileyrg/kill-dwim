
# Table of Contents

-   [Introduction](#org6075e99)
-   [Installation](#org1b9eb39)
    -   [use-package](#org26ef13e)
    -   [customisation](#org114258d)
-   [kill-dwim.el](#org591f763)



<a id="org6075e99"></a>

# Introduction

Package  [kill-dwim](./rgr-kill-dwim.el) uses thing-at-point "things" to provide a more convenient "do what I mean" "kill/copy" of text at point.


<a id="org1b9eb39"></a>

# Installation


<a id="org26ef13e"></a>

## use-package

    (use-package kill-dwim
      :straight (kill-dwim :type git :host github :repo "rileyrg/kill-dwim" )
      :bind
      ("M-w" . kill-dwim))


<a id="org114258d"></a>

## customisation

See

    (defcustom kill-dwim-tap-symbols '(url filename email symbol sexp word line)
    "`thing-at-point' candidates for killing")


<a id="org591f763"></a>

# kill-dwim.el

link: [kill-dwim.el](rgr-kill-dwim.el)

