.PHONY: deps
deps:
	dart pub global activate pubviz
	dart pub global run pubviz -p --format=dot print | dot -Tpng -Gdpi=200 -o doc/dependencies.png
