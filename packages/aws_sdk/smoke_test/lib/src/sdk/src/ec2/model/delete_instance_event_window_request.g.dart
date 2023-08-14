// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_instance_event_window_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteInstanceEventWindowRequest
    extends DeleteInstanceEventWindowRequest {
  @override
  final bool dryRun;
  @override
  final bool forceDelete;
  @override
  final String? instanceEventWindowId;

  factory _$DeleteInstanceEventWindowRequest(
          [void Function(DeleteInstanceEventWindowRequestBuilder)? updates]) =>
      (new DeleteInstanceEventWindowRequestBuilder()..update(updates))._build();

  _$DeleteInstanceEventWindowRequest._(
      {required this.dryRun,
      required this.forceDelete,
      this.instanceEventWindowId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteInstanceEventWindowRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        forceDelete, r'DeleteInstanceEventWindowRequest', 'forceDelete');
  }

  @override
  DeleteInstanceEventWindowRequest rebuild(
          void Function(DeleteInstanceEventWindowRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteInstanceEventWindowRequestBuilder toBuilder() =>
      new DeleteInstanceEventWindowRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteInstanceEventWindowRequest &&
        dryRun == other.dryRun &&
        forceDelete == other.forceDelete &&
        instanceEventWindowId == other.instanceEventWindowId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, forceDelete.hashCode);
    _$hash = $jc(_$hash, instanceEventWindowId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteInstanceEventWindowRequestBuilder
    implements
        Builder<DeleteInstanceEventWindowRequest,
            DeleteInstanceEventWindowRequestBuilder> {
  _$DeleteInstanceEventWindowRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _forceDelete;
  bool? get forceDelete => _$this._forceDelete;
  set forceDelete(bool? forceDelete) => _$this._forceDelete = forceDelete;

  String? _instanceEventWindowId;
  String? get instanceEventWindowId => _$this._instanceEventWindowId;
  set instanceEventWindowId(String? instanceEventWindowId) =>
      _$this._instanceEventWindowId = instanceEventWindowId;

  DeleteInstanceEventWindowRequestBuilder() {
    DeleteInstanceEventWindowRequest._init(this);
  }

  DeleteInstanceEventWindowRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _forceDelete = $v.forceDelete;
      _instanceEventWindowId = $v.instanceEventWindowId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteInstanceEventWindowRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteInstanceEventWindowRequest;
  }

  @override
  void update(void Function(DeleteInstanceEventWindowRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteInstanceEventWindowRequest build() => _build();

  _$DeleteInstanceEventWindowRequest _build() {
    final _$result = _$v ??
        new _$DeleteInstanceEventWindowRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteInstanceEventWindowRequest', 'dryRun'),
            forceDelete: BuiltValueNullFieldError.checkNotNull(forceDelete,
                r'DeleteInstanceEventWindowRequest', 'forceDelete'),
            instanceEventWindowId: instanceEventWindowId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
