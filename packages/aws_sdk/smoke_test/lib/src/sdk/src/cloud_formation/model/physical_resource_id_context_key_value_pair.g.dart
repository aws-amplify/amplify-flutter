// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.physical_resource_id_context_key_value_pair;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PhysicalResourceIdContextKeyValuePair
    extends PhysicalResourceIdContextKeyValuePair {
  @override
  final String key;
  @override
  final String value;

  factory _$PhysicalResourceIdContextKeyValuePair(
          [void Function(PhysicalResourceIdContextKeyValuePairBuilder)?
              updates]) =>
      (new PhysicalResourceIdContextKeyValuePairBuilder()..update(updates))
          ._build();

  _$PhysicalResourceIdContextKeyValuePair._(
      {required this.key, required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        key, r'PhysicalResourceIdContextKeyValuePair', 'key');
    BuiltValueNullFieldError.checkNotNull(
        value, r'PhysicalResourceIdContextKeyValuePair', 'value');
  }

  @override
  PhysicalResourceIdContextKeyValuePair rebuild(
          void Function(PhysicalResourceIdContextKeyValuePairBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhysicalResourceIdContextKeyValuePairBuilder toBuilder() =>
      new PhysicalResourceIdContextKeyValuePairBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhysicalResourceIdContextKeyValuePair &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PhysicalResourceIdContextKeyValuePairBuilder
    implements
        Builder<PhysicalResourceIdContextKeyValuePair,
            PhysicalResourceIdContextKeyValuePairBuilder> {
  _$PhysicalResourceIdContextKeyValuePair? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  PhysicalResourceIdContextKeyValuePairBuilder() {
    PhysicalResourceIdContextKeyValuePair._init(this);
  }

  PhysicalResourceIdContextKeyValuePairBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhysicalResourceIdContextKeyValuePair other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhysicalResourceIdContextKeyValuePair;
  }

  @override
  void update(
      void Function(PhysicalResourceIdContextKeyValuePairBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhysicalResourceIdContextKeyValuePair build() => _build();

  _$PhysicalResourceIdContextKeyValuePair _build() {
    final _$result = _$v ??
        new _$PhysicalResourceIdContextKeyValuePair._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, r'PhysicalResourceIdContextKeyValuePair', 'key'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'PhysicalResourceIdContextKeyValuePair', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
