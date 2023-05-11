// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOpenIdConnectProviderRequest
    extends GetOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;

  factory _$GetOpenIdConnectProviderRequest(
          [void Function(GetOpenIdConnectProviderRequestBuilder)? updates]) =>
      (new GetOpenIdConnectProviderRequestBuilder()..update(updates))._build();

  _$GetOpenIdConnectProviderRequest._({required this.openIdConnectProviderArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(openIdConnectProviderArn,
        r'GetOpenIdConnectProviderRequest', 'openIdConnectProviderArn');
  }

  @override
  GetOpenIdConnectProviderRequest rebuild(
          void Function(GetOpenIdConnectProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOpenIdConnectProviderRequestBuilder toBuilder() =>
      new GetOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOpenIdConnectProviderRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOpenIdConnectProviderRequestBuilder
    implements
        Builder<GetOpenIdConnectProviderRequest,
            GetOpenIdConnectProviderRequestBuilder> {
  _$GetOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  GetOpenIdConnectProviderRequestBuilder() {
    GetOpenIdConnectProviderRequest._init(this);
  }

  GetOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOpenIdConnectProviderRequest;
  }

  @override
  void update(void Function(GetOpenIdConnectProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOpenIdConnectProviderRequest build() => _build();

  _$GetOpenIdConnectProviderRequest _build() {
    final _$result = _$v ??
        new _$GetOpenIdConnectProviderRequest._(
            openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                openIdConnectProviderArn,
                r'GetOpenIdConnectProviderRequest',
                'openIdConnectProviderArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
