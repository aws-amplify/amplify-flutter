// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.export_summary;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExportSummary extends ExportSummary {
  @override
  final String? exportArn;
  @override
  final _i2.ExportStatus? exportStatus;

  factory _$ExportSummary([void Function(ExportSummaryBuilder)? updates]) =>
      (new ExportSummaryBuilder()..update(updates))._build();

  _$ExportSummary._({this.exportArn, this.exportStatus}) : super._();

  @override
  ExportSummary rebuild(void Function(ExportSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExportSummaryBuilder toBuilder() => new ExportSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExportSummary &&
        exportArn == other.exportArn &&
        exportStatus == other.exportStatus;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportArn.hashCode);
    _$hash = $jc(_$hash, exportStatus.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ExportSummaryBuilder
    implements Builder<ExportSummary, ExportSummaryBuilder> {
  _$ExportSummary? _$v;

  String? _exportArn;
  String? get exportArn => _$this._exportArn;
  set exportArn(String? exportArn) => _$this._exportArn = exportArn;

  _i2.ExportStatus? _exportStatus;
  _i2.ExportStatus? get exportStatus => _$this._exportStatus;
  set exportStatus(_i2.ExportStatus? exportStatus) =>
      _$this._exportStatus = exportStatus;

  ExportSummaryBuilder() {
    ExportSummary._init(this);
  }

  ExportSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportArn = $v.exportArn;
      _exportStatus = $v.exportStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExportSummary other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExportSummary;
  }

  @override
  void update(void Function(ExportSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExportSummary build() => _build();

  _$ExportSummary _build() {
    final _$result = _$v ??
        new _$ExportSummary._(exportArn: exportArn, exportStatus: exportStatus);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
