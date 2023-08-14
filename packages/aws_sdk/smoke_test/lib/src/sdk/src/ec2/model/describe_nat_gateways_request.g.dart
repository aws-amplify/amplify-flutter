// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_nat_gateways_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNatGatewaysRequest extends DescribeNatGatewaysRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<Filter>? filter;
  @override
  final int maxResults;
  @override
  final _i3.BuiltList<String>? natGatewayIds;
  @override
  final String? nextToken;

  factory _$DescribeNatGatewaysRequest(
          [void Function(DescribeNatGatewaysRequestBuilder)? updates]) =>
      (new DescribeNatGatewaysRequestBuilder()..update(updates))._build();

  _$DescribeNatGatewaysRequest._(
      {required this.dryRun,
      this.filter,
      required this.maxResults,
      this.natGatewayIds,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNatGatewaysRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeNatGatewaysRequest', 'maxResults');
  }

  @override
  DescribeNatGatewaysRequest rebuild(
          void Function(DescribeNatGatewaysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNatGatewaysRequestBuilder toBuilder() =>
      new DescribeNatGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNatGatewaysRequest &&
        dryRun == other.dryRun &&
        filter == other.filter &&
        maxResults == other.maxResults &&
        natGatewayIds == other.natGatewayIds &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, natGatewayIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNatGatewaysRequestBuilder
    implements
        Builder<DescribeNatGatewaysRequest, DescribeNatGatewaysRequestBuilder> {
  _$DescribeNatGatewaysRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<Filter>? _filter;
  _i3.ListBuilder<Filter> get filter =>
      _$this._filter ??= new _i3.ListBuilder<Filter>();
  set filter(_i3.ListBuilder<Filter>? filter) => _$this._filter = filter;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  _i3.ListBuilder<String>? _natGatewayIds;
  _i3.ListBuilder<String> get natGatewayIds =>
      _$this._natGatewayIds ??= new _i3.ListBuilder<String>();
  set natGatewayIds(_i3.ListBuilder<String>? natGatewayIds) =>
      _$this._natGatewayIds = natGatewayIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeNatGatewaysRequestBuilder() {
    DescribeNatGatewaysRequest._init(this);
  }

  DescribeNatGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _filter = $v.filter?.toBuilder();
      _maxResults = $v.maxResults;
      _natGatewayIds = $v.natGatewayIds?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNatGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNatGatewaysRequest;
  }

  @override
  void update(void Function(DescribeNatGatewaysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNatGatewaysRequest build() => _build();

  _$DescribeNatGatewaysRequest _build() {
    _$DescribeNatGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNatGatewaysRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeNatGatewaysRequest', 'dryRun'),
              filter: _filter?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeNatGatewaysRequest', 'maxResults'),
              natGatewayIds: _natGatewayIds?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();

        _$failedField = 'natGatewayIds';
        _natGatewayIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNatGatewaysRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
