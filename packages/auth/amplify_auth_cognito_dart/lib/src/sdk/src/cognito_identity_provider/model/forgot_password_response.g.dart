// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.forgot_password_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordResponse extends ForgotPasswordResponse {
  @override
  final _i2.CodeDeliveryDetailsType? codeDeliveryDetails;

  factory _$ForgotPasswordResponse(
          [void Function(ForgotPasswordResponseBuilder)? updates]) =>
      (new ForgotPasswordResponseBuilder()..update(updates))._build();

  _$ForgotPasswordResponse._({this.codeDeliveryDetails}) : super._();

  @override
  ForgotPasswordResponse rebuild(
          void Function(ForgotPasswordResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordResponseBuilder toBuilder() =>
      new ForgotPasswordResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordResponse &&
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

class ForgotPasswordResponseBuilder
    implements Builder<ForgotPasswordResponse, ForgotPasswordResponseBuilder> {
  _$ForgotPasswordResponse? _$v;

  _i2.CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  _i2.CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= new _i2.CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
          _i2.CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails) =>
      _$this._codeDeliveryDetails = codeDeliveryDetails;

  ForgotPasswordResponseBuilder() {
    ForgotPasswordResponse._init(this);
  }

  ForgotPasswordResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetails = $v.codeDeliveryDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPasswordResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPasswordResponse;
  }

  @override
  void update(void Function(ForgotPasswordResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordResponse build() => _build();

  _$ForgotPasswordResponse _build() {
    _$ForgotPasswordResponse _$result;
    try {
      _$result = _$v ??
          new _$ForgotPasswordResponse._(
              codeDeliveryDetails: _codeDeliveryDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ForgotPasswordResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
