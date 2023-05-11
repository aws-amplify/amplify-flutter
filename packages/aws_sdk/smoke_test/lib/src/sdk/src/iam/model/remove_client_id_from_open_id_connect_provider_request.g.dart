// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.remove_client_id_from_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RemoveClientIdFromOpenIdConnectProviderRequest
    extends RemoveClientIdFromOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final String clientId;

  factory _$RemoveClientIdFromOpenIdConnectProviderRequest(
          [void Function(RemoveClientIdFromOpenIdConnectProviderRequestBuilder)?
              updates]) =>
      (new RemoveClientIdFromOpenIdConnectProviderRequestBuilder()
            ..update(updates))
          ._build();

  _$RemoveClientIdFromOpenIdConnectProviderRequest._(
      {required this.openIdConnectProviderArn, required this.clientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        openIdConnectProviderArn,
        r'RemoveClientIdFromOpenIdConnectProviderRequest',
        'openIdConnectProviderArn');
    BuiltValueNullFieldError.checkNotNull(clientId,
        r'RemoveClientIdFromOpenIdConnectProviderRequest', 'clientId');
  }

  @override
  RemoveClientIdFromOpenIdConnectProviderRequest rebuild(
          void Function(RemoveClientIdFromOpenIdConnectProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveClientIdFromOpenIdConnectProviderRequestBuilder toBuilder() =>
      new RemoveClientIdFromOpenIdConnectProviderRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveClientIdFromOpenIdConnectProviderRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, clientId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RemoveClientIdFromOpenIdConnectProviderRequestBuilder
    implements
        Builder<RemoveClientIdFromOpenIdConnectProviderRequest,
            RemoveClientIdFromOpenIdConnectProviderRequestBuilder> {
  _$RemoveClientIdFromOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  RemoveClientIdFromOpenIdConnectProviderRequestBuilder() {
    RemoveClientIdFromOpenIdConnectProviderRequest._init(this);
  }

  RemoveClientIdFromOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveClientIdFromOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveClientIdFromOpenIdConnectProviderRequest;
  }

  @override
  void update(
      void Function(RemoveClientIdFromOpenIdConnectProviderRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveClientIdFromOpenIdConnectProviderRequest build() => _build();

  _$RemoveClientIdFromOpenIdConnectProviderRequest _build() {
    final _$result = _$v ??
        new _$RemoveClientIdFromOpenIdConnectProviderRequest._(
            openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                openIdConnectProviderArn,
                r'RemoveClientIdFromOpenIdConnectProviderRequest',
                'openIdConnectProviderArn'),
            clientId: BuiltValueNullFieldError.checkNotNull(clientId,
                r'RemoveClientIdFromOpenIdConnectProviderRequest', 'clientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
