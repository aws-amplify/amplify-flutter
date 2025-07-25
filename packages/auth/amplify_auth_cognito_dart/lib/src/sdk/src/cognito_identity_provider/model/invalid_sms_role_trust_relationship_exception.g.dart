// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invalid_sms_role_trust_relationship_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidSmsRoleTrustRelationshipException
    extends InvalidSmsRoleTrustRelationshipException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidSmsRoleTrustRelationshipException([
    void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)? updates,
  ]) => (InvalidSmsRoleTrustRelationshipExceptionBuilder()..update(updates))
      ._build();

  _$InvalidSmsRoleTrustRelationshipException._({this.message, this.headers})
    : super._();
  @override
  InvalidSmsRoleTrustRelationshipException rebuild(
    void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  InvalidSmsRoleTrustRelationshipExceptionBuilder toBuilder() =>
      InvalidSmsRoleTrustRelationshipExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidSmsRoleTrustRelationshipException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class InvalidSmsRoleTrustRelationshipExceptionBuilder
    implements
        Builder<
          InvalidSmsRoleTrustRelationshipException,
          InvalidSmsRoleTrustRelationshipExceptionBuilder
        > {
  _$InvalidSmsRoleTrustRelationshipException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidSmsRoleTrustRelationshipExceptionBuilder();

  InvalidSmsRoleTrustRelationshipExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InvalidSmsRoleTrustRelationshipException other) {
    _$v = other as _$InvalidSmsRoleTrustRelationshipException;
  }

  @override
  void update(
    void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  InvalidSmsRoleTrustRelationshipException build() => _build();

  _$InvalidSmsRoleTrustRelationshipException _build() {
    final _$result =
        _$v ??
        _$InvalidSmsRoleTrustRelationshipException._(
          message: message,
          headers: headers,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
