// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.update_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateServerCertificateRequest extends UpdateServerCertificateRequest {
  @override
  final String serverCertificateName;
  @override
  final String? newPath;
  @override
  final String? newServerCertificateName;

  factory _$UpdateServerCertificateRequest(
          [void Function(UpdateServerCertificateRequestBuilder)? updates]) =>
      (new UpdateServerCertificateRequestBuilder()..update(updates))._build();

  _$UpdateServerCertificateRequest._(
      {required this.serverCertificateName,
      this.newPath,
      this.newServerCertificateName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'UpdateServerCertificateRequest', 'serverCertificateName');
  }

  @override
  UpdateServerCertificateRequest rebuild(
          void Function(UpdateServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateServerCertificateRequestBuilder toBuilder() =>
      new UpdateServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateServerCertificateRequest &&
        serverCertificateName == other.serverCertificateName &&
        newPath == other.newPath &&
        newServerCertificateName == other.newServerCertificateName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jc(_$hash, newPath.hashCode);
    _$hash = $jc(_$hash, newServerCertificateName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UpdateServerCertificateRequestBuilder
    implements
        Builder<UpdateServerCertificateRequest,
            UpdateServerCertificateRequestBuilder> {
  _$UpdateServerCertificateRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  String? _newPath;
  String? get newPath => _$this._newPath;
  set newPath(String? newPath) => _$this._newPath = newPath;

  String? _newServerCertificateName;
  String? get newServerCertificateName => _$this._newServerCertificateName;
  set newServerCertificateName(String? newServerCertificateName) =>
      _$this._newServerCertificateName = newServerCertificateName;

  UpdateServerCertificateRequestBuilder() {
    UpdateServerCertificateRequest._init(this);
  }

  UpdateServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _newPath = $v.newPath;
      _newServerCertificateName = $v.newServerCertificateName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateServerCertificateRequest;
  }

  @override
  void update(void Function(UpdateServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateServerCertificateRequest build() => _build();

  _$UpdateServerCertificateRequest _build() {
    final _$result = _$v ??
        new _$UpdateServerCertificateRequest._(
            serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                serverCertificateName,
                r'UpdateServerCertificateRequest',
                'serverCertificateName'),
            newPath: newPath,
            newServerCertificateName: newServerCertificateName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
