// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_hosts_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeHostsRequest extends DescribeHostsRequest {
  @override
  final _i3.BuiltList<Filter>? filter;
  @override
  final _i3.BuiltList<String>? hostIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeHostsRequest(
          [void Function(DescribeHostsRequestBuilder)? updates]) =>
      (new DescribeHostsRequestBuilder()..update(updates))._build();

  _$DescribeHostsRequest._(
      {this.filter, this.hostIds, required this.maxResults, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeHostsRequest', 'maxResults');
  }

  @override
  DescribeHostsRequest rebuild(
          void Function(DescribeHostsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeHostsRequestBuilder toBuilder() =>
      new DescribeHostsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeHostsRequest &&
        filter == other.filter &&
        hostIds == other.hostIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filter.hashCode);
    _$hash = $jc(_$hash, hostIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeHostsRequestBuilder
    implements Builder<DescribeHostsRequest, DescribeHostsRequestBuilder> {
  _$DescribeHostsRequest? _$v;

  _i3.ListBuilder<Filter>? _filter;
  _i3.ListBuilder<Filter> get filter =>
      _$this._filter ??= new _i3.ListBuilder<Filter>();
  set filter(_i3.ListBuilder<Filter>? filter) => _$this._filter = filter;

  _i3.ListBuilder<String>? _hostIds;
  _i3.ListBuilder<String> get hostIds =>
      _$this._hostIds ??= new _i3.ListBuilder<String>();
  set hostIds(_i3.ListBuilder<String>? hostIds) => _$this._hostIds = hostIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeHostsRequestBuilder() {
    DescribeHostsRequest._init(this);
  }

  DescribeHostsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filter = $v.filter?.toBuilder();
      _hostIds = $v.hostIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeHostsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeHostsRequest;
  }

  @override
  void update(void Function(DescribeHostsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeHostsRequest build() => _build();

  _$DescribeHostsRequest _build() {
    _$DescribeHostsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeHostsRequest._(
              filter: _filter?.build(),
              hostIds: _hostIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeHostsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filter';
        _filter?.build();
        _$failedField = 'hostIds';
        _hostIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeHostsRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
