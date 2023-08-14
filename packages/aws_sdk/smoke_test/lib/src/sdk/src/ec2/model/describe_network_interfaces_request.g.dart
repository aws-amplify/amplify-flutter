// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_network_interfaces_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeNetworkInterfacesRequest
    extends DescribeNetworkInterfacesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? networkInterfaceIds;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeNetworkInterfacesRequest(
          [void Function(DescribeNetworkInterfacesRequestBuilder)? updates]) =>
      (new DescribeNetworkInterfacesRequestBuilder()..update(updates))._build();

  _$DescribeNetworkInterfacesRequest._(
      {this.filters,
      required this.dryRun,
      this.networkInterfaceIds,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeNetworkInterfacesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeNetworkInterfacesRequest', 'maxResults');
  }

  @override
  DescribeNetworkInterfacesRequest rebuild(
          void Function(DescribeNetworkInterfacesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeNetworkInterfacesRequestBuilder toBuilder() =>
      new DescribeNetworkInterfacesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeNetworkInterfacesRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        networkInterfaceIds == other.networkInterfaceIds &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceIds.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeNetworkInterfacesRequestBuilder
    implements
        Builder<DescribeNetworkInterfacesRequest,
            DescribeNetworkInterfacesRequestBuilder> {
  _$DescribeNetworkInterfacesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _networkInterfaceIds;
  _i3.ListBuilder<String> get networkInterfaceIds =>
      _$this._networkInterfaceIds ??= new _i3.ListBuilder<String>();
  set networkInterfaceIds(_i3.ListBuilder<String>? networkInterfaceIds) =>
      _$this._networkInterfaceIds = networkInterfaceIds;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeNetworkInterfacesRequestBuilder() {
    DescribeNetworkInterfacesRequest._init(this);
  }

  DescribeNetworkInterfacesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _networkInterfaceIds = $v.networkInterfaceIds?.toBuilder();
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeNetworkInterfacesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeNetworkInterfacesRequest;
  }

  @override
  void update(void Function(DescribeNetworkInterfacesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeNetworkInterfacesRequest build() => _build();

  _$DescribeNetworkInterfacesRequest _build() {
    _$DescribeNetworkInterfacesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeNetworkInterfacesRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeNetworkInterfacesRequest', 'dryRun'),
              networkInterfaceIds: _networkInterfaceIds?.build(),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeNetworkInterfacesRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'networkInterfaceIds';
        _networkInterfaceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeNetworkInterfacesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
