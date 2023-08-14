// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'describe_vpc_endpoint_connection_notifications_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeVpcEndpointConnectionNotificationsResult
    extends DescribeVpcEndpointConnectionNotificationsResult {
  @override
  final _i2.BuiltList<ConnectionNotification>? connectionNotificationSet;
  @override
  final String? nextToken;

  factory _$DescribeVpcEndpointConnectionNotificationsResult(
          [void Function(
                  DescribeVpcEndpointConnectionNotificationsResultBuilder)?
              updates]) =>
      (new DescribeVpcEndpointConnectionNotificationsResultBuilder()
            ..update(updates))
          ._build();

  _$DescribeVpcEndpointConnectionNotificationsResult._(
      {this.connectionNotificationSet, this.nextToken})
      : super._();

  @override
  DescribeVpcEndpointConnectionNotificationsResult rebuild(
          void Function(DescribeVpcEndpointConnectionNotificationsResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeVpcEndpointConnectionNotificationsResultBuilder toBuilder() =>
      new DescribeVpcEndpointConnectionNotificationsResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeVpcEndpointConnectionNotificationsResult &&
        connectionNotificationSet == other.connectionNotificationSet &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionNotificationSet.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeVpcEndpointConnectionNotificationsResultBuilder
    implements
        Builder<DescribeVpcEndpointConnectionNotificationsResult,
            DescribeVpcEndpointConnectionNotificationsResultBuilder> {
  _$DescribeVpcEndpointConnectionNotificationsResult? _$v;

  _i2.ListBuilder<ConnectionNotification>? _connectionNotificationSet;
  _i2.ListBuilder<ConnectionNotification> get connectionNotificationSet =>
      _$this._connectionNotificationSet ??=
          new _i2.ListBuilder<ConnectionNotification>();
  set connectionNotificationSet(
          _i2.ListBuilder<ConnectionNotification>? connectionNotificationSet) =>
      _$this._connectionNotificationSet = connectionNotificationSet;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeVpcEndpointConnectionNotificationsResultBuilder();

  DescribeVpcEndpointConnectionNotificationsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionNotificationSet = $v.connectionNotificationSet?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeVpcEndpointConnectionNotificationsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeVpcEndpointConnectionNotificationsResult;
  }

  @override
  void update(
      void Function(DescribeVpcEndpointConnectionNotificationsResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeVpcEndpointConnectionNotificationsResult build() => _build();

  _$DescribeVpcEndpointConnectionNotificationsResult _build() {
    _$DescribeVpcEndpointConnectionNotificationsResult _$result;
    try {
      _$result = _$v ??
          new _$DescribeVpcEndpointConnectionNotificationsResult._(
              connectionNotificationSet: _connectionNotificationSet?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionNotificationSet';
        _connectionNotificationSet?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeVpcEndpointConnectionNotificationsResult',
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
