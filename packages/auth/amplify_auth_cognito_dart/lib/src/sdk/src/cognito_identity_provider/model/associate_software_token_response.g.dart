// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.associate_software_token_response;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, secretCode.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
