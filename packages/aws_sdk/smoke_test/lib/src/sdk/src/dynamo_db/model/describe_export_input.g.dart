// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_export_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportInput extends DescribeExportInput {
  @override
  final String exportArn;

  factory _$DescribeExportInput(
          [void Function(DescribeExportInputBuilder)? updates]) =>
      (new DescribeExportInputBuilder()..update(updates))._build();

  _$DescribeExportInput._({required this.exportArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        exportArn, r'DescribeExportInput', 'exportArn');
  }

  @override
  DescribeExportInput rebuild(
          void Function(DescribeExportInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportInputBuilder toBuilder() =>
      new DescribeExportInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportInput && exportArn == other.exportArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportInputBuilder
    implements Builder<DescribeExportInput, DescribeExportInputBuilder> {
  _$DescribeExportInput? _$v;

  String? _exportArn;
  String? get exportArn => _$this._exportArn;
  set exportArn(String? exportArn) => _$this._exportArn = exportArn;

  DescribeExportInputBuilder() {
    DescribeExportInput._init(this);
  }

  DescribeExportInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportArn = $v.exportArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportInput;
  }

  @override
  void update(void Function(DescribeExportInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportInput build() => _build();

  _$DescribeExportInput _build() {
    final _$result = _$v ??
        new _$DescribeExportInput._(
            exportArn: BuiltValueNullFieldError.checkNotNull(
                exportArn, r'DescribeExportInput', 'exportArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
