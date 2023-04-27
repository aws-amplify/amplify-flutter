.PHONY: pigeons
.PHONY: pigeons_secure_storage
.PHONY: pigeons_ios
.PHONY: pigeons_macos

pigeons: pigeons_secure_storage pigeons_ios pigeons_macos

pigeons_secure_storage:
	dart run pigeon --input pigeons/AmplifySecureStorage.dart
	dart format --fix lib/src/pigeons/AmplifySecureStoragePigeon.g.dart

pigeons_ios:
	dart run pigeon --input pigeons/messages.ios.dart
	dart format --fix lib/src/messages.cupertino.g.dart

pigeons_macos:
	dart run pigeon --input pigeons/messages.macos.dart
	dart format --fix lib/src/messages.cupertino.g.dart
	# See: https://github.com/flutter/flutter/issues/73738#issuecomment-903927725
	sed -i '' -e 's/\<Flutter\/Flutter\.h\>/\<FlutterMacOS\/FlutterMacOS\.h\>/' macos/Classes/pigeons/Messages.m
