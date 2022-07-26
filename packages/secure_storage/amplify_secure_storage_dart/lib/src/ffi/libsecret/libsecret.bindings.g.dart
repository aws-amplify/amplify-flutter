// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;
import '../glib/glib.dart' as glib;
import 'package:ffi/ffi.dart' as pkg_ffi;

/// Bindings to libsecret
class Libsecret {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Libsecret(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Libsecret.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int secret_password_storev_sync(
    ffi.Pointer<SecretSchema> schema,
    ffi.Pointer<glib.GHashTable> attributes,
    ffi.Pointer<pkg_ffi.Utf8> collection,
    ffi.Pointer<pkg_ffi.Utf8> label,
    ffi.Pointer<pkg_ffi.Utf8> password,
    ffi.Pointer<glib.GCancellable> cancellable,
    ffi.Pointer<ffi.Pointer<glib.GError>> error,
  ) {
    return _secret_password_storev_sync(
      schema,
      attributes,
      collection,
      label,
      password,
      cancellable,
      error,
    );
  }

  late final _secret_password_storev_syncPtr = _lookup<
          ffi.NativeFunction<
              glib.gboolean Function(
                  ffi.Pointer<SecretSchema>,
                  ffi.Pointer<glib.GHashTable>,
                  ffi.Pointer<pkg_ffi.Utf8>,
                  ffi.Pointer<pkg_ffi.Utf8>,
                  ffi.Pointer<pkg_ffi.Utf8>,
                  ffi.Pointer<glib.GCancellable>,
                  ffi.Pointer<ffi.Pointer<glib.GError>>)>>(
      'secret_password_storev_sync');
  late final _secret_password_storev_sync =
      _secret_password_storev_syncPtr.asFunction<
          int Function(
              ffi.Pointer<SecretSchema>,
              ffi.Pointer<glib.GHashTable>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<pkg_ffi.Utf8>,
              ffi.Pointer<glib.GCancellable>,
              ffi.Pointer<ffi.Pointer<glib.GError>>)>();

  ffi.Pointer<pkg_ffi.Utf8> secret_password_lookupv_sync(
    ffi.Pointer<SecretSchema> schema,
    ffi.Pointer<glib.GHashTable> attributes,
    ffi.Pointer<glib.GCancellable> cancellable,
    ffi.Pointer<ffi.Pointer<glib.GError>> error,
  ) {
    return _secret_password_lookupv_sync(
      schema,
      attributes,
      cancellable,
      error,
    );
  }

  late final _secret_password_lookupv_syncPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<pkg_ffi.Utf8> Function(
                  ffi.Pointer<SecretSchema>,
                  ffi.Pointer<glib.GHashTable>,
                  ffi.Pointer<glib.GCancellable>,
                  ffi.Pointer<ffi.Pointer<glib.GError>>)>>(
      'secret_password_lookupv_sync');
  late final _secret_password_lookupv_sync =
      _secret_password_lookupv_syncPtr.asFunction<
          ffi.Pointer<pkg_ffi.Utf8> Function(
              ffi.Pointer<SecretSchema>,
              ffi.Pointer<glib.GHashTable>,
              ffi.Pointer<glib.GCancellable>,
              ffi.Pointer<ffi.Pointer<glib.GError>>)>();

  int secret_password_clearv_sync(
    ffi.Pointer<SecretSchema> schema,
    ffi.Pointer<glib.GHashTable> attributes,
    ffi.Pointer<glib.GCancellable> cancellable,
    ffi.Pointer<ffi.Pointer<glib.GError>> error,
  ) {
    return _secret_password_clearv_sync(
      schema,
      attributes,
      cancellable,
      error,
    );
  }

  late final _secret_password_clearv_syncPtr = _lookup<
          ffi.NativeFunction<
              glib.gboolean Function(
                  ffi.Pointer<SecretSchema>,
                  ffi.Pointer<glib.GHashTable>,
                  ffi.Pointer<glib.GCancellable>,
                  ffi.Pointer<ffi.Pointer<glib.GError>>)>>(
      'secret_password_clearv_sync');
  late final _secret_password_clearv_sync =
      _secret_password_clearv_syncPtr.asFunction<
          int Function(
              ffi.Pointer<SecretSchema>,
              ffi.Pointer<glib.GHashTable>,
              ffi.Pointer<glib.GCancellable>,
              ffi.Pointer<ffi.Pointer<glib.GError>>)>();

  void secret_password_free(
    ffi.Pointer<pkg_ffi.Utf8> password,
  ) {
    return _secret_password_free(
      password,
    );
  }

  late final _secret_password_freePtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<pkg_ffi.Utf8>)>>(
          'secret_password_free');
  late final _secret_password_free = _secret_password_freePtr
      .asFunction<void Function(ffi.Pointer<pkg_ffi.Utf8>)>();
}

abstract class SecretSchemaAttributeType {
  static const int SECRET_SCHEMA_ATTRIBUTE_STRING = 0;
  static const int SECRET_SCHEMA_ATTRIBUTE_INTEGER = 1;
  static const int SECRET_SCHEMA_ATTRIBUTE_BOOLEAN = 2;
}

class SecretSchemaAttribute extends ffi.Struct {
  external ffi.Pointer<pkg_ffi.Utf8> name;

  @ffi.Int32()
  external int type;
}

abstract class SecretSchemaFlags {
  static const int SECRET_SCHEMA_NONE = 0;
  static const int SECRET_SCHEMA_DONT_MATCH_NAME = 2;
}

class SecretSchema extends ffi.Struct {
  external ffi.Pointer<pkg_ffi.Utf8> name;

  @ffi.Int32()
  external int flags;

  @ffi.Array.multi([32])
  external ffi.Array<SecretSchemaAttribute> attributes;

  @glib.gint()
  external int reserved;

  external glib.gpointer reserved1;

  external glib.gpointer reserved2;

  external glib.gpointer reserved3;

  external glib.gpointer reserved4;

  external glib.gpointer reserved5;

  external glib.gpointer reserved6;

  external glib.gpointer reserved7;
}

const String SECRET_COLLECTION_DEFAULT = 'default';
