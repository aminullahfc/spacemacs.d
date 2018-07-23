;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; Copyright (C) 2016, 2017, 2018 by Deepu Mohan Puthrote

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (ansible :variables
              ansible-auto-encrypt-decrypt nil)
     auto-completion
     better-defaults
     clojure
     (colors :variables
             colors-colorize-identifiers t
             colors-enable-nyan-cat-progress-bar (display-graphic-p))
     command-log
     common-lisp
     confluence
     csv
     django
     dash
     deft
     docker
     elixir
     elm
     erlang
     emacs-lisp
     emoji
     games
     git
     github
     go
     haskell
     html
     ivy
     ipython-notebook
     imenu-list
     java
     javascript
     latex
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     (neotree :variables
              neo-theme (if (display-graphic-p) 'icons 'arrow)
              neo-vc-integration 'face 'char)
     nginx
     (org :variables
          org-enable-github-support t
          org-enable-reveal-js-support t
          org-projectile-per-project-filepath "TODOs.org"
          org-projectile-projects-file "~/Dropbox/org-mode/Projects.org")
     org-jira
     osx
     (python :variables
             python-enable-yapf-format-on-save t
             python-test-runner 'pytest
             python-auto-set-local-pyenv-version 'on-project-switch)
     racket
     (ranger :variables
             ranger-show-literal nil)
     react
     restclient
     ruby
     ruby-on-rails
     (scala :variables
            scala-auto-insert-asterisk-in-comments t
            scala-indent:use-javadoc-style t)
     scheme
     search-engine
     (shell :variables
            shell-default-height 30
            shell-default-shell 'multi-term
            shell-default-term-shell "/usr/local/bin/fish"
            shell-default-position 'bottom)
     shell-scripts
     slack
     spell-checking
     spotify
     sql
     swift
     syntax-checking
     (terraform :variables terraform-auto-format-on-save t)
     vagrant
     version-control
     vimscript
     vinegar
     xkcd
     yaml
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(all-the-icons
                                      atomic-chrome
                                      dracula-theme
                                      feature-mode
                                      gradle-mode
                                      groovy-mode
                                      helm-gitignore
                                      hexo
                                      langtool
                                      meghanada
                                      play-routes-mode
                                      prettier-js
                                      tabbar
                                      tabbar-ruler)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; File path pointing to emacs 27.1 executable compiled with support
   ;; for the portable dumper (this is currently the branch pdumper).
   ;; (default "emacs-27.0.50")
   dotspacemacs-emacs-pdumper-executable-file "emacs-27.0.50"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=~/.emacs.d/.cache/dumps/spacemacs.pdmp
   ;; (default spacemacs.pdmp)
   dotspacemacs-emacs-dumper-dump-file "spacemacs.pdmp"

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; If non-nil then Spacemacs will import your PATH and environment variables
   ;; from your default shell on startup. This is enabled by default for macOS
   ;; users and X11 users.
   dotspacemacs-import-env-vars-from-shell (and (display-graphic-p)
                                                (or (eq system-type 'darwin)
                                                    (eq system-type 'gnu/linux)
                                                    (eq window-system 'x)))

   ;; If nil then use the default shell is used to fetch the environment
   ;; variables. Set this variable to a different shell executable path to
   ;; import the environment variables from this shell. Note that
   ;; `file-shell-name' is preserved and always points to the default shell. For
   ;; instance to use your fish shell environment variables set this variable to
   ;; `/usr/local/bin/fish'.
   ;; (default nil)
   dotspacemacs-import-env-vars-shell-file-name "/usr/local/bin/fish"

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light
                         dracula)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
   ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
   ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
   ;; to create your own spaceline theme. Value can be a symbol or list with\
   ;; additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(spacemacs :separator arrow :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers
   '(:relative t
     :disabled-for-modes dired-mode
                         doc-view-mode
                         pdf-view-mode
                         text-mode
     :size-limit-kb 1000)

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server t

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "pt" "ag" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t)
 )

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  ;; https://github.com/purcell/exec-path-from-shell
  ;; (when (memq window-system '(mac ns x))
    ;; (exec-path-from-shell-initialize))

  (add-to-list 'exec-path "/usr/local/bin")

  ;; add melpa-stable to archives
  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '(ensime . "melpa-stable") package-pinned-packages)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

  ;; spell-checking use aspell and default to british language
  (setq ispell-program-name "aspell"
        ispell-dictionary "british")
)

(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included
in the dump."
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  (atomic-chrome-start-server)

  ;; M-3 is mapped to window 3, so map M-# to get £ sign GBP (pound sign)
  ;; (This is for Dvorak layout, UK layout may need to map # instead)
  (global-set-key (kbd "M-#") '(lambda() (interactive) (insert "£")))

  ;; defaults
  (setq-default
   ;; map escape to "jk"
   evil-escape-key-sequence "jk")

  (setq
   ;; javascript
   js2-basic-offset 2
   js-indent-level 2
   ;; langtool settings
   langtool-language-tool-jar "/usr/local/Cellar/languagetool/4.1/libexec/languagetool-commandline.jar"
   langtool-default-language "en-GB"
   ;; multi-term
   multi-term-scroll-show-maximum-output 't
   multi-term-scroll-to-bottom-on-output 'this
   ;; Set deft-directory to Dropbox so it is in sync
   deft-directory "~/Dropbox/org-mode/deft"
   ;; pytest fish configuration
   pytest-cmd-format-string "cd %s; and %s %s %s")

  (with-eval-after-load 'org
    ;; here goes your Org config :)
    ;; to avoid conflicts with the org shipped with emacs
    ;; ....
    (setq-default org-display-custom-times t)
    (setq org-directory "~/Dropbox/org-mode"
          org-time-stamp-custom-formats '("<%d/%m/%Y %a>" . "<%d/%m/%Y %a %H:%M>")
          ;; Override this on each org-file by adding
          ;; #+REVEAL_ROOT: http://cdn.jsdelivr.net/reveal.js/3.1.0/
          org-reveal-root "https://cdn.jsdelivr.net/npm/reveal.js/")

    ;; disable emoji mode for org-jira-mode
    (add-hook 'org-jira-mode-hook
              (lambda ()
                (message "org jira mode hook called")
                (emoji-cheat-sheet-plus-display-mode -1)))

    ;; org-mode hook
    (add-hook 'org-mode-hook
              (lambda()
                (message "org mode hook called")
                (emoji-cheat-sheet-plus-display-mode -1)
                (add-to-list 'org-structure-template-alist '("t" "#+TITLE: ?") t)))

    ;; active Babel languages
    (org-babel-do-load-languages
     'org-babel-load-languages
     '(
       (emacs-lisp . t)
       (http . t)
       (lisp . t)
       (python . t)
       (restclient . t)
       (scala . t)
       (shell . t)
       (sqlite . t)
       ))
    );; with-eval-after-load 'org

  ;; Add projectile TODOs.org files to agenda
  (with-eval-after-load 'org-agenda
    (require 'org-projectile)
    (setq org-agenda-files (append '("~/Dropbox/org-mode/deft" "~/Dropbox/org-mode/org-jira")
                                   (org-projectile-todo-files)))
    (push (org-projectile-project-todo-entry) org-capture-templates))

  (with-eval-after-load 'org-jira
    (setq org-jira-working-dir "~/Dropbox/org-mode/org-jira"))

  (setq tabbar-ruler-global-tabbar t    ; get tabbar
        tabbar-ruler-global-ruler nil   ; get global ruler
        tabbar-ruler-popup-menu t       ; get popup menu.
        tabbar-ruler-popup-toolbar t    ; get popup toolbar
        tabbar-ruler-popup-scrollbar nil)  ; show scroll-bar on mouse-move
  (require 'tabbar)
  (require 'tabbar-ruler)
  (setq tabbar-buffer-groups-function 'tabbar-ruler-projectile-tabbar-buffer-groups)
  ;; (setq tabbar-buffer-groups-function 'tabbar-buffer-groups)
  ;; (tabbar-ruler-group-by-projectile-project)

  ;; ensime
  (setq
   ensime-sbt-command "/usr/local/bin/sbt"
   sbt:program-name "/usr/local/bin/sbt"
   ensime-startup-notification nil)

  ;; ;; ensime scala mode
  ;; (add-hook 'scala-mode-hook
  ;;           (lambda ()
  ;;             (add-hook 'after-save-hook 'ensime-sbt-do-compile)))

  (setq flycheck-scalastyle-jar "/usr/local/Cellar/scalastyle/0.8.0/libexec/scalastyle_2.11-0.8.0-batch.jar"
        flycheck-scalastylerc "/usr/local/etc/scalastyle_config.xml")

  (setq-default ensime-goto-test-config
    '(:test-class-names-fn ensime-goto-test--test-class-names
                           :test-class-suffixes ( "Test" "Spec" "Check" "Specification")
                           :impl-class-name-fn  ensime-goto-test--impl-class-name
                           :impl-to-test-dir-fn ensime-goto-test--impl-to-test-dir
                           :is-test-dir-fn      ensime-goto-test--is-test-dir
                           :test-template-fn    ensime-goto-test--test-template-scalatest-1))

  (add-hook 'java-mode-hook
            (lambda ()
              (meghanada-mode t)
              (gradle-mode t)
              (add-hook 'before-save-hook 'meghanada-code-beautify-before-save)))
  (add-hook 'groovy-mode-hook
            (lambda ()
              (gradle-mode t)))

  ;; web-mode
  (add-to-list 'auto-mode-alist '("\\.swig\\'" . web-mode))
  (setq web-mode-content-types-alist
        '(("jsx" . "\\.js[x]?\\'")))

  ;; prettier for .js and .jsx
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode)
  (defun enable-minor-mode (my-pair)
    "Enable minor mode if filename match the regexp.  MY-PAIR is a cons cell (regexp . minor-mode)."
    (if (buffer-file-name)
        (if (string-match (car my-pair) buffer-file-name)
            (funcall (cdr my-pair)))))
  (add-hook 'web-mode-hook #'(lambda ()
                               (enable-minor-mode
                                '("\\.jsx?\\'" . prettier-js-mode))))

  ;; Play routes
  (add-to-list 'auto-mode-alist '("\\.routes$" . play-routes-mode))

  (defun my/change-file-extension ()
      (interactive)
      (let* ((new-extension (read-from-minibuffer "Type the new extension including the dot (.): "))
             (new-file-name (concat (file-name-sans-extension buffer-file-name) new-extension))
             (filename (buffer-file-name)))
        (rename-file filename new-file-name t)
        (rename-buffer (concat (file-name-sans-extension (buffer-name)) new-extension))
        (set-visited-file-name new-file-name)
        (set-buffer-modified-p nil)
        (message (concat "File renamed to " new-file-name))))

  ;; hexo
  (defun my/hexo-blog ()
    "open my hexo blog"
    (interactive)
    (hexo "~/Workspace/Personal/tech"))

  (setq hexo-posix-compatible-shell-file-path "/bin/bash")

  ;; projectile open README file
  (defun my/projectile-open-readme ()
    "open README.md file in the current project root"
    (interactive)
    (find-file (concat (projectile-project-root) "README.md")))

  (defun my/projectile-open-readme-org ()
    "open README.org file in the current project root"
    (interactive)
    (find-file (concat (projectile-project-root) "README.org")))

  (spacemacs/declare-prefix "o" "user")
  (spacemacs/declare-prefix "op" "projectile")
  (spacemacs/declare-prefix "opr" "README")
  (spacemacs/set-leader-keys
    "opro" 'my/projectile-open-readme-org
    "oprm" 'my/projectile-open-readme)

  (spacemacs/declare-prefix "of" "file")
  (spacemacs/set-leader-keys "ofx" 'my/change-file-extension)
  (spacemacs/set-leader-keys "oh" 'my/hexo-blog)

  ;; display time mode
  (display-time-mode t)

  ;; load local.el file
  (load "~/.spacemacs.d/local")
)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.(defun dotspacemacs/emacs-custom-settings ()
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (auctex-latexmk yasnippet-snippets yapfify yaml-mode xterm-color xkcd ws-butler winum which-key wgrep web-mode web-beautify volatile-highlights vmd-mode vimrc-mode vi-tilde-fringe vagrant-tramp vagrant uuidgen use-package unfill typit toc-org tagedit tabbar-ruler symon swift-mode sudoku string-inflection sql-indent spotify spaceline-all-the-icons smex smeargle slime-company slim-mode slack shell-pop scss-mode sayid sass-mode rvm ruby-tools ruby-test-mode ruby-refactor ruby-hash-syntax rubocop rspec-mode robe rjsx-mode reveal-in-osx-finder restart-emacs rbenv ranger rainbow-mode rainbow-identifiers rainbow-delimiters racket-mode pyvenv pytest pyenv-mode py-isort pug-mode projectile-rails prettier-js popwin pony-mode play-routes-mode pippel pipenv pip-requirements persp-mode password-generator paradox pacmacs ox-reveal ox-gfm overseer osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-mime org-jira org-download org-bullets org-brain open-junk-file ob-restclient ob-ipython ob-http ob-elixir noflet nginx-mode neotree nameless mwim mvn multi-term move-text mmm-mode minitest meghanada maven-test-mode markdown-toc magithub magit-svn magit-gitflow magit-gh-pulls lorem-ipsum livid-mode live-py-mode link-hint launchctl langtool json-navigator js2-refactor js-doc jinja2-mode ivy-yasnippet ivy-xref ivy-purpose ivy-hydra intero insert-shebang indent-guide importmagic impatient-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hexo helm-make haskell-snippets groovy-mode groovy-imports gradle-mode google-translate golden-ratio godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gnuplot gitignore-mode github-search github-clone gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md geiser fuzzy font-lock+ flyspell-correct-ivy flycheck-pos-tip flycheck-mix flycheck-haskell flycheck-elm flycheck-credo flycheck-bashate flx-ido fish-mode fill-column-indicator feature-mode fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eshell-z eshell-prompt-extras esh-help erlang ensime engine-mode emoji-cheat-sheet-plus emmet-mode elm-mode elisp-slime-nav ein editorconfig dumb-jump dracula-theme dockerfile-mode docker diminish diff-hl deft dash-at-point darcula-theme dante dactyl-mode cython-mode csv-mode counsel-projectile counsel-dash counsel-css confluence company-web company-terraform company-tern company-statistics company-shell company-restclient company-go company-ghci company-ghc company-emoji company-emacs-eclim company-cabal company-auctex company-ansible company-anaconda common-lisp-snippets command-log-mode column-enforce-mode color-theme-sanityinc-solarized color-identifiers-mode cmm-mode clojure-snippets clojure-cheatsheet clj-refactor clean-aindent-mode cider-eval-sexp-fu chruby centered-cursor-mode bundler browse-at-remote auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile atomic-chrome ansible-doc ansible alchemist aggressive-indent ace-window ace-link ac-ispell 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
