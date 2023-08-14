// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_instance_type_offerings_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeInstanceTypeOfferingsRequest
    extends DescribeInstanceTypeOfferingsRequest {
  @override
  final bool dryRun;
  @override
  final LocationType? locationType;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int? maxResults;
  @override
  final String? nextToken;

  factory _$DescribeInstanceTypeOfferingsRequest(
          [void Function(DescribeInstanceTypeOfferingsRequestBuilder)?
              updates]) =>
      (new DescribeInstanceTypeOfferingsRequestBuilder()..update(updates))
          ._build();

  _$DescribeInstanceTypeOfferingsRequest._(
      {required this.dryRun,
      this.locationType,
      this.filters,
      this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeInstanceTypeOfferingsRequest', 'dryRun');
  }

  @override
  DescribeInstanceTypeOfferingsRequest rebuild(
          void Function(DescribeInstanceTypeOfferingsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeInstanceTypeOfferingsRequestBuilder toBuilder() =>
      new DescribeInstanceTypeOfferingsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeInstanceTypeOfferingsRequest &&
        dryRun == other.dryRun &&
        locationType == other.locationType &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, locationType.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeInstanceTypeOfferingsRequestBuilder
    implements
        Builder<DescribeInstanceTypeOfferingsRequest,
            DescribeInstanceTypeOfferingsRequestBuilder> {
  _$DescribeInstanceTypeOfferingsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  LocationType? _locationType;
  LocationType? get locationType => _$this._locationType;
  set locationType(LocationType? locationType) =>
      _$this._locationType = locationType;

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

  DescribeInstanceTypeOfferingsRequestBuilder() {
    DescribeInstanceTypeOfferingsRequest._init(this);
  }

  DescribeInstanceTypeOfferingsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _locationType = $v.locationType;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeInstanceTypeOfferingsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeInstanceTypeOfferingsRequest;
  }

  @override
  void update(
      void Function(DescribeInstanceTypeOfferingsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeInstanceTypeOfferingsRequest build() => _build();

  _$DescribeInstanceTypeOfferingsRequest _build() {
    _$DescribeInstanceTypeOfferingsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeInstanceTypeOfferingsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeInstanceTypeOfferingsRequest', 'dryRun'),
              locationType: locationType,
              filters: _filters?.build(),
              maxResults: maxResults,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeInstanceTypeOfferingsRequest',
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
