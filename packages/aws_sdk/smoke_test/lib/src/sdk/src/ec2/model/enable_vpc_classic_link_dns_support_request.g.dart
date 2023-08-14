// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_vpc_classic_link_dns_support_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableVpcClassicLinkDnsSupportRequest
    extends EnableVpcClassicLinkDnsSupportRequest {
  @override
  final String? vpcId;

  factory _$EnableVpcClassicLinkDnsSupportRequest(
          [void Function(EnableVpcClassicLinkDnsSupportRequestBuilder)?
              updates]) =>
      (new EnableVpcClassicLinkDnsSupportRequestBuilder()..update(updates))
          ._build();

  _$EnableVpcClassicLinkDnsSupportRequest._({this.vpcId}) : super._();

  @override
  EnableVpcClassicLinkDnsSupportRequest rebuild(
          void Function(EnableVpcClassicLinkDnsSupportRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableVpcClassicLinkDnsSupportRequestBuilder toBuilder() =>
      new EnableVpcClassicLinkDnsSupportRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableVpcClassicLinkDnsSupportRequest &&
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

class EnableVpcClassicLinkDnsSupportRequestBuilder
    implements
        Builder<EnableVpcClassicLinkDnsSupportRequest,
            EnableVpcClassicLinkDnsSupportRequestBuilder> {
  _$EnableVpcClassicLinkDnsSupportRequest? _$v;

  String? _vpcId;
  String? get vpcId => _$this._vpcId;
  set vpcId(String? vpcId) => _$this._vpcId = vpcId;

  EnableVpcClassicLinkDnsSupportRequestBuilder();

  EnableVpcClassicLinkDnsSupportRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcId = $v.vpcId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableVpcClassicLinkDnsSupportRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableVpcClassicLinkDnsSupportRequest;
  }

  @override
  void update(
      void Function(EnableVpcClassicLinkDnsSupportRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableVpcClassicLinkDnsSupportRequest build() => _build();

  _$EnableVpcClassicLinkDnsSupportRequest _build() {
    final _$result =
        _$v ?? new _$EnableVpcClassicLinkDnsSupportRequest._(vpcId: vpcId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
