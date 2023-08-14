// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_filter_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorFilterRequest
    extends DeleteTrafficMirrorFilterRequest {
  @override
  final String? trafficMirrorFilterId;
  @override
  final bool dryRun;

  factory _$DeleteTrafficMirrorFilterRequest(
          [void Function(DeleteTrafficMirrorFilterRequestBuilder)? updates]) =>
      (new DeleteTrafficMirrorFilterRequestBuilder()..update(updates))._build();

  _$DeleteTrafficMirrorFilterRequest._(
      {this.trafficMirrorFilterId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTrafficMirrorFilterRequest', 'dryRun');
  }

  @override
  DeleteTrafficMirrorFilterRequest rebuild(
          void Function(DeleteTrafficMirrorFilterRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorFilterRequestBuilder toBuilder() =>
      new DeleteTrafficMirrorFilterRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorFilterRequest &&
        trafficMirrorFilterId == other.trafficMirrorFilterId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorFilterRequestBuilder
    implements
        Builder<DeleteTrafficMirrorFilterRequest,
            DeleteTrafficMirrorFilterRequestBuilder> {
  _$DeleteTrafficMirrorFilterRequest? _$v;

  String? _trafficMirrorFilterId;
  String? get trafficMirrorFilterId => _$this._trafficMirrorFilterId;
  set trafficMirrorFilterId(String? trafficMirrorFilterId) =>
      _$this._trafficMirrorFilterId = trafficMirrorFilterId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTrafficMirrorFilterRequestBuilder() {
    DeleteTrafficMirrorFilterRequest._init(this);
  }

  DeleteTrafficMirrorFilterRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterId = $v.trafficMirrorFilterId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorFilterRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorFilterRequest;
  }

  @override
  void update(void Function(DeleteTrafficMirrorFilterRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorFilterRequest build() => _build();

  _$DeleteTrafficMirrorFilterRequest _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorFilterRequest._(
            trafficMirrorFilterId: trafficMirrorFilterId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTrafficMirrorFilterRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
