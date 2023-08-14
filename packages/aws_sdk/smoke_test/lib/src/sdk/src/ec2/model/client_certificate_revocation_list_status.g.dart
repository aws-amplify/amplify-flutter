// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_certificate_revocation_list_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ClientCertificateRevocationListStatus
    extends ClientCertificateRevocationListStatus {
  @override
  final ClientCertificateRevocationListStatusCode? code;
  @override
  final String? message;

  factory _$ClientCertificateRevocationListStatus(
          [void Function(ClientCertificateRevocationListStatusBuilder)?
              updates]) =>
      (new ClientCertificateRevocationListStatusBuilder()..update(updates))
          ._build();

  _$ClientCertificateRevocationListStatus._({this.code, this.message})
      : super._();

  @override
  ClientCertificateRevocationListStatus rebuild(
          void Function(ClientCertificateRevocationListStatusBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientCertificateRevocationListStatusBuilder toBuilder() =>
      new ClientCertificateRevocationListStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClientCertificateRevocationListStatus &&
        code == other.code &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ClientCertificateRevocationListStatusBuilder
    implements
        Builder<ClientCertificateRevocationListStatus,
            ClientCertificateRevocationListStatusBuilder> {
  _$ClientCertificateRevocationListStatus? _$v;

  ClientCertificateRevocationListStatusCode? _code;
  ClientCertificateRevocationListStatusCode? get code => _$this._code;
  set code(ClientCertificateRevocationListStatusCode? code) =>
      _$this._code = code;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ClientCertificateRevocationListStatusBuilder();

  ClientCertificateRevocationListStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClientCertificateRevocationListStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClientCertificateRevocationListStatus;
  }

  @override
  void update(
      void Function(ClientCertificateRevocationListStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClientCertificateRevocationListStatus build() => _build();

  _$ClientCertificateRevocationListStatus _build() {
    final _$result = _$v ??
        new _$ClientCertificateRevocationListStatus._(
            code: code, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
