.PHONY: ffi_bindings_linux
.PHONY: ffi_bindings_macos

ffi_bindings_linux:
	git submodule update --init
	dart run ffigen --config ffigen.glib.config.yaml
	dart run ffigen --config ffigen.libsecret.config.yaml

ffi_bindings_macos:
	git submodule update --init
	dart run ffigen --config ffigen.cupertino.coreFoundation.config.yaml
	dart run ffigen --config ffigen.cupertino.security.config.yaml
