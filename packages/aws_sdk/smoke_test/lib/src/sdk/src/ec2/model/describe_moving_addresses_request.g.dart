// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_moving_addresses_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeMovingAddressesRequest extends DescribeMovingAddressesRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final bool dryRun;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? publicIps;

  factory _$DescribeMovingAddressesRequest(
          [void Function(DescribeMovingAddressesRequestBuilder)? updates]) =>
      (new DescribeMovingAddressesRequestBuilder()..update(updates))._build();

  _$DescribeMovingAddressesRequest._(
      {this.filters,
      required this.dryRun,
      required this.maxResults,
      this.nextToken,
      this.publicIps})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeMovingAddressesRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeMovingAddressesRequest', 'maxResults');
  }

  @override
  DescribeMovingAddressesRequest rebuild(
          void Function(DescribeMovingAddressesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeMovingAddressesRequestBuilder toBuilder() =>
      new DescribeMovingAddressesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeMovingAddressesRequest &&
        filters == other.filters &&
        dryRun == other.dryRun &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        publicIps == other.publicIps;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, publicIps.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeMovingAddressesRequestBuilder
    implements
        Builder<DescribeMovingAddressesRequest,
            DescribeMovingAddressesRequestBuilder> {
  _$DescribeMovingAddressesRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _publicIps;
  _i3.ListBuilder<String> get publicIps =>
      _$this._publicIps ??= new _i3.ListBuilder<String>();
  set publicIps(_i3.ListBuilder<String>? publicIps) =>
      _$this._publicIps = publicIps;

  DescribeMovingAddressesRequestBuilder() {
    DescribeMovingAddressesRequest._init(this);
  }

  DescribeMovingAddressesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _dryRun = $v.dryRun;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _publicIps = $v.publicIps?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeMovingAddressesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeMovingAddressesRequest;
  }

  @override
  void update(void Function(DescribeMovingAddressesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeMovingAddressesRequest build() => _build();

  _$DescribeMovingAddressesRequest _build() {
    _$DescribeMovingAddressesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeMovingAddressesRequest._(
              filters: _filters?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeMovingAddressesRequest', 'dryRun'),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeMovingAddressesRequest', 'maxResults'),
              nextToken: nextToken,
              publicIps: _publicIps?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'publicIps';
        _publicIps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeMovingAddressesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
