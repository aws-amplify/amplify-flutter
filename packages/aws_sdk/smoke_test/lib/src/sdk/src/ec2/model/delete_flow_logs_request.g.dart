// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_flow_logs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFlowLogsRequest extends DeleteFlowLogsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? flowLogIds;

  factory _$DeleteFlowLogsRequest(
          [void Function(DeleteFlowLogsRequestBuilder)? updates]) =>
      (new DeleteFlowLogsRequestBuilder()..update(updates))._build();

  _$DeleteFlowLogsRequest._({required this.dryRun, this.flowLogIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteFlowLogsRequest', 'dryRun');
  }

  @override
  DeleteFlowLogsRequest rebuild(
          void Function(DeleteFlowLogsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFlowLogsRequestBuilder toBuilder() =>
      new DeleteFlowLogsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFlowLogsRequest &&
        dryRun == other.dryRun &&
        flowLogIds == other.flowLogIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, flowLogIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFlowLogsRequestBuilder
    implements Builder<DeleteFlowLogsRequest, DeleteFlowLogsRequestBuilder> {
  _$DeleteFlowLogsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _flowLogIds;
  _i3.ListBuilder<String> get flowLogIds =>
      _$this._flowLogIds ??= new _i3.ListBuilder<String>();
  set flowLogIds(_i3.ListBuilder<String>? flowLogIds) =>
      _$this._flowLogIds = flowLogIds;

  DeleteFlowLogsRequestBuilder() {
    DeleteFlowLogsRequest._init(this);
  }

  DeleteFlowLogsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _flowLogIds = $v.flowLogIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFlowLogsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFlowLogsRequest;
  }

  @override
  void update(void Function(DeleteFlowLogsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFlowLogsRequest build() => _build();

  _$DeleteFlowLogsRequest _build() {
    _$DeleteFlowLogsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteFlowLogsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DeleteFlowLogsRequest', 'dryRun'),
              flowLogIds: _flowLogIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flowLogIds';
        _flowLogIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFlowLogsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
