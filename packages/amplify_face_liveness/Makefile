.PHONY: pigeons

pigeons:
	dart run pigeon --input pigeons/amplify_face_liveness_pigeon.dart
	./tool/redact_pigeon_credentials.sh
	dart format lib/src/pigeons/amplify_face_liveness_pigeon.g.dart
