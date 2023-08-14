// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_services_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServicesRequest
    extends DescribeVpcEndpointServicesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? serviceNames;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServicesRequest(
          [void Function(DescribeVpcEndpointServicesRequestBuilder)?
              updates]) =>
      (new DescribeVpcEndpointServicesRequestBuilder()..update(updates))
          ._build();

  _$DescribeVpcEndpointServicesRequest._(
      {required this.dryRun,
      this.serviceNames,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcEndpointServicesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVpcEndpointServicesRequest', 'maxResults');
  }

  @override
  DescribeVpcEndpointServicesRequest rebuild(
          void Function(DescribeVpcEndpointServicesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServicesRequestBuilder toBuilder() =>
      new DescribeVpcEndpointServicesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServicesRequest &&
        dryRun == other.dryRun &&
        serviceNames == other.serviceNames &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceNames.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServicesRequestBuilder
    implements
        Builder<DescribeVpcEndpointServicesRequest,
            DescribeVpcEndpointServicesRequestBuilder> {
  _$DescribeVpcEndpointServicesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _serviceNames;
  _i3.ListBuilder<String> get serviceNames =>
      _$this._serviceNames ??= new _i3.ListBuilder<String>();
  set serviceNames(_i3.ListBuilder<String>? serviceNames) =>
      _$this._serviceNames = serviceNames;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointServicesRequestBuilder() {
    DescribeVpcEndpointServicesRequest._init(this);
  }

  DescribeVpcEndpointServicesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceNames = $v.serviceNames?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServicesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServicesRequest;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServicesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServicesRequest build() => _build();

  _$DescribeVpcEndpointServicesRequest _build() {
    _$DescribeVpcEndpointServicesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServicesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpcEndpointServicesRequest', 'dryRun'),
              serviceNames: _serviceNames?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeVpcEndpointServicesRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceNames';
        _serviceNames?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServicesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
