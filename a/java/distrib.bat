rem copy class\zeidon\*.class "%kzd%:\program files\apache group\tomcat 6.0\webapps\ROOT\WEB-INF\classes\Zeidon\
del  "%kzd%:\program files\apache group\Tomcat 6.0\common\classes\zeidon\" /Q
copy class\zeidon\*.class "%kzd%:\program files\apache group\Tomcat 6.0\common\classes\zeidon\"
rem copy class\zeidon\*.class "%kzd%:\program files\apache group\Tomcat 6.0\webapps\root\zencas\"
