// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_open_id_connect_provider_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOpenIdConnectProviderResponse
    extends CreateOpenIdConnectProviderResponse {
  @override
  final String? openIdConnectProviderArn;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$CreateOpenIdConnectProviderResponse(
          [void Function(CreateOpenIdConnectProviderResponseBuilder)?
              updates]) =>
      (new CreateOpenIdConnectProviderResponseBuilder()..update(updates))
          ._build();

  _$CreateOpenIdConnectProviderResponse._(
      {this.openIdConnectProviderArn, this.tags})
      : super._();

  @override
  CreateOpenIdConnectProviderResponse rebuild(
          void Function(CreateOpenIdConnectProviderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOpenIdConnectProviderResponseBuilder toBuilder() =>
      new CreateOpenIdConnectProviderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOpenIdConnectProviderResponse &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateOpenIdConnectProviderResponseBuilder
    implements
        Builder<CreateOpenIdConnectProviderResponse,
            CreateOpenIdConnectProviderResponseBuilder> {
  _$CreateOpenIdConnectProviderResponse? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  CreateOpenIdConnectProviderResponseBuilder() {
    CreateOpenIdConnectProviderResponse._init(this);
  }

  CreateOpenIdConnectProviderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOpenIdConnectProviderResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOpenIdConnectProviderResponse;
  }

  @override
  void update(
      void Function(CreateOpenIdConnectProviderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOpenIdConnectProviderResponse build() => _build();

  _$CreateOpenIdConnectProviderResponse _build() {
    _$CreateOpenIdConnectProviderResponse _$result;
    try {
      _$result = _$v ??
          new _$CreateOpenIdConnectProviderResponse._(
              openIdConnectProviderArn: openIdConnectProviderArn,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateOpenIdConnectProviderResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
