// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_ipam_scope_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyIpamScopeRequest extends ModifyIpamScopeRequest {
  @override
  final bool dryRun;
  @override
  final String? ipamScopeId;
  @override
  final String? description;

  factory _$ModifyIpamScopeRequest(
          [void Function(ModifyIpamScopeRequestBuilder)? updates]) =>
      (new ModifyIpamScopeRequestBuilder()..update(updates))._build();

  _$ModifyIpamScopeRequest._(
      {required this.dryRun, this.ipamScopeId, this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyIpamScopeRequest', 'dryRun');
  }

  @override
  ModifyIpamScopeRequest rebuild(
          void Function(ModifyIpamScopeRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyIpamScopeRequestBuilder toBuilder() =>
      new ModifyIpamScopeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyIpamScopeRequest &&
        dryRun == other.dryRun &&
        ipamScopeId == other.ipamScopeId &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, ipamScopeId.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyIpamScopeRequestBuilder
    implements Builder<ModifyIpamScopeRequest, ModifyIpamScopeRequestBuilder> {
  _$ModifyIpamScopeRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _ipamScopeId;
  String? get ipamScopeId => _$this._ipamScopeId;
  set ipamScopeId(String? ipamScopeId) => _$this._ipamScopeId = ipamScopeId;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ModifyIpamScopeRequestBuilder() {
    ModifyIpamScopeRequest._init(this);
  }

  ModifyIpamScopeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _ipamScopeId = $v.ipamScopeId;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyIpamScopeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyIpamScopeRequest;
  }

  @override
  void update(void Function(ModifyIpamScopeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyIpamScopeRequest build() => _build();

  _$ModifyIpamScopeRequest _build() {
    final _$result = _$v ??
        new _$ModifyIpamScopeRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyIpamScopeRequest', 'dryRun'),
            ipamScopeId: ipamScopeId,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
