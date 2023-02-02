// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_import_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeImportInput extends DescribeImportInput {
  @override
  final String importArn;

  factory _$DescribeImportInput(
          [void Function(DescribeImportInputBuilder)? updates]) =>
      (new DescribeImportInputBuilder()..update(updates))._build();

  _$DescribeImportInput._({required this.importArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        importArn, r'DescribeImportInput', 'importArn');
  }

  @override
  DescribeImportInput rebuild(
          void Function(DescribeImportInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeImportInputBuilder toBuilder() =>
      new DescribeImportInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeImportInput && importArn == other.importArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeImportInputBuilder
    implements Builder<DescribeImportInput, DescribeImportInputBuilder> {
  _$DescribeImportInput? _$v;

  String? _importArn;
  String? get importArn => _$this._importArn;
  set importArn(String? importArn) => _$this._importArn = importArn;

  DescribeImportInputBuilder() {
    DescribeImportInput._init(this);
  }

  DescribeImportInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importArn = $v.importArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeImportInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeImportInput;
  }

  @override
  void update(void Function(DescribeImportInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeImportInput build() => _build();

  _$DescribeImportInput _build() {
    final _$result = _$v ??
        new _$DescribeImportInput._(
            importArn: BuiltValueNullFieldError.checkNotNull(
                importArn, r'DescribeImportInput', 'importArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
