// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_open_id_connect_provider_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListOpenIdConnectProviderTagsRequest
    extends ListOpenIdConnectProviderTagsRequest {
  @override
  final String openIdConnectProviderArn;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListOpenIdConnectProviderTagsRequest(
          [void Function(ListOpenIdConnectProviderTagsRequestBuilder)?
              updates]) =>
      (new ListOpenIdConnectProviderTagsRequestBuilder()..update(updates))
          ._build();

  _$ListOpenIdConnectProviderTagsRequest._(
      {required this.openIdConnectProviderArn, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(openIdConnectProviderArn,
        r'ListOpenIdConnectProviderTagsRequest', 'openIdConnectProviderArn');
  }

  @override
  ListOpenIdConnectProviderTagsRequest rebuild(
          void Function(ListOpenIdConnectProviderTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListOpenIdConnectProviderTagsRequestBuilder toBuilder() =>
      new ListOpenIdConnectProviderTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListOpenIdConnectProviderTagsRequest &&
        openIdConnectProviderArn == other.openIdConnectProviderArn &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, openIdConnectProviderArn.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListOpenIdConnectProviderTagsRequestBuilder
    implements
        Builder<ListOpenIdConnectProviderTagsRequest,
            ListOpenIdConnectProviderTagsRequestBuilder> {
  _$ListOpenIdConnectProviderTagsRequest? _$v;

  String? _openIdConnectProviderArn;
  String? get openIdConnectProviderArn => _$this._openIdConnectProviderArn;
  set openIdConnectProviderArn(String? openIdConnectProviderArn) =>
      _$this._openIdConnectProviderArn = openIdConnectProviderArn;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListOpenIdConnectProviderTagsRequestBuilder() {
    ListOpenIdConnectProviderTagsRequest._init(this);
  }

  ListOpenIdConnectProviderTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _openIdConnectProviderArn = $v.openIdConnectProviderArn;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListOpenIdConnectProviderTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListOpenIdConnectProviderTagsRequest;
  }

  @override
  void update(
      void Function(ListOpenIdConnectProviderTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListOpenIdConnectProviderTagsRequest build() => _build();

  _$ListOpenIdConnectProviderTagsRequest _build() {
    final _$result = _$v ??
        new _$ListOpenIdConnectProviderTagsRequest._(
            openIdConnectProviderArn: BuiltValueNullFieldError.checkNotNull(
                openIdConnectProviderArn,
                r'ListOpenIdConnectProviderTagsRequest',
                'openIdConnectProviderArn'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
