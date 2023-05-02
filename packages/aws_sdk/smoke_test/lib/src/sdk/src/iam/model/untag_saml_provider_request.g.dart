// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.untag_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UntagSamlProviderRequest extends UntagSamlProviderRequest {
  @override
  final String samlProviderArn;
  @override
  final _i3.BuiltList<String> tagKeys;

  factory _$UntagSamlProviderRequest(
          [void Function(UntagSamlProviderRequestBuilder)? updates]) =>
      (new UntagSamlProviderRequestBuilder()..update(updates))._build();

  _$UntagSamlProviderRequest._(
      {required this.samlProviderArn, required this.tagKeys})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'UntagSamlProviderRequest', 'samlProviderArn');
    BuiltValueNullFieldError.checkNotNull(
        tagKeys, r'UntagSamlProviderRequest', 'tagKeys');
  }

  @override
  UntagSamlProviderRequest rebuild(
          void Function(UntagSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UntagSamlProviderRequestBuilder toBuilder() =>
      new UntagSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UntagSamlProviderRequest &&
        samlProviderArn == other.samlProviderArn &&
        tagKeys == other.tagKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jc(_$hash, tagKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UntagSamlProviderRequestBuilder
    implements
        Builder<UntagSamlProviderRequest, UntagSamlProviderRequestBuilder> {
  _$UntagSamlProviderRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  _i3.ListBuilder<String>? _tagKeys;
  _i3.ListBuilder<String> get tagKeys =>
      _$this._tagKeys ??= new _i3.ListBuilder<String>();
  set tagKeys(_i3.ListBuilder<String>? tagKeys) => _$this._tagKeys = tagKeys;

  UntagSamlProviderRequestBuilder() {
    UntagSamlProviderRequest._init(this);
  }

  UntagSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _tagKeys = $v.tagKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UntagSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UntagSamlProviderRequest;
  }

  @override
  void update(void Function(UntagSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UntagSamlProviderRequest build() => _build();

  _$UntagSamlProviderRequest _build() {
    _$UntagSamlProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$UntagSamlProviderRequest._(
              samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                  samlProviderArn,
                  r'UntagSamlProviderRequest',
                  'samlProviderArn'),
              tagKeys: tagKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tagKeys';
        tagKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UntagSamlProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
