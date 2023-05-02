// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.deactivate_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeactivateTypeInput extends DeactivateTypeInput {
  @override
  final String? typeName;
  @override
  final _i3.ThirdPartyType? type;
  @override
  final String? arn;

  factory _$DeactivateTypeInput(
          [void Function(DeactivateTypeInputBuilder)? updates]) =>
      (new DeactivateTypeInputBuilder()..update(updates))._build();

  _$DeactivateTypeInput._({this.typeName, this.type, this.arn}) : super._();

  @override
  DeactivateTypeInput rebuild(
          void Function(DeactivateTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeactivateTypeInputBuilder toBuilder() =>
      new DeactivateTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeactivateTypeInput &&
        typeName == other.typeName &&
        type == other.type &&
        arn == other.arn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeactivateTypeInputBuilder
    implements Builder<DeactivateTypeInput, DeactivateTypeInputBuilder> {
  _$DeactivateTypeInput? _$v;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  _i3.ThirdPartyType? _type;
  _i3.ThirdPartyType? get type => _$this._type;
  set type(_i3.ThirdPartyType? type) => _$this._type = type;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DeactivateTypeInputBuilder() {
    DeactivateTypeInput._init(this);
  }

  DeactivateTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeName = $v.typeName;
      _type = $v.type;
      _arn = $v.arn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeactivateTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeactivateTypeInput;
  }

  @override
  void update(void Function(DeactivateTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeactivateTypeInput build() => _build();

  _$DeactivateTypeInput _build() {
    final _$result = _$v ??
        new _$DeactivateTypeInput._(typeName: typeName, type: type, arn: arn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
