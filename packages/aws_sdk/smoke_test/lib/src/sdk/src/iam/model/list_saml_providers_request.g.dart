// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_saml_providers_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSamlProvidersRequest extends ListSamlProvidersRequest {
  factory _$ListSamlProvidersRequest(
          [void Function(ListSamlProvidersRequestBuilder)? updates]) =>
      (new ListSamlProvidersRequestBuilder()..update(updates))._build();

  _$ListSamlProvidersRequest._() : super._();

  @override
  ListSamlProvidersRequest rebuild(
          void Function(ListSamlProvidersRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSamlProvidersRequestBuilder toBuilder() =>
      new ListSamlProvidersRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSamlProvidersRequest;
  }

  @override
  int get hashCode {
    return 133850623;
  }
}

class ListSamlProvidersRequestBuilder
    implements
        Builder<ListSamlProvidersRequest, ListSamlProvidersRequestBuilder> {
  _$ListSamlProvidersRequest? _$v;

  ListSamlProvidersRequestBuilder() {
    ListSamlProvidersRequest._init(this);
  }

  @override
  void replace(ListSamlProvidersRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSamlProvidersRequest;
  }

  @override
  void update(void Function(ListSamlProvidersRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSamlProvidersRequest build() => _build();

  _$ListSamlProvidersRequest _build() {
    final _$result = _$v ?? new _$ListSamlProvidersRequest._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
