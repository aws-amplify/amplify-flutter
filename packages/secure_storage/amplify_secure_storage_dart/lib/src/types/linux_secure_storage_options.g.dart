// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'linux_secure_storage_options.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinuxSecureStorageOptions> _$linuxSecureStorageOptionsSerializer =
    new _$LinuxSecureStorageOptionsSerializer();

class _$LinuxSecureStorageOptionsSerializer
    implements StructuredSerializer<LinuxSecureStorageOptions> {
  @override
  final Iterable<Type> types = const [
    LinuxSecureStorageOptions,
    _$LinuxSecureStorageOptions
  ];
  @override
  final String wireName = 'LinuxSecureStorageOptions';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LinuxSecureStorageOptions object,
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
    return result;
  }

  @override
  LinuxSecureStorageOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinuxSecureStorageOptionsBuilder();

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
      }
    }

    return result.build();
  }
}

class _$LinuxSecureStorageOptions extends LinuxSecureStorageOptions {
  @override
  final String? accessGroup;

  factory _$LinuxSecureStorageOptions(
          [void Function(LinuxSecureStorageOptionsBuilder)? updates]) =>
      (new LinuxSecureStorageOptionsBuilder()..update(updates))._build();

  _$LinuxSecureStorageOptions._({this.accessGroup}) : super._();

  @override
  LinuxSecureStorageOptions rebuild(
          void Function(LinuxSecureStorageOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinuxSecureStorageOptionsBuilder toBuilder() =>
      new LinuxSecureStorageOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinuxSecureStorageOptions &&
        accessGroup == other.accessGroup;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessGroup.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LinuxSecureStorageOptions')
          ..add('accessGroup', accessGroup))
        .toString();
  }
}

class LinuxSecureStorageOptionsBuilder
    implements
        Builder<LinuxSecureStorageOptions, LinuxSecureStorageOptionsBuilder> {
  _$LinuxSecureStorageOptions? _$v;

  String? _accessGroup;
  String? get accessGroup => _$this._accessGroup;
  set accessGroup(String? accessGroup) => _$this._accessGroup = accessGroup;

  LinuxSecureStorageOptionsBuilder();

  LinuxSecureStorageOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessGroup = $v.accessGroup;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinuxSecureStorageOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LinuxSecureStorageOptions;
  }

  @override
  void update(void Function(LinuxSecureStorageOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LinuxSecureStorageOptions build() => _build();

  _$LinuxSecureStorageOptions _build() {
    final _$result =
        _$v ?? new _$LinuxSecureStorageOptions._(accessGroup: accessGroup);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
