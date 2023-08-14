// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_acl_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkAclRequest extends DeleteNetworkAclRequest {
  @override
  final bool dryRun;
  @override
  final String? networkAclId;

  factory _$DeleteNetworkAclRequest(
          [void Function(DeleteNetworkAclRequestBuilder)? updates]) =>
      (new DeleteNetworkAclRequestBuilder()..update(updates))._build();

  _$DeleteNetworkAclRequest._({required this.dryRun, this.networkAclId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNetworkAclRequest', 'dryRun');
  }

  @override
  DeleteNetworkAclRequest rebuild(
          void Function(DeleteNetworkAclRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkAclRequestBuilder toBuilder() =>
      new DeleteNetworkAclRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkAclRequest &&
        dryRun == other.dryRun &&
        networkAclId == other.networkAclId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, networkAclId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkAclRequestBuilder
    implements
        Builder<DeleteNetworkAclRequest, DeleteNetworkAclRequestBuilder> {
  _$DeleteNetworkAclRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _networkAclId;
  String? get networkAclId => _$this._networkAclId;
  set networkAclId(String? networkAclId) => _$this._networkAclId = networkAclId;

  DeleteNetworkAclRequestBuilder() {
    DeleteNetworkAclRequest._init(this);
  }

  DeleteNetworkAclRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _networkAclId = $v.networkAclId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkAclRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkAclRequest;
  }

  @override
  void update(void Function(DeleteNetworkAclRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkAclRequest build() => _build();

  _$DeleteNetworkAclRequest _build() {
    final _$result = _$v ??
        new _$DeleteNetworkAclRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNetworkAclRequest', 'dryRun'),
            networkAclId: networkAclId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
