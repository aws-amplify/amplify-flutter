// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_global_table_settings_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeGlobalTableSettingsOutput
    extends DescribeGlobalTableSettingsOutput {
  @override
  final String? globalTableName;
  @override
  final _i3.BuiltList<_i2.ReplicaSettingsDescription>? replicaSettings;

  factory _$DescribeGlobalTableSettingsOutput(
          [void Function(DescribeGlobalTableSettingsOutputBuilder)? updates]) =>
      (new DescribeGlobalTableSettingsOutputBuilder()..update(updates))
          ._build();

  _$DescribeGlobalTableSettingsOutput._(
      {this.globalTableName, this.replicaSettings})
      : super._();

  @override
  DescribeGlobalTableSettingsOutput rebuild(
          void Function(DescribeGlobalTableSettingsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeGlobalTableSettingsOutputBuilder toBuilder() =>
      new DescribeGlobalTableSettingsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeGlobalTableSettingsOutput &&
        globalTableName == other.globalTableName &&
        replicaSettings == other.replicaSettings;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, globalTableName.hashCode), replicaSettings.hashCode));
  }
}

class DescribeGlobalTableSettingsOutputBuilder
    implements
        Builder<DescribeGlobalTableSettingsOutput,
            DescribeGlobalTableSettingsOutputBuilder> {
  _$DescribeGlobalTableSettingsOutput? _$v;

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

  DescribeGlobalTableSettingsOutputBuilder() {
    DescribeGlobalTableSettingsOutput._init(this);
  }

  DescribeGlobalTableSettingsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _replicaSettings = $v.replicaSettings?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeGlobalTableSettingsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeGlobalTableSettingsOutput;
  }

  @override
  void update(
      void Function(DescribeGlobalTableSettingsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeGlobalTableSettingsOutput build() => _build();

  _$DescribeGlobalTableSettingsOutput _build() {
    _$DescribeGlobalTableSettingsOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeGlobalTableSettingsOutput._(
              globalTableName: globalTableName,
              replicaSettings: _replicaSettings?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'replicaSettings';
        _replicaSettings?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeGlobalTableSettingsOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
