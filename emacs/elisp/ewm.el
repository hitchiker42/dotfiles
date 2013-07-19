;;window management functions
(defun ewm-split-quarters ()
"split current window into 4 equal sized windows, leaving the
top right window selected"
  (interactive)
  (let ((window (selected-window)))
  (split-window (split-window window nil 'left) nil 'below)
  (split-window window nil 'below)))
(defun ewm-split-ratio (ratio &optional window side)
"split window with ratio of new window and old window given by
a number from 0-1 where 1 would represent a new window of size 0
and 0 would represent a new window of the size of the old window"
;;Needs some work
(let ((size (round (* ratio 
                      (if (or (equal side 'left)
                              (equal side 'right))
                          (window-total-width window)
                        (window-total-height window))))))
  (split-window window size side)))
(defun ewm-open-buffers (buffer-a buffer-b &optional window side)
"split window and open buffer-a in old window and buffer-b in new window
leaving the window containing buffer-a selected"
)

