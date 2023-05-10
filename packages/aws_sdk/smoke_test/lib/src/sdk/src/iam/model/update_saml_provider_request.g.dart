// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSamlProviderRequest extends UpdateSamlProviderRequest {
  @override
  final String samlMetadataDocument;
  @override
  final String samlProviderArn;

  factory _$UpdateSamlProviderRequest(
          [void Function(UpdateSamlProviderRequestBuilder)? updates]) =>
      (new UpdateSamlProviderRequestBuilder()..update(updates))._build();

  _$UpdateSamlProviderRequest._(
      {required this.samlMetadataDocument, required this.samlProviderArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(samlMetadataDocument,
        r'UpdateSamlProviderRequest', 'samlMetadataDocument');
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'UpdateSamlProviderRequest', 'samlProviderArn');
  }

  @override
  UpdateSamlProviderRequest rebuild(
          void Function(UpdateSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSamlProviderRequestBuilder toBuilder() =>
      new UpdateSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSamlProviderRequest &&
        samlMetadataDocument == other.samlMetadataDocument &&
        samlProviderArn == other.samlProviderArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlMetadataDocument.hashCode);
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateSamlProviderRequestBuilder
    implements
        Builder<UpdateSamlProviderRequest, UpdateSamlProviderRequestBuilder> {
  _$UpdateSamlProviderRequest? _$v;

  String? _samlMetadataDocument;
  String? get samlMetadataDocument => _$this._samlMetadataDocument;
  set samlMetadataDocument(String? samlMetadataDocument) =>
      _$this._samlMetadataDocument = samlMetadataDocument;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  UpdateSamlProviderRequestBuilder() {
    UpdateSamlProviderRequest._init(this);
  }

  UpdateSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlMetadataDocument = $v.samlMetadataDocument;
      _samlProviderArn = $v.samlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSamlProviderRequest;
  }

  @override
  void update(void Function(UpdateSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSamlProviderRequest build() => _build();

  _$UpdateSamlProviderRequest _build() {
    final _$result = _$v ??
        new _$UpdateSamlProviderRequest._(
            samlMetadataDocument: BuiltValueNullFieldError.checkNotNull(
                samlMetadataDocument,
                r'UpdateSamlProviderRequest',
                'samlMetadataDocument'),
            samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                samlProviderArn,
                r'UpdateSamlProviderRequest',
                'samlProviderArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
