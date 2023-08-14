// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_import_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelImportTaskRequest extends CancelImportTaskRequest {
  @override
  final String? cancelReason;
  @override
  final bool dryRun;
  @override
  final String? importTaskId;

  factory _$CancelImportTaskRequest(
          [void Function(CancelImportTaskRequestBuilder)? updates]) =>
      (new CancelImportTaskRequestBuilder()..update(updates))._build();

  _$CancelImportTaskRequest._(
      {this.cancelReason, required this.dryRun, this.importTaskId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelImportTaskRequest', 'dryRun');
  }

  @override
  CancelImportTaskRequest rebuild(
          void Function(CancelImportTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelImportTaskRequestBuilder toBuilder() =>
      new CancelImportTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelImportTaskRequest &&
        cancelReason == other.cancelReason &&
        dryRun == other.dryRun &&
        importTaskId == other.importTaskId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cancelReason.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, importTaskId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelImportTaskRequestBuilder
    implements
        Builder<CancelImportTaskRequest, CancelImportTaskRequestBuilder> {
  _$CancelImportTaskRequest? _$v;

  String? _cancelReason;
  String? get cancelReason => _$this._cancelReason;
  set cancelReason(String? cancelReason) => _$this._cancelReason = cancelReason;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _importTaskId;
  String? get importTaskId => _$this._importTaskId;
  set importTaskId(String? importTaskId) => _$this._importTaskId = importTaskId;

  CancelImportTaskRequestBuilder() {
    CancelImportTaskRequest._init(this);
  }

  CancelImportTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cancelReason = $v.cancelReason;
      _dryRun = $v.dryRun;
      _importTaskId = $v.importTaskId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelImportTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelImportTaskRequest;
  }

  @override
  void update(void Function(CancelImportTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelImportTaskRequest build() => _build();

  _$CancelImportTaskRequest _build() {
    final _$result = _$v ??
        new _$CancelImportTaskRequest._(
            cancelReason: cancelReason,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'CancelImportTaskRequest', 'dryRun'),
            importTaskId: importTaskId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
