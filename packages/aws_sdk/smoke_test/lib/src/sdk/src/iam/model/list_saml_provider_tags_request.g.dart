// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_saml_provider_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSamlProviderTagsRequest extends ListSamlProviderTagsRequest {
  @override
  final String samlProviderArn;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListSamlProviderTagsRequest(
          [void Function(ListSamlProviderTagsRequestBuilder)? updates]) =>
      (new ListSamlProviderTagsRequestBuilder()..update(updates))._build();

  _$ListSamlProviderTagsRequest._(
      {required this.samlProviderArn, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        samlProviderArn, r'ListSamlProviderTagsRequest', 'samlProviderArn');
  }

  @override
  ListSamlProviderTagsRequest rebuild(
          void Function(ListSamlProviderTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSamlProviderTagsRequestBuilder toBuilder() =>
      new ListSamlProviderTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSamlProviderTagsRequest &&
        samlProviderArn == other.samlProviderArn &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, samlProviderArn.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSamlProviderTagsRequestBuilder
    implements
        Builder<ListSamlProviderTagsRequest,
            ListSamlProviderTagsRequestBuilder> {
  _$ListSamlProviderTagsRequest? _$v;

  String? _samlProviderArn;
  String? get samlProviderArn => _$this._samlProviderArn;
  set samlProviderArn(String? samlProviderArn) =>
      _$this._samlProviderArn = samlProviderArn;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListSamlProviderTagsRequestBuilder() {
    ListSamlProviderTagsRequest._init(this);
  }

  ListSamlProviderTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _samlProviderArn = $v.samlProviderArn;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSamlProviderTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSamlProviderTagsRequest;
  }

  @override
  void update(void Function(ListSamlProviderTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSamlProviderTagsRequest build() => _build();

  _$ListSamlProviderTagsRequest _build() {
    final _$result = _$v ??
        new _$ListSamlProviderTagsRequest._(
            samlProviderArn: BuiltValueNullFieldError.checkNotNull(
                samlProviderArn,
                r'ListSamlProviderTagsRequest',
                'samlProviderArn'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
