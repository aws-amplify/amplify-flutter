// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_internet_gateway_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachInternetGatewayRequest extends DetachInternetGatewayRequest {
  @override
  final bool dryRun;
  @override
  final String? internetGatewayId;
  @override
  final String? vpcId;

  factory _$DetachInternetGatewayRequest(
          [void Function(DetachInternetGatewayRequestBuilder)? updates]) =>
      (new DetachInternetGatewayRequestBuilder()..update(updates))._build();

  _$DetachInternetGatewayRequest._(
      {required this.dryRun, this.internetGatewayId, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DetachInternetGatewayRequest', 'dryRun');
  }

  @override
  DetachInternetGatewayRequest rebuild(
          void Function(DetachInternetGatewayRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachInternetGatewayRequestBuilder toBuilder() =>
      new DetachInternetGatewayRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachInternetGatewayRequest &&
        dryRun == other.dryRun &&
        internetGatewayId == other.internetGatewayId &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, internetGatewayId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachInternetGatewayRequestBuilder
    implements
        Builder<DetachInternetGatewayRequest,
            DetachInternetGatewayRequestBuilder> {
  _$DetachInternetGatewayRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _internetGatewayId;
  String? get internetGatewayId => _$this._internetGatewayId;
  set internetGatewayId(String? internetGatewayId) =>
      _$this._internetGatewayId = internetGatewayId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DetachInternetGatewayRequestBuilder() {
    DetachInternetGatewayRequest._init(this);
  }

  DetachInternetGatewayRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _internetGatewayId = $v.internetGatewayId;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachInternetGatewayRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachInternetGatewayRequest;
  }

  @override
  void update(void Function(DetachInternetGatewayRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachInternetGatewayRequest build() => _build();

  _$DetachInternetGatewayRequest _build() {
    final _$result = _$v ??
        new _$DetachInternetGatewayRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DetachInternetGatewayRequest', 'dryRun'),
            internetGatewayId: internetGatewayId,
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
