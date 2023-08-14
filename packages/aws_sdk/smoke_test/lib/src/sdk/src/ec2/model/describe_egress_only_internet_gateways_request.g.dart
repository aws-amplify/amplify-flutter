// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_egress_only_internet_gateways_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeEgressOnlyInternetGatewaysRequest
    extends DescribeEgressOnlyInternetGatewaysRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? egressOnlyInternetGatewayIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<Filter>? filters;

  factory _$DescribeEgressOnlyInternetGatewaysRequest(
          [void Function(DescribeEgressOnlyInternetGatewaysRequestBuilder)?
              updates]) =>
      (new DescribeEgressOnlyInternetGatewaysRequestBuilder()..update(updates))
          ._build();

  _$DescribeEgressOnlyInternetGatewaysRequest._(
      {required this.dryRun,
      this.egressOnlyInternetGatewayIds,
      required this.maxResults,
      this.nextToken,
      this.filters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeEgressOnlyInternetGatewaysRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeEgressOnlyInternetGatewaysRequest', 'maxResults');
  }

  @override
  DescribeEgressOnlyInternetGatewaysRequest rebuild(
          void Function(DescribeEgressOnlyInternetGatewaysRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeEgressOnlyInternetGatewaysRequestBuilder toBuilder() =>
      new DescribeEgressOnlyInternetGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeEgressOnlyInternetGatewaysRequest &&
        dryRun == other.dryRun &&
        egressOnlyInternetGatewayIds == other.egressOnlyInternetGatewayIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        filters == other.filters;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeEgressOnlyInternetGatewaysRequestBuilder
    implements
        Builder<DescribeEgressOnlyInternetGatewaysRequest,
            DescribeEgressOnlyInternetGatewaysRequestBuilder> {
  _$DescribeEgressOnlyInternetGatewaysRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _egressOnlyInternetGatewayIds;
  _i3.ListBuilder<String> get egressOnlyInternetGatewayIds =>
      _$this._egressOnlyInternetGatewayIds ??= new _i3.ListBuilder<String>();
  set egressOnlyInternetGatewayIds(
          _i3.ListBuilder<String>? egressOnlyInternetGatewayIds) =>
      _$this._egressOnlyInternetGatewayIds = egressOnlyInternetGatewayIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  DescribeEgressOnlyInternetGatewaysRequestBuilder() {
    DescribeEgressOnlyInternetGatewaysRequest._init(this);
  }

  DescribeEgressOnlyInternetGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _egressOnlyInternetGatewayIds =
          $v.egressOnlyInternetGatewayIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _filters = $v.filters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeEgressOnlyInternetGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeEgressOnlyInternetGatewaysRequest;
  }

  @override
  void update(
      void Function(DescribeEgressOnlyInternetGatewaysRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeEgressOnlyInternetGatewaysRequest build() => _build();

  _$DescribeEgressOnlyInternetGatewaysRequest _build() {
    _$DescribeEgressOnlyInternetGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeEgressOnlyInternetGatewaysRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeEgressOnlyInternetGatewaysRequest', 'dryRun'),
              egressOnlyInternetGatewayIds:
                  _egressOnlyInternetGatewayIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeEgressOnlyInternetGatewaysRequest', 'maxResults'),
              nextToken: nextToken,
              filters: _filters?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'egressOnlyInternetGatewayIds';
        _egressOnlyInternetGatewayIds?.build();

        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeEgressOnlyInternetGatewaysRequest',
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
