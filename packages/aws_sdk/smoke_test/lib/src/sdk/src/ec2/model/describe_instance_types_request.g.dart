// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_types_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceTypesRequest extends DescribeInstanceTypesRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<InstanceType>? instanceTypes;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$DescribeInstanceTypesRequest(
          [void Function(DescribeInstanceTypesRequestBuilder)? updates]) =>
      (new DescribeInstanceTypesRequestBuilder()..update(updates))._build();

  _$DescribeInstanceTypesRequest._(
      {required this.dryRun,
      this.instanceTypes,
      this.filters,
      this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceTypesRequest', 'dryRun');
  }

  @override
  DescribeInstanceTypesRequest rebuild(
          void Function(DescribeInstanceTypesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceTypesRequestBuilder toBuilder() =>
      new DescribeInstanceTypesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceTypesRequest &&
        dryRun == other.dryRun &&
        instanceTypes == other.instanceTypes &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceTypes.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceTypesRequestBuilder
    implements
        Builder<DescribeInstanceTypesRequest,
            DescribeInstanceTypesRequestBuilder> {
  _$DescribeInstanceTypesRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<InstanceType>? _instanceTypes;
  _i3.ListBuilder<InstanceType> get instanceTypes =>
      _$this._instanceTypes ??= new _i3.ListBuilder<InstanceType>();
  set instanceTypes(_i3.ListBuilder<InstanceType>? instanceTypes) =>
      _$this._instanceTypes = instanceTypes;

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

  DescribeInstanceTypesRequestBuilder() {
    DescribeInstanceTypesRequest._init(this);
  }

  DescribeInstanceTypesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceTypes = $v.instanceTypes?.toBuilder();
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceTypesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceTypesRequest;
  }

  @override
  void update(void Function(DescribeInstanceTypesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceTypesRequest build() => _build();

  _$DescribeInstanceTypesRequest _build() {
    _$DescribeInstanceTypesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceTypesRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstanceTypesRequest', 'dryRun'),
              instanceTypes: _instanceTypes?.build(),
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'instanceTypes';
        _instanceTypes?.build();
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceTypesRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
