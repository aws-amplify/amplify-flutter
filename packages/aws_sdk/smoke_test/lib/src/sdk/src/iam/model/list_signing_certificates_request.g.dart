// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.list_signing_certificates_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSigningCertificatesRequest extends ListSigningCertificatesRequest {
  @override
  final String? userName;
  @override
  final String? marker;
  @override
  final int? maxItems;

  factory _$ListSigningCertificatesRequest(
          [void Function(ListSigningCertificatesRequestBuilder)? updates]) =>
      (new ListSigningCertificatesRequestBuilder()..update(updates))._build();

  _$ListSigningCertificatesRequest._(
      {this.userName, this.marker, this.maxItems})
      : super._();

  @override
  ListSigningCertificatesRequest rebuild(
          void Function(ListSigningCertificatesRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSigningCertificatesRequestBuilder toBuilder() =>
      new ListSigningCertificatesRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSigningCertificatesRequest &&
        userName == other.userName &&
        marker == other.marker &&
        maxItems == other.maxItems;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jc(_$hash, maxItems.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSigningCertificatesRequestBuilder
    implements
        Builder<ListSigningCertificatesRequest,
            ListSigningCertificatesRequestBuilder> {
  _$ListSigningCertificatesRequest? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  int? _maxItems;
  int? get maxItems => _$this._maxItems;
  set maxItems(int? maxItems) => _$this._maxItems = maxItems;

  ListSigningCertificatesRequestBuilder() {
    ListSigningCertificatesRequest._init(this);
  }

  ListSigningCertificatesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _marker = $v.marker;
      _maxItems = $v.maxItems;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSigningCertificatesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSigningCertificatesRequest;
  }

  @override
  void update(void Function(ListSigningCertificatesRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSigningCertificatesRequest build() => _build();

  _$ListSigningCertificatesRequest _build() {
    final _$result = _$v ??
        new _$ListSigningCertificatesRequest._(
            userName: userName, marker: marker, maxItems: maxItems);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
