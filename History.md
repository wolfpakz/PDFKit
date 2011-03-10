2011-03
==================
  * Bump to 0.5.1
  * Reworked the call to wkhtmltopdf to take advantage of new options in wkhtmltopdf v 0.10.rc2
  * added default cover options and default toc options to configuration
  * added not to POST\_INSTALL\_ to use the static wkhtmltopdf


2010-12-27 
==================
  * Bump to 0.5.0
  * Switched to popen - adds support for JRuby and Windows
  * Pulled in support for pdf rendering conditions in middleware via Rémy Coutable
  * Use `which` to try and determine path to wkhtmltopdf
  * Removed wkhtmltopdf auto installer
  * Changed :disable\_smart\_shrinking to false for default options.
  * Added History.md
