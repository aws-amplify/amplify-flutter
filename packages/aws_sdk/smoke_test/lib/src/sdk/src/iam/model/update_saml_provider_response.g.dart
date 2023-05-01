// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_saml_provider_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSamlProviderResponse extends UpdateSamlProviderResponse {
  @override
  final String? samlProviderArn;

  factory _$UpdateSamlProviderResponse(
          [void Function(UpdateSamlProviderResponseBuilder)? updates]) =>
      (new UpdateSamlProviderResponseBuilder()..update(updates))._build();

  _$UpdateSamlProviderResponse._({this.samlProviderArn}) : super._();

  @override
  UpdateSamlProviderResponse rebuild(
          void Function(UpdateSamlProviderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateSamlProviderResponseBuilder toBuilder() =>
      new UpdateSamlProviderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSamlProviderResponse &&
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

class UpdateSamlProviderResponseBuilder
    implements
        Builder<UpdateSamlProviderResponse, UpdateSamlProviderResponseBuilder> {
  _$UpdateSamlProviderResponse? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  UpdateSamlProviderResponseBuilder() {
    UpdateSamlProviderResponse._init(this);
  }

  UpdateSamlProviderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateSamlProviderResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateSamlProviderResponse;
  }

  @override
  void update(void Function(UpdateSamlProviderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSamlProviderResponse build() => _build();

  _$UpdateSamlProviderResponse _build() {
    final _$result = _$v ??
        new _$UpdateSamlProviderResponse._(samlProviderArn: samlProviderArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
