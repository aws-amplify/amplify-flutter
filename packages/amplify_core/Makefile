generate:
	rm -rf mvn_jar mvn_java
	dart run jni:setup
	dart run jnigen --config=jnigen.yaml
	dart tool/generate_config.dart
