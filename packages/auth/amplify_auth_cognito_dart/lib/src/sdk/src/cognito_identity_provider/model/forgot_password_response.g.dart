// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ForgotPasswordResponse extends ForgotPasswordResponse {
  @override
  final CodeDeliveryDetailsType? codeDeliveryDetails;

  factory _$ForgotPasswordResponse([
    void Function(ForgotPasswordResponseBuilder)? updates,
  ]) => (ForgotPasswordResponseBuilder()..update(updates))._build();

  _$ForgotPasswordResponse._({this.codeDeliveryDetails}) : super._();
  @override
  ForgotPasswordResponse rebuild(
    void Function(ForgotPasswordResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordResponseBuilder toBuilder() =>
      ForgotPasswordResponseBuilder()..replace(this);

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

  CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
    CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails,
  ) => _$this._codeDeliveryDetails = codeDeliveryDetails;

  ForgotPasswordResponseBuilder();

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
      _$result =
          _$v ??
          _$ForgotPasswordResponse._(
            codeDeliveryDetails: _codeDeliveryDetails?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ForgotPasswordResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
