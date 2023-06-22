// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_signing_certificates_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListSigningCertificatesResponse
    extends ListSigningCertificatesResponse {
  @override
  final _i3.BuiltList<_i2.SigningCertificate> certificates;
  @override
  final bool isTruncated;
  @override
  final String? marker;

  factory _$ListSigningCertificatesResponse(
          [void Function(ListSigningCertificatesResponseBuilder)? updates]) =>
      (new ListSigningCertificatesResponseBuilder()..update(updates))._build();

  _$ListSigningCertificatesResponse._(
      {required this.certificates, required this.isTruncated, this.marker})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        certificates, r'ListSigningCertificatesResponse', 'certificates');
    BuiltValueNullFieldError.checkNotNull(
        isTruncated, r'ListSigningCertificatesResponse', 'isTruncated');
  }

  @override
  ListSigningCertificatesResponse rebuild(
          void Function(ListSigningCertificatesResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListSigningCertificatesResponseBuilder toBuilder() =>
      new ListSigningCertificatesResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListSigningCertificatesResponse &&
        certificates == other.certificates &&
        isTruncated == other.isTruncated &&
        marker == other.marker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, certificates.hashCode);
    _$hash = $jc(_$hash, isTruncated.hashCode);
    _$hash = $jc(_$hash, marker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ListSigningCertificatesResponseBuilder
    implements
        Builder<ListSigningCertificatesResponse,
            ListSigningCertificatesResponseBuilder> {
  _$ListSigningCertificatesResponse? _$v;

  _i3.ListBuilder<_i2.SigningCertificate>? _certificates;
  _i3.ListBuilder<_i2.SigningCertificate> get certificates =>
      _$this._certificates ??= new _i3.ListBuilder<_i2.SigningCertificate>();
  set certificates(_i3.ListBuilder<_i2.SigningCertificate>? certificates) =>
      _$this._certificates = certificates;

  bool? _isTruncated;
  bool? get isTruncated => _$this._isTruncated;
  set isTruncated(bool? isTruncated) => _$this._isTruncated = isTruncated;

  String? _marker;
  String? get marker => _$this._marker;
  set marker(String? marker) => _$this._marker = marker;

  ListSigningCertificatesResponseBuilder() {
    ListSigningCertificatesResponse._init(this);
  }

  ListSigningCertificatesResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _certificates = $v.certificates.toBuilder();
      _isTruncated = $v.isTruncated;
      _marker = $v.marker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListSigningCertificatesResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListSigningCertificatesResponse;
  }

  @override
  void update(void Function(ListSigningCertificatesResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListSigningCertificatesResponse build() => _build();

  _$ListSigningCertificatesResponse _build() {
    _$ListSigningCertificatesResponse _$result;
    try {
      _$result = _$v ??
          new _$ListSigningCertificatesResponse._(
              certificates: certificates.build(),
              isTruncated: BuiltValueNullFieldError.checkNotNull(isTruncated,
                  r'ListSigningCertificatesResponse', 'isTruncated'),
              marker: marker);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'certificates';
        certificates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListSigningCertificatesResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
