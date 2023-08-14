// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detach_classic_link_vpc_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DetachClassicLinkVpcRequest extends DetachClassicLinkVpcRequest {
  @override
  final bool dryRun;
  @override
  final String? instanceId;
  @override
  final String? vpcId;

  factory _$DetachClassicLinkVpcRequest(
          [void Function(DetachClassicLinkVpcRequestBuilder)? updates]) =>
      (new DetachClassicLinkVpcRequestBuilder()..update(updates))._build();

  _$DetachClassicLinkVpcRequest._(
      {required this.dryRun, this.instanceId, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DetachClassicLinkVpcRequest', 'dryRun');
  }

  @override
  DetachClassicLinkVpcRequest rebuild(
          void Function(DetachClassicLinkVpcRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DetachClassicLinkVpcRequestBuilder toBuilder() =>
      new DetachClassicLinkVpcRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DetachClassicLinkVpcRequest &&
        dryRun == other.dryRun &&
        instanceId == other.instanceId &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, instanceId.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DetachClassicLinkVpcRequestBuilder
    implements
        Builder<DetachClassicLinkVpcRequest,
            DetachClassicLinkVpcRequestBuilder> {
  _$DetachClassicLinkVpcRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _instanceId;
  String? get instanceId => _$this._instanceId;
  set instanceId(String? instanceId) => _$this._instanceId = instanceId;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DetachClassicLinkVpcRequestBuilder() {
    DetachClassicLinkVpcRequest._init(this);
  }

  DetachClassicLinkVpcRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _instanceId = $v.instanceId;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DetachClassicLinkVpcRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DetachClassicLinkVpcRequest;
  }

  @override
  void update(void Function(DetachClassicLinkVpcRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DetachClassicLinkVpcRequest build() => _build();

  _$DetachClassicLinkVpcRequest _build() {
    final _$result = _$v ??
        new _$DetachClassicLinkVpcRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DetachClassicLinkVpcRequest', 'dryRun'),
            instanceId: instanceId,
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
