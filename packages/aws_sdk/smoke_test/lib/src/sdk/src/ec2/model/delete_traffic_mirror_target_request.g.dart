// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_target_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorTargetRequest
    extends DeleteTrafficMirrorTargetRequest {
  @override
  final String? trafficMirrorTargetId;
  @override
  final bool dryRun;

  factory _$DeleteTrafficMirrorTargetRequest(
          [void Function(DeleteTrafficMirrorTargetRequestBuilder)? updates]) =>
      (new DeleteTrafficMirrorTargetRequestBuilder()..update(updates))._build();

  _$DeleteTrafficMirrorTargetRequest._(
      {this.trafficMirrorTargetId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTrafficMirrorTargetRequest', 'dryRun');
  }

  @override
  DeleteTrafficMirrorTargetRequest rebuild(
          void Function(DeleteTrafficMirrorTargetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorTargetRequestBuilder toBuilder() =>
      new DeleteTrafficMirrorTargetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorTargetRequest &&
        trafficMirrorTargetId == other.trafficMirrorTargetId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorTargetId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorTargetRequestBuilder
    implements
        Builder<DeleteTrafficMirrorTargetRequest,
            DeleteTrafficMirrorTargetRequestBuilder> {
  _$DeleteTrafficMirrorTargetRequest? _$v;

  String? _trafficMirrorTargetId;
  String? get trafficMirrorTargetId => _$this._trafficMirrorTargetId;
  set trafficMirrorTargetId(String? trafficMirrorTargetId) =>
      _$this._trafficMirrorTargetId = trafficMirrorTargetId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTrafficMirrorTargetRequestBuilder() {
    DeleteTrafficMirrorTargetRequest._init(this);
  }

  DeleteTrafficMirrorTargetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorTargetId = $v.trafficMirrorTargetId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorTargetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorTargetRequest;
  }

  @override
  void update(void Function(DeleteTrafficMirrorTargetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorTargetRequest build() => _build();

  _$DeleteTrafficMirrorTargetRequest _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorTargetRequest._(
            trafficMirrorTargetId: trafficMirrorTargetId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTrafficMirrorTargetRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
