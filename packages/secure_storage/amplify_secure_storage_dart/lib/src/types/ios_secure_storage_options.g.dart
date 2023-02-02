// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ios_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IOSSecureStorageOptions> _$iOSSecureStorageOptionsSerializer =
    new _$IOSSecureStorageOptionsSerializer();

class _$IOSSecureStorageOptionsSerializer
    implements StructuredSerializer<IOSSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    IOSSecureStorageOptions,
    _$IOSSecureStorageOptions
  ];
  @override
  final String wireName = 'IOSSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IOSSecureStorageOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessGroup;
    if (value != null) {
      result
        ..add('accessGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessible;
    if (value != null) {
      result
        ..add('accessible')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(KeychainAttributeAccessible)));
    }
    return result;
  }

  @override
  IOSSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IOSSecureStorageOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'accessGroup':
          result.accessGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessible':
          result.accessible = serializers.deserialize(value,
                  specifiedType: const FullType(KeychainAttributeAccessible))
              as KeychainAttributeAccessible?;
          break;
      }
    }

    return result.build();
  }
}

class _$IOSSecureStorageOptions extends IOSSecureStorageOptions {
  @override
  final String? accessGroup;
  @override
  final KeychainAttributeAccessible? accessible;

  factory _$IOSSecureStorageOptions(
          [void Function(IOSSecureStorageOptionsBuilder)? updates]) =>
      (new IOSSecureStorageOptionsBuilder()..update(updates))._build();

  _$IOSSecureStorageOptions._({this.accessGroup, this.accessible}) : super._();

  @override
  IOSSecureStorageOptions rebuild(
          void Function(IOSSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IOSSecureStorageOptionsBuilder toBuilder() =>
      new IOSSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IOSSecureStorageOptions &&
        accessGroup == other.accessGroup &&
        accessible == other.accessible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessGroup.hashCode);
    _$hash = $jc(_$hash, accessible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IOSSecureStorageOptions')
          ..add('accessGroup', accessGroup)
          ..add('accessible', accessible))
        .toString();
  }
}

class IOSSecureStorageOptionsBuilder
    implements
        Builder<IOSSecureStorageOptions, IOSSecureStorageOptionsBuilder> {
  _$IOSSecureStorageOptions? _$v;

  String? _accessGroup;
  String? get accessGroup => _$this._accessGroup;
  set accessGroup(String? accessGroup) => _$this._accessGroup = accessGroup;

  KeychainAttributeAccessible? _accessible;
  KeychainAttributeAccessible? get accessible => _$this._accessible;
  set accessible(KeychainAttributeAccessible? accessible) =>
      _$this._accessible = accessible;

  IOSSecureStorageOptionsBuilder();

  IOSSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessGroup = $v.accessGroup;
      _accessible = $v.accessible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IOSSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IOSSecureStorageOptions;
  }

  @override
  void update(void Function(IOSSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IOSSecureStorageOptions build() => _build();

  _$IOSSecureStorageOptions _build() {
    final _$result = _$v ??
        new _$IOSSecureStorageOptions._(
            accessGroup: accessGroup, accessible: accessible);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
