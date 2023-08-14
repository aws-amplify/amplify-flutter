// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_interface_permission_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInterfacePermissionRequest
    extends DeleteNetworkInterfacePermissionRequest {
  @override
  final String? networkInterfacePermissionId;
  @override
  final bool force;
  @override
  final bool dryRun;

  factory _$DeleteNetworkInterfacePermissionRequest(
          [void Function(DeleteNetworkInterfacePermissionRequestBuilder)?
              updates]) =>
      (new DeleteNetworkInterfacePermissionRequestBuilder()..update(updates))
          ._build();

  _$DeleteNetworkInterfacePermissionRequest._(
      {this.networkInterfacePermissionId,
      required this.force,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        force, r'DeleteNetworkInterfacePermissionRequest', 'force');
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInterfacePermissionRequest', 'dryRun');
  }

  @override
  DeleteNetworkInterfacePermissionRequest rebuild(
          void Function(DeleteNetworkInterfacePermissionRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInterfacePermissionRequestBuilder toBuilder() =>
      new DeleteNetworkInterfacePermissionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInterfacePermissionRequest &&
        networkInterfacePermissionId == other.networkInterfacePermissionId &&
        force == other.force &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInterfacePermissionId.hashCode);
    _$hash = $jc(_$hash, force.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInterfacePermissionRequestBuilder
    implements
        Builder<DeleteNetworkInterfacePermissionRequest,
            DeleteNetworkInterfacePermissionRequestBuilder> {
  _$DeleteNetworkInterfacePermissionRequest? _$v;

  String? _networkInterfacePermissionId;
  String? get networkInterfacePermissionId =>
      _$this._networkInterfacePermissionId;
  set networkInterfacePermissionId(String? networkInterfacePermissionId) =>
      _$this._networkInterfacePermissionId = networkInterfacePermissionId;

  bool? _force;
  bool? get force => _$this._force;
  set force(bool? force) => _$this._force = force;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteNetworkInterfacePermissionRequestBuilder() {
    DeleteNetworkInterfacePermissionRequest._init(this);
  }

  DeleteNetworkInterfacePermissionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInterfacePermissionId = $v.networkInterfacePermissionId;
      _force = $v.force;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInterfacePermissionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInterfacePermissionRequest;
  }

  @override
  void update(
      void Function(DeleteNetworkInterfacePermissionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInterfacePermissionRequest build() => _build();

  _$DeleteNetworkInterfacePermissionRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInterfacePermissionRequest._(
            networkInterfacePermissionId: networkInterfacePermissionId,
            force: BuiltValueNullFieldError.checkNotNull(
                force, r'DeleteNetworkInterfacePermissionRequest', 'force'),
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkInterfacePermissionRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
