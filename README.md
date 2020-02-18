
<a id="org31d0070"></a>

# cl-sitemaps  - Sitemap.xml reader


<a id="org8458de1"></a>

## Usage

``` common-lisp
(ql:quickload '(:dexador :cl-sitemaps))
    
(cl-sitemaps:parse-sitemap-xml (dex:get "http://bbc.co.uk/sitemap.xml"))
;; (#<CL-SITEMAPS:SITEMAP-REF {1003395543}>)
;; CL-SITEMAPS::|sitemap|

(cl-sitemaps:loc (car (cl-sitemaps:parse-sitemap-xml (dex:get "http://bbc.co.uk/sitemap.xml"))))
;; "https://www.bbc.co.uk/news/localnews/locations/sitemap.xml"
    
(defparameter *sitemap-url* (cl-sitemaps:loc (car (cl-sitemaps:parse-sitemap-xml (dex:get "http://bbc.co.uk/sitemap.xml")))))
;; *SITEMAP-URL*
    
(cl-sitemaps:parse-sitemap-xml (dex:get *sitemap-url*))
;; (...
;; #<CL-SITEMAPS:SITEMAP-URL {10039C92D3}> ...)
;; CL-SITEMAPS::|url|

```

<a id="org63c4c31"></a>

## Installation

``` common-lisp
(ql:quickload :cl-sitemaps)
```


<a id="orgd2f32bb"></a>

## Author

-   Nikolai Matiushev (nikolai.matiushev@egao.co.uk)


<a id="orgb89e9be"></a>

## Copyright

Copyright (c) 2020 Nikolai Matiushev (nikolai.matiushev@egao.co.uk)


<a id="org8a5dc3c"></a>

## License

Licensed under the MIT License.

