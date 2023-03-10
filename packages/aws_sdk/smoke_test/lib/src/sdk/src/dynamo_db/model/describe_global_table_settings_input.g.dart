// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_global_table_settings_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeGlobalTableSettingsInput
    extends DescribeGlobalTableSettingsInput {
  @override
  final String globalTableName;

  factory _$DescribeGlobalTableSettingsInput(
          [void Function(DescribeGlobalTableSettingsInputBuilder)? updates]) =>
      (new DescribeGlobalTableSettingsInputBuilder()..update(updates))._build();

  _$DescribeGlobalTableSettingsInput._({required this.globalTableName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(globalTableName,
        r'DescribeGlobalTableSettingsInput', 'globalTableName');
  }

  @override
  DescribeGlobalTableSettingsInput rebuild(
          void Function(DescribeGlobalTableSettingsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeGlobalTableSettingsInputBuilder toBuilder() =>
      new DescribeGlobalTableSettingsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeGlobalTableSettingsInput &&
        globalTableName == other.globalTableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, globalTableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeGlobalTableSettingsInputBuilder
    implements
        Builder<DescribeGlobalTableSettingsInput,
            DescribeGlobalTableSettingsInputBuilder> {
  _$DescribeGlobalTableSettingsInput? _$v;

  String? _globalTableName;
  String? get globalTableName => _$this._globalTableName;
  set globalTableName(String? globalTableName) =>
      _$this._globalTableName = globalTableName;

  DescribeGlobalTableSettingsInputBuilder() {
    DescribeGlobalTableSettingsInput._init(this);
  }

  DescribeGlobalTableSettingsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _globalTableName = $v.globalTableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeGlobalTableSettingsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeGlobalTableSettingsInput;
  }

  @override
  void update(void Function(DescribeGlobalTableSettingsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeGlobalTableSettingsInput build() => _build();

  _$DescribeGlobalTableSettingsInput _build() {
    final _$result = _$v ??
        new _$DescribeGlobalTableSettingsInput._(
            globalTableName: BuiltValueNullFieldError.checkNotNull(
                globalTableName,
                r'DescribeGlobalTableSettingsInput',
                'globalTableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
