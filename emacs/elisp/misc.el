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



