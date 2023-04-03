// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.set_type_configuration_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetTypeConfigurationInput extends SetTypeConfigurationInput {
  @override
  final String? typeArn;
  @override
  final String configuration;
  @override
  final String? configurationAlias;
  @override
  final String? typeName;
  @override
  final _i3.ThirdPartyType? type;

  factory _$SetTypeConfigurationInput(
          [void Function(SetTypeConfigurationInputBuilder)? updates]) =>
      (new SetTypeConfigurationInputBuilder()..update(updates))._build();

  _$SetTypeConfigurationInput._(
      {this.typeArn,
      required this.configuration,
      this.configurationAlias,
      this.typeName,
      this.type})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configuration, r'SetTypeConfigurationInput', 'configuration');
  }

  @override
  SetTypeConfigurationInput rebuild(
          void Function(SetTypeConfigurationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetTypeConfigurationInputBuilder toBuilder() =>
      new SetTypeConfigurationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetTypeConfigurationInput &&
        typeArn == other.typeArn &&
        configuration == other.configuration &&
        configurationAlias == other.configurationAlias &&
        typeName == other.typeName &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, configurationAlias.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class SetTypeConfigurationInputBuilder
    implements
        Builder<SetTypeConfigurationInput, SetTypeConfigurationInputBuilder> {
  _$SetTypeConfigurationInput? _$v;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  String? _configuration;
  String? get configuration => _$this._configuration;
  set configuration(String? configuration) =>
      _$this._configuration = configuration;

  String? _configurationAlias;
  String? get configurationAlias => _$this._configurationAlias;
  set configurationAlias(String? configurationAlias) =>
      _$this._configurationAlias = configurationAlias;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  _i3.ThirdPartyType? _type;
  _i3.ThirdPartyType? get type => _$this._type;
  set type(_i3.ThirdPartyType? type) => _$this._type = type;

  SetTypeConfigurationInputBuilder() {
    SetTypeConfigurationInput._init(this);
  }

  SetTypeConfigurationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _typeArn = $v.typeArn;
      _configuration = $v.configuration;
      _configurationAlias = $v.configurationAlias;
      _typeName = $v.typeName;
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetTypeConfigurationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetTypeConfigurationInput;
  }

  @override
  void update(void Function(SetTypeConfigurationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetTypeConfigurationInput build() => _build();

  _$SetTypeConfigurationInput _build() {
    final _$result = _$v ??
        new _$SetTypeConfigurationInput._(
            typeArn: typeArn,
            configuration: BuiltValueNullFieldError.checkNotNull(
                configuration, r'SetTypeConfigurationInput', 'configuration'),
            configurationAlias: configurationAlias,
            typeName: typeName,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
