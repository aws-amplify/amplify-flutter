// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_vpc_endpoint_connection_notifications_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteVpcEndpointConnectionNotificationsRequest
    extends DeleteVpcEndpointConnectionNotificationsRequest {
  @override
  final bool dryRun;
  @override
  final _i3.BuiltList<String>? connectionNotificationIds;

  factory _$DeleteVpcEndpointConnectionNotificationsRequest(
          [void Function(
                  DeleteVpcEndpointConnectionNotificationsRequestBuilder)?
              updates]) =>
      (new DeleteVpcEndpointConnectionNotificationsRequestBuilder()
            ..update(updates))
          ._build();

  _$DeleteVpcEndpointConnectionNotificationsRequest._(
      {required this.dryRun, this.connectionNotificationIds})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteVpcEndpointConnectionNotificationsRequest', 'dryRun');
  }

  @override
  DeleteVpcEndpointConnectionNotificationsRequest rebuild(
          void Function(DeleteVpcEndpointConnectionNotificationsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteVpcEndpointConnectionNotificationsRequestBuilder toBuilder() =>
      new DeleteVpcEndpointConnectionNotificationsRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteVpcEndpointConnectionNotificationsRequest &&
        dryRun == other.dryRun &&
        connectionNotificationIds == other.connectionNotificationIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, connectionNotificationIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteVpcEndpointConnectionNotificationsRequestBuilder
    implements
        Builder<DeleteVpcEndpointConnectionNotificationsRequest,
            DeleteVpcEndpointConnectionNotificationsRequestBuilder> {
  _$DeleteVpcEndpointConnectionNotificationsRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  _i3.ListBuilder<String>? _connectionNotificationIds;
  _i3.ListBuilder<String> get connectionNotificationIds =>
      _$this._connectionNotificationIds ??= new _i3.ListBuilder<String>();
  set connectionNotificationIds(
          _i3.ListBuilder<String>? connectionNotificationIds) =>
      _$this._connectionNotificationIds = connectionNotificationIds;

  DeleteVpcEndpointConnectionNotificationsRequestBuilder() {
    DeleteVpcEndpointConnectionNotificationsRequest._init(this);
  }

  DeleteVpcEndpointConnectionNotificationsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _connectionNotificationIds = $v.connectionNotificationIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteVpcEndpointConnectionNotificationsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteVpcEndpointConnectionNotificationsRequest;
  }

  @override
  void update(
      void Function(DeleteVpcEndpointConnectionNotificationsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteVpcEndpointConnectionNotificationsRequest build() => _build();

  _$DeleteVpcEndpointConnectionNotificationsRequest _build() {
    _$DeleteVpcEndpointConnectionNotificationsRequest _$result;
    try {
      _$result = _$v ??
          new _$DeleteVpcEndpointConnectionNotificationsRequest._(
              dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                  r'DeleteVpcEndpointConnectionNotificationsRequest', 'dryRun'),
              connectionNotificationIds: _connectionNotificationIds?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'connectionNotificationIds';
        _connectionNotificationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteVpcEndpointConnectionNotificationsRequest',
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
