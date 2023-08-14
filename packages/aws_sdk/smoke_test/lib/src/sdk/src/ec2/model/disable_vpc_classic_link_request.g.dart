// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_vpc_classic_link_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableVpcClassicLinkRequest extends DisableVpcClassicLinkRequest {
  @override
  final bool dryRun;
  @override
  final String? vpcId;

  factory _$DisableVpcClassicLinkRequest(
          [void Function(DisableVpcClassicLinkRequestBuilder)? updates]) =>
      (new DisableVpcClassicLinkRequestBuilder()..update(updates))._build();

  _$DisableVpcClassicLinkRequest._({required this.dryRun, this.vpcId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        dryRun, r'DisableVpcClassicLinkRequest', 'dryRun');
  }

  @override
  DisableVpcClassicLinkRequest rebuild(
          void Function(DisableVpcClassicLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableVpcClassicLinkRequestBuilder toBuilder() =>
      new DisableVpcClassicLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableVpcClassicLinkRequest &&
        dryRun == other.dryRun &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableVpcClassicLinkRequestBuilder
    implements
        Builder<DisableVpcClassicLinkRequest,
            DisableVpcClassicLinkRequestBuilder> {
  _$DisableVpcClassicLinkRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DisableVpcClassicLinkRequestBuilder() {
    DisableVpcClassicLinkRequest._init(this);
  }

  DisableVpcClassicLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableVpcClassicLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableVpcClassicLinkRequest;
  }

  @override
  void update(void Function(DisableVpcClassicLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableVpcClassicLinkRequest build() => _build();

  _$DisableVpcClassicLinkRequest _build() {
    final _$result = _$v ??
        new _$DisableVpcClassicLinkRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun, r'DisableVpcClassicLinkRequest', 'dryRun'),
            vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
