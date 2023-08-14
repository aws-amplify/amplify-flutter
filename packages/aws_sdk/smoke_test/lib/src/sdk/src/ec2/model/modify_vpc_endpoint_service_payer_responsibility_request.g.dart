// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_payer_responsibility_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServicePayerResponsibilityRequest
    extends ModifyVpcEndpointServicePayerResponsibilityRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;
  @override
  final PayerResponsibility? payerResponsibility;

  factory _$ModifyVpcEndpointServicePayerResponsibilityRequest(
          [void Function(
                  ModifyVpcEndpointServicePayerResponsibilityRequestBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServicePayerResponsibilityRequestBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointServicePayerResponsibilityRequest._(
      {required this.dryRun, this.serviceId, this.payerResponsibility})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'ModifyVpcEndpointServicePayerResponsibilityRequest', 'dryRun');
  }

  @override
  ModifyVpcEndpointServicePayerResponsibilityRequest rebuild(
          void Function(
                  ModifyVpcEndpointServicePayerResponsibilityRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServicePayerResponsibilityRequestBuilder toBuilder() =>
      new ModifyVpcEndpointServicePayerResponsibilityRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServicePayerResponsibilityRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId &&
        payerResponsibility == other.payerResponsibility;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jc(_$hash, payerResponsibility.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ModifyVpcEndpointServicePayerResponsibilityRequestBuilder
    implements
        Builder<ModifyVpcEndpointServicePayerResponsibilityRequest,
            ModifyVpcEndpointServicePayerResponsibilityRequestBuilder> {
  _$ModifyVpcEndpointServicePayerResponsibilityRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  PayerResponsibility? _payerResponsibility;
  PayerResponsibility? get payerResponsibility => _$this._payerResponsibility;
  set payerResponsibility(PayerResponsibility? payerResponsibility) =>
      _$this._payerResponsibility = payerResponsibility;

  ModifyVpcEndpointServicePayerResponsibilityRequestBuilder() {
    ModifyVpcEndpointServicePayerResponsibilityRequest._init(this);
  }

  ModifyVpcEndpointServicePayerResponsibilityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _payerResponsibility = $v.payerResponsibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServicePayerResponsibilityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServicePayerResponsibilityRequest;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServicePayerResponsibilityRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServicePayerResponsibilityRequest build() => _build();

  _$ModifyVpcEndpointServicePayerResponsibilityRequest _build() {
    final _$result = _$v ??
        new _$ModifyVpcEndpointServicePayerResponsibilityRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'ModifyVpcEndpointServicePayerResponsibilityRequest',
                'dryRun'),
            serviceId: serviceId,
            payerResponsibility: payerResponsibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
