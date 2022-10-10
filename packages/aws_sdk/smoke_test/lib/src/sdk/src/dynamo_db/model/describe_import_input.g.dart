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
    return $jf($jc(0, importArn.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
