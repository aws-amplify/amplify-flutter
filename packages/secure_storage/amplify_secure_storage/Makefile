.PHONY: pigeons
.PHONY: pigeons_secure_storage
.PHONY: pigeons_ns_user_defaults

pigeons: pigeons_secure_storage pigeons_ns_user_defaults 

pigeons_secure_storage:
	dart run pigeon --input pigeons/amplify_secure_storage.dart
	dart format --fix lib/src/pigeons/amplify_secure_storage_pigeon.g.dart

pigeons_ns_user_defaults:
	dart run pigeon --input pigeons/ns_user_defaults.dart
	cp ios/Classes/pigeons/NSUserDefaultsPigeon.swift macos/Classes/pigeons/NSUserDefaultsPigeon.swift
	dart format --fix lib/src/pigeons/ns_user_defaults_pigeon.g.dart
