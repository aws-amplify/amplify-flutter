// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_customer_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCustomerGatewayRequest extends DeleteCustomerGatewayRequest {
  @override
  final String? customerGatewayId;
  @override
  final bool dryRun;

  factory _$DeleteCustomerGatewayRequest(
          [void Function(DeleteCustomerGatewayRequestBuilder)? updates]) =>
      (new DeleteCustomerGatewayRequestBuilder()..update(updates))._build();

  _$DeleteCustomerGatewayRequest._(
      {this.customerGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteCustomerGatewayRequest', 'dryRun');
  }

  @override
  DeleteCustomerGatewayRequest rebuild(
          void Function(DeleteCustomerGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCustomerGatewayRequestBuilder toBuilder() =>
      new DeleteCustomerGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCustomerGatewayRequest &&
        customerGatewayId == other.customerGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCustomerGatewayRequestBuilder
    implements
        Builder<DeleteCustomerGatewayRequest,
            DeleteCustomerGatewayRequestBuilder> {
  _$DeleteCustomerGatewayRequest? _$v;

  String? _customerGatewayId;
  String? get customerGatewayId => _$this._customerGatewayId;
  set customerGatewayId(String? customerGatewayId) =>
      _$this._customerGatewayId = customerGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteCustomerGatewayRequestBuilder() {
    DeleteCustomerGatewayRequest._init(this);
  }

  DeleteCustomerGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerGatewayId = $v.customerGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCustomerGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCustomerGatewayRequest;
  }

  @override
  void update(void Function(DeleteCustomerGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCustomerGatewayRequest build() => _build();

  _$DeleteCustomerGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteCustomerGatewayRequest._(
            customerGatewayId: customerGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteCustomerGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
