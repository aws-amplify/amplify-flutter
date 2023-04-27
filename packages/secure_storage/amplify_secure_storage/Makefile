.PHONY: pigeons
.PHONY: pigeons_secure_storage
.PHONY: pigeons_ns_user_defaults

pigeons: pigeons_secure_storage pigeons_ns_user_defaults 

pigeons_secure_storage:
	dart run pigeon --input pigeons/AmplifySecureStorage.dart
	dart format --fix lib/src/pigeons/AmplifySecureStoragePigeon.g.dart

pigeons_ns_user_defaults:
	dart run pigeon --input pigeons/NSUserDefaults.dart
	cp ios/Classes/pigeons/NSUserDefaultsPigeon.swift macos/Classes/pigeons/NSUserDefaultsPigeon.swift
	dart format --fix lib/src/pigeons/NSUserDefaultsPigeon.g.dart
