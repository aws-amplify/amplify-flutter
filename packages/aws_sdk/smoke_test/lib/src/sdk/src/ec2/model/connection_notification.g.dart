// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_notification.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConnectionNotification extends ConnectionNotification {
  @override
  final String? connectionNotificationId;
  @override
  final String? serviceId;
  @override
  final String? vpcEndpointId;
  @override
  final ConnectionNotificationType? connectionNotificationType;
  @override
  final String? connectionNotificationArn;
  @override
  final _i2.BuiltList<String>? connectionEvents;
  @override
  final ConnectionNotificationState? connectionNotificationState;

  factory _$ConnectionNotification(
          [void Function(ConnectionNotificationBuilder)? updates]) =>
      (new ConnectionNotificationBuilder()..update(updates))._build();

  _$ConnectionNotification._(
      {this.connectionNotificationId,
      this.serviceId,
      this.vpcEndpointId,
      this.connectionNotificationType,
      this.connectionNotificationArn,
      this.connectionEvents,
      this.connectionNotificationState})
      : super._();

  @override
  ConnectionNotification rebuild(
          void Function(ConnectionNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConnectionNotificationBuilder toBuilder() =>
      new ConnectionNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConnectionNotification &&
        connectionNotificationId == other.connectionNotificationId &&
        serviceId == other.serviceId &&
        vpcEndpointId == other.vpcEndpointId &&
        connectionNotificationType == other.connectionNotificationType &&
        connectionNotificationArn == other.connectionNotificationArn &&
        connectionEvents == other.connectionEvents &&
        connectionNotificationState == other.connectionNotificationState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionNotificationId.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, connectionNotificationType.hashCode);
    _$hash = $jc(_$hash, connectionNotificationArn.hashCode);
    _$hash = $jc(_$hash, connectionEvents.hashCode);
    _$hash = $jc(_$hash, connectionNotificationState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConnectionNotificationBuilder
    implements Builder<ConnectionNotification, ConnectionNotificationBuilder> {
  _$ConnectionNotification? _$v;

  String? _connectionNotificationId;
  String? get connectionNotificationId => _$this._connectionNotificationId;
  set connectionNotificationId(String? connectionNotificationId) =>
      _$this._connectionNotificationId = connectionNotificationId;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  ConnectionNotificationType? _connectionNotificationType;
  ConnectionNotificationType? get connectionNotificationType =>
      _$this._connectionNotificationType;
  set connectionNotificationType(
          ConnectionNotificationType? connectionNotificationType) =>
      _$this._connectionNotificationType = connectionNotificationType;

  String? _connectionNotificationArn;
  String? get connectionNotificationArn => _$this._connectionNotificationArn;
  set connectionNotificationArn(String? connectionNotificationArn) =>
      _$this._connectionNotificationArn = connectionNotificationArn;

  _i2.ListBuilder<String>? _connectionEvents;
  _i2.ListBuilder<String> get connectionEvents =>
      _$this._connectionEvents ??= new _i2.ListBuilder<String>();
  set connectionEvents(_i2.ListBuilder<String>? connectionEvents) =>
      _$this._connectionEvents = connectionEvents;

  ConnectionNotificationState? _connectionNotificationState;
  ConnectionNotificationState? get connectionNotificationState =>
      _$this._connectionNotificationState;
  set connectionNotificationState(
          ConnectionNotificationState? connectionNotificationState) =>
      _$this._connectionNotificationState = connectionNotificationState;

  ConnectionNotificationBuilder();

  ConnectionNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionNotificationId = $v.connectionNotificationId;
      _serviceId = $v.serviceId;
      _vpcEndpointId = $v.vpcEndpointId;
      _connectionNotificationType = $v.connectionNotificationType;
      _connectionNotificationArn = $v.connectionNotificationArn;
      _connectionEvents = $v.connectionEvents?.toBuilder();
      _connectionNotificationState = $v.connectionNotificationState;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConnectionNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConnectionNotification;
  }

  @override
  void update(void Function(ConnectionNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConnectionNotification build() => _build();

  _$ConnectionNotification _build() {
    _$ConnectionNotification _$result;
    try {
      _$result = _$v ??
          new _$ConnectionNotification._(
              connectionNotificationId: connectionNotificationId,
              serviceId: serviceId,
              vpcEndpointId: vpcEndpointId,
              connectionNotificationType: connectionNotificationType,
              connectionNotificationArn: connectionNotificationArn,
              connectionEvents: _connectionEvents?.build(),
              connectionNotificationState: connectionNotificationState);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionEvents';
        _connectionEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConnectionNotification', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
