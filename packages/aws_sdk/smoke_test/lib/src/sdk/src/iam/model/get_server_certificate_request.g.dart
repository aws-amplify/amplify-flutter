// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_server_certificate_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServerCertificateRequest extends GetServerCertificateRequest {
  @override
  final String serverCertificateName;

  factory _$GetServerCertificateRequest(
          [void Function(GetServerCertificateRequestBuilder)? updates]) =>
      (new GetServerCertificateRequestBuilder()..update(updates))._build();

  _$GetServerCertificateRequest._({required this.serverCertificateName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificateName,
        r'GetServerCertificateRequest', 'serverCertificateName');
  }

  @override
  GetServerCertificateRequest rebuild(
          void Function(GetServerCertificateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServerCertificateRequestBuilder toBuilder() =>
      new GetServerCertificateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServerCertificateRequest &&
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

class GetServerCertificateRequestBuilder
    implements
        Builder<GetServerCertificateRequest,
            GetServerCertificateRequestBuilder> {
  _$GetServerCertificateRequest? _$v;

  String? _serverCertificateName;
  String? get serverCertificateName => _$this._serverCertificateName;
  set serverCertificateName(String? serverCertificateName) =>
      _$this._serverCertificateName = serverCertificateName;

  GetServerCertificateRequestBuilder() {
    GetServerCertificateRequest._init(this);
  }

  GetServerCertificateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificateName = $v.serverCertificateName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServerCertificateRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServerCertificateRequest;
  }

  @override
  void update(void Function(GetServerCertificateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServerCertificateRequest build() => _build();

  _$GetServerCertificateRequest _build() {
    final _$result = _$v ??
        new _$GetServerCertificateRequest._(
            serverCertificateName: BuiltValueNullFieldError.checkNotNull(
                serverCertificateName,
                r'GetServerCertificateRequest',
                'serverCertificateName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
