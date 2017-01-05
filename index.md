Emacs for OS X Modified is a distribution of GNU Emacs **25.1**
(released September 17, 2016) with the following additions:

-   [ESS](http://ess.r-project.org) 16.10;
-   [AUCTeX](http://www.gnu.org/software/auctex/) 11.89;
-   [org](http://orgmode.org/) 9.0.2;
-   [polymode](https://github.com/vitoshka/polymode) 0.0.0;
-   [markdown-mode](http://jblevins.org/projects/markdown-mode/) 0.0.0;
-   [`exec-path-from-shell.el`](https://github.com/purcell/exec-path-from-shell)
    v0.0.0 to import the user's environment (by default `PATH`, `MANPATH` and
    `LANG`) at Emacs startup;
-   [`psvn.el`](http://svn.apache.org/viewvc/subversion/trunk/contrib/client-side/emacs/)
    r0.0.0, an interface for the version control system
    [Subversion](http://subversion.tigris.org) modified to include
    Andre Colomb's and Koji Nakamaru's
    [combined patches](http://mail-archives.apache.org/mod_mbox//subversion-dev/201208.mbox/raw/%3c503B958F.6010906@schickhardt.org%3e/1/4)
    to support Subversion 1.7;
-   [`framepop.el`](http://bazaar.launchpad.net/~vcs-imports/emacs-goodies-el/trunk/view/head:/elisp/emacs-goodies-el/framepop.el)
    to open temporary buffers in a separate frame;
-   [`default.el`]({{ site.github.repository_url }}/tags/v25.1-1-modified-3/default.el)
    and
    [`site-start.el`]({{ site.github.repository_url }}/tags/v25.1-1-modified-3/site-start.el),
    configuration files to make everything work.

This distribution is based on the latest stable release of GNU Emacs
compiled by David Caldwell and distributed on [Emacs for Mac
OS X](http://emacsformacosx.com)

System requirements
-------------------

macOS 10.4 or later

Installation
------------

Open the disk image and copy Emacs in the `Applications` folder or any
other folder.

Characteristics
---------------

This distribution of Emacs is based on the NeXTstep port part of the
official sources of GNU Emacs. Other than the additions mentioned above
and the minor configurations found in the `site-start.el` file, this is
a stock distribution of Emacs. Users of Emacs on other platforms will
appreciate the similar look and feel of the application.

Those looking for a more Mac-like version of Emacs should consider
[Aquamacs](http://aquamacs.org "Aquamacs"). I used Aquamacs myself for
two years, but I got tired of disabling the newer “features” in each
release of the application. For me Aquamacs insists too much on opening
new frames and on playing with fonts. Moreover, ESS is not kept up to
date on a regular basis.

For more information of the various options to run Emacs on OS X, see
the [Emacs
wiki](http://www.emacswiki.org/emacs/EmacsForMacOS "Emacs Wiki").

### Also available

[Windows version]({{ site.github.owner_url }}/emacs-modified-windows/ "Emacs for Windows Modified")
