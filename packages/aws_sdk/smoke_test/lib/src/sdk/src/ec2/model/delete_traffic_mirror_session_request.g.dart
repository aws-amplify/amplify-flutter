// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_session_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorSessionRequest
    extends DeleteTrafficMirrorSessionRequest {
  @override
  final String? trafficMirrorSessionId;
  @override
  final bool dryRun;

  factory _$DeleteTrafficMirrorSessionRequest(
          [void Function(DeleteTrafficMirrorSessionRequestBuilder)? updates]) =>
      (new DeleteTrafficMirrorSessionRequestBuilder()..update(updates))
          ._build();

  _$DeleteTrafficMirrorSessionRequest._(
      {this.trafficMirrorSessionId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTrafficMirrorSessionRequest', 'dryRun');
  }

  @override
  DeleteTrafficMirrorSessionRequest rebuild(
          void Function(DeleteTrafficMirrorSessionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorSessionRequestBuilder toBuilder() =>
      new DeleteTrafficMirrorSessionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorSessionRequest &&
        trafficMirrorSessionId == other.trafficMirrorSessionId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorSessionId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorSessionRequestBuilder
    implements
        Builder<DeleteTrafficMirrorSessionRequest,
            DeleteTrafficMirrorSessionRequestBuilder> {
  _$DeleteTrafficMirrorSessionRequest? _$v;

  String? _trafficMirrorSessionId;
  String? get trafficMirrorSessionId => _$this._trafficMirrorSessionId;
  set trafficMirrorSessionId(String? trafficMirrorSessionId) =>
      _$this._trafficMirrorSessionId = trafficMirrorSessionId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTrafficMirrorSessionRequestBuilder() {
    DeleteTrafficMirrorSessionRequest._init(this);
  }

  DeleteTrafficMirrorSessionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorSessionId = $v.trafficMirrorSessionId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorSessionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorSessionRequest;
  }

  @override
  void update(
      void Function(DeleteTrafficMirrorSessionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorSessionRequest build() => _build();

  _$DeleteTrafficMirrorSessionRequest _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorSessionRequest._(
            trafficMirrorSessionId: trafficMirrorSessionId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTrafficMirrorSessionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
