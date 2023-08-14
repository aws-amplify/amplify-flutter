// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_connection_notification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointConnectionNotificationResult
    extends CreateVpcEndpointConnectionNotificationResult {
  @override
  final ConnectionNotification? connectionNotification;
  @override
  final String? clientToken;

  factory _$CreateVpcEndpointConnectionNotificationResult(
          [void Function(CreateVpcEndpointConnectionNotificationResultBuilder)?
              updates]) =>
      (new CreateVpcEndpointConnectionNotificationResultBuilder()
            ..update(updates))
          ._build();

  _$CreateVpcEndpointConnectionNotificationResult._(
      {this.connectionNotification, this.clientToken})
      : super._();

  @override
  CreateVpcEndpointConnectionNotificationResult rebuild(
          void Function(CreateVpcEndpointConnectionNotificationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointConnectionNotificationResultBuilder toBuilder() =>
      new CreateVpcEndpointConnectionNotificationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointConnectionNotificationResult &&
        connectionNotification == other.connectionNotification &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, connectionNotification.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointConnectionNotificationResultBuilder
    implements
        Builder<CreateVpcEndpointConnectionNotificationResult,
            CreateVpcEndpointConnectionNotificationResultBuilder> {
  _$CreateVpcEndpointConnectionNotificationResult? _$v;

  ConnectionNotificationBuilder? _connectionNotification;
  ConnectionNotificationBuilder get connectionNotification =>
      _$this._connectionNotification ??= new ConnectionNotificationBuilder();
  set connectionNotification(
          ConnectionNotificationBuilder? connectionNotification) =>
      _$this._connectionNotification = connectionNotification;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateVpcEndpointConnectionNotificationResultBuilder();

  CreateVpcEndpointConnectionNotificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _connectionNotification = $v.connectionNotification?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointConnectionNotificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointConnectionNotificationResult;
  }

  @override
  void update(
      void Function(CreateVpcEndpointConnectionNotificationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointConnectionNotificationResult build() => _build();

  _$CreateVpcEndpointConnectionNotificationResult _build() {
    _$CreateVpcEndpointConnectionNotificationResult _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointConnectionNotificationResult._(
              connectionNotification: _connectionNotification?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionNotification';
        _connectionNotification?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointConnectionNotificationResult',
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
