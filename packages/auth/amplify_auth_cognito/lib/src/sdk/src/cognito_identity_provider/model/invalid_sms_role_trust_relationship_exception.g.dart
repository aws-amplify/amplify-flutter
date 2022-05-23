// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.invalid_sms_role_trust_relationship_exception;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$InvalidSmsRoleTrustRelationshipException
    extends InvalidSmsRoleTrustRelationshipException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$InvalidSmsRoleTrustRelationshipException(
          [void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)?
              updates]) =>
      (new InvalidSmsRoleTrustRelationshipExceptionBuilder()..update(updates))
          ._build();

  _$InvalidSmsRoleTrustRelationshipException._({this.message, this.headers})
      : super._();

  @override
  InvalidSmsRoleTrustRelationshipException rebuild(
          void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InvalidSmsRoleTrustRelationshipExceptionBuilder toBuilder() =>
      new InvalidSmsRoleTrustRelationshipExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InvalidSmsRoleTrustRelationshipException &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }
}

class InvalidSmsRoleTrustRelationshipExceptionBuilder
    implements
        Builder<InvalidSmsRoleTrustRelationshipException,
            InvalidSmsRoleTrustRelationshipExceptionBuilder> {
  _$InvalidSmsRoleTrustRelationshipException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  InvalidSmsRoleTrustRelationshipExceptionBuilder() {
    InvalidSmsRoleTrustRelationshipException._init(this);
  }

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
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InvalidSmsRoleTrustRelationshipException;
  }

  @override
  void update(
      void Function(InvalidSmsRoleTrustRelationshipExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InvalidSmsRoleTrustRelationshipException build() => _build();

  _$InvalidSmsRoleTrustRelationshipException _build() {
    final _$result = _$v ??
        new _$InvalidSmsRoleTrustRelationshipException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
