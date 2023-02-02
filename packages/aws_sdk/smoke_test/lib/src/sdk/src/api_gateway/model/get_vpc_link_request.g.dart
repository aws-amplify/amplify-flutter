// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_vpc_link_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetVpcLinkRequest extends GetVpcLinkRequest {
  @override
  final String vpcLinkId;

  factory _$GetVpcLinkRequest(
          [void Function(GetVpcLinkRequestBuilder)? updates]) =>
      (new GetVpcLinkRequestBuilder()..update(updates))._build();

  _$GetVpcLinkRequest._({required this.vpcLinkId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vpcLinkId, r'GetVpcLinkRequest', 'vpcLinkId');
  }

  @override
  GetVpcLinkRequest rebuild(void Function(GetVpcLinkRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinkRequestBuilder toBuilder() =>
      new GetVpcLinkRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinkRequest && vpcLinkId == other.vpcLinkId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, vpcLinkId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetVpcLinkRequestBuilder
    implements Builder<GetVpcLinkRequest, GetVpcLinkRequestBuilder> {
  _$GetVpcLinkRequest? _$v;

  String? _vpcLinkId;
  String? get vpcLinkId => _$this._vpcLinkId;
  set vpcLinkId(String? vpcLinkId) => _$this._vpcLinkId = vpcLinkId;

  GetVpcLinkRequestBuilder() {
    GetVpcLinkRequest._init(this);
  }

  GetVpcLinkRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vpcLinkId = $v.vpcLinkId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetVpcLinkRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinkRequest;
  }

  @override
  void update(void Function(GetVpcLinkRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinkRequest build() => _build();

  _$GetVpcLinkRequest _build() {
    final _$result = _$v ??
        new _$GetVpcLinkRequest._(
            vpcLinkId: BuiltValueNullFieldError.checkNotNull(
                vpcLinkId, r'GetVpcLinkRequest', 'vpcLinkId'));
    replace(_$result);
    return _$result;
  }
}

class _$GetVpcLinkRequestPayload extends GetVpcLinkRequestPayload {
  factory _$GetVpcLinkRequestPayload(
          [void Function(GetVpcLinkRequestPayloadBuilder)? updates]) =>
      (new GetVpcLinkRequestPayloadBuilder()..update(updates))._build();

  _$GetVpcLinkRequestPayload._() : super._();

  @override
  GetVpcLinkRequestPayload rebuild(
          void Function(GetVpcLinkRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetVpcLinkRequestPayloadBuilder toBuilder() =>
      new GetVpcLinkRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetVpcLinkRequestPayload;
  }

  @override
  int get hashCode {
    return 261459596;
  }
}

class GetVpcLinkRequestPayloadBuilder
    implements
        Builder<GetVpcLinkRequestPayload, GetVpcLinkRequestPayloadBuilder> {
  _$GetVpcLinkRequestPayload? _$v;

  GetVpcLinkRequestPayloadBuilder() {
    GetVpcLinkRequestPayload._init(this);
  }

  @override
  void replace(GetVpcLinkRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetVpcLinkRequestPayload;
  }

  @override
  void update(void Function(GetVpcLinkRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetVpcLinkRequestPayload build() => _build();

  _$GetVpcLinkRequestPayload _build() {
    final _$result = _$v ?? new _$GetVpcLinkRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
