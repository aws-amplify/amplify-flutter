// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.upload_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadServerCertificateRequest extends UploadServerCertificateRequest {
  @override
  final String? path;
  @override
  final String serverCertificateName;
  @override
  final String certificateBody;
  @override
  final String privateKey;
  @override
  final String? certificateChain;
  @override
  final _i4.BuiltList<_i3.Tag>? tags;

  factory _$UploadServerCertificateRequest(
          [void Function(UploadServerCertificateRequestBuilder)? updates]) =>
      (new UploadServerCertificateRequestBuilder()..update(updates))._build();

  _$UploadServerCertificateRequest._(
      {this.path,
      required this.serverCertificateName,
      required this.certificateBody,
      required this.privateKey,
      this.certificateChain,
      this.tags})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'UploadServerCertificateRequest', 'serverCertificateName');
    BuiltValueNullFieldError.checkNotNull(
        certificateBody, r'UploadServerCertificateRequest', 'certificateBody');
    BuiltValueNullFieldError.checkNotNull(
        privateKey, r'UploadServerCertificateRequest', 'privateKey');
  }

  @override
  UploadServerCertificateRequest rebuild(
          void Function(UploadServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadServerCertificateRequestBuilder toBuilder() =>
      new UploadServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadServerCertificateRequest &&
        path == other.path &&
        serverCertificateName == other.serverCertificateName &&
        certificateBody == other.certificateBody &&
        privateKey == other.privateKey &&
        certificateChain == other.certificateChain &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, certificateBody.hashCode);
    _$hash = $jc(_$hash, privateKey.hashCode);
    _$hash = $jc(_$hash, certificateChain.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UploadServerCertificateRequestBuilder
    implements
        Builder<UploadServerCertificateRequest,
            UploadServerCertificateRequestBuilder> {
  _$UploadServerCertificateRequest? _$v;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  String? _certificateBody;
  String? get certificateBody => _$this._certificateBody;
  set certificateBody(String? certificateBody) =>
      _$this._certificateBody = certificateBody;

  String? _privateKey;
  String? get privateKey => _$this._privateKey;
  set privateKey(String? privateKey) => _$this._privateKey = privateKey;

  String? _certificateChain;
  String? get certificateChain => _$this._certificateChain;
  set certificateChain(String? certificateChain) =>
      _$this._certificateChain = certificateChain;

  _i4.ListBuilder<_i3.Tag>? _tags;
  _i4.ListBuilder<_i3.Tag> get tags =>
      _$this._tags ??= new _i4.ListBuilder<_i3.Tag>();
  set tags(_i4.ListBuilder<_i3.Tag>? tags) => _$this._tags = tags;

  UploadServerCertificateRequestBuilder() {
    UploadServerCertificateRequest._init(this);
  }

  UploadServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _path = $v.path;
      _serverCertificateName = $v.serverCertificateName;
      _certificateBody = $v.certificateBody;
      _privateKey = $v.privateKey;
      _certificateChain = $v.certificateChain;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadServerCertificateRequest;
  }

  @override
  void update(void Function(UploadServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadServerCertificateRequest build() => _build();

  _$UploadServerCertificateRequest _build() {
    _$UploadServerCertificateRequest _$result;
    try {
      _$result = _$v ??
          new _$UploadServerCertificateRequest._(
              path: path,
              serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                  serverCertificateName,
                  r'UploadServerCertificateRequest',
                  'serverCertificateName'),
              certificateBody: BuiltValueNullFieldError.checkNotNull(
                  certificateBody,
                  r'UploadServerCertificateRequest',
                  'certificateBody'),
              privateKey: BuiltValueNullFieldError.checkNotNull(
                  privateKey, r'UploadServerCertificateRequest', 'privateKey'),
              certificateChain: certificateChain,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadServerCertificateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
