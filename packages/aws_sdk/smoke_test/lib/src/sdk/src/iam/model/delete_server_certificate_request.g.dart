// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.delete_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteServerCertificateRequest extends DeleteServerCertificateRequest {
  @override
  final String serverCertificateName;

  factory _$DeleteServerCertificateRequest(
          [void Function(DeleteServerCertificateRequestBuilder)? updates]) =>
      (new DeleteServerCertificateRequestBuilder()..update(updates))._build();

  _$DeleteServerCertificateRequest._({required this.serverCertificateName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'DeleteServerCertificateRequest', 'serverCertificateName');
  }

  @override
  DeleteServerCertificateRequest rebuild(
          void Function(DeleteServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteServerCertificateRequestBuilder toBuilder() =>
      new DeleteServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteServerCertificateRequest &&
        serverCertificateName == other.serverCertificateName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificateName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteServerCertificateRequestBuilder
    implements
        Builder<DeleteServerCertificateRequest,
            DeleteServerCertificateRequestBuilder> {
  _$DeleteServerCertificateRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  DeleteServerCertificateRequestBuilder() {
    DeleteServerCertificateRequest._init(this);
  }

  DeleteServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteServerCertificateRequest;
  }

  @override
  void update(void Function(DeleteServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteServerCertificateRequest build() => _build();

  _$DeleteServerCertificateRequest _build() {
    final _$result = _$v ??
        new _$DeleteServerCertificateRequest._(
            serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                serverCertificateName,
                r'DeleteServerCertificateRequest',
                'serverCertificateName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
