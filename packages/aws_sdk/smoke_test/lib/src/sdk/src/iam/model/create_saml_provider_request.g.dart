// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSamlProviderRequest extends CreateSamlProviderRequest {
  @override
  final String samlMetadataDocument;
  @override
  final String name;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateSamlProviderRequest(
          [void Function(CreateSamlProviderRequestBuilder)? updates]) =>
      (new CreateSamlProviderRequestBuilder()..update(updates))._build();

  _$CreateSamlProviderRequest._(
      {required this.samlMetadataDocument, required this.name, this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(samlMetadataDocument,
        r'CreateSamlProviderRequest', 'samlMetadataDocument');
    BuiltValueNullFieldError.checkNotNull(
        name, r'CreateSamlProviderRequest', 'name');
  }

  @override
  CreateSamlProviderRequest rebuild(
          void Function(CreateSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSamlProviderRequestBuilder toBuilder() =>
      new CreateSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSamlProviderRequest &&
        samlMetadataDocument == other.samlMetadataDocument &&
        name == other.name &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlMetadataDocument.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSamlProviderRequestBuilder
    implements
        Builder<CreateSamlProviderRequest, CreateSamlProviderRequestBuilder> {
  _$CreateSamlProviderRequest? _$v;

  String? _samlMetadataDocument;
  String? get samlMetadataDocument => _$this._samlMetadataDocument;
  set samlMetadataDocument(String? samlMetadataDocument) =>
      _$this._samlMetadataDocument = samlMetadataDocument;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateSamlProviderRequestBuilder() {
    CreateSamlProviderRequest._init(this);
  }

  CreateSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlMetadataDocument = $v.samlMetadataDocument;
      _name = $v.name;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSamlProviderRequest;
  }

  @override
  void update(void Function(CreateSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSamlProviderRequest build() => _build();

  _$CreateSamlProviderRequest _build() {
    _$CreateSamlProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateSamlProviderRequest._(
              samlMetadataDocument: BuiltValueNullFieldError.checkNotNull(
                  samlMetadataDocument,
                  r'CreateSamlProviderRequest',
                  'samlMetadataDocument'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, r'CreateSamlProviderRequest', 'name'),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSamlProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
