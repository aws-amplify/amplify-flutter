// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.get_user_attribute_verification_code_response;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, codeDeliveryDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
            r'GetUserAttributeVerificationCodeResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
