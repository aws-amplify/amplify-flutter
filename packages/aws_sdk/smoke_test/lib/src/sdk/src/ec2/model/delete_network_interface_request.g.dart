// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_interface_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInterfaceRequest extends DeleteNetworkInterfaceRequest {
  @override
  final bool dryRun;
  @override
  final String? networkInterfaceId;

  factory _$DeleteNetworkInterfaceRequest(
          [void Function(DeleteNetworkInterfaceRequestBuilder)? updates]) =>
      (new DeleteNetworkInterfaceRequestBuilder()..update(updates))._build();

  _$DeleteNetworkInterfaceRequest._(
      {required this.dryRun, this.networkInterfaceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkInterfaceRequest', 'dryRun');
  }

  @override
  DeleteNetworkInterfaceRequest rebuild(
          void Function(DeleteNetworkInterfaceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInterfaceRequestBuilder toBuilder() =>
      new DeleteNetworkInterfaceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInterfaceRequest &&
        dryRun == other.dryRun &&
        networkInterfaceId == other.networkInterfaceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkInterfaceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInterfaceRequestBuilder
    implements
        Builder<DeleteNetworkInterfaceRequest,
            DeleteNetworkInterfaceRequestBuilder> {
  _$DeleteNetworkInterfaceRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkInterfaceId;
  String? get networkInterfaceId => _$this._networkInterfaceId;
  set networkInterfaceId(String? networkInterfaceId) =>
      _$this._networkInterfaceId = networkInterfaceId;

  DeleteNetworkInterfaceRequestBuilder() {
    DeleteNetworkInterfaceRequest._init(this);
  }

  DeleteNetworkInterfaceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkInterfaceId = $v.networkInterfaceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInterfaceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInterfaceRequest;
  }

  @override
  void update(void Function(DeleteNetworkInterfaceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInterfaceRequest build() => _build();

  _$DeleteNetworkInterfaceRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInterfaceRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkInterfaceRequest', 'dryRun'),
            networkInterfaceId: networkInterfaceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
