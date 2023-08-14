// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_traffic_mirror_filter_rule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTrafficMirrorFilterRuleRequest
    extends DeleteTrafficMirrorFilterRuleRequest {
  @override
  final String? trafficMirrorFilterRuleId;
  @override
  final bool dryRun;

  factory _$DeleteTrafficMirrorFilterRuleRequest(
          [void Function(DeleteTrafficMirrorFilterRuleRequestBuilder)?
              updates]) =>
      (new DeleteTrafficMirrorFilterRuleRequestBuilder()..update(updates))
          ._build();

  _$DeleteTrafficMirrorFilterRuleRequest._(
      {this.trafficMirrorFilterRuleId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTrafficMirrorFilterRuleRequest', 'dryRun');
  }

  @override
  DeleteTrafficMirrorFilterRuleRequest rebuild(
          void Function(DeleteTrafficMirrorFilterRuleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTrafficMirrorFilterRuleRequestBuilder toBuilder() =>
      new DeleteTrafficMirrorFilterRuleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTrafficMirrorFilterRuleRequest &&
        trafficMirrorFilterRuleId == other.trafficMirrorFilterRuleId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trafficMirrorFilterRuleId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTrafficMirrorFilterRuleRequestBuilder
    implements
        Builder<DeleteTrafficMirrorFilterRuleRequest,
            DeleteTrafficMirrorFilterRuleRequestBuilder> {
  _$DeleteTrafficMirrorFilterRuleRequest? _$v;

  String? _trafficMirrorFilterRuleId;
  String? get trafficMirrorFilterRuleId => _$this._trafficMirrorFilterRuleId;
  set trafficMirrorFilterRuleId(String? trafficMirrorFilterRuleId) =>
      _$this._trafficMirrorFilterRuleId = trafficMirrorFilterRuleId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTrafficMirrorFilterRuleRequestBuilder() {
    DeleteTrafficMirrorFilterRuleRequest._init(this);
  }

  DeleteTrafficMirrorFilterRuleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trafficMirrorFilterRuleId = $v.trafficMirrorFilterRuleId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTrafficMirrorFilterRuleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTrafficMirrorFilterRuleRequest;
  }

  @override
  void update(
      void Function(DeleteTrafficMirrorFilterRuleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTrafficMirrorFilterRuleRequest build() => _build();

  _$DeleteTrafficMirrorFilterRuleRequest _build() {
    final _$result = _$v ??
        new _$DeleteTrafficMirrorFilterRuleRequest._(
            trafficMirrorFilterRuleId: trafficMirrorFilterRuleId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTrafficMirrorFilterRuleRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
