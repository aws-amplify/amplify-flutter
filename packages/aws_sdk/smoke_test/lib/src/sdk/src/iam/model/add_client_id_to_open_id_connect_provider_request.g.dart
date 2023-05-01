// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.add_client_id_to_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddClientIdToOpenIdConnectProviderRequest
    extends AddClientIdToOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final String clientId;

  factory _$AddClientIdToOpenIdConnectProviderRequest(
          [void Function(AddClientIdToOpenIdConnectProviderRequestBuilder)?
              updates]) =>
      (new AddClientIdToOpenIdConnectProviderRequestBuilder()..update(updates))
          ._build();

  _$AddClientIdToOpenIdConnectProviderRequest._(
      {required this.openIdConnectProviderArn, required this.clientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        openIdConnectProviderArn,
        r'AddClientIdToOpenIdConnectProviderRequest',
        'openIdConnectProviderArn');
    BuiltValueNullFieldError.checkNotNull(
        clientId, r'AddClientIdToOpenIdConnectProviderRequest', 'clientId');
  }

  @override
  AddClientIdToOpenIdConnectProviderRequest rebuild(
          void Function(AddClientIdToOpenIdConnectProviderRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddClientIdToOpenIdConnectProviderRequestBuilder toBuilder() =>
      new AddClientIdToOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddClientIdToOpenIdConnectProviderRequest &&
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

class AddClientIdToOpenIdConnectProviderRequestBuilder
    implements
        Builder<AddClientIdToOpenIdConnectProviderRequest,
            AddClientIdToOpenIdConnectProviderRequestBuilder> {
  _$AddClientIdToOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  AddClientIdToOpenIdConnectProviderRequestBuilder() {
    AddClientIdToOpenIdConnectProviderRequest._init(this);
  }

  AddClientIdToOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddClientIdToOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddClientIdToOpenIdConnectProviderRequest;
  }

  @override
  void update(
      void Function(AddClientIdToOpenIdConnectProviderRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  AddClientIdToOpenIdConnectProviderRequest build() => _build();

  _$AddClientIdToOpenIdConnectProviderRequest _build() {
    final _$result = _$v ??
        new _$AddClientIdToOpenIdConnectProviderRequest._(
            openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                openIdConnectProviderArn,
                r'AddClientIdToOpenIdConnectProviderRequest',
                'openIdConnectProviderArn'),
            clientId: BuiltValueNullFieldError.checkNotNull(clientId,
                r'AddClientIdToOpenIdConnectProviderRequest', 'clientId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
