// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.sign_up_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignUpResponse extends SignUpResponse {
  @override
  final _i2.CodeDeliveryDetailsType? codeDeliveryDetails;
  @override
  final bool userConfirmed;
  @override
  final String userSub;

  factory _$SignUpResponse([void Function(SignUpResponseBuilder)? updates]) =>
      (new SignUpResponseBuilder()..update(updates))._build();

  _$SignUpResponse._(
      {this.codeDeliveryDetails,
      required this.userConfirmed,
      required this.userSub})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userConfirmed, 'SignUpResponse', 'userConfirmed');
    BuiltValueNullFieldError.checkNotNull(userSub, 'SignUpResponse', 'userSub');
  }

  @override
  SignUpResponse rebuild(void Function(SignUpResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpResponseBuilder toBuilder() =>
      new SignUpResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUpResponse &&
        codeDeliveryDetails == other.codeDeliveryDetails &&
        userConfirmed == other.userConfirmed &&
        userSub == other.userSub;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, codeDeliveryDetails.hashCode), userConfirmed.hashCode),
        userSub.hashCode));
  }
}

class SignUpResponseBuilder
    implements Builder<SignUpResponse, SignUpResponseBuilder> {
  _$SignUpResponse? _$v;

  _i2.CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  _i2.CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= new _i2.CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
          _i2.CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails) =>
      _$this._codeDeliveryDetails = codeDeliveryDetails;

  bool? _userConfirmed;
  bool? get userConfirmed => _$this._userConfirmed;
  set userConfirmed(bool? userConfirmed) =>
      _$this._userConfirmed = userConfirmed;

  String? _userSub;
  String? get userSub => _$this._userSub;
  set userSub(String? userSub) => _$this._userSub = userSub;

  SignUpResponseBuilder() {
    SignUpResponse._init(this);
  }

  SignUpResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetails = $v.codeDeliveryDetails?.toBuilder();
      _userConfirmed = $v.userConfirmed;
      _userSub = $v.userSub;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUpResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUpResponse;
  }

  @override
  void update(void Function(SignUpResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignUpResponse build() => _build();

  _$SignUpResponse _build() {
    _$SignUpResponse _$result;
    try {
      _$result = _$v ??
          new _$SignUpResponse._(
              codeDeliveryDetails: _codeDeliveryDetails?.build(),
              userConfirmed: BuiltValueNullFieldError.checkNotNull(
                  userConfirmed, 'SignUpResponse', 'userConfirmed'),
              userSub: BuiltValueNullFieldError.checkNotNull(
                  userSub, 'SignUpResponse', 'userSub'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SignUpResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
