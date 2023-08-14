// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_event_windows_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceEventWindowsRequest
    extends DescribeInstanceEventWindowsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? instanceEventWindowIds;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeInstanceEventWindowsRequest(
          [void Function(DescribeInstanceEventWindowsRequestBuilder)?
              updates]) =>
      (new DescribeInstanceEventWindowsRequestBuilder()..update(updates))
          ._build();

  _$DescribeInstanceEventWindowsRequest._(
      {required this.dryRun,
      this.instanceEventWindowIds,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceEventWindowsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeInstanceEventWindowsRequest', 'maxResults');
  }

  @override
  DescribeInstanceEventWindowsRequest rebuild(
          void Function(DescribeInstanceEventWindowsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceEventWindowsRequestBuilder toBuilder() =>
      new DescribeInstanceEventWindowsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceEventWindowsRequest &&
        dryRun == other.dryRun &&
        instanceEventWindowIds == other.instanceEventWindowIds &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceEventWindowIds.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceEventWindowsRequestBuilder
    implements
        Builder<DescribeInstanceEventWindowsRequest,
            DescribeInstanceEventWindowsRequestBuilder> {
  _$DescribeInstanceEventWindowsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _instanceEventWindowIds;
  _i3.ListBuilder<String> get instanceEventWindowIds =>
      _$this._instanceEventWindowIds ??= new _i3.ListBuilder<String>();
  set instanceEventWindowIds(_i3.ListBuilder<String>? instanceEventWindowIds) =>
      _$this._instanceEventWindowIds = instanceEventWindowIds;

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

  DescribeInstanceEventWindowsRequestBuilder() {
    DescribeInstanceEventWindowsRequest._init(this);
  }

  DescribeInstanceEventWindowsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceEventWindowIds = $v.instanceEventWindowIds?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceEventWindowsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceEventWindowsRequest;
  }

  @override
  void update(
      void Function(DescribeInstanceEventWindowsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceEventWindowsRequest build() => _build();

  _$DescribeInstanceEventWindowsRequest _build() {
    _$DescribeInstanceEventWindowsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceEventWindowsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstanceEventWindowsRequest', 'dryRun'),
              instanceEventWindowIds: _instanceEventWindowIds?.build(),
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'DescribeInstanceEventWindowsRequest', 'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceEventWindowIds';
        _instanceEventWindowIds?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceEventWindowsRequest',
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
