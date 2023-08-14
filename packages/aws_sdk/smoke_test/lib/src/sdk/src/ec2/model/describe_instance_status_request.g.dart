// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceStatusRequest extends DescribeInstanceStatusRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final _i3.BuiltList<String>? instanceIds;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;
  @override
  final bool includeAllInstances;

  factory _$DescribeInstanceStatusRequest(
          [void Function(DescribeInstanceStatusRequestBuilder)? updates]) =>
      (new DescribeInstanceStatusRequestBuilder()..update(updates))._build();

  _$DescribeInstanceStatusRequest._(
      {this.filters,
      this.instanceIds,
      required this.maxResults,
      this.nextToken,
      required this.dryRun,
      required this.includeAllInstances})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeInstanceStatusRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceStatusRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(includeAllInstances,
        r'DescribeInstanceStatusRequest', 'includeAllInstances');
  }

  @override
  DescribeInstanceStatusRequest rebuild(
          void Function(DescribeInstanceStatusRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceStatusRequestBuilder toBuilder() =>
      new DescribeInstanceStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceStatusRequest &&
        filters == other.filters &&
        instanceIds == other.instanceIds &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun &&
        includeAllInstances == other.includeAllInstances;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, instanceIds.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, includeAllInstances.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceStatusRequestBuilder
    implements
        Builder<DescribeInstanceStatusRequest,
            DescribeInstanceStatusRequestBuilder> {
  _$DescribeInstanceStatusRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  _i3.ListBuilder<String>? _instanceIds;
  _i3.ListBuilder<String> get instanceIds =>
      _$this._instanceIds ??= new _i3.ListBuilder<String>();
  set instanceIds(_i3.ListBuilder<String>? instanceIds) =>
      _$this._instanceIds = instanceIds;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  bool? _includeAllInstances;
  bool? get includeAllInstances => _$this._includeAllInstances;
  set includeAllInstances(bool? includeAllInstances) =>
      _$this._includeAllInstances = includeAllInstances;

  DescribeInstanceStatusRequestBuilder() {
    DescribeInstanceStatusRequest._init(this);
  }

  DescribeInstanceStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _instanceIds = $v.instanceIds?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _includeAllInstances = $v.includeAllInstances;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceStatusRequest;
  }

  @override
  void update(void Function(DescribeInstanceStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceStatusRequest build() => _build();

  _$DescribeInstanceStatusRequest _build() {
    _$DescribeInstanceStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceStatusRequest._(
              filters: _filters?.build(),
              instanceIds: _instanceIds?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeInstanceStatusRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstanceStatusRequest', 'dryRun'),
              includeAllInstances: BuiltValueNullFieldError.checkNotNull(
                  includeAllInstances,
                  r'DescribeInstanceStatusRequest',
                  'includeAllInstances'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
        _$failedField = 'instanceIds';
        _instanceIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceStatusRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
