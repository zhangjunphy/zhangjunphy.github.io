(require 'seq)
(defun find-org-static-package ()
  (nth 0 (seq-filter 'file-directory-p (directory-files "~/.emacs.d/elpa" t "org-static-blog-.*"))))

(add-to-list 'load-path (find-org-static-package))
(require 'org-static-blog)

(defconst script-dir (file-name-directory load-file-name))
(setq org-static-blog-publish-directory script-dir)
(setq org-static-blog-posts-directory (concat script-dir "posts"))
(setq org-static-blog-drafts-directory (concat script-dir "drafts"))

(setq org-static-blog-publish-title "Not a Knot")
(setq org-static-blog-publish-url "https://zhangjunphy.github.io/")
(setq org-static-blog-enable-tags t)
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

(setq org-static-blog-page-header
"<meta name=\"author\" content=\"zj\">
<meta name=\"referrer\" content=\"no-referrer\">
<link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
<link rel=\"icon\" href=\"/favicon.ico\" type=\"image/x-icon\">")

(setq org-static-blog-page-preamble
"<div class=\"header\">
  <a href=\"https://zhangjunphy.github.io\">Not a Knot</a>
  <div class=\"sitelinks\">
    <a href=\"/about.html\">about<a>
    | <a href=\"/archive.html\">archive<a>
    | <a href=\"/rss.xml\">rss<a>
</div>")

(setq org-static-blog-page-postamble
"<center><a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/4.0\"><img alt=\"Creative Commons License Attribution ShareAlike\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/88x31.png\" /></a><br /><span xmlns:dct=\"https://purl.org/dc/terms/\" href=\"https://purl.org/dc/dcmitype/Text\" property=\"dct:title\" rel=\"dct:type\">zhangjunphy.github.io</span> by <a xmlns:cc=\"https://creativecommons.org/ns#\" href=\"https://zhangjunphy.github.io\" property=\"cc:attributionName\" rel=\"cc:attributionURL\">zj</a> is licensed under a <a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 License</a>.</center>")

;; Publish blog files
(org-static-blog-publish)

;; Local Variables:
;; flycheck-disabled-checkers: (emacs-lisp-checkdoc)
;; End:
