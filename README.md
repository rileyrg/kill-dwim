
# Table of Contents

-   [Introduction](#org038a8b7)
-   [Installation](#org6a80087)
    -   [use-package](#orgd717e4d)
    -   [customisation](#org75d31c1)
-   [rgr-kill-dwim.el](#org03c9b79)



<a id="org038a8b7"></a>

# Introduction

Package  [rgr-kill-dwim](./rgr-kill-dwim.el) uses thing-at-point "things" to provide a more convenient "do what I mean" "kill/copy" of text at point.


<a id="org6a80087"></a>

# Installation


<a id="orgd717e4d"></a>

## use-package

    (use-package rgr-kill-dwim
      :straight (rgr-kill-dwim :type git :host github :repo "rileyrg/rgr-kill-dwim" )
      :bind
      ("M-w" . rgr/kill-dwim))


<a id="org75d31c1"></a>

## customisation

See

    (defcustom rgr/kill-dwim-tap-symbols '(url filename email symbol sexp word line)
    "`thing-at-point' candidates for killing")


<a id="org03c9b79"></a>

# rgr-kill-dwim.el

link: [rgr-kill-dwim.el](rgr-kill-dwim.el)

