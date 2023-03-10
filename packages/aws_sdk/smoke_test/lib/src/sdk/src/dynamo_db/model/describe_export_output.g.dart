// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.describe_export_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportOutput extends DescribeExportOutput {
  @override
  final _i2.ExportDescription? exportDescription;

  factory _$DescribeExportOutput(
          [void Function(DescribeExportOutputBuilder)? updates]) =>
      (new DescribeExportOutputBuilder()..update(updates))._build();

  _$DescribeExportOutput._({this.exportDescription}) : super._();

  @override
  DescribeExportOutput rebuild(
          void Function(DescribeExportOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeExportOutputBuilder toBuilder() =>
      new DescribeExportOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeExportOutput &&
        exportDescription == other.exportDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeExportOutputBuilder
    implements Builder<DescribeExportOutput, DescribeExportOutputBuilder> {
  _$DescribeExportOutput? _$v;

  _i2.ExportDescriptionBuilder? _exportDescription;
  _i2.ExportDescriptionBuilder get exportDescription =>
      _$this._exportDescription ??= new _i2.ExportDescriptionBuilder();
  set exportDescription(_i2.ExportDescriptionBuilder? exportDescription) =>
      _$this._exportDescription = exportDescription;

  DescribeExportOutputBuilder() {
    DescribeExportOutput._init(this);
  }

  DescribeExportOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportDescription = $v.exportDescription?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeExportOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeExportOutput;
  }

  @override
  void update(void Function(DescribeExportOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeExportOutput build() => _build();

  _$DescribeExportOutput _build() {
    _$DescribeExportOutput _$result;
    try {
      _$result = _$v ??
          new _$DescribeExportOutput._(
              exportDescription: _exportDescription?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exportDescription';
        _exportDescription?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeExportOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
