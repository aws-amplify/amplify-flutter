// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'macos_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MacOSSecureStorageOptions> _$macOSSecureStorageOptionsSerializer =
    new _$MacOSSecureStorageOptionsSerializer();

class _$MacOSSecureStorageOptionsSerializer
    implements StructuredSerializer<MacOSSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    MacOSSecureStorageOptions,
    _$MacOSSecureStorageOptions
  ];
  @override
  final String wireName = 'MacOSSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MacOSSecureStorageOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'useDataProtection',
      serializers.serialize(object.useDataProtection,
          specifiedType: const FullType(bool)),
    ];
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
  MacOSSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MacOSSecureStorageOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'useDataProtection':
          result.useDataProtection = serializers.deserialize(value,
              specifiedType: const FullType(bool))! as bool;
          break;
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

class _$MacOSSecureStorageOptions extends MacOSSecureStorageOptions {
  @override
  final bool useDataProtection;
  @override
  final String? accessGroup;
  @override
  final KeychainAttributeAccessible? accessible;

  factory _$MacOSSecureStorageOptions(
          [void Function(MacOSSecureStorageOptionsBuilder)? updates]) =>
      (new MacOSSecureStorageOptionsBuilder()..update(updates))._build();

  _$MacOSSecureStorageOptions._(
      {required this.useDataProtection, this.accessGroup, this.accessible})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        useDataProtection, r'MacOSSecureStorageOptions', 'useDataProtection');
  }

  @override
  MacOSSecureStorageOptions rebuild(
          void Function(MacOSSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MacOSSecureStorageOptionsBuilder toBuilder() =>
      new MacOSSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MacOSSecureStorageOptions &&
        useDataProtection == other.useDataProtection &&
        accessGroup == other.accessGroup &&
        accessible == other.accessible;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, useDataProtection.hashCode);
    _$hash = $jc(_$hash, accessGroup.hashCode);
    _$hash = $jc(_$hash, accessible.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MacOSSecureStorageOptions')
          ..add('useDataProtection', useDataProtection)
          ..add('accessGroup', accessGroup)
          ..add('accessible', accessible))
        .toString();
  }
}

class MacOSSecureStorageOptionsBuilder
    implements
        Builder<MacOSSecureStorageOptions, MacOSSecureStorageOptionsBuilder> {
  _$MacOSSecureStorageOptions? _$v;

  bool? _useDataProtection;
  bool? get useDataProtection => _$this._useDataProtection;
  set useDataProtection(bool? useDataProtection) =>
      _$this._useDataProtection = useDataProtection;

  String? _accessGroup;
  String? get accessGroup => _$this._accessGroup;
  set accessGroup(String? accessGroup) => _$this._accessGroup = accessGroup;

  KeychainAttributeAccessible? _accessible;
  KeychainAttributeAccessible? get accessible => _$this._accessible;
  set accessible(KeychainAttributeAccessible? accessible) =>
      _$this._accessible = accessible;

  MacOSSecureStorageOptionsBuilder();

  MacOSSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _useDataProtection = $v.useDataProtection;
      _accessGroup = $v.accessGroup;
      _accessible = $v.accessible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MacOSSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MacOSSecureStorageOptions;
  }

  @override
  void update(void Function(MacOSSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MacOSSecureStorageOptions build() => _build();

  _$MacOSSecureStorageOptions _build() {
    final _$result = _$v ??
        new _$MacOSSecureStorageOptions._(
            useDataProtection: BuiltValueNullFieldError.checkNotNull(
                useDataProtection,
                r'MacOSSecureStorageOptions',
                'useDataProtection'),
            accessGroup: accessGroup,
            accessible: accessible);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
