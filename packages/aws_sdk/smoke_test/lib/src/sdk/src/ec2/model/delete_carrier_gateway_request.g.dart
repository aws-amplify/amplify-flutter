// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_carrier_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteCarrierGatewayRequest extends DeleteCarrierGatewayRequest {
  @override
  final String? carrierGatewayId;
  @override
  final bool dryRun;

  factory _$DeleteCarrierGatewayRequest(
          [void Function(DeleteCarrierGatewayRequestBuilder)? updates]) =>
      (new DeleteCarrierGatewayRequestBuilder()..update(updates))._build();

  _$DeleteCarrierGatewayRequest._({this.carrierGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteCarrierGatewayRequest', 'dryRun');
  }

  @override
  DeleteCarrierGatewayRequest rebuild(
          void Function(DeleteCarrierGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteCarrierGatewayRequestBuilder toBuilder() =>
      new DeleteCarrierGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteCarrierGatewayRequest &&
        carrierGatewayId == other.carrierGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, carrierGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteCarrierGatewayRequestBuilder
    implements
        Builder<DeleteCarrierGatewayRequest,
            DeleteCarrierGatewayRequestBuilder> {
  _$DeleteCarrierGatewayRequest? _$v;

  String? _carrierGatewayId;
  String? get carrierGatewayId => _$this._carrierGatewayId;
  set carrierGatewayId(String? carrierGatewayId) =>
      _$this._carrierGatewayId = carrierGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteCarrierGatewayRequestBuilder() {
    DeleteCarrierGatewayRequest._init(this);
  }

  DeleteCarrierGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carrierGatewayId = $v.carrierGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteCarrierGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteCarrierGatewayRequest;
  }

  @override
  void update(void Function(DeleteCarrierGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteCarrierGatewayRequest build() => _build();

  _$DeleteCarrierGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteCarrierGatewayRequest._(
            carrierGatewayId: carrierGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteCarrierGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
