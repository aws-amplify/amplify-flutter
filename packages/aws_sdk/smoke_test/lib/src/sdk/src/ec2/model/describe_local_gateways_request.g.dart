// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_local_gateways_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLocalGatewaysRequest extends DescribeLocalGatewaysRequest {
  @override
  final _i3.BuiltList<String>? localGatewayIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$DescribeLocalGatewaysRequest(
          [void Function(DescribeLocalGatewaysRequestBuilder)? updates]) =>
      (new DescribeLocalGatewaysRequestBuilder()..update(updates))._build();

  _$DescribeLocalGatewaysRequest._(
      {this.localGatewayIds,
      this.filters,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeLocalGatewaysRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeLocalGatewaysRequest', 'dryRun');
  }

  @override
  DescribeLocalGatewaysRequest rebuild(
          void Function(DescribeLocalGatewaysRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLocalGatewaysRequestBuilder toBuilder() =>
      new DescribeLocalGatewaysRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLocalGatewaysRequest &&
        localGatewayIds == other.localGatewayIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, localGatewayIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLocalGatewaysRequestBuilder
    implements
        Builder<DescribeLocalGatewaysRequest,
            DescribeLocalGatewaysRequestBuilder> {
  _$DescribeLocalGatewaysRequest? _$v;

  _i3.ListBuilder<String>? _localGatewayIds;
  _i3.ListBuilder<String> get localGatewayIds =>
      _$this._localGatewayIds ??= new _i3.ListBuilder<String>();
  set localGatewayIds(_i3.ListBuilder<String>? localGatewayIds) =>
      _$this._localGatewayIds = localGatewayIds;

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

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DescribeLocalGatewaysRequestBuilder() {
    DescribeLocalGatewaysRequest._init(this);
  }

  DescribeLocalGatewaysRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _localGatewayIds = $v.localGatewayIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLocalGatewaysRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLocalGatewaysRequest;
  }

  @override
  void update(void Function(DescribeLocalGatewaysRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLocalGatewaysRequest build() => _build();

  _$DescribeLocalGatewaysRequest _build() {
    _$DescribeLocalGatewaysRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeLocalGatewaysRequest._(
              localGatewayIds: _localGatewayIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeLocalGatewaysRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeLocalGatewaysRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'localGatewayIds';
        _localGatewayIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeLocalGatewaysRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
