// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_nat_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNatGatewayRequest extends DeleteNatGatewayRequest {
  @override
  final bool dryRun;
  @override
  final String? natGatewayId;

  factory _$DeleteNatGatewayRequest(
          [void Function(DeleteNatGatewayRequestBuilder)? updates]) =>
      (new DeleteNatGatewayRequestBuilder()..update(updates))._build();

  _$DeleteNatGatewayRequest._({required this.dryRun, this.natGatewayId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DeleteNatGatewayRequest', 'dryRun');
  }

  @override
  DeleteNatGatewayRequest rebuild(
          void Function(DeleteNatGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNatGatewayRequestBuilder toBuilder() =>
      new DeleteNatGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNatGatewayRequest &&
        dryRun == other.dryRun &&
        natGatewayId == other.natGatewayId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, natGatewayId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNatGatewayRequestBuilder
    implements
        Builder<DeleteNatGatewayRequest, DeleteNatGatewayRequestBuilder> {
  _$DeleteNatGatewayRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _natGatewayId;
  String? get natGatewayId => _$this._natGatewayId;
  set natGatewayId(String? natGatewayId) => _$this._natGatewayId = natGatewayId;

  DeleteNatGatewayRequestBuilder() {
    DeleteNatGatewayRequest._init(this);
  }

  DeleteNatGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _natGatewayId = $v.natGatewayId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNatGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNatGatewayRequest;
  }

  @override
  void update(void Function(DeleteNatGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNatGatewayRequest build() => _build();

  _$DeleteNatGatewayRequest _build() {
    final _$result = _$v ??
        new _$DeleteNatGatewayRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DeleteNatGatewayRequest', 'dryRun'),
            natGatewayId: natGatewayId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
