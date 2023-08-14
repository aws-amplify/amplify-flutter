// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_connection_notification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointConnectionNotificationRequest
    extends ModifyVpcEndpointConnectionNotificationRequest {
  @override
  final bool dryRun;
  @override
  final String? connectionNotificationId;
  @override
  final String? connectionNotificationArn;
  @override
  final _i3.BuiltList<String>? connectionEvents;

  factory _$ModifyVpcEndpointConnectionNotificationRequest(
          [void Function(ModifyVpcEndpointConnectionNotificationRequestBuilder)?
              updates]) =>
      (new ModifyVpcEndpointConnectionNotificationRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointConnectionNotificationRequest._(
      {required this.dryRun,
      this.connectionNotificationId,
      this.connectionNotificationArn,
      this.connectionEvents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcEndpointConnectionNotificationRequest', 'dryRun');
  }

  @override
  ModifyVpcEndpointConnectionNotificationRequest rebuild(
          void Function(ModifyVpcEndpointConnectionNotificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointConnectionNotificationRequestBuilder toBuilder() =>
      new ModifyVpcEndpointConnectionNotificationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointConnectionNotificationRequest &&
        dryRun == other.dryRun &&
        connectionNotificationId == other.connectionNotificationId &&
        connectionNotificationArn == other.connectionNotificationArn &&
        connectionEvents == other.connectionEvents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, connectionNotificationId.hashCode);
    _$hash = $jc(_$hash, connectionNotificationArn.hashCode);
    _$hash = $jc(_$hash, connectionEvents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointConnectionNotificationRequestBuilder
    implements
        Builder<ModifyVpcEndpointConnectionNotificationRequest,
            ModifyVpcEndpointConnectionNotificationRequestBuilder> {
  _$ModifyVpcEndpointConnectionNotificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _connectionNotificationId;
  String? get connectionNotificationId => _$this._connectionNotificationId;
  set connectionNotificationId(String? connectionNotificationId) =>
      _$this._connectionNotificationId = connectionNotificationId;

  String? _connectionNotificationArn;
  String? get connectionNotificationArn => _$this._connectionNotificationArn;
  set connectionNotificationArn(String? connectionNotificationArn) =>
      _$this._connectionNotificationArn = connectionNotificationArn;

  _i3.ListBuilder<String>? _connectionEvents;
  _i3.ListBuilder<String> get connectionEvents =>
      _$this._connectionEvents ??= new _i3.ListBuilder<String>();
  set connectionEvents(_i3.ListBuilder<String>? connectionEvents) =>
      _$this._connectionEvents = connectionEvents;

  ModifyVpcEndpointConnectionNotificationRequestBuilder() {
    ModifyVpcEndpointConnectionNotificationRequest._init(this);
  }

  ModifyVpcEndpointConnectionNotificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _connectionNotificationId = $v.connectionNotificationId;
      _connectionNotificationArn = $v.connectionNotificationArn;
      _connectionEvents = $v.connectionEvents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointConnectionNotificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointConnectionNotificationRequest;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointConnectionNotificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointConnectionNotificationRequest build() => _build();

  _$ModifyVpcEndpointConnectionNotificationRequest _build() {
    _$ModifyVpcEndpointConnectionNotificationRequest _$result;
    try {
      _$result = _$v ??
          new _$ModifyVpcEndpointConnectionNotificationRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'ModifyVpcEndpointConnectionNotificationRequest', 'dryRun'),
              connectionNotificationId: connectionNotificationId,
              connectionNotificationArn: connectionNotificationArn,
              connectionEvents: _connectionEvents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionEvents';
        _connectionEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ModifyVpcEndpointConnectionNotificationRequest',
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
