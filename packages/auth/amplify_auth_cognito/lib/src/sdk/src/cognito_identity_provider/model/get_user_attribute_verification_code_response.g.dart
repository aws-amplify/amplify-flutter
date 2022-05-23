// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.cognito_identity_provider.model.get_user_attribute_verification_code_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserAttributeVerificationCodeResponse
    extends GetUserAttributeVerificationCodeResponse {
  @override
  final _i2.CodeDeliveryDetailsType? codeDeliveryDetails;

  factory _$GetUserAttributeVerificationCodeResponse(
          [void Function(GetUserAttributeVerificationCodeResponseBuilder)?
              updates]) =>
      (new GetUserAttributeVerificationCodeResponseBuilder()..update(updates))
          ._build();

  _$GetUserAttributeVerificationCodeResponse._({this.codeDeliveryDetails})
      : super._();

  @override
  GetUserAttributeVerificationCodeResponse rebuild(
          void Function(GetUserAttributeVerificationCodeResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserAttributeVerificationCodeResponseBuilder toBuilder() =>
      new GetUserAttributeVerificationCodeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserAttributeVerificationCodeResponse &&
        codeDeliveryDetails == other.codeDeliveryDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(0, codeDeliveryDetails.hashCode));
  }
}

class GetUserAttributeVerificationCodeResponseBuilder
    implements
        Builder<GetUserAttributeVerificationCodeResponse,
            GetUserAttributeVerificationCodeResponseBuilder> {
  _$GetUserAttributeVerificationCodeResponse? _$v;

  _i2.CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  _i2.CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= new _i2.CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
          _i2.CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails) =>
      _$this._codeDeliveryDetails = codeDeliveryDetails;

  GetUserAttributeVerificationCodeResponseBuilder() {
    GetUserAttributeVerificationCodeResponse._init(this);
  }

  GetUserAttributeVerificationCodeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetails = $v.codeDeliveryDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserAttributeVerificationCodeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserAttributeVerificationCodeResponse;
  }

  @override
  void update(
      void Function(GetUserAttributeVerificationCodeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserAttributeVerificationCodeResponse build() => _build();

  _$GetUserAttributeVerificationCodeResponse _build() {
    _$GetUserAttributeVerificationCodeResponse _$result;
    try {
      _$result = _$v ??
          new _$GetUserAttributeVerificationCodeResponse._(
              codeDeliveryDetails: _codeDeliveryDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserAttributeVerificationCodeResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
