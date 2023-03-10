// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_continuous_backups_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeContinuousBackupsInput extends DescribeContinuousBackupsInput {
  @override
  final String tableName;

  factory _$DescribeContinuousBackupsInput(
          [void Function(DescribeContinuousBackupsInputBuilder)? updates]) =>
      (new DescribeContinuousBackupsInputBuilder()..update(updates))._build();

  _$DescribeContinuousBackupsInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeContinuousBackupsInput', 'tableName');
  }

  @override
  DescribeContinuousBackupsInput rebuild(
          void Function(DescribeContinuousBackupsInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeContinuousBackupsInputBuilder toBuilder() =>
      new DescribeContinuousBackupsInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeContinuousBackupsInput &&
        tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeContinuousBackupsInputBuilder
    implements
        Builder<DescribeContinuousBackupsInput,
            DescribeContinuousBackupsInputBuilder> {
  _$DescribeContinuousBackupsInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeContinuousBackupsInputBuilder() {
    DescribeContinuousBackupsInput._init(this);
  }

  DescribeContinuousBackupsInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeContinuousBackupsInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeContinuousBackupsInput;
  }

  @override
  void update(void Function(DescribeContinuousBackupsInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeContinuousBackupsInput build() => _build();

  _$DescribeContinuousBackupsInput _build() {
    final _$result = _$v ??
        new _$DescribeContinuousBackupsInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeContinuousBackupsInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
