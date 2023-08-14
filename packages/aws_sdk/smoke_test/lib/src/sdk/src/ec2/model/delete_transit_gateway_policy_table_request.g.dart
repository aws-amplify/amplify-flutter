// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_transit_gateway_policy_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteTransitGatewayPolicyTableRequest
    extends DeleteTransitGatewayPolicyTableRequest {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final bool dryRun;

  factory _$DeleteTransitGatewayPolicyTableRequest(
          [void Function(DeleteTransitGatewayPolicyTableRequestBuilder)?
              updates]) =>
      (new DeleteTransitGatewayPolicyTableRequestBuilder()..update(updates))
          ._build();

  _$DeleteTransitGatewayPolicyTableRequest._(
      {this.transitGatewayPolicyTableId, required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteTransitGatewayPolicyTableRequest', 'dryRun');
  }

  @override
  DeleteTransitGatewayPolicyTableRequest rebuild(
          void Function(DeleteTransitGatewayPolicyTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteTransitGatewayPolicyTableRequestBuilder toBuilder() =>
      new DeleteTransitGatewayPolicyTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteTransitGatewayPolicyTableRequest &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteTransitGatewayPolicyTableRequestBuilder
    implements
        Builder<DeleteTransitGatewayPolicyTableRequest,
            DeleteTransitGatewayPolicyTableRequestBuilder> {
  _$DeleteTransitGatewayPolicyTableRequest? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  DeleteTransitGatewayPolicyTableRequestBuilder() {
    DeleteTransitGatewayPolicyTableRequest._init(this);
  }

  DeleteTransitGatewayPolicyTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteTransitGatewayPolicyTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteTransitGatewayPolicyTableRequest;
  }

  @override
  void update(
      void Function(DeleteTransitGatewayPolicyTableRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteTransitGatewayPolicyTableRequest build() => _build();

  _$DeleteTransitGatewayPolicyTableRequest _build() {
    final _$result = _$v ??
        new _$DeleteTransitGatewayPolicyTableRequest._(
            transitGatewayPolicyTableId: transitGatewayPolicyTableId,
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteTransitGatewayPolicyTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
