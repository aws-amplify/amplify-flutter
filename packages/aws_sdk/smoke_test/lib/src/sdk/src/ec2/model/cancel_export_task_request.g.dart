// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_export_task_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelExportTaskRequest extends CancelExportTaskRequest {
  @override
  final String? exportTaskId;

  factory _$CancelExportTaskRequest(
          [void Function(CancelExportTaskRequestBuilder)? updates]) =>
      (new CancelExportTaskRequestBuilder()..update(updates))._build();

  _$CancelExportTaskRequest._({this.exportTaskId}) : super._();

  @override
  CancelExportTaskRequest rebuild(
          void Function(CancelExportTaskRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelExportTaskRequestBuilder toBuilder() =>
      new CancelExportTaskRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelExportTaskRequest &&
        exportTaskId == other.exportTaskId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, exportTaskId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelExportTaskRequestBuilder
    implements
        Builder<CancelExportTaskRequest, CancelExportTaskRequestBuilder> {
  _$CancelExportTaskRequest? _$v;

  String? _exportTaskId;
  String? get exportTaskId => _$this._exportTaskId;
  set exportTaskId(String? exportTaskId) => _$this._exportTaskId = exportTaskId;

  CancelExportTaskRequestBuilder();

  CancelExportTaskRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exportTaskId = $v.exportTaskId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelExportTaskRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelExportTaskRequest;
  }

  @override
  void update(void Function(CancelExportTaskRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelExportTaskRequest build() => _build();

  _$CancelExportTaskRequest _build() {
    final _$result =
        _$v ?? new _$CancelExportTaskRequest._(exportTaskId: exportTaskId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
