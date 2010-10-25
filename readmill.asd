;;;
;;; Copyright (C) 2010 Genome Research Ltd. All rights reserved.
;;;
;;; This file is part of readmill.
;;;
;;; This program is free software: you can redistribute it and/or modify
;;; it under the terms of the GNU General Public License as published by
;;; the Free Software Foundation, either version 3 of the License, or
;;; (at your option) any later version.
;;;
;;; This program is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;; GNU General Public License for more details.
;;;
;;; You should have received a copy of the GNU General Public License
;;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;

(in-package :cl-user)

(asdf:defsystem readmill
  :name "readmill"
  :version "0.0.1"
  :author "Keith James"
  :licence "GPL v3"
  :depends-on (:deoxybyte-systems
               (:version :deoxybyte-run "0.4.6")
               (:version :cl-sam "0.9.6")
               (:version :eager-future "0.4.0"))
  :components ((:module :readmill
                        :serial t
                        :pathname "src/"
                        :components ((:file "package")
                                     (:file "conditions")
                                     (:file "utilities")
                                     (:file "filters")
                                     (:file "read-analysis")
                                     (:file "commands")
                                     (:file "readmill-cli")))))
