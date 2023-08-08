// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_server_certificates_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListServerCertificatesResponse extends ListServerCertificatesResponse {
  @override
  final _i3.BuiltList<_i2.ServerCertificateMetadata>
      serverCertificateMetadataList;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListServerCertificatesResponse(
          [void Function(ListServerCertificatesResponseBuilder)? updates]) =>
      (new ListServerCertificatesResponseBuilder()..update(updates))._build();

  _$ListServerCertificatesResponse._(
      {required this.serverCertificateMetadataList,
      required this.isTruncated,
      this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateMetadataList,
        r'ListServerCertificatesResponse', 'serverCertificateMetadataList');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListServerCertificatesResponse', 'isTruncated');
  }

  @override
  ListServerCertificatesResponse rebuild(
          void Function(ListServerCertificatesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListServerCertificatesResponseBuilder toBuilder() =>
      new ListServerCertificatesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListServerCertificatesResponse &&
        serverCertificateMetadataList == other.serverCertificateMetadataList &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateMetadataList.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListServerCertificatesResponseBuilder
    implements
        Builder<ListServerCertificatesResponse,
            ListServerCertificatesResponseBuilder> {
  _$ListServerCertificatesResponse? _$v;

  _i3.ListBuilder<_i2.ServerCertificateMetadata>?
      _serverCertificateMetadataList;
  _i3.ListBuilder<_i2.ServerCertificateMetadata>
      get serverCertificateMetadataList =>
          _$this._serverCertificateMetadataList ??=
              new _i3.ListBuilder<_i2.ServerCertificateMetadata>();
  set serverCertificateMetadataList(
          _i3.ListBuilder<_i2.ServerCertificateMetadata>?
              serverCertificateMetadataList) =>
      _$this._serverCertificateMetadataList = serverCertificateMetadataList;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListServerCertificatesResponseBuilder() {
    ListServerCertificatesResponse._init(this);
  }

  ListServerCertificatesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateMetadataList =
          $v.serverCertificateMetadataList.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListServerCertificatesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListServerCertificatesResponse;
  }

  @override
  void update(void Function(ListServerCertificatesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListServerCertificatesResponse build() => _build();

  _$ListServerCertificatesResponse _build() {
    _$ListServerCertificatesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListServerCertificatesResponse._(
              serverCertificateMetadataList:
                  serverCertificateMetadataList.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListServerCertificatesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverCertificateMetadataList';
        serverCertificateMetadataList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListServerCertificatesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
