// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.storage_class_analysis;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageClassAnalysis extends StorageClassAnalysis {
  @override
  final _i2.StorageClassAnalysisDataExport? dataExport;

  factory _$StorageClassAnalysis(
          [void Function(StorageClassAnalysisBuilder)? updates]) =>
      (new StorageClassAnalysisBuilder()..update(updates))._build();

  _$StorageClassAnalysis._({this.dataExport}) : super._();

  @override
  StorageClassAnalysis rebuild(
          void Function(StorageClassAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageClassAnalysisBuilder toBuilder() =>
      new StorageClassAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageClassAnalysis && dataExport == other.dataExport;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataExport.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageClassAnalysisBuilder
    implements Builder<StorageClassAnalysis, StorageClassAnalysisBuilder> {
  _$StorageClassAnalysis? _$v;

  _i2.StorageClassAnalysisDataExportBuilder? _dataExport;
  _i2.StorageClassAnalysisDataExportBuilder get dataExport =>
      _$this._dataExport ??= new _i2.StorageClassAnalysisDataExportBuilder();
  set dataExport(_i2.StorageClassAnalysisDataExportBuilder? dataExport) =>
      _$this._dataExport = dataExport;

  StorageClassAnalysisBuilder() {
    StorageClassAnalysis._init(this);
  }

  StorageClassAnalysisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataExport = $v.dataExport?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageClassAnalysis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StorageClassAnalysis;
  }

  @override
  void update(void Function(StorageClassAnalysisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageClassAnalysis build() => _build();

  _$StorageClassAnalysis _build() {
    _$StorageClassAnalysis _$result;
    try {
      _$result =
          _$v ?? new _$StorageClassAnalysis._(dataExport: _dataExport?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataExport';
        _dataExport?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StorageClassAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
