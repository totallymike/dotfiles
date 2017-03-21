(require 'org)
(require 'org-element)
(require 'ob)
(require 'ob-tangle)

(defvar script-funcs-src (concat (file-name-directory (buffer-file-name))
                                 "elisp/shell-script-funcs.el"))
(require 'shell-script-funcs script-funcs-src)

(defconst dot-files-src (if load-file-name
                            (file-name-directory load-file-name)
                          (file-name-directory (buffer-file-name))))

(defconst mw/emacs-directory (concat (getenv "HOME") "/.emacs.d/"))

(defconst dest-elisp-dir (mw/get-path "${mw/emacs-directory}/elisp"))

(defun mw/build-dot-files ()
  "Compile and deploy 'init files' in this directory."
  (interactive)

  ;; Initially create some of the destination directories
  (mw/mkdir "${mw/emacs-directory}/elisp")

  (mw/tangle-files "${dot-files-src}/*.org")

  ;; Some elisp files are just symlinked instead of tangled.
  (mw/mksymlinks "${dot-files-src}/elisp/*.el"
		 "${mw/emacs-directory}/elisp")

  ;; Just link the entire directory instead of copying the snippets:
  (mw/mksymlink "${dot-files-src}/snippets"
		"${mw/emacs-directory}/snippets")

  ;; Link the entire directory instead of copying the snippets:
  (mw/mksymlink "${dot-files-src}/templates"
		"${mw/emacs-directory}/templates")

  ;; Some elisp files are just symlinked instead of tangled...
  (mw/mksymlinks "${dot-files-src}/bin/[a-z]*"
		 "${HOME}/bin")

  (message "Finished building dot-files- Resetting Emacs.")
  (require 'init-main (mw/get-path "${user-emacs-directory}elisp/init-main.el")))

(defun mw/tangle-file (file)
  "Given an 'org-mode' FILE, tangle the source code."
  (interactive "fOrg File: ")
  (find-file file)   ;;  (expand-file-name file \"$DIR\")
  (org-babel-tangle)
  (kill-buffer))


(defun mw/tangle-files (path)
  "Given a directory, PATH, of 'org-mode' files, tangle source code out of all literate programming files."
  (interactive "D")
  (mapc 'mw/tangle-file (mw/get-files path)))


(defun mw/get-dot-files ()
  "Pull and build latest from the Github repository.  Load the resulting Lisp code."
  (interactive)
  (let ((git-results
         (shell-command (concat "cd " dot-files-src "; git pull"))))
    (if (not (= git-results 0))
        (message "Can't pull the goodness. Pull from git by hand.")
      (load-file (concat dot-files-src "/emacs.d/shell-script-funcs.el"))
      (load-file (concat dot-files-src "/build.el"))
      (require 'init-main))))

(mw/build-dot-files)  ;; Do it

(provide 'dot-files)
