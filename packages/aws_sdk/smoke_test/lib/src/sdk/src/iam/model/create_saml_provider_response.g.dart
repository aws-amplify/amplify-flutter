// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_saml_provider_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSamlProviderResponse extends CreateSamlProviderResponse {
  @override
  final String? samlProviderArn;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$CreateSamlProviderResponse(
          [void Function(CreateSamlProviderResponseBuilder)? updates]) =>
      (new CreateSamlProviderResponseBuilder()..update(updates))._build();

  _$CreateSamlProviderResponse._({this.samlProviderArn, this.tags}) : super._();

  @override
  CreateSamlProviderResponse rebuild(
          void Function(CreateSamlProviderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateSamlProviderResponseBuilder toBuilder() =>
      new CreateSamlProviderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSamlProviderResponse &&
        samlProviderArn == other.samlProviderArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateSamlProviderResponseBuilder
    implements
        Builder<CreateSamlProviderResponse, CreateSamlProviderResponseBuilder> {
  _$CreateSamlProviderResponse? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  CreateSamlProviderResponseBuilder() {
    CreateSamlProviderResponse._init(this);
  }

  CreateSamlProviderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSamlProviderResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateSamlProviderResponse;
  }

  @override
  void update(void Function(CreateSamlProviderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSamlProviderResponse build() => _build();

  _$CreateSamlProviderResponse _build() {
    _$CreateSamlProviderResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateSamlProviderResponse._(
              samlProviderArn: samlProviderArn, tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateSamlProviderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
