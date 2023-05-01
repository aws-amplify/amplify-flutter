// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_saml_provider_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSamlProviderResponse extends GetSamlProviderResponse {
  @override
  final String? samlMetadataDocument;
  @override
  final DateTime? createDate;
  @override
  final DateTime? validUntil;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$GetSamlProviderResponse(
          [void Function(GetSamlProviderResponseBuilder)? updates]) =>
      (new GetSamlProviderResponseBuilder()..update(updates))._build();

  _$GetSamlProviderResponse._(
      {this.samlMetadataDocument, this.createDate, this.validUntil, this.tags})
      : super._();

  @override
  GetSamlProviderResponse rebuild(
          void Function(GetSamlProviderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSamlProviderResponseBuilder toBuilder() =>
      new GetSamlProviderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSamlProviderResponse &&
        samlMetadataDocument == other.samlMetadataDocument &&
        createDate == other.createDate &&
        validUntil == other.validUntil &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlMetadataDocument.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, validUntil.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSamlProviderResponseBuilder
    implements
        Builder<GetSamlProviderResponse, GetSamlProviderResponseBuilder> {
  _$GetSamlProviderResponse? _$v;

  String? _samlMetadataDocument;
  String? get samlMetadataDocument => _$this._samlMetadataDocument;
  set samlMetadataDocument(String? samlMetadataDocument) =>
      _$this._samlMetadataDocument = samlMetadataDocument;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  DateTime? _validUntil;
  DateTime? get validUntil => _$this._validUntil;
  set validUntil(DateTime? validUntil) => _$this._validUntil = validUntil;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  GetSamlProviderResponseBuilder() {
    GetSamlProviderResponse._init(this);
  }

  GetSamlProviderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlMetadataDocument = $v.samlMetadataDocument;
      _createDate = $v.createDate;
      _validUntil = $v.validUntil;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSamlProviderResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSamlProviderResponse;
  }

  @override
  void update(void Function(GetSamlProviderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSamlProviderResponse build() => _build();

  _$GetSamlProviderResponse _build() {
    _$GetSamlProviderResponse _$result;
    try {
      _$result = _$v ??
          new _$GetSamlProviderResponse._(
              samlMetadataDocument: samlMetadataDocument,
              createDate: createDate,
              validUntil: validUntil,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetSamlProviderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
