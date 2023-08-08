// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_configuration_aggregator_sources_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeConfigurationAggregatorSourcesStatusRequest
    extends DescribeConfigurationAggregatorSourcesStatusRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i4.BuiltList<_i3.AggregatedSourceStatusType>? updateStatus;
  @override
  final String? nextToken;
  @override
  final int limit;

  factory _$DescribeConfigurationAggregatorSourcesStatusRequest(
          [void Function(
                  DescribeConfigurationAggregatorSourcesStatusRequestBuilder)?
              updates]) =>
      (new DescribeConfigurationAggregatorSourcesStatusRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeConfigurationAggregatorSourcesStatusRequest._(
      {required this.configurationAggregatorName,
      this.updateStatus,
      this.nextToken,
      required this.limit})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeConfigurationAggregatorSourcesStatusRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeConfigurationAggregatorSourcesStatusRequest', 'limit');
  }

  @override
  DescribeConfigurationAggregatorSourcesStatusRequest rebuild(
          void Function(
                  DescribeConfigurationAggregatorSourcesStatusRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeConfigurationAggregatorSourcesStatusRequestBuilder toBuilder() =>
      new DescribeConfigurationAggregatorSourcesStatusRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeConfigurationAggregatorSourcesStatusRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        updateStatus == other.updateStatus &&
        nextToken == other.nextToken &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, updateStatus.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeConfigurationAggregatorSourcesStatusRequestBuilder
    implements
        Builder<DescribeConfigurationAggregatorSourcesStatusRequest,
            DescribeConfigurationAggregatorSourcesStatusRequestBuilder> {
  _$DescribeConfigurationAggregatorSourcesStatusRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i4.ListBuilder<_i3.AggregatedSourceStatusType>? _updateStatus;
  _i4.ListBuilder<_i3.AggregatedSourceStatusType> get updateStatus =>
      _$this._updateStatus ??=
          new _i4.ListBuilder<_i3.AggregatedSourceStatusType>();
  set updateStatus(
          _i4.ListBuilder<_i3.AggregatedSourceStatusType>? updateStatus) =>
      _$this._updateStatus = updateStatus;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  DescribeConfigurationAggregatorSourcesStatusRequestBuilder() {
    DescribeConfigurationAggregatorSourcesStatusRequest._init(this);
  }

  DescribeConfigurationAggregatorSourcesStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _updateStatus = $v.updateStatus?.toBuilder();
      _nextToken = $v.nextToken;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeConfigurationAggregatorSourcesStatusRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeConfigurationAggregatorSourcesStatusRequest;
  }

  @override
  void update(
      void Function(DescribeConfigurationAggregatorSourcesStatusRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeConfigurationAggregatorSourcesStatusRequest build() => _build();

  _$DescribeConfigurationAggregatorSourcesStatusRequest _build() {
    _$DescribeConfigurationAggregatorSourcesStatusRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeConfigurationAggregatorSourcesStatusRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeConfigurationAggregatorSourcesStatusRequest',
                      'configurationAggregatorName'),
              updateStatus: _updateStatus?.build(),
              nextToken: nextToken,
              limit: BuiltValueNullFieldError.checkNotNull(
                  limit,
                  r'DescribeConfigurationAggregatorSourcesStatusRequest',
                  'limit'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateStatus';
        _updateStatus?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeConfigurationAggregatorSourcesStatusRequest',
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
