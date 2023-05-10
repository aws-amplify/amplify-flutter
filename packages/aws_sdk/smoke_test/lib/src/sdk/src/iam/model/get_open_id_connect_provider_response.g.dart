// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_open_id_connect_provider_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOpenIdConnectProviderResponse
    extends GetOpenIdConnectProviderResponse {
  @override
  final String? url;
  @override
  final _i3.BuiltList<String>? clientIdList;
  @override
  final _i3.BuiltList<String>? thumbprintList;
  @override
  final DateTime? createDate;
  @override
  final _i3.BuiltList<_i2.Tag>? tags;

  factory _$GetOpenIdConnectProviderResponse(
          [void Function(GetOpenIdConnectProviderResponseBuilder)? updates]) =>
      (new GetOpenIdConnectProviderResponseBuilder()..update(updates))._build();

  _$GetOpenIdConnectProviderResponse._(
      {this.url,
      this.clientIdList,
      this.thumbprintList,
      this.createDate,
      this.tags})
      : super._();

  @override
  GetOpenIdConnectProviderResponse rebuild(
          void Function(GetOpenIdConnectProviderResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOpenIdConnectProviderResponseBuilder toBuilder() =>
      new GetOpenIdConnectProviderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOpenIdConnectProviderResponse &&
        url == other.url &&
        clientIdList == other.clientIdList &&
        thumbprintList == other.thumbprintList &&
        createDate == other.createDate &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, clientIdList.hashCode);
    _$hash = $jc(_$hash, thumbprintList.hashCode);
    _$hash = $jc(_$hash, createDate.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetOpenIdConnectProviderResponseBuilder
    implements
        Builder<GetOpenIdConnectProviderResponse,
            GetOpenIdConnectProviderResponseBuilder> {
  _$GetOpenIdConnectProviderResponse? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  _i3.ListBuilder<String>? _clientIdList;
  _i3.ListBuilder<String> get clientIdList =>
      _$this._clientIdList ??= new _i3.ListBuilder<String>();
  set clientIdList(_i3.ListBuilder<String>? clientIdList) =>
      _$this._clientIdList = clientIdList;

  _i3.ListBuilder<String>? _thumbprintList;
  _i3.ListBuilder<String> get thumbprintList =>
      _$this._thumbprintList ??= new _i3.ListBuilder<String>();
  set thumbprintList(_i3.ListBuilder<String>? thumbprintList) =>
      _$this._thumbprintList = thumbprintList;

  DateTime? _createDate;
  DateTime? get createDate => _$this._createDate;
  set createDate(DateTime? createDate) => _$this._createDate = createDate;

  _i3.ListBuilder<_i2.Tag>? _tags;
  _i3.ListBuilder<_i2.Tag> get tags =>
      _$this._tags ??= new _i3.ListBuilder<_i2.Tag>();
  set tags(_i3.ListBuilder<_i2.Tag>? tags) => _$this._tags = tags;

  GetOpenIdConnectProviderResponseBuilder() {
    GetOpenIdConnectProviderResponse._init(this);
  }

  GetOpenIdConnectProviderResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _clientIdList = $v.clientIdList?.toBuilder();
      _thumbprintList = $v.thumbprintList?.toBuilder();
      _createDate = $v.createDate;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOpenIdConnectProviderResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOpenIdConnectProviderResponse;
  }

  @override
  void update(void Function(GetOpenIdConnectProviderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOpenIdConnectProviderResponse build() => _build();

  _$GetOpenIdConnectProviderResponse _build() {
    _$GetOpenIdConnectProviderResponse _$result;
    try {
      _$result = _$v ??
          new _$GetOpenIdConnectProviderResponse._(
              url: url,
              clientIdList: _clientIdList?.build(),
              thumbprintList: _thumbprintList?.build(),
              createDate: createDate,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'clientIdList';
        _clientIdList?.build();
        _$failedField = 'thumbprintList';
        _thumbprintList?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOpenIdConnectProviderResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
