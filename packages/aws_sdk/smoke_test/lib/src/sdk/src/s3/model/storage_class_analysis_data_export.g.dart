// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.storage_class_analysis_data_export;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StorageClassAnalysisDataExport extends StorageClassAnalysisDataExport {
  @override
  final _i2.AnalyticsExportDestination destination;
  @override
  final _i3.StorageClassAnalysisSchemaVersion outputSchemaVersion;

  factory _$StorageClassAnalysisDataExport(
          [void Function(StorageClassAnalysisDataExportBuilder)? updates]) =>
      (new StorageClassAnalysisDataExportBuilder()..update(updates))._build();

  _$StorageClassAnalysisDataExport._(
      {required this.destination, required this.outputSchemaVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        destination, r'StorageClassAnalysisDataExport', 'destination');
    BuiltValueNullFieldError.checkNotNull(outputSchemaVersion,
        r'StorageClassAnalysisDataExport', 'outputSchemaVersion');
  }

  @override
  StorageClassAnalysisDataExport rebuild(
          void Function(StorageClassAnalysisDataExportBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StorageClassAnalysisDataExportBuilder toBuilder() =>
      new StorageClassAnalysisDataExportBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StorageClassAnalysisDataExport &&
        destination == other.destination &&
        outputSchemaVersion == other.outputSchemaVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, destination.hashCode);
    _$hash = $jc(_$hash, outputSchemaVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StorageClassAnalysisDataExportBuilder
    implements
        Builder<StorageClassAnalysisDataExport,
            StorageClassAnalysisDataExportBuilder> {
  _$StorageClassAnalysisDataExport? _$v;

  _i2.AnalyticsExportDestinationBuilder? _destination;
  _i2.AnalyticsExportDestinationBuilder get destination =>
      _$this._destination ??= new _i2.AnalyticsExportDestinationBuilder();
  set destination(_i2.AnalyticsExportDestinationBuilder? destination) =>
      _$this._destination = destination;

  _i3.StorageClassAnalysisSchemaVersion? _outputSchemaVersion;
  _i3.StorageClassAnalysisSchemaVersion? get outputSchemaVersion =>
      _$this._outputSchemaVersion;
  set outputSchemaVersion(
          _i3.StorageClassAnalysisSchemaVersion? outputSchemaVersion) =>
      _$this._outputSchemaVersion = outputSchemaVersion;

  StorageClassAnalysisDataExportBuilder() {
    StorageClassAnalysisDataExport._init(this);
  }

  StorageClassAnalysisDataExportBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _destination = $v.destination.toBuilder();
      _outputSchemaVersion = $v.outputSchemaVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StorageClassAnalysisDataExport other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StorageClassAnalysisDataExport;
  }

  @override
  void update(void Function(StorageClassAnalysisDataExportBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StorageClassAnalysisDataExport build() => _build();

  _$StorageClassAnalysisDataExport _build() {
    _$StorageClassAnalysisDataExport _$result;
    try {
      _$result = _$v ??
          new _$StorageClassAnalysisDataExport._(
              destination: destination.build(),
              outputSchemaVersion: BuiltValueNullFieldError.checkNotNull(
                  outputSchemaVersion,
                  r'StorageClassAnalysisDataExport',
                  'outputSchemaVersion'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'destination';
        destination.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'StorageClassAnalysisDataExport', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
