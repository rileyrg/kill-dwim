
# Table of Contents

-   [Introduction](#orgb82ca04)
-   [Installation](#orgaed88b7)
    -   [use-package](#org55777da)
    -   [customisation](#org6d048c0)
-   [rgr-kill-dwim.el](#org3169e77)



<a id="orgb82ca04"></a>

# Introduction

Package  [rgr-kill-dwim](./rgr-kill-dwim.el) uses thing-at-point "things" to provide a more convenient "do what I mean" "kill/copy" of text at point.


<a id="orgaed88b7"></a>

# Installation


<a id="org55777da"></a>

## use-package

    (use-package rgr-kill-dwim
      :straight (rgr-kill-dwim :type git :host github :repo "rileyrg/rgr-kill-dwim" )
      :bind
      ("M-w" . rgr/kill-dwim))


<a id="org6d048c0"></a>

## customisation

See

    (defcustom rgr/kill-dwim-tap-symbols '(url filename email symbol sexp word line)
    "`thing-at-point' candidates for killing")


<a id="org3169e77"></a>

# rgr-kill-dwim.el

link: [rgr-kill-dwim.el](rgr-kill-dwim.el)

