// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_egress_only_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteEgressOnlyInternetGatewayRequest
    extends DeleteEgressOnlyInternetGatewayRequest {
  @override
  final bool dryRun;
  @override
  final String? egressOnlyInternetGatewayId;

  factory _$DeleteEgressOnlyInternetGatewayRequest(
          [void Function(DeleteEgressOnlyInternetGatewayRequestBuilder)?
              updates]) =>
      (new DeleteEgressOnlyInternetGatewayRequestBuilder()..update(updates))
          ._build();

  _$DeleteEgressOnlyInternetGatewayRequest._(
      {required this.dryRun, this.egressOnlyInternetGatewayId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteEgressOnlyInternetGatewayRequest', 'dryRun');
  }

  @override
  DeleteEgressOnlyInternetGatewayRequest rebuild(
          void Function(DeleteEgressOnlyInternetGatewayRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteEgressOnlyInternetGatewayRequestBuilder toBuilder() =>
      new DeleteEgressOnlyInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteEgressOnlyInternetGatewayRequest &&
        dryRun == other.dryRun &&
        egressOnlyInternetGatewayId == other.egressOnlyInternetGatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, egressOnlyInternetGatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteEgressOnlyInternetGatewayRequestBuilder
    implements
        Builder<DeleteEgressOnlyInternetGatewayRequest,
            DeleteEgressOnlyInternetGatewayRequestBuilder> {
  _$DeleteEgressOnlyInternetGatewayRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _egressOnlyInternetGatewayId;
  String? get egressOnlyInternetGatewayId =>
      _$this._egressOnlyInternetGatewayId;
  set egressOnlyInternetGatewayId(String? egressOnlyInternetGatewayId) =>
      _$this._egressOnlyInternetGatewayId = egressOnlyInternetGatewayId;

  DeleteEgressOnlyInternetGatewayRequestBuilder() {
    DeleteEgressOnlyInternetGatewayRequest._init(this);
  }

  DeleteEgressOnlyInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _egressOnlyInternetGatewayId = $v.egressOnlyInternetGatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteEgressOnlyInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteEgressOnlyInternetGatewayRequest;
  }

  @override
  void update(
      void Function(DeleteEgressOnlyInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteEgressOnlyInternetGatewayRequest build() => _build();

  _$DeleteEgressOnlyInternetGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteEgressOnlyInternetGatewayRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteEgressOnlyInternetGatewayRequest', 'dryRun'),
            egressOnlyInternetGatewayId: egressOnlyInternetGatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
