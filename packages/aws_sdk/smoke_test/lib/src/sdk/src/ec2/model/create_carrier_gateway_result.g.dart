// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_carrier_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCarrierGatewayResult extends CreateCarrierGatewayResult {
  @override
  final CarrierGateway? carrierGateway;

  factory _$CreateCarrierGatewayResult(
          [void Function(CreateCarrierGatewayResultBuilder)? updates]) =>
      (new CreateCarrierGatewayResultBuilder()..update(updates))._build();

  _$CreateCarrierGatewayResult._({this.carrierGateway}) : super._();

  @override
  CreateCarrierGatewayResult rebuild(
          void Function(CreateCarrierGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCarrierGatewayResultBuilder toBuilder() =>
      new CreateCarrierGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCarrierGatewayResult &&
        carrierGateway == other.carrierGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carrierGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCarrierGatewayResultBuilder
    implements
        Builder<CreateCarrierGatewayResult, CreateCarrierGatewayResultBuilder> {
  _$CreateCarrierGatewayResult? _$v;

  CarrierGatewayBuilder? _carrierGateway;
  CarrierGatewayBuilder get carrierGateway =>
      _$this._carrierGateway ??= new CarrierGatewayBuilder();
  set carrierGateway(CarrierGatewayBuilder? carrierGateway) =>
      _$this._carrierGateway = carrierGateway;

  CreateCarrierGatewayResultBuilder();

  CreateCarrierGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierGateway = $v.carrierGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCarrierGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCarrierGatewayResult;
  }

  @override
  void update(void Function(CreateCarrierGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCarrierGatewayResult build() => _build();

  _$CreateCarrierGatewayResult _build() {
    _$CreateCarrierGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateCarrierGatewayResult._(
              carrierGateway: _carrierGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carrierGateway';
        _carrierGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCarrierGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
