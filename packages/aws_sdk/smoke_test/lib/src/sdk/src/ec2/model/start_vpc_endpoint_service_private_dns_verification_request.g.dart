// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_vpc_endpoint_service_private_dns_verification_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartVpcEndpointServicePrivateDnsVerificationRequest
    extends StartVpcEndpointServicePrivateDnsVerificationRequest {
  @override
  final bool dryRun;
  @override
  final String? serviceId;

  factory _$StartVpcEndpointServicePrivateDnsVerificationRequest(
          [void Function(
                  StartVpcEndpointServicePrivateDnsVerificationRequestBuilder)?
              updates]) =>
      (new StartVpcEndpointServicePrivateDnsVerificationRequestBuilder()
            ..update(updates))
          ._build();

  _$StartVpcEndpointServicePrivateDnsVerificationRequest._(
      {required this.dryRun, this.serviceId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'StartVpcEndpointServicePrivateDnsVerificationRequest', 'dryRun');
  }

  @override
  StartVpcEndpointServicePrivateDnsVerificationRequest rebuild(
          void Function(
                  StartVpcEndpointServicePrivateDnsVerificationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartVpcEndpointServicePrivateDnsVerificationRequestBuilder toBuilder() =>
      new StartVpcEndpointServicePrivateDnsVerificationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartVpcEndpointServicePrivateDnsVerificationRequest &&
        dryRun == other.dryRun &&
        serviceId == other.serviceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, serviceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartVpcEndpointServicePrivateDnsVerificationRequestBuilder
    implements
        Builder<StartVpcEndpointServicePrivateDnsVerificationRequest,
            StartVpcEndpointServicePrivateDnsVerificationRequestBuilder> {
  _$StartVpcEndpointServicePrivateDnsVerificationRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  StartVpcEndpointServicePrivateDnsVerificationRequestBuilder() {
    StartVpcEndpointServicePrivateDnsVerificationRequest._init(this);
  }

  StartVpcEndpointServicePrivateDnsVerificationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _serviceId = $v.serviceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartVpcEndpointServicePrivateDnsVerificationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartVpcEndpointServicePrivateDnsVerificationRequest;
  }

  @override
  void update(
      void Function(
              StartVpcEndpointServicePrivateDnsVerificationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartVpcEndpointServicePrivateDnsVerificationRequest build() => _build();

  _$StartVpcEndpointServicePrivateDnsVerificationRequest _build() {
    final _$result = _$v ??
        new _$StartVpcEndpointServicePrivateDnsVerificationRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'StartVpcEndpointServicePrivateDnsVerificationRequest',
                'dryRun'),
            serviceId: serviceId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
