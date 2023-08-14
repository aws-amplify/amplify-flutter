// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_server_certificate_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadServerCertificateResponse
    extends UploadServerCertificateResponse {
  @override
  final ServerCertificateMetadata? serverCertificateMetadata;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$UploadServerCertificateResponse(
          [void Function(UploadServerCertificateResponseBuilder)? updates]) =>
      (new UploadServerCertificateResponseBuilder()..update(updates))._build();

  _$UploadServerCertificateResponse._(
      {this.serverCertificateMetadata, this.tags})
      : super._();

  @override
  UploadServerCertificateResponse rebuild(
          void Function(UploadServerCertificateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadServerCertificateResponseBuilder toBuilder() =>
      new UploadServerCertificateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadServerCertificateResponse &&
        serverCertificateMetadata == other.serverCertificateMetadata &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateMetadata.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadServerCertificateResponseBuilder
    implements
        Builder<UploadServerCertificateResponse,
            UploadServerCertificateResponseBuilder> {
  _$UploadServerCertificateResponse? _$v;

  ServerCertificateMetadataBuilder? _serverCertificateMetadata;
  ServerCertificateMetadataBuilder get serverCertificateMetadata =>
      _$this._serverCertificateMetadata ??=
          new ServerCertificateMetadataBuilder();
  set serverCertificateMetadata(
          ServerCertificateMetadataBuilder? serverCertificateMetadata) =>
      _$this._serverCertificateMetadata = serverCertificateMetadata;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  UploadServerCertificateResponseBuilder();

  UploadServerCertificateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateMetadata = $v.serverCertificateMetadata?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadServerCertificateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadServerCertificateResponse;
  }

  @override
  void update(void Function(UploadServerCertificateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadServerCertificateResponse build() => _build();

  _$UploadServerCertificateResponse _build() {
    _$UploadServerCertificateResponse _$result;
    try {
      _$result = _$v ??
          new _$UploadServerCertificateResponse._(
              serverCertificateMetadata: _serverCertificateMetadata?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverCertificateMetadata';
        _serverCertificateMetadata?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadServerCertificateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
