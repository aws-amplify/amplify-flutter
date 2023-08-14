// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_tenancy_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcTenancyRequest extends ModifyVpcTenancyRequest {
  @override
  final String? vpcId;
  @override
  final VpcTenancy? instanceTenancy;
  @override
  final bool dryRun;

  factory _$ModifyVpcTenancyRequest(
          [void Function(ModifyVpcTenancyRequestBuilder)? updates]) =>
      (new ModifyVpcTenancyRequestBuilder()..update(updates))._build();

  _$ModifyVpcTenancyRequest._(
      {this.vpcId, this.instanceTenancy, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'ModifyVpcTenancyRequest', 'dryRun');
  }

  @override
  ModifyVpcTenancyRequest rebuild(
          void Function(ModifyVpcTenancyRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcTenancyRequestBuilder toBuilder() =>
      new ModifyVpcTenancyRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcTenancyRequest &&
        vpcId == other.vpcId &&
        instanceTenancy == other.instanceTenancy &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jc(_$hash, instanceTenancy.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcTenancyRequestBuilder
    implements
        Builder<ModifyVpcTenancyRequest, ModifyVpcTenancyRequestBuilder> {
  _$ModifyVpcTenancyRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  VpcTenancy? _instanceTenancy;
  VpcTenancy? get instanceTenancy => _$this._instanceTenancy;
  set instanceTenancy(VpcTenancy? instanceTenancy) =>
      _$this._instanceTenancy = instanceTenancy;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  ModifyVpcTenancyRequestBuilder() {
    ModifyVpcTenancyRequest._init(this);
  }

  ModifyVpcTenancyRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _instanceTenancy = $v.instanceTenancy;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcTenancyRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcTenancyRequest;
  }

  @override
  void update(void Function(ModifyVpcTenancyRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcTenancyRequest build() => _build();

  _$ModifyVpcTenancyRequest _build() {
    final _$result = _$v ??
        new _$ModifyVpcTenancyRequest._(
            vpcId: vpcId,
            instanceTenancy: instanceTenancy,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'ModifyVpcTenancyRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
