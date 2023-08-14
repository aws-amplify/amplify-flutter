// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_spot_fleet_requests_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelSpotFleetRequestsRequest extends CancelSpotFleetRequestsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? spotFleetRequestIds;
  @override
  final bool terminateInstances;

  factory _$CancelSpotFleetRequestsRequest(
          [void Function(CancelSpotFleetRequestsRequestBuilder)? updates]) =>
      (new CancelSpotFleetRequestsRequestBuilder()..update(updates))._build();

  _$CancelSpotFleetRequestsRequest._(
      {required this.dryRun,
      this.spotFleetRequestIds,
      required this.terminateInstances})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CancelSpotFleetRequestsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(terminateInstances,
        r'CancelSpotFleetRequestsRequest', 'terminateInstances');
  }

  @override
  CancelSpotFleetRequestsRequest rebuild(
          void Function(CancelSpotFleetRequestsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelSpotFleetRequestsRequestBuilder toBuilder() =>
      new CancelSpotFleetRequestsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelSpotFleetRequestsRequest &&
        dryRun == other.dryRun &&
        spotFleetRequestIds == other.spotFleetRequestIds &&
        terminateInstances == other.terminateInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestIds.hashCode);
    _$hash = $jc(_$hash, terminateInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CancelSpotFleetRequestsRequestBuilder
    implements
        Builder<CancelSpotFleetRequestsRequest,
            CancelSpotFleetRequestsRequestBuilder> {
  _$CancelSpotFleetRequestsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _spotFleetRequestIds;
  _i3.ListBuilder<String> get spotFleetRequestIds =>
      _$this._spotFleetRequestIds ??= new _i3.ListBuilder<String>();
  set spotFleetRequestIds(_i3.ListBuilder<String>? spotFleetRequestIds) =>
      _$this._spotFleetRequestIds = spotFleetRequestIds;

  bool? _terminateInstances;
  bool? get terminateInstances => _$this._terminateInstances;
  set terminateInstances(bool? terminateInstances) =>
      _$this._terminateInstances = terminateInstances;

  CancelSpotFleetRequestsRequestBuilder() {
    CancelSpotFleetRequestsRequest._init(this);
  }

  CancelSpotFleetRequestsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _spotFleetRequestIds = $v.spotFleetRequestIds?.toBuilder();
      _terminateInstances = $v.terminateInstances;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelSpotFleetRequestsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelSpotFleetRequestsRequest;
  }

  @override
  void update(void Function(CancelSpotFleetRequestsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelSpotFleetRequestsRequest build() => _build();

  _$CancelSpotFleetRequestsRequest _build() {
    _$CancelSpotFleetRequestsRequest _$result;
    try {
      _$result = _$v ??
          new _$CancelSpotFleetRequestsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'CancelSpotFleetRequestsRequest', 'dryRun'),
              spotFleetRequestIds: _spotFleetRequestIds?.build(),
              terminateInstances: BuiltValueNullFieldError.checkNotNull(
                  terminateInstances,
                  r'CancelSpotFleetRequestsRequest',
                  'terminateInstances'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotFleetRequestIds';
        _spotFleetRequestIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelSpotFleetRequestsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
