// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modify_vpc_endpoint_service_payer_responsibility_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ModifyVpcEndpointServicePayerResponsibilityResult
    extends ModifyVpcEndpointServicePayerResponsibilityResult {
  @override
  final bool returnValue;

  factory _$ModifyVpcEndpointServicePayerResponsibilityResult(
          [void Function(
                  ModifyVpcEndpointServicePayerResponsibilityResultBuilder)?
              updates]) =>
      (new ModifyVpcEndpointServicePayerResponsibilityResultBuilder()
            ..update(updates))
          ._build();

  _$ModifyVpcEndpointServicePayerResponsibilityResult._(
      {required this.returnValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(returnValue,
        r'ModifyVpcEndpointServicePayerResponsibilityResult', 'returnValue');
  }

  @override
  ModifyVpcEndpointServicePayerResponsibilityResult rebuild(
          void Function(
                  ModifyVpcEndpointServicePayerResponsibilityResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ModifyVpcEndpointServicePayerResponsibilityResultBuilder toBuilder() =>
      new ModifyVpcEndpointServicePayerResponsibilityResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ModifyVpcEndpointServicePayerResponsibilityResult &&
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

class ModifyVpcEndpointServicePayerResponsibilityResultBuilder
    implements
        Builder<ModifyVpcEndpointServicePayerResponsibilityResult,
            ModifyVpcEndpointServicePayerResponsibilityResultBuilder> {
  _$ModifyVpcEndpointServicePayerResponsibilityResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  ModifyVpcEndpointServicePayerResponsibilityResultBuilder() {
    ModifyVpcEndpointServicePayerResponsibilityResult._init(this);
  }

  ModifyVpcEndpointServicePayerResponsibilityResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ModifyVpcEndpointServicePayerResponsibilityResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ModifyVpcEndpointServicePayerResponsibilityResult;
  }

  @override
  void update(
      void Function(ModifyVpcEndpointServicePayerResponsibilityResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ModifyVpcEndpointServicePayerResponsibilityResult build() => _build();

  _$ModifyVpcEndpointServicePayerResponsibilityResult _build() {
    final _$result = _$v ??
        new _$ModifyVpcEndpointServicePayerResponsibilityResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue,
                r'ModifyVpcEndpointServicePayerResponsibilityResult',
                'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
