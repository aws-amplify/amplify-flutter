.PHONY: pigeons
.PHONY: pigeons_android
.PHONY: pigeons_ios
.PHONY: pigeons_macos

pigeons: pigeons_android pigeons_ios pigeons_macos

pigeons_android:
	flutter pub run pigeon --input pigeons/messages.android.dart
	dart format --fix lib/src/messages.android.g.dart

pigeons_ios:
	flutter pub run pigeon --input pigeons/messages.ios.dart
	dart format --fix lib/src/messages.cupertino.g.dart

pigeons_macos:
	flutter pub run pigeon --input pigeons/messages.macos.dart
	dart format --fix lib/src/messages.cupertino.g.dart
	# See: https://github.com/flutter/flutter/issues/73738#issuecomment-903927725
	sed -i '' -e 's/\<Flutter\/Flutter\.h\>/\<FlutterMacOS\/FlutterMacOS\.h\>/' macos/Classes/pigeons/Messages.m
