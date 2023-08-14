// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_customer_gateway_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateCustomerGatewayResult extends CreateCustomerGatewayResult {
  @override
  final CustomerGateway? customerGateway;

  factory _$CreateCustomerGatewayResult(
          [void Function(CreateCustomerGatewayResultBuilder)? updates]) =>
      (new CreateCustomerGatewayResultBuilder()..update(updates))._build();

  _$CreateCustomerGatewayResult._({this.customerGateway}) : super._();

  @override
  CreateCustomerGatewayResult rebuild(
          void Function(CreateCustomerGatewayResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateCustomerGatewayResultBuilder toBuilder() =>
      new CreateCustomerGatewayResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateCustomerGatewayResult &&
        customerGateway == other.customerGateway;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGateway.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateCustomerGatewayResultBuilder
    implements
        Builder<CreateCustomerGatewayResult,
            CreateCustomerGatewayResultBuilder> {
  _$CreateCustomerGatewayResult? _$v;

  CustomerGatewayBuilder? _customerGateway;
  CustomerGatewayBuilder get customerGateway =>
      _$this._customerGateway ??= new CustomerGatewayBuilder();
  set customerGateway(CustomerGatewayBuilder? customerGateway) =>
      _$this._customerGateway = customerGateway;

  CreateCustomerGatewayResultBuilder();

  CreateCustomerGatewayResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGateway = $v.customerGateway?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateCustomerGatewayResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateCustomerGatewayResult;
  }

  @override
  void update(void Function(CreateCustomerGatewayResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateCustomerGatewayResult build() => _build();

  _$CreateCustomerGatewayResult _build() {
    _$CreateCustomerGatewayResult _$result;
    try {
      _$result = _$v ??
          new _$CreateCustomerGatewayResult._(
              customerGateway: _customerGateway?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'customerGateway';
        _customerGateway?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateCustomerGatewayResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
