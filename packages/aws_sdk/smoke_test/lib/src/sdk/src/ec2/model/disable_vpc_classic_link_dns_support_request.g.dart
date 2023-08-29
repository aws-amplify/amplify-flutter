// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disable_vpc_classic_link_dns_support_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DisableVpcClassicLinkDnsSupportRequest
    extends DisableVpcClassicLinkDnsSupportRequest {
  @override
  final String? vpcId;

  factory _$DisableVpcClassicLinkDnsSupportRequest(
          [void Function(DisableVpcClassicLinkDnsSupportRequestBuilder)?
              updates]) =>
      (new DisableVpcClassicLinkDnsSupportRequestBuilder()..update(updates))
          ._build();

  _$DisableVpcClassicLinkDnsSupportRequest._({this.vpcId}) : super._();

  @override
  DisableVpcClassicLinkDnsSupportRequest rebuild(
          void Function(DisableVpcClassicLinkDnsSupportRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DisableVpcClassicLinkDnsSupportRequestBuilder toBuilder() =>
      new DisableVpcClassicLinkDnsSupportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DisableVpcClassicLinkDnsSupportRequest &&
        vpcId == other.vpcId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DisableVpcClassicLinkDnsSupportRequestBuilder
    implements
        Builder<DisableVpcClassicLinkDnsSupportRequest,
            DisableVpcClassicLinkDnsSupportRequestBuilder> {
  _$DisableVpcClassicLinkDnsSupportRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  DisableVpcClassicLinkDnsSupportRequestBuilder();

  DisableVpcClassicLinkDnsSupportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DisableVpcClassicLinkDnsSupportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DisableVpcClassicLinkDnsSupportRequest;
  }

  @override
  void update(
      void Function(DisableVpcClassicLinkDnsSupportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DisableVpcClassicLinkDnsSupportRequest build() => _build();

  _$DisableVpcClassicLinkDnsSupportRequest _build() {
    final _$result =
        _$v ?? new _$DisableVpcClassicLinkDnsSupportRequest._(vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
