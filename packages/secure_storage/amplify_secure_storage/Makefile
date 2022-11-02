.PHONY: pigeons
.PHONY: pigeons_android
.PHONY: pigeons_ios
.PHONY: pigeons_macos

pigeons: pigeons_android pigeons_ios pigeons_macos

pigeons_android:
	flutter pub run pigeon --input pigeons/messages.android.dart
	flutter format --fix lib/src/messages.android.g.dart

pigeons_ios:
	flutter pub run pigeon --input pigeons/messages.ios.dart
	flutter format --fix lib/src/messages.cupertino.g.dart

pigeons_macos:
	flutter pub run pigeon --input pigeons/messages.macos.dart
	flutter format --fix lib/src/messages.cupertino.g.dart
	# TODO(Jordan-Nelson): Remove when swift codegen in pigeon is no longer experimental.
	# See: https://github.com/flutter/flutter/issues/73738#issuecomment-903927725
	sed -i '' -e 's/\<Flutter\/Flutter\.h\>/\<FlutterMacOS\/FlutterMacOS\.h\>/' macos/Classes/pigeons/Messages.m
