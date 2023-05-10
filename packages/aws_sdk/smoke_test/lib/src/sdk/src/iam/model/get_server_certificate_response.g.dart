// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_server_certificate_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetServerCertificateResponse extends GetServerCertificateResponse {
  @override
  final _i2.ServerCertificate serverCertificate;

  factory _$GetServerCertificateResponse(
          [void Function(GetServerCertificateResponseBuilder)? updates]) =>
      (new GetServerCertificateResponseBuilder()..update(updates))._build();

  _$GetServerCertificateResponse._({required this.serverCertificate})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(serverCertificate,
        r'GetServerCertificateResponse', 'serverCertificate');
  }

  @override
  GetServerCertificateResponse rebuild(
          void Function(GetServerCertificateResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetServerCertificateResponseBuilder toBuilder() =>
      new GetServerCertificateResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetServerCertificateResponse &&
        serverCertificate == other.serverCertificate;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serverCertificate.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetServerCertificateResponseBuilder
    implements
        Builder<GetServerCertificateResponse,
            GetServerCertificateResponseBuilder> {
  _$GetServerCertificateResponse? _$v;

  _i2.ServerCertificateBuilder? _serverCertificate;
  _i2.ServerCertificateBuilder get serverCertificate =>
      _$this._serverCertificate ??= new _i2.ServerCertificateBuilder();
  set serverCertificate(_i2.ServerCertificateBuilder? serverCertificate) =>
      _$this._serverCertificate = serverCertificate;

  GetServerCertificateResponseBuilder() {
    GetServerCertificateResponse._init(this);
  }

  GetServerCertificateResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serverCertificate = $v.serverCertificate.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetServerCertificateResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetServerCertificateResponse;
  }

  @override
  void update(void Function(GetServerCertificateResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetServerCertificateResponse build() => _build();

  _$GetServerCertificateResponse _build() {
    _$GetServerCertificateResponse _$result;
    try {
      _$result = _$v ??
          new _$GetServerCertificateResponse._(
              serverCertificate: serverCertificate.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'serverCertificate';
        serverCertificate.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetServerCertificateResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
