// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.register_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterTypeInput extends RegisterTypeInput {
  @override
  final _i3.RegistryType? type;
  @override
  final String typeName;
  @override
  final String schemaHandlerPackage;
  @override
  final _i4.LoggingConfig? loggingConfig;
  @override
  final String? executionRoleArn;
  @override
  final String? clientRequestToken;

  factory _$RegisterTypeInput(
          [void Function(RegisterTypeInputBuilder)? updates]) =>
      (new RegisterTypeInputBuilder()..update(updates))._build();

  _$RegisterTypeInput._(
      {this.type,
      required this.typeName,
      required this.schemaHandlerPackage,
      this.loggingConfig,
      this.executionRoleArn,
      this.clientRequestToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        typeName, r'RegisterTypeInput', 'typeName');
    BuiltValueNullFieldError.checkNotNull(
        schemaHandlerPackage, r'RegisterTypeInput', 'schemaHandlerPackage');
  }

  @override
  RegisterTypeInput rebuild(void Function(RegisterTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterTypeInputBuilder toBuilder() =>
      new RegisterTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterTypeInput &&
        type == other.type &&
        typeName == other.typeName &&
        schemaHandlerPackage == other.schemaHandlerPackage &&
        loggingConfig == other.loggingConfig &&
        executionRoleArn == other.executionRoleArn &&
        clientRequestToken == other.clientRequestToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, schemaHandlerPackage.hashCode);
    _$hash = $jc(_$hash, loggingConfig.hashCode);
    _$hash = $jc(_$hash, executionRoleArn.hashCode);
    _$hash = $jc(_$hash, clientRequestToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterTypeInputBuilder
    implements Builder<RegisterTypeInput, RegisterTypeInputBuilder> {
  _$RegisterTypeInput? _$v;

  _i3.RegistryType? _type;
  _i3.RegistryType? get type => _$this._type;
  set type(_i3.RegistryType? type) => _$this._type = type;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _schemaHandlerPackage;
  String? get schemaHandlerPackage => _$this._schemaHandlerPackage;
  set schemaHandlerPackage(String? schemaHandlerPackage) =>
      _$this._schemaHandlerPackage = schemaHandlerPackage;

  _i4.LoggingConfigBuilder? _loggingConfig;
  _i4.LoggingConfigBuilder get loggingConfig =>
      _$this._loggingConfig ??= new _i4.LoggingConfigBuilder();
  set loggingConfig(_i4.LoggingConfigBuilder? loggingConfig) =>
      _$this._loggingConfig = loggingConfig;

  String? _executionRoleArn;
  String? get executionRoleArn => _$this._executionRoleArn;
  set executionRoleArn(String? executionRoleArn) =>
      _$this._executionRoleArn = executionRoleArn;

  String? _clientRequestToken;
  String? get clientRequestToken => _$this._clientRequestToken;
  set clientRequestToken(String? clientRequestToken) =>
      _$this._clientRequestToken = clientRequestToken;

  RegisterTypeInputBuilder() {
    RegisterTypeInput._init(this);
  }

  RegisterTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _typeName = $v.typeName;
      _schemaHandlerPackage = $v.schemaHandlerPackage;
      _loggingConfig = $v.loggingConfig?.toBuilder();
      _executionRoleArn = $v.executionRoleArn;
      _clientRequestToken = $v.clientRequestToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterTypeInput;
  }

  @override
  void update(void Function(RegisterTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterTypeInput build() => _build();

  _$RegisterTypeInput _build() {
    _$RegisterTypeInput _$result;
    try {
      _$result = _$v ??
          new _$RegisterTypeInput._(
              type: type,
              typeName: BuiltValueNullFieldError.checkNotNull(
                  typeName, r'RegisterTypeInput', 'typeName'),
              schemaHandlerPackage: BuiltValueNullFieldError.checkNotNull(
                  schemaHandlerPackage,
                  r'RegisterTypeInput',
                  'schemaHandlerPackage'),
              loggingConfig: _loggingConfig?.build(),
              executionRoleArn: executionRoleArn,
              clientRequestToken: clientRequestToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingConfig';
        _loggingConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RegisterTypeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
