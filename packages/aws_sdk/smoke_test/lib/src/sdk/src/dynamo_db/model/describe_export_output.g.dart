// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_export_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeExportOutput extends DescribeExportOutput {
  @override
  final ExportDescription? exportDescription;

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

  ExportDescriptionBuilder? _exportDescription;
  ExportDescriptionBuilder get exportDescription =>
      _$this._exportDescription ??= new ExportDescriptionBuilder();
  set exportDescription(ExportDescriptionBuilder? exportDescription) =>
      _$this._exportDescription = exportDescription;

  DescribeExportOutputBuilder();

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
