// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'associate_transit_gateway_policy_table_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateTransitGatewayPolicyTableRequest
    extends AssociateTransitGatewayPolicyTableRequest {
  @override
  final String? transitGatewayPolicyTableId;
  @override
  final String? transitGatewayAttachmentId;
  @override
  final bool dryRun;

  factory _$AssociateTransitGatewayPolicyTableRequest(
          [void Function(AssociateTransitGatewayPolicyTableRequestBuilder)?
              updates]) =>
      (new AssociateTransitGatewayPolicyTableRequestBuilder()..update(updates))
          ._build();

  _$AssociateTransitGatewayPolicyTableRequest._(
      {this.transitGatewayPolicyTableId,
      this.transitGatewayAttachmentId,
      required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'AssociateTransitGatewayPolicyTableRequest', 'dryRun');
  }

  @override
  AssociateTransitGatewayPolicyTableRequest rebuild(
          void Function(AssociateTransitGatewayPolicyTableRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateTransitGatewayPolicyTableRequestBuilder toBuilder() =>
      new AssociateTransitGatewayPolicyTableRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateTransitGatewayPolicyTableRequest &&
        transitGatewayPolicyTableId == other.transitGatewayPolicyTableId &&
        transitGatewayAttachmentId == other.transitGatewayAttachmentId &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayPolicyTableId.hashCode);
    _$hash = $jc(_$hash, transitGatewayAttachmentId.hashCode);
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssociateTransitGatewayPolicyTableRequestBuilder
    implements
        Builder<AssociateTransitGatewayPolicyTableRequest,
            AssociateTransitGatewayPolicyTableRequestBuilder> {
  _$AssociateTransitGatewayPolicyTableRequest? _$v;

  String? _transitGatewayPolicyTableId;
  String? get transitGatewayPolicyTableId =>
      _$this._transitGatewayPolicyTableId;
  set transitGatewayPolicyTableId(String? transitGatewayPolicyTableId) =>
      _$this._transitGatewayPolicyTableId = transitGatewayPolicyTableId;

  String? _transitGatewayAttachmentId;
  String? get transitGatewayAttachmentId => _$this._transitGatewayAttachmentId;
  set transitGatewayAttachmentId(String? transitGatewayAttachmentId) =>
      _$this._transitGatewayAttachmentId = transitGatewayAttachmentId;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  AssociateTransitGatewayPolicyTableRequestBuilder() {
    AssociateTransitGatewayPolicyTableRequest._init(this);
  }

  AssociateTransitGatewayPolicyTableRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayPolicyTableId = $v.transitGatewayPolicyTableId;
      _transitGatewayAttachmentId = $v.transitGatewayAttachmentId;
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateTransitGatewayPolicyTableRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateTransitGatewayPolicyTableRequest;
  }

  @override
  void update(
      void Function(AssociateTransitGatewayPolicyTableRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateTransitGatewayPolicyTableRequest build() => _build();

  _$AssociateTransitGatewayPolicyTableRequest _build() {
    final _$result = _$v ??
        new _$AssociateTransitGatewayPolicyTableRequest._(
            transitGatewayPolicyTableId: transitGatewayPolicyTableId,
            transitGatewayAttachmentId: transitGatewayAttachmentId,
            dryRun: BuiltValueNullFieldError.checkNotNull(dryRun,
                r'AssociateTransitGatewayPolicyTableRequest', 'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
