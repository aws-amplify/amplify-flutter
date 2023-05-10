// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_open_id_connect_provider_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateOpenIdConnectProviderRequest
    extends CreateOpenIdConnectProviderRequest {
  @override
  final String url;
  @override
  final _i4.BuiltList<String>? clientIdList;
  @override
  final _i4.BuiltList<String> thumbprintList;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$CreateOpenIdConnectProviderRequest(
          [void Function(CreateOpenIdConnectProviderRequestBuilder)?
              updates]) =>
      (new CreateOpenIdConnectProviderRequestBuilder()..update(updates))
          ._build();

  _$CreateOpenIdConnectProviderRequest._(
      {required this.url,
      this.clientIdList,
      required this.thumbprintList,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        url, r'CreateOpenIdConnectProviderRequest', 'url');
    BuiltValueNullFieldError.checkNotNull(thumbprintList,
        r'CreateOpenIdConnectProviderRequest', 'thumbprintList');
  }

  @override
  CreateOpenIdConnectProviderRequest rebuild(
          void Function(CreateOpenIdConnectProviderRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateOpenIdConnectProviderRequestBuilder toBuilder() =>
      new CreateOpenIdConnectProviderRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateOpenIdConnectProviderRequest &&
        url == other.url &&
        clientIdList == other.clientIdList &&
        thumbprintList == other.thumbprintList &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, clientIdList.hashCode);
    _$hash = $jc(_$hash, thumbprintList.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateOpenIdConnectProviderRequestBuilder
    implements
        Builder<CreateOpenIdConnectProviderRequest,
            CreateOpenIdConnectProviderRequestBuilder> {
  _$CreateOpenIdConnectProviderRequest? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  _i4.ListBuilder<String>? _clientIdList;
  _i4.ListBuilder<String> get clientIdList =>
      _$this._clientIdList ??= new _i4.ListBuilder<String>();
  set clientIdList(_i4.ListBuilder<String>? clientIdList) =>
      _$this._clientIdList = clientIdList;

  _i4.ListBuilder<String>? _thumbprintList;
  _i4.ListBuilder<String> get thumbprintList =>
      _$this._thumbprintList ??= new _i4.ListBuilder<String>();
  set thumbprintList(_i4.ListBuilder<String>? thumbprintList) =>
      _$this._thumbprintList = thumbprintList;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  CreateOpenIdConnectProviderRequestBuilder() {
    CreateOpenIdConnectProviderRequest._init(this);
  }

  CreateOpenIdConnectProviderRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _clientIdList = $v.clientIdList?.toBuilder();
      _thumbprintList = $v.thumbprintList.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateOpenIdConnectProviderRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateOpenIdConnectProviderRequest;
  }

  @override
  void update(
      void Function(CreateOpenIdConnectProviderRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateOpenIdConnectProviderRequest build() => _build();

  _$CreateOpenIdConnectProviderRequest _build() {
    _$CreateOpenIdConnectProviderRequest _$result;
    try {
      _$result = _$v ??
          new _$CreateOpenIdConnectProviderRequest._(
              url: BuiltValueNullFieldError.checkNotNull(
                  url, r'CreateOpenIdConnectProviderRequest', 'url'),
              clientIdList: _clientIdList?.build(),
              thumbprintList: thumbprintList.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientIdList';
        _clientIdList?.build();
        _$failedField = 'thumbprintList';
        thumbprintList.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateOpenIdConnectProviderRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
