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
    return $jf($jc(0, dataExport.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
