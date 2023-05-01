// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetSamlProviderRequest extends GetSamlProviderRequest {
  @override
  final String samlProviderArn;

  factory _$GetSamlProviderRequest(
          [void Function(GetSamlProviderRequestBuilder)? updates]) =>
      (new GetSamlProviderRequestBuilder()..update(updates))._build();

  _$GetSamlProviderRequest._({required this.samlProviderArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'GetSamlProviderRequest', 'samlProviderArn');
  }

  @override
  GetSamlProviderRequest rebuild(
          void Function(GetSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetSamlProviderRequestBuilder toBuilder() =>
      new GetSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetSamlProviderRequest &&
        samlProviderArn == other.samlProviderArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetSamlProviderRequestBuilder
    implements Builder<GetSamlProviderRequest, GetSamlProviderRequestBuilder> {
  _$GetSamlProviderRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  GetSamlProviderRequestBuilder() {
    GetSamlProviderRequest._init(this);
  }

  GetSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetSamlProviderRequest;
  }

  @override
  void update(void Function(GetSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetSamlProviderRequest build() => _build();

  _$GetSamlProviderRequest _build() {
    final _$result = _$v ??
        new _$GetSamlProviderRequest._(
            samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                samlProviderArn, r'GetSamlProviderRequest', 'samlProviderArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
