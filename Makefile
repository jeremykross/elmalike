jar: pom.xml 
	clojure -Sdeps '{:deps {pack/pack.alpha {:git/url "https://github.com/juxt/pack.alpha.git" :sha "a41ae7b7f2381861eea0c937748c1377d463b955"}}}' -m mach.pack.alpha.skinny --no-libs --project-path ulmus.jar

clojars: pom.xml
	mvn deploy:deploy-file -Dfile=ulmus.jar -DrepositoryId=clojars -Durl=https://clojars.org/repo -DpomFile=pom.xml
