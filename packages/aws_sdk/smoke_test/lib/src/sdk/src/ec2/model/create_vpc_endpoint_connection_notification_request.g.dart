// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_vpc_endpoint_connection_notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateVpcEndpointConnectionNotificationRequest
    extends CreateVpcEndpointConnectionNotificationRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final String? vpcEndpointId;
  @override
  final String? connectionNotificationArn;
  @override
  final _i3.BuiltList<String>? connectionEvents;
  @override
  final String? clientToken;

  factory _$CreateVpcEndpointConnectionNotificationRequest(
          [void Function(CreateVpcEndpointConnectionNotificationRequestBuilder)?
              updates]) =>
      (new CreateVpcEndpointConnectionNotificationRequestBuilder()
            ..update(updates))
          ._build();

  _$CreateVpcEndpointConnectionNotificationRequest._(
      {required this.dryRun,
      this.serviceId,
      this.vpcEndpointId,
      this.connectionNotificationArn,
      this.connectionEvents,
      this.clientToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'CreateVpcEndpointConnectionNotificationRequest', 'dryRun');
  }

  @override
  CreateVpcEndpointConnectionNotificationRequest rebuild(
          void Function(CreateVpcEndpointConnectionNotificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateVpcEndpointConnectionNotificationRequestBuilder toBuilder() =>
      new CreateVpcEndpointConnectionNotificationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateVpcEndpointConnectionNotificationRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        vpcEndpointId == other.vpcEndpointId &&
        connectionNotificationArn == other.connectionNotificationArn &&
        connectionEvents == other.connectionEvents &&
        clientToken == other.clientToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, vpcEndpointId.hashCode);
    _$hash = $jc(_$hash, connectionNotificationArn.hashCode);
    _$hash = $jc(_$hash, connectionEvents.hashCode);
    _$hash = $jc(_$hash, clientToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateVpcEndpointConnectionNotificationRequestBuilder
    implements
        Builder<CreateVpcEndpointConnectionNotificationRequest,
            CreateVpcEndpointConnectionNotificationRequestBuilder> {
  _$CreateVpcEndpointConnectionNotificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  String? _vpcEndpointId;
  String? get vpcEndpointId => _$this._vpcEndpointId;
  set vpcEndpointId(String? vpcEndpointId) =>
      _$this._vpcEndpointId = vpcEndpointId;

  String? _connectionNotificationArn;
  String? get connectionNotificationArn => _$this._connectionNotificationArn;
  set connectionNotificationArn(String? connectionNotificationArn) =>
      _$this._connectionNotificationArn = connectionNotificationArn;

  _i3.ListBuilder<String>? _connectionEvents;
  _i3.ListBuilder<String> get connectionEvents =>
      _$this._connectionEvents ??= new _i3.ListBuilder<String>();
  set connectionEvents(_i3.ListBuilder<String>? connectionEvents) =>
      _$this._connectionEvents = connectionEvents;

  String? _clientToken;
  String? get clientToken => _$this._clientToken;
  set clientToken(String? clientToken) => _$this._clientToken = clientToken;

  CreateVpcEndpointConnectionNotificationRequestBuilder() {
    CreateVpcEndpointConnectionNotificationRequest._init(this);
  }

  CreateVpcEndpointConnectionNotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _vpcEndpointId = $v.vpcEndpointId;
      _connectionNotificationArn = $v.connectionNotificationArn;
      _connectionEvents = $v.connectionEvents?.toBuilder();
      _clientToken = $v.clientToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateVpcEndpointConnectionNotificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateVpcEndpointConnectionNotificationRequest;
  }

  @override
  void update(
      void Function(CreateVpcEndpointConnectionNotificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateVpcEndpointConnectionNotificationRequest build() => _build();

  _$CreateVpcEndpointConnectionNotificationRequest _build() {
    _$CreateVpcEndpointConnectionNotificationRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateVpcEndpointConnectionNotificationRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'CreateVpcEndpointConnectionNotificationRequest', 'dryRun'),
              serviceId: serviceId,
              vpcEndpointId: vpcEndpointId,
              connectionNotificationArn: connectionNotificationArn,
              connectionEvents: _connectionEvents?.build(),
              clientToken: clientToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionEvents';
        _connectionEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateVpcEndpointConnectionNotificationRequest',
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
