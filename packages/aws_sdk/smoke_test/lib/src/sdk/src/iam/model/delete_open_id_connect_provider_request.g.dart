// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteOpenIdConnectProviderRequest
    extends DeleteOpenIdConnectProviderRequest {
  @override
  final String openIdConnectProviderArn;

  factory _$DeleteOpenIdConnectProviderRequest(
          [void Function(DeleteOpenIdConnectProviderRequestBuilder)?
              updates]) =>
      (new DeleteOpenIdConnectProviderRequestBuilder()..update(updates))
          ._build();

  _$DeleteOpenIdConnectProviderRequest._(
      {required this.openIdConnectProviderArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(openIdConnectProviderArn,
        r'DeleteOpenIdConnectProviderRequest', 'openIdConnectProviderArn');
  }

  @override
  DeleteOpenIdConnectProviderRequest rebuild(
          void Function(DeleteOpenIdConnectProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteOpenIdConnectProviderRequestBuilder toBuilder() =>
      new DeleteOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteOpenIdConnectProviderRequest &&
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

class DeleteOpenIdConnectProviderRequestBuilder
    implements
        Builder<DeleteOpenIdConnectProviderRequest,
            DeleteOpenIdConnectProviderRequestBuilder> {
  _$DeleteOpenIdConnectProviderRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  DeleteOpenIdConnectProviderRequestBuilder() {
    DeleteOpenIdConnectProviderRequest._init(this);
  }

  DeleteOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteOpenIdConnectProviderRequest;
  }

  @override
  void update(
      void Function(DeleteOpenIdConnectProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteOpenIdConnectProviderRequest build() => _build();

  _$DeleteOpenIdConnectProviderRequest _build() {
    final _$result = _$v ??
        new _$DeleteOpenIdConnectProviderRequest._(
            openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                openIdConnectProviderArn,
                r'DeleteOpenIdConnectProviderRequest',
                'openIdConnectProviderArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
