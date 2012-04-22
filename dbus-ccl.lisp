;;;; +----------------------------------------------------------------+
;;;; | DBUS                                          DEATH, 2010-2011 |
;;;; +----------------------------------------------------------------+

(in-package "CCL")

(defmethod stream-position ((stream flexi-streams:vector-stream) &optional new)
  (when new
    (setf (flexi-streams::stream-file-position stream) new))
  (flexi-streams::stream-file-position stream))

(in-package #:dbus)

;;;; CCL-specific code

(defun make-weakly-keyed-hash-table ()
  "Return a hash-table with key weakness."
  (make-hash-table))

(defun double-to-unsigned (value)
  "Return an unsigned 64-bit byte representing the double-float value
passed."
  (ieee-floats:encode-float64 value))

(defun unsigned-to-double (value)
  "Return the double-float value represented by the unsigned 64-bit
byte supplied."
  (ieee-floats:decode-float64 value))

