// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_vpc_endpoint_service_private_dns_verification_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartVpcEndpointServicePrivateDnsVerificationResult
    extends StartVpcEndpointServicePrivateDnsVerificationResult {
  @override
  final bool returnValue;

  factory _$StartVpcEndpointServicePrivateDnsVerificationResult(
          [void Function(
                  StartVpcEndpointServicePrivateDnsVerificationResultBuilder)?
              updates]) =>
      (new StartVpcEndpointServicePrivateDnsVerificationResultBuilder()
            ..update(updates))
          ._build();

  _$StartVpcEndpointServicePrivateDnsVerificationResult._(
      {required this.returnValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(returnValue,
        r'StartVpcEndpointServicePrivateDnsVerificationResult', 'returnValue');
  }

  @override
  StartVpcEndpointServicePrivateDnsVerificationResult rebuild(
          void Function(
                  StartVpcEndpointServicePrivateDnsVerificationResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StartVpcEndpointServicePrivateDnsVerificationResultBuilder toBuilder() =>
      new StartVpcEndpointServicePrivateDnsVerificationResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartVpcEndpointServicePrivateDnsVerificationResult &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StartVpcEndpointServicePrivateDnsVerificationResultBuilder
    implements
        Builder<StartVpcEndpointServicePrivateDnsVerificationResult,
            StartVpcEndpointServicePrivateDnsVerificationResultBuilder> {
  _$StartVpcEndpointServicePrivateDnsVerificationResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  StartVpcEndpointServicePrivateDnsVerificationResultBuilder() {
    StartVpcEndpointServicePrivateDnsVerificationResult._init(this);
  }

  StartVpcEndpointServicePrivateDnsVerificationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartVpcEndpointServicePrivateDnsVerificationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StartVpcEndpointServicePrivateDnsVerificationResult;
  }

  @override
  void update(
      void Function(StartVpcEndpointServicePrivateDnsVerificationResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  StartVpcEndpointServicePrivateDnsVerificationResult build() => _build();

  _$StartVpcEndpointServicePrivateDnsVerificationResult _build() {
    final _$result = _$v ??
        new _$StartVpcEndpointServicePrivateDnsVerificationResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue,
                r'StartVpcEndpointServicePrivateDnsVerificationResult',
                'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
