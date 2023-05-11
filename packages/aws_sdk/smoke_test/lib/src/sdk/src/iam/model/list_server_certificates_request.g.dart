// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_server_certificates_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServerCertificatesRequest extends ListServerCertificatesRequest {
  @override
  final String? pathPrefix;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListServerCertificatesRequest(
          [void Function(ListServerCertificatesRequestBuilder)? updates]) =>
      (new ListServerCertificatesRequestBuilder()..update(updates))._build();

  _$ListServerCertificatesRequest._(
      {this.pathPrefix, this.marker, this.maxItems})
      : super._();

  @override
  ListServerCertificatesRequest rebuild(
          void Function(ListServerCertificatesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServerCertificatesRequestBuilder toBuilder() =>
      new ListServerCertificatesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServerCertificatesRequest &&
        pathPrefix == other.pathPrefix &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pathPrefix.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListServerCertificatesRequestBuilder
    implements
        Builder<ListServerCertificatesRequest,
            ListServerCertificatesRequestBuilder> {
  _$ListServerCertificatesRequest? _$v;

  String? _pathPrefix;
  String? get pathPrefix => _$this._pathPrefix;
  set pathPrefix(String? pathPrefix) => _$this._pathPrefix = pathPrefix;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListServerCertificatesRequestBuilder() {
    ListServerCertificatesRequest._init(this);
  }

  ListServerCertificatesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pathPrefix = $v.pathPrefix;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListServerCertificatesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServerCertificatesRequest;
  }

  @override
  void update(void Function(ListServerCertificatesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServerCertificatesRequest build() => _build();

  _$ListServerCertificatesRequest _build() {
    final _$result = _$v ??
        new _$ListServerCertificatesRequest._(
            pathPrefix: pathPrefix, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
