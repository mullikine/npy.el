;;; npy-init.el --- npy: Initialization for the tests.  -*- lexical-binding: t; -*-
;; Copyright (C) 2019  Cyriakus "Mukuge" Hill

;; Author: Cyriakus "Mukuge" Hill <cyriakus.h@gmail.com>
;; Keywords: Lisp, tools
;; URL: https://github.com/mukuge/npy.el

;; This file is NOT part of GNU Emacs.

;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Code:

(require 'seq)
(require 'ert)
(require 'f)
(require 's)
(require 'exec-path-from-shell)

;; (after-load 'exec-path-from-shell
;;   (dolist (var '("SSH_AUTH_SOCK" "SSH_AGENT_PID" "GPG_AGENT_INFO" "LANG" "LC_CTYPE"))
;;     (add-to-list 'exec-path-from-shell-variables var)))


(setq-default exec-path-from-shell-arguments nil)
(exec-path-from-shell-initialize)

(defvar npy-test/test-path
  (directory-file-name (file-name-directory load-file-name))
  "Path to tests directory.")

(defvar npy-test/root-path
  (directory-file-name (file-name-directory npy-test/test-path))
  "Path to root directory.")

(defvar npy-test/playground-path
  "/tmp/npy-playground/"
  "Path to the playground for test.")

(defvar npy-test/python-wait
  1
  "Sleep for duration after inputting somethng to a Python interpreter.")

(load (expand-file-name "npy" npy-test/root-path) 'noerror 'nomessage)

(npy-initialize)

(provide 'npy-init)
;;; npy-init.el ends here
