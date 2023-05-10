// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_open_id_connect_providers_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListOpenIdConnectProvidersResponse
    extends ListOpenIdConnectProvidersResponse {
  @override
  final _i3.BuiltList<_i2.OpenIdConnectProviderListEntry>?
      openIdConnectProviderList;

  factory _$ListOpenIdConnectProvidersResponse(
          [void Function(ListOpenIdConnectProvidersResponseBuilder)?
              updates]) =>
      (new ListOpenIdConnectProvidersResponseBuilder()..update(updates))
          ._build();

  _$ListOpenIdConnectProvidersResponse._({this.openIdConnectProviderList})
      : super._();

  @override
  ListOpenIdConnectProvidersResponse rebuild(
          void Function(ListOpenIdConnectProvidersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOpenIdConnectProvidersResponseBuilder toBuilder() =>
      new ListOpenIdConnectProvidersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOpenIdConnectProvidersResponse &&
        openIdConnectProviderList == other.openIdConnectProviderList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListOpenIdConnectProvidersResponseBuilder
    implements
        Builder<ListOpenIdConnectProvidersResponse,
            ListOpenIdConnectProvidersResponseBuilder> {
  _$ListOpenIdConnectProvidersResponse? _$v;

  _i3.ListBuilder<_i2.OpenIdConnectProviderListEntry>?
      _openIdConnectProviderList;
  _i3.ListBuilder<_i2.OpenIdConnectProviderListEntry>
      get openIdConnectProviderList => _$this._openIdConnectProviderList ??=
          new _i3.ListBuilder<_i2.OpenIdConnectProviderListEntry>();
  set openIdConnectProviderList(
          _i3.ListBuilder<_i2.OpenIdConnectProviderListEntry>?
              openIdConnectProviderList) =>
      _$this._openIdConnectProviderList = openIdConnectProviderList;

  ListOpenIdConnectProvidersResponseBuilder() {
    ListOpenIdConnectProvidersResponse._init(this);
  }

  ListOpenIdConnectProvidersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderList = $v.openIdConnectProviderList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListOpenIdConnectProvidersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOpenIdConnectProvidersResponse;
  }

  @override
  void update(
      void Function(ListOpenIdConnectProvidersResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOpenIdConnectProvidersResponse build() => _build();

  _$ListOpenIdConnectProvidersResponse _build() {
    _$ListOpenIdConnectProvidersResponse _$result;
    try {
      _$result = _$v ??
          new _$ListOpenIdConnectProvidersResponse._(
              openIdConnectProviderList: _openIdConnectProviderList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'openIdConnectProviderList';
        _openIdConnectProviderList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListOpenIdConnectProvidersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
