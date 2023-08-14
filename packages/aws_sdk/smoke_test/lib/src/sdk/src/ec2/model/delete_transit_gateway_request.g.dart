// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayRequest extends DeleteTransitGatewayRequest {
  @override
  final String? transitGatewayId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayRequest(
          [void Function(DeleteTransitGatewayRequestBuilder)? updates]) =>
      (new DeleteTransitGatewayRequestBuilder()..update(updates))._build();

  _$DeleteTransitGatewayRequest._({this.transitGatewayId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayRequest rebuild(
          void Function(DeleteTransitGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayRequestBuilder toBuilder() =>
      new DeleteTransitGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayRequest &&
        transitGatewayId == other.transitGatewayId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayRequestBuilder
    implements
        Builder<DeleteTransitGatewayRequest,
            DeleteTransitGatewayRequestBuilder> {
  _$DeleteTransitGatewayRequest? _$v;

  String? _transitGatewayId;
  String? get transitGatewayId => _$this._transitGatewayId;
  set transitGatewayId(String? transitGatewayId) =>
      _$this._transitGatewayId = transitGatewayId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayRequestBuilder() {
    DeleteTransitGatewayRequest._init(this);
  }

  DeleteTransitGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayId = $v.transitGatewayId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayRequest;
  }

  @override
  void update(void Function(DeleteTransitGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayRequest build() => _build();

  _$DeleteTransitGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayRequest._(
            transitGatewayId: transitGatewayId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
