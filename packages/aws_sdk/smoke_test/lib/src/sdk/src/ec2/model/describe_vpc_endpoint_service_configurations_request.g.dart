// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_service_configurations_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointServiceConfigurationsRequest
    extends DescribeVpcEndpointServiceConfigurationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? serviceIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointServiceConfigurationsRequest(
          [void Function(
                  DescribeVpcEndpointServiceConfigurationsRequestBuilder)?
              updates]) =>
      (new DescribeVpcEndpointServiceConfigurationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointServiceConfigurationsRequest._(
      {required this.dryRun,
      this.serviceIds,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcEndpointServiceConfigurationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeVpcEndpointServiceConfigurationsRequest', 'maxResults');
  }

  @override
  DescribeVpcEndpointServiceConfigurationsRequest rebuild(
          void Function(DescribeVpcEndpointServiceConfigurationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointServiceConfigurationsRequestBuilder toBuilder() =>
      new DescribeVpcEndpointServiceConfigurationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointServiceConfigurationsRequest &&
        dryRun == other.dryRun &&
        serviceIds == other.serviceIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointServiceConfigurationsRequestBuilder
    implements
        Builder<DescribeVpcEndpointServiceConfigurationsRequest,
            DescribeVpcEndpointServiceConfigurationsRequestBuilder> {
  _$DescribeVpcEndpointServiceConfigurationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _serviceIds;
  _i3.ListBuilder<String> get serviceIds =>
      _$this._serviceIds ??= new _i3.ListBuilder<String>();
  set serviceIds(_i3.ListBuilder<String>? serviceIds) =>
      _$this._serviceIds = serviceIds;

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

  DescribeVpcEndpointServiceConfigurationsRequestBuilder() {
    DescribeVpcEndpointServiceConfigurationsRequest._init(this);
  }

  DescribeVpcEndpointServiceConfigurationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceIds = $v.serviceIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointServiceConfigurationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointServiceConfigurationsRequest;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointServiceConfigurationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointServiceConfigurationsRequest build() => _build();

  _$DescribeVpcEndpointServiceConfigurationsRequest _build() {
    _$DescribeVpcEndpointServiceConfigurationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointServiceConfigurationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DescribeVpcEndpointServiceConfigurationsRequest', 'dryRun'),
              serviceIds: _serviceIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeVpcEndpointServiceConfigurationsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serviceIds';
        _serviceIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointServiceConfigurationsRequest',
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
