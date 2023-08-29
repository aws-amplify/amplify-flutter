// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_instances_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetInstancesRequest
    extends DescribeSpotFleetInstancesRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final String? spotFleetRequestId;

  factory _$DescribeSpotFleetInstancesRequest(
          [void Function(DescribeSpotFleetInstancesRequestBuilder)? updates]) =>
      (new DescribeSpotFleetInstancesRequestBuilder()..update(updates))
          ._build();

  _$DescribeSpotFleetInstancesRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.spotFleetRequestId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotFleetInstancesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSpotFleetInstancesRequest', 'maxResults');
  }

  @override
  DescribeSpotFleetInstancesRequest rebuild(
          void Function(DescribeSpotFleetInstancesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetInstancesRequestBuilder toBuilder() =>
      new DescribeSpotFleetInstancesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetInstancesRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        spotFleetRequestId == other.spotFleetRequestId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetInstancesRequestBuilder
    implements
        Builder<DescribeSpotFleetInstancesRequest,
            DescribeSpotFleetInstancesRequestBuilder> {
  _$DescribeSpotFleetInstancesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  String? _spotFleetRequestId;
  String? get spotFleetRequestId => _$this._spotFleetRequestId;
  set spotFleetRequestId(String? spotFleetRequestId) =>
      _$this._spotFleetRequestId = spotFleetRequestId;

  DescribeSpotFleetInstancesRequestBuilder() {
    DescribeSpotFleetInstancesRequest._init(this);
  }

  DescribeSpotFleetInstancesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _spotFleetRequestId = $v.spotFleetRequestId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetInstancesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetInstancesRequest;
  }

  @override
  void update(
      void Function(DescribeSpotFleetInstancesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetInstancesRequest build() => _build();

  _$DescribeSpotFleetInstancesRequest _build() {
    final _$result = _$v ??
        new _$DescribeSpotFleetInstancesRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DescribeSpotFleetInstancesRequest', 'dryRun'),
            maxResults: BuiltValueNullFieldError.checkNotNull(
                maxResults, r'DescribeSpotFleetInstancesRequest', 'maxResults'),
            nextToken: nextToken,
            spotFleetRequestId: spotFleetRequestId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
