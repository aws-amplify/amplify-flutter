// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_spot_price_history_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeSpotPriceHistoryRequest
    extends DescribeSpotPriceHistoryRequest {
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final String? availabilityZone;
  @override
  final bool dryRun;
  @override
  final DateTime? endTime;
  @override
  final _i3.BuiltList<InstanceType>? instanceTypes;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<String>? productDescriptions;
  @override
  final DateTime? startTime;

  factory _$DescribeSpotPriceHistoryRequest(
          [void Function(DescribeSpotPriceHistoryRequestBuilder)? updates]) =>
      (new DescribeSpotPriceHistoryRequestBuilder()..update(updates))._build();

  _$DescribeSpotPriceHistoryRequest._(
      {this.filters,
      this.availabilityZone,
      required this.dryRun,
      this.endTime,
      this.instanceTypes,
      required this.maxResults,
      this.nextToken,
      this.productDescriptions,
      this.startTime})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeSpotPriceHistoryRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'DescribeSpotPriceHistoryRequest', 'maxResults');
  }

  @override
  DescribeSpotPriceHistoryRequest rebuild(
          void Function(DescribeSpotPriceHistoryRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeSpotPriceHistoryRequestBuilder toBuilder() =>
      new DescribeSpotPriceHistoryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeSpotPriceHistoryRequest &&
        filters == other.filters &&
        availabilityZone == other.availabilityZone &&
        dryRun == other.dryRun &&
        endTime == other.endTime &&
        instanceTypes == other.instanceTypes &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        productDescriptions == other.productDescriptions &&
        startTime == other.startTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, availabilityZone.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, instanceTypes.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, productDescriptions.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeSpotPriceHistoryRequestBuilder
    implements
        Builder<DescribeSpotPriceHistoryRequest,
            DescribeSpotPriceHistoryRequestBuilder> {
  _$DescribeSpotPriceHistoryRequest? _$v;

  _i3.ListBuilder<Filter>? _filters;
  _i3.ListBuilder<Filter> get filters =>
      _$this._filters ??= new _i3.ListBuilder<Filter>();
  set filters(_i3.ListBuilder<Filter>? filters) => _$this._filters = filters;

  String? _availabilityZone;
  String? get availabilityZone => _$this._availabilityZone;
  set availabilityZone(String? availabilityZone) =>
      _$this._availabilityZone = availabilityZone;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  _i3.ListBuilder<InstanceType>? _instanceTypes;
  _i3.ListBuilder<InstanceType> get instanceTypes =>
      _$this._instanceTypes ??= new _i3.ListBuilder<InstanceType>();
  set instanceTypes(_i3.ListBuilder<InstanceType>? instanceTypes) =>
      _$this._instanceTypes = instanceTypes;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<String>? _productDescriptions;
  _i3.ListBuilder<String> get productDescriptions =>
      _$this._productDescriptions ??= new _i3.ListBuilder<String>();
  set productDescriptions(_i3.ListBuilder<String>? productDescriptions) =>
      _$this._productDescriptions = productDescriptions;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DescribeSpotPriceHistoryRequestBuilder() {
    DescribeSpotPriceHistoryRequest._init(this);
  }

  DescribeSpotPriceHistoryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filters = $v.filters?.toBuilder();
      _availabilityZone = $v.availabilityZone;
      _dryRun = $v.dryRun;
      _endTime = $v.endTime;
      _instanceTypes = $v.instanceTypes?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _productDescriptions = $v.productDescriptions?.toBuilder();
      _startTime = $v.startTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeSpotPriceHistoryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeSpotPriceHistoryRequest;
  }

  @override
  void update(void Function(DescribeSpotPriceHistoryRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeSpotPriceHistoryRequest build() => _build();

  _$DescribeSpotPriceHistoryRequest _build() {
    _$DescribeSpotPriceHistoryRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeSpotPriceHistoryRequest._(
              filters: _filters?.build(),
              availabilityZone: availabilityZone,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'DescribeSpotPriceHistoryRequest', 'dryRun'),
              endTime: endTime,
              instanceTypes: _instanceTypes?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults, r'DescribeSpotPriceHistoryRequest', 'maxResults'),
              nextToken: nextToken,
              productDescriptions: _productDescriptions?.build(),
              startTime: startTime);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();

        _$failedField = 'instanceTypes';
        _instanceTypes?.build();

        _$failedField = 'productDescriptions';
        _productDescriptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeSpotPriceHistoryRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
