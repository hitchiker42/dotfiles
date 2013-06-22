(require 'cl-lib)
(defvar my-banish-position '((frame-or-window . frame)
                                             (side . right)
                                             (side-pos . 1)
                                             (top-or-bottom . bottom)
                                             (top-or-bottom-pos . 1)))
(defun my-set-mouse-position (pos)
  ;; Carefully set mouse position to given position (X . Y)
  ;; Ideally, should check if X,Y is in the current frame, and if not,
  ;; leave the mouse where it was.  However, this is currently
  ;; difficult to do, so we just raise the frame to avoid frame switches.
  ;; Returns t if it moved the mouse.
  (let ((f (selected-frame)))
    (raise-frame f)
    (set-mouse-position f (car pos) (cdr pos))
    t))
(defun my-banish-destination ()
  "The position to which `my-banish' moves the mouse.
If you want the mouse banished to a different corner set
`my-banish-position' as you need."
  (let* ((fra-or-win         (assoc-default
                              'frame-or-window
                              my-banish-position 'eq))
         (list-values        (pcase fra-or-win
                               (`frame (list 0 0 (frame-width) (frame-height)))
                               (`window (window-edges))))
         (alist              (cl-loop for v in list-values
                                      for k in '(left top right bottom)
                                      collect (cons k v)))
         (side               (assoc-default
                              'side
                              my-banish-position #'eq))
         (side-dist          (assoc-default
                              'side-pos
                              my-banish-position #'eq))
         (top-or-bottom      (assoc-default
                              'top-or-bottom
                              my-banish-position #'eq))
         (top-or-bottom-dist (assoc-default
                              'top-or-bottom-pos
                              my-banish-position #'eq))
         (side-fn            (pcase side
                               (`left '+)
                               (`right '-)))
         (top-or-bottom-fn   (pcase top-or-bottom
                               (`top '+)
                               (`bottom '-))))
    (cons (funcall side-fn                        ; -/+
                   (assoc-default side alist 'eq) ; right or left
                   side-dist)                     ; distance from side
	  (funcall top-or-bottom-fn                        ; -/+
                   (assoc-default top-or-bottom alist 'eq) ; top/bottom
                   top-or-bottom-dist)))) ; distance from top/bottom
(defun my-banish-mouse ()
  "Put the mouse pointer to `my-banish-position'."
  (interactive)
  (my-set-mouse-position (my-banish-destination)))
(provide 'my-banish-mouse)
