// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_pool_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamPoolRequest extends DeleteIpamPoolRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamPoolId;

  factory _$DeleteIpamPoolRequest(
          [void Function(DeleteIpamPoolRequestBuilder)? updates]) =>
      (new DeleteIpamPoolRequestBuilder()..update(updates))._build();

  _$DeleteIpamPoolRequest._({required this.dryRun, this.ipamPoolId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteIpamPoolRequest', 'dryRun');
  }

  @override
  DeleteIpamPoolRequest rebuild(
          void Function(DeleteIpamPoolRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamPoolRequestBuilder toBuilder() =>
      new DeleteIpamPoolRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamPoolRequest &&
        dryRun == other.dryRun &&
        ipamPoolId == other.ipamPoolId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamPoolId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamPoolRequestBuilder
    implements Builder<DeleteIpamPoolRequest, DeleteIpamPoolRequestBuilder> {
  _$DeleteIpamPoolRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamPoolId;
  String? get ipamPoolId => _$this._ipamPoolId;
  set ipamPoolId(String? ipamPoolId) => _$this._ipamPoolId = ipamPoolId;

  DeleteIpamPoolRequestBuilder() {
    DeleteIpamPoolRequest._init(this);
  }

  DeleteIpamPoolRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamPoolId = $v.ipamPoolId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamPoolRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamPoolRequest;
  }

  @override
  void update(void Function(DeleteIpamPoolRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamPoolRequest build() => _build();

  _$DeleteIpamPoolRequest _build() {
    final _$result = _$v ??
        new _$DeleteIpamPoolRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteIpamPoolRequest', 'dryRun'),
            ipamPoolId: ipamPoolId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
