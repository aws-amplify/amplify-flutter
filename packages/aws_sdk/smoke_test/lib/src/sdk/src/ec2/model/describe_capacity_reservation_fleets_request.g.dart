// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_capacity_reservation_fleets_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeCapacityReservationFleetsRequest
    extends DescribeCapacityReservationFleetsRequest {
  @override
  final _i3.BuiltList<String>? capacityReservationFleetIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;

  factory _$DescribeCapacityReservationFleetsRequest(
          [void Function(DescribeCapacityReservationFleetsRequestBuilder)?
              updates]) =>
      (new DescribeCapacityReservationFleetsRequestBuilder()..update(updates))
          ._build();

  _$DescribeCapacityReservationFleetsRequest._(
      {this.capacityReservationFleetIds,
      this.nextToken,
      required this.maxResults,
      this.filters,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeCapacityReservationFleetsRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeCapacityReservationFleetsRequest', 'dryRun');
  }

  @override
  DescribeCapacityReservationFleetsRequest rebuild(
          void Function(DescribeCapacityReservationFleetsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeCapacityReservationFleetsRequestBuilder toBuilder() =>
      new DescribeCapacityReservationFleetsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeCapacityReservationFleetsRequest &&
        capacityReservationFleetIds == other.capacityReservationFleetIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults &&
        filters == other.filters &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, capacityReservationFleetIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeCapacityReservationFleetsRequestBuilder
    implements
        Builder<DescribeCapacityReservationFleetsRequest,
            DescribeCapacityReservationFleetsRequestBuilder> {
  _$DescribeCapacityReservationFleetsRequest? _$v;

  _i3.ListBuilder<String>? _capacityReservationFleetIds;
  _i3.ListBuilder<String> get capacityReservationFleetIds =>
      _$this._capacityReservationFleetIds ??= new _i3.ListBuilder<String>();
  set capacityReservationFleetIds(
          _i3.ListBuilder<String>? capacityReservationFleetIds) =>
      _$this._capacityReservationFleetIds = capacityReservationFleetIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeCapacityReservationFleetsRequestBuilder() {
    DescribeCapacityReservationFleetsRequest._init(this);
  }

  DescribeCapacityReservationFleetsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _capacityReservationFleetIds =
          $v.capacityReservationFleetIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeCapacityReservationFleetsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeCapacityReservationFleetsRequest;
  }

  @override
  void update(
      void Function(DescribeCapacityReservationFleetsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeCapacityReservationFleetsRequest build() => _build();

  _$DescribeCapacityReservationFleetsRequest _build() {
    _$DescribeCapacityReservationFleetsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeCapacityReservationFleetsRequest._(
              capacityReservationFleetIds:
                  _capacityReservationFleetIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeCapacityReservationFleetsRequest', 'maxResults'),
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeCapacityReservationFleetsRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'capacityReservationFleetIds';
        _capacityReservationFleetIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeCapacityReservationFleetsRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
