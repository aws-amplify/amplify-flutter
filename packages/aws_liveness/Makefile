.PHONY: pigeons

pigeons:
	dart run pigeon --input pigeons/aws_liveness_pigeon.dart
	./tool/redact_pigeon_credentials.sh
	dart format lib/src/pigeons/aws_liveness_pigeon.g.dart
