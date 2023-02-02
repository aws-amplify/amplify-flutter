// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.update_global_table_settings_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateGlobalTableSettingsOutput
    extends UpdateGlobalTableSettingsOutput {
  @override
  final String? globalTableName;
  @override
  final _i3.BuiltList<_i2.ReplicaSettingsDescription>? replicaSettings;

  factory _$UpdateGlobalTableSettingsOutput(
          [void Function(UpdateGlobalTableSettingsOutputBuilder)? updates]) =>
      (new UpdateGlobalTableSettingsOutputBuilder()..update(updates))._build();

  _$UpdateGlobalTableSettingsOutput._(
      {this.globalTableName, this.replicaSettings})
      : super._();

  @override
  UpdateGlobalTableSettingsOutput rebuild(
          void Function(UpdateGlobalTableSettingsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateGlobalTableSettingsOutputBuilder toBuilder() =>
      new UpdateGlobalTableSettingsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateGlobalTableSettingsOutput &&
        globalTableName == other.globalTableName &&
        replicaSettings == other.replicaSettings;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableName.hashCode);
    _$hash = $jc(_$hash, replicaSettings.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateGlobalTableSettingsOutputBuilder
    implements
        Builder<UpdateGlobalTableSettingsOutput,
            UpdateGlobalTableSettingsOutputBuilder> {
  _$UpdateGlobalTableSettingsOutput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  _i3.ListBuilder<_i2.ReplicaSettingsDescription>? _replicaSettings;
  _i3.ListBuilder<_i2.ReplicaSettingsDescription> get replicaSettings =>
      _$this._replicaSettings ??=
          new _i3.ListBuilder<_i2.ReplicaSettingsDescription>();
  set replicaSettings(
          _i3.ListBuilder<_i2.ReplicaSettingsDescription>? replicaSettings) =>
      _$this._replicaSettings = replicaSettings;

  UpdateGlobalTableSettingsOutputBuilder() {
    UpdateGlobalTableSettingsOutput._init(this);
  }

  UpdateGlobalTableSettingsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _replicaSettings = $v.replicaSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateGlobalTableSettingsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateGlobalTableSettingsOutput;
  }

  @override
  void update(void Function(UpdateGlobalTableSettingsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateGlobalTableSettingsOutput build() => _build();

  _$UpdateGlobalTableSettingsOutput _build() {
    _$UpdateGlobalTableSettingsOutput _$result;
    try {
      _$result = _$v ??
          new _$UpdateGlobalTableSettingsOutput._(
              globalTableName: globalTableName,
              replicaSettings: _replicaSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaSettings';
        _replicaSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UpdateGlobalTableSettingsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
