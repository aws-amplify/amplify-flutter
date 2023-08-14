// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpcs_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcsRequest extends DescribeVpcsRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? vpcIds;
  @override
  final bool dryRun;
  @override
  final String? nextToken;
  @override
  final int maxResults;

  factory _$DescribeVpcsRequest(
          [void Function(DescribeVpcsRequestBuilder)? updates]) =>
      (new DescribeVpcsRequestBuilder()..update(updates))._build();

  _$DescribeVpcsRequest._(
      {this.filters,
      this.vpcIds,
      required this.dryRun,
      this.nextToken,
      required this.maxResults})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeVpcsRequest', 'maxResults');
  }

  @override
  DescribeVpcsRequest rebuild(
          void Function(DescribeVpcsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcsRequestBuilder toBuilder() =>
      new DescribeVpcsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcsRequest &&
        filters == other.filters &&
        vpcIds == other.vpcIds &&
        dryRun == other.dryRun &&
        nextToken == other.nextToken &&
        maxResults == other.maxResults;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, vpcIds.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcsRequestBuilder
    implements Builder<DescribeVpcsRequest, DescribeVpcsRequestBuilder> {
  _$DescribeVpcsRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _vpcIds;
  _i3.ListBuilder<String> get vpcIds =>
      _$this._vpcIds ??= new _i3.ListBuilder<String>();
  set vpcIds(_i3.ListBuilder<String>? vpcIds) => _$this._vpcIds = vpcIds;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  DescribeVpcsRequestBuilder() {
    DescribeVpcsRequest._init(this);
  }

  DescribeVpcsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _vpcIds = $v.vpcIds?.toBuilder();
      _dryRun = $v.dryRun;
      _nextToken = $v.nextToken;
      _maxResults = $v.maxResults;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcsRequest;
  }

  @override
  void update(void Function(DescribeVpcsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcsRequest build() => _build();

  _$DescribeVpcsRequest _build() {
    _$DescribeVpcsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcsRequest._(
              filters: _filters?.build(),
              vpcIds: _vpcIds?.build(),
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeVpcsRequest', 'dryRun'),
              nextToken: nextToken,
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeVpcsRequest', 'maxResults'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'vpcIds';
        _vpcIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
