// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_saml_providers_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSamlProvidersResponse extends ListSamlProvidersResponse {
  @override
  final _i3.BuiltList<_i2.SamlProviderListEntry>? samlProviderList;

  factory _$ListSamlProvidersResponse(
          [void Function(ListSamlProvidersResponseBuilder)? updates]) =>
      (new ListSamlProvidersResponseBuilder()..update(updates))._build();

  _$ListSamlProvidersResponse._({this.samlProviderList}) : super._();

  @override
  ListSamlProvidersResponse rebuild(
          void Function(ListSamlProvidersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSamlProvidersResponseBuilder toBuilder() =>
      new ListSamlProvidersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSamlProvidersResponse &&
        samlProviderList == other.samlProviderList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSamlProvidersResponseBuilder
    implements
        Builder<ListSamlProvidersResponse, ListSamlProvidersResponseBuilder> {
  _$ListSamlProvidersResponse? _$v;

  _i3.ListBuilder<_i2.SamlProviderListEntry>? _samlProviderList;
  _i3.ListBuilder<_i2.SamlProviderListEntry> get samlProviderList =>
      _$this._samlProviderList ??=
          new _i3.ListBuilder<_i2.SamlProviderListEntry>();
  set samlProviderList(
          _i3.ListBuilder<_i2.SamlProviderListEntry>? samlProviderList) =>
      _$this._samlProviderList = samlProviderList;

  ListSamlProvidersResponseBuilder() {
    ListSamlProvidersResponse._init(this);
  }

  ListSamlProvidersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderList = $v.samlProviderList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSamlProvidersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSamlProvidersResponse;
  }

  @override
  void update(void Function(ListSamlProvidersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSamlProvidersResponse build() => _build();

  _$ListSamlProvidersResponse _build() {
    _$ListSamlProvidersResponse _$result;
    try {
      _$result = _$v ??
          new _$ListSamlProvidersResponse._(
              samlProviderList: _samlProviderList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'samlProviderList';
        _samlProviderList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSamlProvidersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
