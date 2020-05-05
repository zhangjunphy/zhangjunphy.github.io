(setq org-static-blog-publish-title "Not a Knot")
(setq org-static-blog-publish-url "https://zhangjunphy.github.io/")
(setq script-dir (file-name-directory load-file-name))
(setq org-static-blog-publish-directory script-dir)
(setq org-static-blog-posts-directory (concat script-dir "posts"))
(setq org-static-blog-drafts-directory (concat script-dir "drafts"))
(setq org-static-blog-enable-tags t)
(setq org-export-with-toc nil)
(setq org-export-with-section-numbers nil)

;; This header is inserted into the <head> section of every page:
;;   (you will need to create the style sheet at
;;    ~/projects/blog/static/style.css
;;    and the favicon at
;;    ~/projects/blog/static/favicon.ico)
;; (setq org-static-blog-page-header
;; "<meta name=\"author\" content=\"John Dow\">
;; <meta name=\"referrer\" content=\"no-referrer\">
;; <link href= \"static/style.css\" rel=\"stylesheet\" type=\"text/css\" />
;; <link rel=\"icon\" href=\"static/favicon.ico\">")

;; This preamble is inserted at the beginning of the <body> of every page:
;;   This particular HTML creates a <div> with a simple linked headline
;; (setq org-static-blog-page-preamble
;; "<div class=\"header\">
;;   <a href=\"https://staticblog.org\">My Static Org Blog</a>
;; </div>")

;; This postamble is inserted at the end of the <body> of every page:
;;   This particular HTML creates a <div> with a link to the archive page
;;   and a licensing stub.
(setq org-static-blog-page-postamble
"<center><a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/4.0\"><img alt=\"Creative Commons License Attribution ShareAlike\" style=\"border-width:0\" src=\"https://i.creativecommons.org/l/by-sa/4.0/88x31.png\" /></a><br /><span xmlns:dct=\"https://purl.org/dc/terms/\" href=\"https://purl.org/dc/dcmitype/Text\" property=\"dct:title\" rel=\"dct:type\">zhangjunphy.github.io</span> by <a xmlns:cc=\"https://creativecommons.org/ns#\" href=\"https://zhangjunphy.github.io\" property=\"cc:attributionName\" rel=\"cc:attributionURL\">zj</a> is licensed under a <a rel=\"license\" href=\"https://creativecommons.org/licenses/by-sa/4.0/\">Creative Commons Attribution-ShareAlike 4.0 License</a>.</center>")
