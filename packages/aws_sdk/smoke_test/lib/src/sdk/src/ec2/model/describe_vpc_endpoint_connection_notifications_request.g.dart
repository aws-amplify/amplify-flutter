// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_connection_notifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointConnectionNotificationsRequest
    extends DescribeVpcEndpointConnectionNotificationsRequest {
  @override
  final bool dryRun;
  @override
  final String? connectionNotificationId;
  @override
  final _i3.BuiltList<Filter>? filters;
  @override
  final int maxResults;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointConnectionNotificationsRequest(
          [void Function(
                  DescribeVpcEndpointConnectionNotificationsRequestBuilder)?
              updates]) =>
      (new DescribeVpcEndpointConnectionNotificationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointConnectionNotificationsRequest._(
      {required this.dryRun,
      this.connectionNotificationId,
      this.filters,
      required this.maxResults,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DescribeVpcEndpointConnectionNotificationsRequest', 'dryRun');
    BuiltValueNullFieldError.checkNotNull(maxResults,
        r'DescribeVpcEndpointConnectionNotificationsRequest', 'maxResults');
  }

  @override
  DescribeVpcEndpointConnectionNotificationsRequest rebuild(
          void Function(
                  DescribeVpcEndpointConnectionNotificationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointConnectionNotificationsRequestBuilder toBuilder() =>
      new DescribeVpcEndpointConnectionNotificationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointConnectionNotificationsRequest &&
        dryRun == other.dryRun &&
        connectionNotificationId == other.connectionNotificationId &&
        filters == other.filters &&
        maxResults == other.maxResults &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, connectionNotificationId.hashCode);
    _$hash = $jc(_$hash, filters.hashCode);
    _$hash = $jc(_$hash, maxResults.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointConnectionNotificationsRequestBuilder
    implements
        Builder<DescribeVpcEndpointConnectionNotificationsRequest,
            DescribeVpcEndpointConnectionNotificationsRequestBuilder> {
  _$DescribeVpcEndpointConnectionNotificationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _connectionNotificationId;
  String? get connectionNotificationId => _$this._connectionNotificationId;
  set connectionNotificationId(String? connectionNotificationId) =>
      _$this._connectionNotificationId = connectionNotificationId;

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

  DescribeVpcEndpointConnectionNotificationsRequestBuilder() {
    DescribeVpcEndpointConnectionNotificationsRequest._init(this);
  }

  DescribeVpcEndpointConnectionNotificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _connectionNotificationId = $v.connectionNotificationId;
      _filters = $v.filters?.toBuilder();
      _maxResults = $v.maxResults;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointConnectionNotificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointConnectionNotificationsRequest;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointConnectionNotificationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointConnectionNotificationsRequest build() => _build();

  _$DescribeVpcEndpointConnectionNotificationsRequest _build() {
    _$DescribeVpcEndpointConnectionNotificationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointConnectionNotificationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(
                  dryRun,
                  r'DescribeVpcEndpointConnectionNotificationsRequest',
                  'dryRun'),
              connectionNotificationId: connectionNotificationId,
              filters: _filters?.build(),
              maxResults: BuiltValueNullFieldError.checkNotNull(
                  maxResults,
                  r'DescribeVpcEndpointConnectionNotificationsRequest',
                  'maxResults'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointConnectionNotificationsRequest',
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
