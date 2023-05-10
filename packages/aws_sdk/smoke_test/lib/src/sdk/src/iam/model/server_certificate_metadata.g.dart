// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.server_certificate_metadata;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServerCertificateMetadata extends ServerCertificateMetadata {
  @override
  final String path;
  @override
  final String serverCertificateName;
  @override
  final String serverCertificateId;
  @override
  final String arn;
  @override
  final DateTime? uploadDate;
  @override
  final DateTime? expiration;

  factory _$ServerCertificateMetadata(
          [void Function(ServerCertificateMetadataBuilder)? updates]) =>
      (new ServerCertificateMetadataBuilder()..update(updates))._build();

  _$ServerCertificateMetadata._(
      {required this.path,
      required this.serverCertificateName,
      required this.serverCertificateId,
      required this.arn,
      this.uploadDate,
      this.expiration})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        path, r'ServerCertificateMetadata', 'path');
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'ServerCertificateMetadata', 'serverCertificateName');
    BuiltValueNullFieldError.checkNotNull(serverCertificateId,
        r'ServerCertificateMetadata', 'serverCertificateId');
    BuiltValueNullFieldError.checkNotNull(
        arn, r'ServerCertificateMetadata', 'arn');
  }

  @override
  ServerCertificateMetadata rebuild(
          void Function(ServerCertificateMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServerCertificateMetadataBuilder toBuilder() =>
      new ServerCertificateMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServerCertificateMetadata &&
        path == other.path &&
        serverCertificateName == other.serverCertificateName &&
        serverCertificateId == other.serverCertificateId &&
        arn == other.arn &&
        uploadDate == other.uploadDate &&
        expiration == other.expiration;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, serverCertificateId.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, uploadDate.hashCode);
    _$hash = $jc(_$hash, expiration.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ServerCertificateMetadataBuilder
    implements
        Builder<ServerCertificateMetadata, ServerCertificateMetadataBuilder> {
  _$ServerCertificateMetadata? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  String? _serverCertificateId;
  String? get serverCertificateId => _$this._serverCertificateId;
  set serverCertificateId(String? serverCertificateId) =>
      _$this._serverCertificateId = serverCertificateId;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  DateTime? _uploadDate;
  DateTime? get uploadDate => _$this._uploadDate;
  set uploadDate(DateTime? uploadDate) => _$this._uploadDate = uploadDate;

  DateTime? _expiration;
  DateTime? get expiration => _$this._expiration;
  set expiration(DateTime? expiration) => _$this._expiration = expiration;

  ServerCertificateMetadataBuilder() {
    ServerCertificateMetadata._init(this);
  }

  ServerCertificateMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _serverCertificateName = $v.serverCertificateName;
      _serverCertificateId = $v.serverCertificateId;
      _arn = $v.arn;
      _uploadDate = $v.uploadDate;
      _expiration = $v.expiration;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServerCertificateMetadata other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServerCertificateMetadata;
  }

  @override
  void update(void Function(ServerCertificateMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServerCertificateMetadata build() => _build();

  _$ServerCertificateMetadata _build() {
    final _$result = _$v ??
        new _$ServerCertificateMetadata._(
            path: BuiltValueNullFieldError.checkNotNull(
                path, r'ServerCertificateMetadata', 'path'),
            serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                serverCertificateName,
                r'ServerCertificateMetadata',
                'serverCertificateName'),
            serverCertificateId: BuiltValueNullFieldError.checkNotNull(
                serverCertificateId,
                r'ServerCertificateMetadata',
                'serverCertificateId'),
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'ServerCertificateMetadata', 'arn'),
            uploadDate: uploadDate,
            expiration: expiration);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
