// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.type_configuration_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TypeConfigurationDetails extends TypeConfigurationDetails {
  @override
  final String? arn;
  @override
  final String? alias;
  @override
  final String? configuration;
  @override
  final DateTime? lastUpdated;
  @override
  final String? typeArn;
  @override
  final String? typeName;
  @override
  final bool? isDefaultConfiguration;

  factory _$TypeConfigurationDetails(
          [void Function(TypeConfigurationDetailsBuilder)? updates]) =>
      (new TypeConfigurationDetailsBuilder()..update(updates))._build();

  _$TypeConfigurationDetails._(
      {this.arn,
      this.alias,
      this.configuration,
      this.lastUpdated,
      this.typeArn,
      this.typeName,
      this.isDefaultConfiguration})
      : super._();

  @override
  TypeConfigurationDetails rebuild(
          void Function(TypeConfigurationDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TypeConfigurationDetailsBuilder toBuilder() =>
      new TypeConfigurationDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TypeConfigurationDetails &&
        arn == other.arn &&
        alias == other.alias &&
        configuration == other.configuration &&
        lastUpdated == other.lastUpdated &&
        typeArn == other.typeArn &&
        typeName == other.typeName &&
        isDefaultConfiguration == other.isDefaultConfiguration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, alias.hashCode);
    _$hash = $jc(_$hash, configuration.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, typeArn.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, isDefaultConfiguration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TypeConfigurationDetailsBuilder
    implements
        Builder<TypeConfigurationDetails, TypeConfigurationDetailsBuilder> {
  _$TypeConfigurationDetails? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _alias;
  String? get alias => _$this._alias;
  set alias(String? alias) => _$this._alias = alias;

  String? _configuration;
  String? get configuration => _$this._configuration;
  set configuration(String? configuration) =>
      _$this._configuration = configuration;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  String? _typeArn;
  String? get typeArn => _$this._typeArn;
  set typeArn(String? typeArn) => _$this._typeArn = typeArn;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  bool? _isDefaultConfiguration;
  bool? get isDefaultConfiguration => _$this._isDefaultConfiguration;
  set isDefaultConfiguration(bool? isDefaultConfiguration) =>
      _$this._isDefaultConfiguration = isDefaultConfiguration;

  TypeConfigurationDetailsBuilder() {
    TypeConfigurationDetails._init(this);
  }

  TypeConfigurationDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _alias = $v.alias;
      _configuration = $v.configuration;
      _lastUpdated = $v.lastUpdated;
      _typeArn = $v.typeArn;
      _typeName = $v.typeName;
      _isDefaultConfiguration = $v.isDefaultConfiguration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TypeConfigurationDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TypeConfigurationDetails;
  }

  @override
  void update(void Function(TypeConfigurationDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TypeConfigurationDetails build() => _build();

  _$TypeConfigurationDetails _build() {
    final _$result = _$v ??
        new _$TypeConfigurationDetails._(
            arn: arn,
            alias: alias,
            configuration: configuration,
            lastUpdated: lastUpdated,
            typeArn: typeArn,
            typeName: typeName,
            isDefaultConfiguration: isDefaultConfiguration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
