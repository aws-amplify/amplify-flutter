// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_log_streams_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeLogStreamsRequest extends DescribeLogStreamsRequest {
  @override
  final String? logGroupName;
  @override
  final String? logGroupIdentifier;
  @override
  final String? logStreamNamePrefix;
  @override
  final _i3.OrderBy? orderBy;
  @override
  final bool? descending;
  @override
  final String? nextToken;
  @override
  final int? limit;

  factory _$DescribeLogStreamsRequest(
          [void Function(DescribeLogStreamsRequestBuilder)? updates]) =>
      (new DescribeLogStreamsRequestBuilder()..update(updates))._build();

  _$DescribeLogStreamsRequest._(
      {this.logGroupName,
      this.logGroupIdentifier,
      this.logStreamNamePrefix,
      this.orderBy,
      this.descending,
      this.nextToken,
      this.limit})
      : super._();

  @override
  DescribeLogStreamsRequest rebuild(
          void Function(DescribeLogStreamsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeLogStreamsRequestBuilder toBuilder() =>
      new DescribeLogStreamsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeLogStreamsRequest &&
        logGroupName == other.logGroupName &&
        logGroupIdentifier == other.logGroupIdentifier &&
        logStreamNamePrefix == other.logStreamNamePrefix &&
        orderBy == other.orderBy &&
        descending == other.descending &&
        nextToken == other.nextToken &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, logGroupName.hashCode);
    _$hash = $jc(_$hash, logGroupIdentifier.hashCode);
    _$hash = $jc(_$hash, logStreamNamePrefix.hashCode);
    _$hash = $jc(_$hash, orderBy.hashCode);
    _$hash = $jc(_$hash, descending.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeLogStreamsRequestBuilder
    implements
        Builder<DescribeLogStreamsRequest, DescribeLogStreamsRequestBuilder> {
  _$DescribeLogStreamsRequest? _$v;

  String? _logGroupName;
  String? get logGroupName => _$this._logGroupName;
  set logGroupName(String? logGroupName) => _$this._logGroupName = logGroupName;

  String? _logGroupIdentifier;
  String? get logGroupIdentifier => _$this._logGroupIdentifier;
  set logGroupIdentifier(String? logGroupIdentifier) =>
      _$this._logGroupIdentifier = logGroupIdentifier;

  String? _logStreamNamePrefix;
  String? get logStreamNamePrefix => _$this._logStreamNamePrefix;
  set logStreamNamePrefix(String? logStreamNamePrefix) =>
      _$this._logStreamNamePrefix = logStreamNamePrefix;

  _i3.OrderBy? _orderBy;
  _i3.OrderBy? get orderBy => _$this._orderBy;
  set orderBy(_i3.OrderBy? orderBy) => _$this._orderBy = orderBy;

  bool? _descending;
  bool? get descending => _$this._descending;
  set descending(bool? descending) => _$this._descending = descending;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  DescribeLogStreamsRequestBuilder() {
    DescribeLogStreamsRequest._init(this);
  }

  DescribeLogStreamsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _logGroupName = $v.logGroupName;
      _logGroupIdentifier = $v.logGroupIdentifier;
      _logStreamNamePrefix = $v.logStreamNamePrefix;
      _orderBy = $v.orderBy;
      _descending = $v.descending;
      _nextToken = $v.nextToken;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeLogStreamsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeLogStreamsRequest;
  }

  @override
  void update(void Function(DescribeLogStreamsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeLogStreamsRequest build() => _build();

  _$DescribeLogStreamsRequest _build() {
    final _$result = _$v ??
        new _$DescribeLogStreamsRequest._(
            logGroupName: logGroupName,
            logGroupIdentifier: logGroupIdentifier,
            logStreamNamePrefix: logStreamNamePrefix,
            orderBy: orderBy,
            descending: descending,
            nextToken: nextToken,
            limit: limit);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
