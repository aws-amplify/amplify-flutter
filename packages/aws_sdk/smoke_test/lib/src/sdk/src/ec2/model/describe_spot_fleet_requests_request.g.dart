// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_fleet_requests_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotFleetRequestsRequest
    extends DescribeSpotFleetRequestsRequest {
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? spotFleetRequestIds;

  factory _$DescribeSpotFleetRequestsRequest(
          [void Function(DescribeSpotFleetRequestsRequestBuilder)? updates]) =>
      (new DescribeSpotFleetRequestsRequestBuilder()..update(updates))._build();

  _$DescribeSpotFleetRequestsRequest._(
      {required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.spotFleetRequestIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotFleetRequestsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSpotFleetRequestsRequest', 'maxResults');
  }

  @override
  DescribeSpotFleetRequestsRequest rebuild(
          void Function(DescribeSpotFleetRequestsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotFleetRequestsRequestBuilder toBuilder() =>
      new DescribeSpotFleetRequestsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotFleetRequestsRequest &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        spotFleetRequestIds == other.spotFleetRequestIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, spotFleetRequestIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotFleetRequestsRequestBuilder
    implements
        Builder<DescribeSpotFleetRequestsRequest,
            DescribeSpotFleetRequestsRequestBuilder> {
  _$DescribeSpotFleetRequestsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _spotFleetRequestIds;
  _i3.ListBuilder<String> get spotFleetRequestIds =>
      _$this._spotFleetRequestIds ??= new _i3.ListBuilder<String>();
  set spotFleetRequestIds(_i3.ListBuilder<String>? spotFleetRequestIds) =>
      _$this._spotFleetRequestIds = spotFleetRequestIds;

  DescribeSpotFleetRequestsRequestBuilder() {
    DescribeSpotFleetRequestsRequest._init(this);
  }

  DescribeSpotFleetRequestsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _spotFleetRequestIds = $v.spotFleetRequestIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotFleetRequestsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotFleetRequestsRequest;
  }

  @override
  void update(void Function(DescribeSpotFleetRequestsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotFleetRequestsRequest build() => _build();

  _$DescribeSpotFleetRequestsRequest _build() {
    _$DescribeSpotFleetRequestsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotFleetRequestsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSpotFleetRequestsRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeSpotFleetRequestsRequest', 'maxResults'),
              nextToken: nextToken,
              spotFleetRequestIds: _spotFleetRequestIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'spotFleetRequestIds';
        _spotFleetRequestIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotFleetRequestsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
