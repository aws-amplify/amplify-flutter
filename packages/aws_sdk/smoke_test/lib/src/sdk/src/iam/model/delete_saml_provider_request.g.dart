// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_saml_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteSamlProviderRequest extends DeleteSamlProviderRequest {
  @override
  final String samlProviderArn;

  factory _$DeleteSamlProviderRequest(
          [void Function(DeleteSamlProviderRequestBuilder)? updates]) =>
      (new DeleteSamlProviderRequestBuilder()..update(updates))._build();

  _$DeleteSamlProviderRequest._({required this.samlProviderArn}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'DeleteSamlProviderRequest', 'samlProviderArn');
  }

  @override
  DeleteSamlProviderRequest rebuild(
          void Function(DeleteSamlProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteSamlProviderRequestBuilder toBuilder() =>
      new DeleteSamlProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteSamlProviderRequest &&
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

class DeleteSamlProviderRequestBuilder
    implements
        Builder<DeleteSamlProviderRequest, DeleteSamlProviderRequestBuilder> {
  _$DeleteSamlProviderRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  DeleteSamlProviderRequestBuilder() {
    DeleteSamlProviderRequest._init(this);
  }

  DeleteSamlProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteSamlProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteSamlProviderRequest;
  }

  @override
  void update(void Function(DeleteSamlProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteSamlProviderRequest build() => _build();

  _$DeleteSamlProviderRequest _build() {
    final _$result = _$v ??
        new _$DeleteSamlProviderRequest._(
            samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                samlProviderArn,
                r'DeleteSamlProviderRequest',
                'samlProviderArn'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
