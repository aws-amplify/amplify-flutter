// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_capacity_reservation_usage_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetCapacityReservationUsageRequest
    extends GetCapacityReservationUsageRequest {
  @override
  final String? capacityReservationId;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$GetCapacityReservationUsageRequest(
          [void Function(GetCapacityReservationUsageRequestBuilder)?
              updates]) =>
      (new GetCapacityReservationUsageRequestBuilder()..update(updates))
          ._build();

  _$GetCapacityReservationUsageRequest._(
      {this.capacityReservationId,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetCapacityReservationUsageRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetCapacityReservationUsageRequest', 'dryRun');
  }

  @override
  GetCapacityReservationUsageRequest rebuild(
          void Function(GetCapacityReservationUsageRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetCapacityReservationUsageRequestBuilder toBuilder() =>
      new GetCapacityReservationUsageRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetCapacityReservationUsageRequest &&
        capacityReservationId == other.capacityReservationId &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationId.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetCapacityReservationUsageRequestBuilder
    implements
        Builder<GetCapacityReservationUsageRequest,
            GetCapacityReservationUsageRequestBuilder> {
  _$GetCapacityReservationUsageRequest? _$v;

  String? _capacityReservationId;
  String? get capacityReservationId => _$this._capacityReservationId;
  set capacityReservationId(String? capacityReservationId) =>
      _$this._capacityReservationId = capacityReservationId;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetCapacityReservationUsageRequestBuilder() {
    GetCapacityReservationUsageRequest._init(this);
  }

  GetCapacityReservationUsageRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationId = $v.capacityReservationId;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetCapacityReservationUsageRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetCapacityReservationUsageRequest;
  }

  @override
  void update(
      void Function(GetCapacityReservationUsageRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetCapacityReservationUsageRequest build() => _build();

  _$GetCapacityReservationUsageRequest _build() {
    final _$result = _$v ??
        new _$GetCapacityReservationUsageRequest._(
            capacityReservationId: capacityReservationId,
            nextToken: nextToken,
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'GetCapacityReservationUsageRequest', 'maxResults'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetCapacityReservationUsageRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
