// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_carrier_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCarrierGatewayResult extends DeleteCarrierGatewayResult {
  @override
  final CarrierGateway? carrierGateway;

  factory _$DeleteCarrierGatewayResult(
          [void Function(DeleteCarrierGatewayResultBuilder)? updates]) =>
      (new DeleteCarrierGatewayResultBuilder()..update(updates))._build();

  _$DeleteCarrierGatewayResult._({this.carrierGateway}) : super._();

  @override
  DeleteCarrierGatewayResult rebuild(
          void Function(DeleteCarrierGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCarrierGatewayResultBuilder toBuilder() =>
      new DeleteCarrierGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCarrierGatewayResult &&
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

class DeleteCarrierGatewayResultBuilder
    implements
        Builder<DeleteCarrierGatewayResult, DeleteCarrierGatewayResultBuilder> {
  _$DeleteCarrierGatewayResult? _$v;

  CarrierGatewayBuilder? _carrierGateway;
  CarrierGatewayBuilder get carrierGateway =>
      _$this._carrierGateway ??= new CarrierGatewayBuilder();
  set carrierGateway(CarrierGatewayBuilder? carrierGateway) =>
      _$this._carrierGateway = carrierGateway;

  DeleteCarrierGatewayResultBuilder();

  DeleteCarrierGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierGateway = $v.carrierGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCarrierGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCarrierGatewayResult;
  }

  @override
  void update(void Function(DeleteCarrierGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCarrierGatewayResult build() => _build();

  _$DeleteCarrierGatewayResult _build() {
    _$DeleteCarrierGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteCarrierGatewayResult._(
              carrierGateway: _carrierGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carrierGateway';
        _carrierGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteCarrierGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
