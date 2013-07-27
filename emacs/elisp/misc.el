(defun indent-buffer ()
  "Indent entire buffer using indent-region"
  (interactive)
  (indent-region (point-min) (point-max)))
(defun quote-region (start end &optional quote-char)
  "quote the region defined by start and end using quote-char"
  (interactive "r")
(let ((quote (if (null quote-char) ?\" quote-char))
      (start (min start end))
      (end (max start end)))
  (if (or (use-region-p)
          (not (equal start end)))
    (save-excursion
      (insert quote)
      (goto-char (1+ end))
      (insert quote)))))
(defun make-scratch (mode &optional name switch)
"create a scratch buffer with major mode mode,
if optional argument name is given the buffer will be named name
otherwise the buffer will be named *modename-scratch*, where modename is
the name of mode with any -mode suffix removed"
  (interactive "amode:\ni\np")
  (let ((name 
         (if (null name) 
             (replace-regexp-in-string "-?mode" ""
                                       (format "*%s-scratch*" mode))
           name)))
    (with-current-buffer (generate-new-buffer name)
      (funcall mode))
  (if (not (null switch))
      (switch-to-buffer name))))
(defun find-files (files)
"open multiple files at once, flatten nested lists by one level
 if need be (kludge to make this work in eshell"
  (dolist (i files) 
    (if (listp i)
        (dolist (j i)
          (find-file j))
      (find-file i))))
(defmacro as-command (fun &rest args)
"return a fun as a command to be called interactively
mainly used to call a non interactive elisp function interactively

function is called with arguments args, interactive spec is always nil"
(if (commandp fun)
    'fun
  `(lambda () (interactive) (,fun ,@args))))

