

(in-package :xlib)

(unless (fboundp 'pixmap-p)
  (defun pixmap-p (object)
    (typep object 'pixmap)))

(unless (fboundp 'image-z-p)
  (defun image-z-p (object)
    (typep object 'image-z)))

(export 'xlib::image-z-p :xlib)

(unless (fboundp 'pixmap-plist)
  (defun pixmap-plist (pixmap)
    (xlib:drawable-plist pixmap)))

(unless (fboundp '(setf pixmap-plist))
  (defun (setf pixmap-plist) (value window)
    (setf (drawable-plist window) value)))
