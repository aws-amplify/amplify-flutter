// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_configuration_identifier;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeConfigurationIdentifier extends TypeConfigurationIdentifier {
  @override
  final String? typeArn;
  @override
  final String? typeConfigurationAlias;
  @override
  final String? typeConfigurationArn;
  @override
  final _i2.ThirdPartyType? type;
  @override
  final String? typeName;

  factory _$TypeConfigurationIdentifier(
          [void Function(TypeConfigurationIdentifierBuilder)? updates]) =>
      (new TypeConfigurationIdentifierBuilder()..update(updates))._build();

  _$TypeConfigurationIdentifier._(
      {this.typeArn,
      this.typeConfigurationAlias,
      this.typeConfigurationArn,
      this.type,
      this.typeName})
      : super._();

  @override
  TypeConfigurationIdentifier rebuild(
          void Function(TypeConfigurationIdentifierBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeConfigurationIdentifierBuilder toBuilder() =>
      new TypeConfigurationIdentifierBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeConfigurationIdentifier &&
        typeArn == other.typeArn &&
        typeConfigurationAlias == other.typeConfigurationAlias &&
        typeConfigurationArn == other.typeConfigurationArn &&
        type == other.type &&
        typeName == other.typeName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, typeConfigurationAlias.hashCode);
    _$hash = $jc(_$hash, typeConfigurationArn.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeConfigurationIdentifierBuilder
    implements
        Builder<TypeConfigurationIdentifier,
            TypeConfigurationIdentifierBuilder> {
  _$TypeConfigurationIdentifier? _$v;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  String? _typeConfigurationAlias;
  String? get typeConfigurationAlias => _$this._typeConfigurationAlias;
  set typeConfigurationAlias(String? typeConfigurationAlias) =>
      _$this._typeConfigurationAlias = typeConfigurationAlias;

  String? _typeConfigurationArn;
  String? get typeConfigurationArn => _$this._typeConfigurationArn;
  set typeConfigurationArn(String? typeConfigurationArn) =>
      _$this._typeConfigurationArn = typeConfigurationArn;

  _i2.ThirdPartyType? _type;
  _i2.ThirdPartyType? get type => _$this._type;
  set type(_i2.ThirdPartyType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  TypeConfigurationIdentifierBuilder() {
    TypeConfigurationIdentifier._init(this);
  }

  TypeConfigurationIdentifierBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeArn = $v.typeArn;
      _typeConfigurationAlias = $v.typeConfigurationAlias;
      _typeConfigurationArn = $v.typeConfigurationArn;
      _type = $v.type;
      _typeName = $v.typeName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeConfigurationIdentifier other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeConfigurationIdentifier;
  }

  @override
  void update(void Function(TypeConfigurationIdentifierBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeConfigurationIdentifier build() => _build();

  _$TypeConfigurationIdentifier _build() {
    final _$result = _$v ??
        new _$TypeConfigurationIdentifier._(
            typeArn: typeArn,
            typeConfigurationAlias: typeConfigurationAlias,
            typeConfigurationArn: typeConfigurationArn,
            type: type,
            typeName: typeName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
