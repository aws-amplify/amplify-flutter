// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_server_certificate_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServerCertificateTagsRequest
    extends ListServerCertificateTagsRequest {
  @override
  final String serverCertificateName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListServerCertificateTagsRequest(
          [void Function(ListServerCertificateTagsRequestBuilder)? updates]) =>
      (new ListServerCertificateTagsRequestBuilder()..update(updates))._build();

  _$ListServerCertificateTagsRequest._(
      {required this.serverCertificateName, this.marker, this.maxItems})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'ListServerCertificateTagsRequest', 'serverCertificateName');
  }

  @override
  ListServerCertificateTagsRequest rebuild(
          void Function(ListServerCertificateTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServerCertificateTagsRequestBuilder toBuilder() =>
      new ListServerCertificateTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServerCertificateTagsRequest &&
        serverCertificateName == other.serverCertificateName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListServerCertificateTagsRequestBuilder
    implements
        Builder<ListServerCertificateTagsRequest,
            ListServerCertificateTagsRequestBuilder> {
  _$ListServerCertificateTagsRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListServerCertificateTagsRequestBuilder() {
    ListServerCertificateTagsRequest._init(this);
  }

  ListServerCertificateTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListServerCertificateTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServerCertificateTagsRequest;
  }

  @override
  void update(void Function(ListServerCertificateTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServerCertificateTagsRequest build() => _build();

  _$ListServerCertificateTagsRequest _build() {
    final _$result = _$v ??
        new _$ListServerCertificateTagsRequest._(
            serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                serverCertificateName,
                r'ListServerCertificateTagsRequest',
                'serverCertificateName'),
            marker: marker,
            maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
