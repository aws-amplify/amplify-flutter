// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups_for_capacity_reservation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetGroupsForCapacityReservationRequest
    extends GetGroupsForCapacityReservationRequest {
  @override
  final String? capacityReservationId;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final bool dryRun;

  factory _$GetGroupsForCapacityReservationRequest(
          [void Function(GetGroupsForCapacityReservationRequestBuilder)?
              updates]) =>
      (new GetGroupsForCapacityReservationRequestBuilder()..update(updates))
          ._build();

  _$GetGroupsForCapacityReservationRequest._(
      {this.capacityReservationId,
      this.nextToken,
      required this.maxResults,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetGroupsForCapacityReservationRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetGroupsForCapacityReservationRequest', 'dryRun');
  }

  @override
  GetGroupsForCapacityReservationRequest rebuild(
          void Function(GetGroupsForCapacityReservationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetGroupsForCapacityReservationRequestBuilder toBuilder() =>
      new GetGroupsForCapacityReservationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetGroupsForCapacityReservationRequest &&
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

class GetGroupsForCapacityReservationRequestBuilder
    implements
        Builder<GetGroupsForCapacityReservationRequest,
            GetGroupsForCapacityReservationRequestBuilder> {
  _$GetGroupsForCapacityReservationRequest? _$v;

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

  GetGroupsForCapacityReservationRequestBuilder() {
    GetGroupsForCapacityReservationRequest._init(this);
  }

  GetGroupsForCapacityReservationRequestBuilder get _$this {
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
  void replace(GetGroupsForCapacityReservationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetGroupsForCapacityReservationRequest;
  }

  @override
  void update(
      void Function(GetGroupsForCapacityReservationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetGroupsForCapacityReservationRequest build() => _build();

  _$GetGroupsForCapacityReservationRequest _build() {
    final _$result = _$v ??
        new _$GetGroupsForCapacityReservationRequest._(
            capacityReservationId: capacityReservationId,
            nextToken: nextToken,
            maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                r'GetGroupsForCapacityReservationRequest', 'maxResults'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'GetGroupsForCapacityReservationRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
