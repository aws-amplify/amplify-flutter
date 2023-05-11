// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.deregister_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeregisterTypeInput extends DeregisterTypeInput {
  @override
  final String? arn;
  @override
  final _i3.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? versionId;

  factory _$DeregisterTypeInput(
          [void Function(DeregisterTypeInputBuilder)? updates]) =>
      (new DeregisterTypeInputBuilder()..update(updates))._build();

  _$DeregisterTypeInput._({this.arn, this.type, this.typeName, this.versionId})
      : super._();

  @override
  DeregisterTypeInput rebuild(
          void Function(DeregisterTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeregisterTypeInputBuilder toBuilder() =>
      new DeregisterTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeregisterTypeInput &&
        arn == other.arn &&
        type == other.type &&
        typeName == other.typeName &&
        versionId == other.versionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, versionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeregisterTypeInputBuilder
    implements Builder<DeregisterTypeInput, DeregisterTypeInputBuilder> {
  _$DeregisterTypeInput? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.RegistryType? _type;
  _i3.RegistryType? get type => _$this._type;
  set type(_i3.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _versionId;
  String? get versionId => _$this._versionId;
  set versionId(String? versionId) => _$this._versionId = versionId;

  DeregisterTypeInputBuilder() {
    DeregisterTypeInput._init(this);
  }

  DeregisterTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _type = $v.type;
      _typeName = $v.typeName;
      _versionId = $v.versionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeregisterTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeregisterTypeInput;
  }

  @override
  void update(void Function(DeregisterTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeregisterTypeInput build() => _build();

  _$DeregisterTypeInput _build() {
    final _$result = _$v ??
        new _$DeregisterTypeInput._(
            arn: arn, type: type, typeName: typeName, versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
