// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_open_id_connect_providers_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListOpenIdConnectProvidersRequest
    extends ListOpenIdConnectProvidersRequest {
  factory _$ListOpenIdConnectProvidersRequest(
          [void Function(ListOpenIdConnectProvidersRequestBuilder)? updates]) =>
      (new ListOpenIdConnectProvidersRequestBuilder()..update(updates))
          ._build();

  _$ListOpenIdConnectProvidersRequest._() : super._();

  @override
  ListOpenIdConnectProvidersRequest rebuild(
          void Function(ListOpenIdConnectProvidersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOpenIdConnectProvidersRequestBuilder toBuilder() =>
      new ListOpenIdConnectProvidersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOpenIdConnectProvidersRequest;
  }

  @override
  int get hashCode {
    return 569268350;
  }
}

class ListOpenIdConnectProvidersRequestBuilder
    implements
        Builder<ListOpenIdConnectProvidersRequest,
            ListOpenIdConnectProvidersRequestBuilder> {
  _$ListOpenIdConnectProvidersRequest? _$v;

  ListOpenIdConnectProvidersRequestBuilder() {
    ListOpenIdConnectProvidersRequest._init(this);
  }

  @override
  void replace(ListOpenIdConnectProvidersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOpenIdConnectProvidersRequest;
  }

  @override
  void update(
      void Function(ListOpenIdConnectProvidersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOpenIdConnectProvidersRequest build() => _build();

  _$ListOpenIdConnectProvidersRequest _build() {
    final _$result = _$v ?? new _$ListOpenIdConnectProvidersRequest._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
