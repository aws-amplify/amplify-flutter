// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.associate_software_token_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssociateSoftwareTokenResponse extends AssociateSoftwareTokenResponse {
  @override
  final String? secretCode;
  @override
  final String? session;

  factory _$AssociateSoftwareTokenResponse(
          [void Function(AssociateSoftwareTokenResponseBuilder)? updates]) =>
      (new AssociateSoftwareTokenResponseBuilder()..update(updates))._build();

  _$AssociateSoftwareTokenResponse._({this.secretCode, this.session})
      : super._();

  @override
  AssociateSoftwareTokenResponse rebuild(
          void Function(AssociateSoftwareTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssociateSoftwareTokenResponseBuilder toBuilder() =>
      new AssociateSoftwareTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssociateSoftwareTokenResponse &&
        secretCode == other.secretCode &&
        session == other.session;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, secretCode.hashCode), session.hashCode));
  }
}

class AssociateSoftwareTokenResponseBuilder
    implements
        Builder<AssociateSoftwareTokenResponse,
            AssociateSoftwareTokenResponseBuilder> {
  _$AssociateSoftwareTokenResponse? _$v;

  String? _secretCode;
  String? get secretCode => _$this._secretCode;
  set secretCode(String? secretCode) => _$this._secretCode = secretCode;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  AssociateSoftwareTokenResponseBuilder() {
    AssociateSoftwareTokenResponse._init(this);
  }

  AssociateSoftwareTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _secretCode = $v.secretCode;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssociateSoftwareTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssociateSoftwareTokenResponse;
  }

  @override
  void update(void Function(AssociateSoftwareTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssociateSoftwareTokenResponse build() => _build();

  _$AssociateSoftwareTokenResponse _build() {
    final _$result = _$v ??
        new _$AssociateSoftwareTokenResponse._(
            secretCode: secretCode, session: session);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
