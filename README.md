
# Table of Contents

-   [Introduction](#orgf2d30e2)
-   [Installation](#org38ff293)
    -   [use-package](#orgd0888a5)
    -   [customisation](#org4afd9ac)
-   [kill-dwim.el](#orgf3188a5)



<a id="orgf2d30e2"></a>

# Introduction

Package  [kill-dwim](./rgr-kill-dwim.el) uses thing-at-point "things" to provide a more convenient "do what I mean" "kill/copy" of text at point.


<a id="org38ff293"></a>

# Installation


<a id="orgd0888a5"></a>

## use-package

    (use-package kill-dwim
      :straight (kill-dwim :type git :host github :repo "rileyrg/kill-dwim" )
      :bind
      ("M-w" . kill-dwim))


<a id="org4afd9ac"></a>

## customisation

See

    (defcustom kill-dwim-tap-symbols '(url filename email symbol sexp word line)
    "`thing-at-point' candidates for killing")


<a id="orgf3188a5"></a>

# kill-dwim.el

link: [kill-dwim.el](rgr-kill-dwim.el)

