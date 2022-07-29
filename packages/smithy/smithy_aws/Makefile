.PHONY: deps, diag

deps:
	dart pub global activate pubviz
	dart pub global run pubviz -p --format=dot print | dot -Tpng -Gdpi=200 -o doc/dependencies.png

diag:
	dart pub global activate dcdg
	dart pub global run dcdg --include=".*Protocol.*" --search-path=lib/src/protocol --output=doc/protocols.uml
