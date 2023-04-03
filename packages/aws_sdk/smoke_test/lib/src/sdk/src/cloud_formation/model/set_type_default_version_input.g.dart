// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.set_type_default_version_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetTypeDefaultVersionInput extends SetTypeDefaultVersionInput {
  @override
  final String? arn;
  @override
  final _i3.RegistryType? type;
  @override
  final String? typeName;
  @override
  final String? versionId;

  factory _$SetTypeDefaultVersionInput(
          [void Function(SetTypeDefaultVersionInputBuilder)? updates]) =>
      (new SetTypeDefaultVersionInputBuilder()..update(updates))._build();

  _$SetTypeDefaultVersionInput._(
      {this.arn, this.type, this.typeName, this.versionId})
      : super._();

  @override
  SetTypeDefaultVersionInput rebuild(
          void Function(SetTypeDefaultVersionInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTypeDefaultVersionInputBuilder toBuilder() =>
      new SetTypeDefaultVersionInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTypeDefaultVersionInput &&
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

class SetTypeDefaultVersionInputBuilder
    implements
        Builder<SetTypeDefaultVersionInput, SetTypeDefaultVersionInputBuilder> {
  _$SetTypeDefaultVersionInput? _$v;

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

  SetTypeDefaultVersionInputBuilder() {
    SetTypeDefaultVersionInput._init(this);
  }

  SetTypeDefaultVersionInputBuilder get _$this {
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
  void replace(SetTypeDefaultVersionInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTypeDefaultVersionInput;
  }

  @override
  void update(void Function(SetTypeDefaultVersionInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetTypeDefaultVersionInput build() => _build();

  _$SetTypeDefaultVersionInput _build() {
    final _$result = _$v ??
        new _$SetTypeDefaultVersionInput._(
            arn: arn, type: type, typeName: typeName, versionId: versionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
