// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.activate_type_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivateTypeInput extends ActivateTypeInput {
  @override
  final _i3.ThirdPartyType? type;
  @override
  final String? publicTypeArn;
  @override
  final String? publisherId;
  @override
  final String? typeName;
  @override
  final String? typeNameAlias;
  @override
  final bool? autoUpdate;
  @override
  final _i4.LoggingConfig? loggingConfig;
  @override
  final String? executionRoleArn;
  @override
  final _i5.VersionBump? versionBump;
  @override
  final _i6.Int64? majorVersion;

  factory _$ActivateTypeInput(
          [void Function(ActivateTypeInputBuilder)? updates]) =>
      (new ActivateTypeInputBuilder()..update(updates))._build();

  _$ActivateTypeInput._(
      {this.type,
      this.publicTypeArn,
      this.publisherId,
      this.typeName,
      this.typeNameAlias,
      this.autoUpdate,
      this.loggingConfig,
      this.executionRoleArn,
      this.versionBump,
      this.majorVersion})
      : super._();

  @override
  ActivateTypeInput rebuild(void Function(ActivateTypeInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivateTypeInputBuilder toBuilder() =>
      new ActivateTypeInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivateTypeInput &&
        type == other.type &&
        publicTypeArn == other.publicTypeArn &&
        publisherId == other.publisherId &&
        typeName == other.typeName &&
        typeNameAlias == other.typeNameAlias &&
        autoUpdate == other.autoUpdate &&
        loggingConfig == other.loggingConfig &&
        executionRoleArn == other.executionRoleArn &&
        versionBump == other.versionBump &&
        majorVersion == other.majorVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, publicTypeArn.hashCode);
    _$hash = $jc(_$hash, publisherId.hashCode);
    _$hash = $jc(_$hash, typeName.hashCode);
    _$hash = $jc(_$hash, typeNameAlias.hashCode);
    _$hash = $jc(_$hash, autoUpdate.hashCode);
    _$hash = $jc(_$hash, loggingConfig.hashCode);
    _$hash = $jc(_$hash, executionRoleArn.hashCode);
    _$hash = $jc(_$hash, versionBump.hashCode);
    _$hash = $jc(_$hash, majorVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ActivateTypeInputBuilder
    implements Builder<ActivateTypeInput, ActivateTypeInputBuilder> {
  _$ActivateTypeInput? _$v;

  _i3.ThirdPartyType? _type;
  _i3.ThirdPartyType? get type => _$this._type;
  set type(_i3.ThirdPartyType? type) => _$this._type = type;

  String? _publicTypeArn;
  String? get publicTypeArn => _$this._publicTypeArn;
  set publicTypeArn(String? publicTypeArn) =>
      _$this._publicTypeArn = publicTypeArn;

  String? _publisherId;
  String? get publisherId => _$this._publisherId;
  set publisherId(String? publisherId) => _$this._publisherId = publisherId;

  String? _typeName;
  String? get typeName => _$this._typeName;
  set typeName(String? typeName) => _$this._typeName = typeName;

  String? _typeNameAlias;
  String? get typeNameAlias => _$this._typeNameAlias;
  set typeNameAlias(String? typeNameAlias) =>
      _$this._typeNameAlias = typeNameAlias;

  bool? _autoUpdate;
  bool? get autoUpdate => _$this._autoUpdate;
  set autoUpdate(bool? autoUpdate) => _$this._autoUpdate = autoUpdate;

  _i4.LoggingConfigBuilder? _loggingConfig;
  _i4.LoggingConfigBuilder get loggingConfig =>
      _$this._loggingConfig ??= new _i4.LoggingConfigBuilder();
  set loggingConfig(_i4.LoggingConfigBuilder? loggingConfig) =>
      _$this._loggingConfig = loggingConfig;

  String? _executionRoleArn;
  String? get executionRoleArn => _$this._executionRoleArn;
  set executionRoleArn(String? executionRoleArn) =>
      _$this._executionRoleArn = executionRoleArn;

  _i5.VersionBump? _versionBump;
  _i5.VersionBump? get versionBump => _$this._versionBump;
  set versionBump(_i5.VersionBump? versionBump) =>
      _$this._versionBump = versionBump;

  _i6.Int64? _majorVersion;
  _i6.Int64? get majorVersion => _$this._majorVersion;
  set majorVersion(_i6.Int64? majorVersion) =>
      _$this._majorVersion = majorVersion;

  ActivateTypeInputBuilder() {
    ActivateTypeInput._init(this);
  }

  ActivateTypeInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _publicTypeArn = $v.publicTypeArn;
      _publisherId = $v.publisherId;
      _typeName = $v.typeName;
      _typeNameAlias = $v.typeNameAlias;
      _autoUpdate = $v.autoUpdate;
      _loggingConfig = $v.loggingConfig?.toBuilder();
      _executionRoleArn = $v.executionRoleArn;
      _versionBump = $v.versionBump;
      _majorVersion = $v.majorVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivateTypeInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivateTypeInput;
  }

  @override
  void update(void Function(ActivateTypeInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivateTypeInput build() => _build();

  _$ActivateTypeInput _build() {
    _$ActivateTypeInput _$result;
    try {
      _$result = _$v ??
          new _$ActivateTypeInput._(
              type: type,
              publicTypeArn: publicTypeArn,
              publisherId: publisherId,
              typeName: typeName,
              typeNameAlias: typeNameAlias,
              autoUpdate: autoUpdate,
              loggingConfig: _loggingConfig?.build(),
              executionRoleArn: executionRoleArn,
              versionBump: versionBump,
              majorVersion: majorVersion);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'loggingConfig';
        _loggingConfig?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActivateTypeInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
