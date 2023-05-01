// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.server_certificate;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerCertificate extends ServerCertificate {
  @override
  final _i2.ServerCertificateMetadata serverCertificateMetadata;
  @override
  final String certificateBody;
  @override
  final String? certificateChain;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$ServerCertificate(
          [void Function(ServerCertificateBuilder)? updates]) =>
      (new ServerCertificateBuilder()..update(updates))._build();

  _$ServerCertificate._(
      {required this.serverCertificateMetadata,
      required this.certificateBody,
      this.certificateChain,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateMetadata,
        r'ServerCertificate', 'serverCertificateMetadata');
    BuiltValueNullFieldError.checkNotNull(
        certificateBody, r'ServerCertificate', 'certificateBody');
  }

  @override
  ServerCertificate rebuild(void Function(ServerCertificateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerCertificateBuilder toBuilder() =>
      new ServerCertificateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerCertificate &&
        serverCertificateMetadata == other.serverCertificateMetadata &&
        certificateBody == other.certificateBody &&
        certificateChain == other.certificateChain &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateMetadata.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jc(_$hash, certificateChain.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServerCertificateBuilder
    implements Builder<ServerCertificate, ServerCertificateBuilder> {
  _$ServerCertificate? _$v;

  _i2.ServerCertificateMetadataBuilder? _serverCertificateMetadata;
  _i2.ServerCertificateMetadataBuilder get serverCertificateMetadata =>
      _$this._serverCertificateMetadata ??=
          new _i2.ServerCertificateMetadataBuilder();
  set serverCertificateMetadata(
          _i2.ServerCertificateMetadataBuilder? serverCertificateMetadata) =>
      _$this._serverCertificateMetadata = serverCertificateMetadata;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  String? _certificateChain;
  String? get certificateChain => _$this._certificateChain;
  set certificateChain(String? certificateChain) =>
      _$this._certificateChain = certificateChain;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  ServerCertificateBuilder() {
    ServerCertificate._init(this);
  }

  ServerCertificateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateMetadata = $v.serverCertificateMetadata.toBuilder();
      _certificateBody = $v.certificateBody;
      _certificateChain = $v.certificateChain;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerCertificate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerCertificate;
  }

  @override
  void update(void Function(ServerCertificateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerCertificate build() => _build();

  _$ServerCertificate _build() {
    _$ServerCertificate _$result;
    try {
      _$result = _$v ??
          new _$ServerCertificate._(
              serverCertificateMetadata: serverCertificateMetadata.build(),
              certificateBody: BuiltValueNullFieldError.checkNotNull(
                  certificateBody, r'ServerCertificate', 'certificateBody'),
              certificateChain: certificateChain,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverCertificateMetadata';
        serverCertificateMetadata.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServerCertificate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
