// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_table_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTableInput extends DescribeTableInput {
  @override
  final String tableName;

  factory _$DescribeTableInput(
          [void Function(DescribeTableInputBuilder)? updates]) =>
      (new DescribeTableInputBuilder()..update(updates))._build();

  _$DescribeTableInput._({required this.tableName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tableName, r'DescribeTableInput', 'tableName');
  }

  @override
  DescribeTableInput rebuild(
          void Function(DescribeTableInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTableInputBuilder toBuilder() =>
      new DescribeTableInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTableInput && tableName == other.tableName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tableName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTableInputBuilder
    implements Builder<DescribeTableInput, DescribeTableInputBuilder> {
  _$DescribeTableInput? _$v;

  String? _tableName;
  String? get tableName => _$this._tableName;
  set tableName(String? tableName) => _$this._tableName = tableName;

  DescribeTableInputBuilder() {
    DescribeTableInput._init(this);
  }

  DescribeTableInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tableName = $v.tableName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTableInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTableInput;
  }

  @override
  void update(void Function(DescribeTableInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTableInput build() => _build();

  _$DescribeTableInput _build() {
    final _$result = _$v ??
        new _$DescribeTableInput._(
            tableName: BuiltValueNullFieldError.checkNotNull(
                tableName, r'DescribeTableInput', 'tableName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
