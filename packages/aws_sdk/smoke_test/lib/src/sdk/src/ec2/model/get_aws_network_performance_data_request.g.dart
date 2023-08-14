// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_aws_network_performance_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAwsNetworkPerformanceDataRequest
    extends GetAwsNetworkPerformanceDataRequest {
  @override
  final _i3.BuiltList<DataQuery>? dataQueries;
  @override
  final DateTime? startTime;
  @override
  final DateTime? endTime;
  @override
  final int maxResults;
  @override
  final String? nextToken;
  @override
  final bool dryRun;

  factory _$GetAwsNetworkPerformanceDataRequest(
          [void Function(GetAwsNetworkPerformanceDataRequestBuilder)?
              updates]) =>
      (new GetAwsNetworkPerformanceDataRequestBuilder()..update(updates))
          ._build();

  _$GetAwsNetworkPerformanceDataRequest._(
      {this.dataQueries,
      this.startTime,
      this.endTime,
      required this.maxResults,
      this.nextToken,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        maxResults, r'GetAwsNetworkPerformanceDataRequest', 'maxResults');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'GetAwsNetworkPerformanceDataRequest', 'dryRun');
  }

  @override
  GetAwsNetworkPerformanceDataRequest rebuild(
          void Function(GetAwsNetworkPerformanceDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAwsNetworkPerformanceDataRequestBuilder toBuilder() =>
      new GetAwsNetworkPerformanceDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAwsNetworkPerformanceDataRequest &&
        dataQueries == other.dataQueries &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dataQueries.hashCode);
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAwsNetworkPerformanceDataRequestBuilder
    implements
        Builder<GetAwsNetworkPerformanceDataRequest,
            GetAwsNetworkPerformanceDataRequestBuilder> {
  _$GetAwsNetworkPerformanceDataRequest? _$v;

  _i3.ListBuilder<DataQuery>? _dataQueries;
  _i3.ListBuilder<DataQuery> get dataQueries =>
      _$this._dataQueries ??= new _i3.ListBuilder<DataQuery>();
  set dataQueries(_i3.ListBuilder<DataQuery>? dataQueries) =>
      _$this._dataQueries = dataQueries;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  int? _maxResults;
  int? get maxResults => _$this._maxResults;
  set maxResults(int? maxResults) => _$this._maxResults = maxResults;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  GetAwsNetworkPerformanceDataRequestBuilder() {
    GetAwsNetworkPerformanceDataRequest._init(this);
  }

  GetAwsNetworkPerformanceDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dataQueries = $v.dataQueries?.toBuilder();
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAwsNetworkPerformanceDataRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAwsNetworkPerformanceDataRequest;
  }

  @override
  void update(
      void Function(GetAwsNetworkPerformanceDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAwsNetworkPerformanceDataRequest build() => _build();

  _$GetAwsNetworkPerformanceDataRequest _build() {
    _$GetAwsNetworkPerformanceDataRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAwsNetworkPerformanceDataRequest._(
              dataQueries: _dataQueries?.build(),
              startTime: startTime,
              endTime: endTime,
              maxResults: BuiltValueNullFieldError.checkNotNull(maxResults,
                  r'GetAwsNetworkPerformanceDataRequest', 'maxResults'),
              nextToken: nextToken,
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun, r'GetAwsNetworkPerformanceDataRequest', 'dryRun'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dataQueries';
        _dataQueries?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAwsNetworkPerformanceDataRequest',
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
