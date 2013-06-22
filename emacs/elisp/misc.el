(defun indent-buffer ()
  "Indent entire buffer using indent-region"
  (interactive)
  (indent-region (point-min) (point-max)))
