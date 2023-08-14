// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_ipam_scope_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteIpamScopeRequest extends DeleteIpamScopeRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamScopeId;

  factory _$DeleteIpamScopeRequest(
          [void Function(DeleteIpamScopeRequestBuilder)? updates]) =>
      (new DeleteIpamScopeRequestBuilder()..update(updates))._build();

  _$DeleteIpamScopeRequest._({required this.dryRun, this.ipamScopeId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteIpamScopeRequest', 'dryRun');
  }

  @override
  DeleteIpamScopeRequest rebuild(
          void Function(DeleteIpamScopeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteIpamScopeRequestBuilder toBuilder() =>
      new DeleteIpamScopeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteIpamScopeRequest &&
        dryRun == other.dryRun &&
        ipamScopeId == other.ipamScopeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteIpamScopeRequestBuilder
    implements Builder<DeleteIpamScopeRequest, DeleteIpamScopeRequestBuilder> {
  _$DeleteIpamScopeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  DeleteIpamScopeRequestBuilder() {
    DeleteIpamScopeRequest._init(this);
  }

  DeleteIpamScopeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamScopeId = $v.ipamScopeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteIpamScopeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteIpamScopeRequest;
  }

  @override
  void update(void Function(DeleteIpamScopeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteIpamScopeRequest build() => _build();

  _$DeleteIpamScopeRequest _build() {
    final _$result = _$v ??
        new _$DeleteIpamScopeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteIpamScopeRequest', 'dryRun'),
            ipamScopeId: ipamScopeId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
