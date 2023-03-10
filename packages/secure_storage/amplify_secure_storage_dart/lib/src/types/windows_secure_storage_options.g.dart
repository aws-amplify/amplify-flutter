// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'windows_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WindowsSecureStorageOptions>
    _$windowsSecureStorageOptionsSerializer =
    new _$WindowsSecureStorageOptionsSerializer();

class _$WindowsSecureStorageOptionsSerializer
    implements StructuredSerializer<WindowsSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    WindowsSecureStorageOptions,
    _$WindowsSecureStorageOptions
  ];
  @override
  final String wireName = 'WindowsSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WindowsSecureStorageOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.storagePath;
    if (value != null) {
      result
        ..add('storagePath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WindowsSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WindowsSecureStorageOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'storagePath':
          result.storagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WindowsSecureStorageOptions extends WindowsSecureStorageOptions {
  @override
  final String? storagePath;

  factory _$WindowsSecureStorageOptions(
          [void Function(WindowsSecureStorageOptionsBuilder)? updates]) =>
      (new WindowsSecureStorageOptionsBuilder()..update(updates))._build();

  _$WindowsSecureStorageOptions._({this.storagePath}) : super._();

  @override
  WindowsSecureStorageOptions rebuild(
          void Function(WindowsSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindowsSecureStorageOptionsBuilder toBuilder() =>
      new WindowsSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindowsSecureStorageOptions &&
        storagePath == other.storagePath;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, storagePath.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WindowsSecureStorageOptions')
          ..add('storagePath', storagePath))
        .toString();
  }
}

class WindowsSecureStorageOptionsBuilder
    implements
        Builder<WindowsSecureStorageOptions,
            WindowsSecureStorageOptionsBuilder> {
  _$WindowsSecureStorageOptions? _$v;

  String? _storagePath;
  String? get storagePath => _$this._storagePath;
  set storagePath(String? storagePath) => _$this._storagePath = storagePath;

  WindowsSecureStorageOptionsBuilder();

  WindowsSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storagePath = $v.storagePath;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WindowsSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WindowsSecureStorageOptions;
  }

  @override
  void update(void Function(WindowsSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindowsSecureStorageOptions build() => _build();

  _$WindowsSecureStorageOptions _build() {
    final _$result =
        _$v ?? new _$WindowsSecureStorageOptions._(storagePath: storagePath);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
