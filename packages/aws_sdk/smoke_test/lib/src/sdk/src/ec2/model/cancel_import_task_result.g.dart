// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_import_task_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelImportTaskResult extends CancelImportTaskResult {
  @override
  final String? importTaskId;
  @override
  final String? previousState;
  @override
  final String? state;

  factory _$CancelImportTaskResult(
          [void Function(CancelImportTaskResultBuilder)? updates]) =>
      (new CancelImportTaskResultBuilder()..update(updates))._build();

  _$CancelImportTaskResult._(
      {this.importTaskId, this.previousState, this.state})
      : super._();

  @override
  CancelImportTaskResult rebuild(
          void Function(CancelImportTaskResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelImportTaskResultBuilder toBuilder() =>
      new CancelImportTaskResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelImportTaskResult &&
        importTaskId == other.importTaskId &&
        previousState == other.previousState &&
        state == other.state;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, importTaskId.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelImportTaskResultBuilder
    implements Builder<CancelImportTaskResult, CancelImportTaskResultBuilder> {
  _$CancelImportTaskResult? _$v;

  String? _importTaskId;
  String? get importTaskId => _$this._importTaskId;
  set importTaskId(String? importTaskId) => _$this._importTaskId = importTaskId;

  String? _previousState;
  String? get previousState => _$this._previousState;
  set previousState(String? previousState) =>
      _$this._previousState = previousState;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  CancelImportTaskResultBuilder();

  CancelImportTaskResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _importTaskId = $v.importTaskId;
      _previousState = $v.previousState;
      _state = $v.state;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelImportTaskResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelImportTaskResult;
  }

  @override
  void update(void Function(CancelImportTaskResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelImportTaskResult build() => _build();

  _$CancelImportTaskResult _build() {
    final _$result = _$v ??
        new _$CancelImportTaskResult._(
            importTaskId: importTaskId,
            previousState: previousState,
            state: state);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
