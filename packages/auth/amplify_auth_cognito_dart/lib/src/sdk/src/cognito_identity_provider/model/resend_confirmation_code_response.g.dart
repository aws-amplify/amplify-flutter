// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_confirmation_code_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ResendConfirmationCodeResponse extends ResendConfirmationCodeResponse {
  @override
  final CodeDeliveryDetailsType? codeDeliveryDetails;

  factory _$ResendConfirmationCodeResponse(
          [void Function(ResendConfirmationCodeResponseBuilder)? updates]) =>
      (new ResendConfirmationCodeResponseBuilder()..update(updates))._build();

  _$ResendConfirmationCodeResponse._({this.codeDeliveryDetails}) : super._();

  @override
  ResendConfirmationCodeResponse rebuild(
          void Function(ResendConfirmationCodeResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendConfirmationCodeResponseBuilder toBuilder() =>
      new ResendConfirmationCodeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendConfirmationCodeResponse &&
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

class ResendConfirmationCodeResponseBuilder
    implements
        Builder<ResendConfirmationCodeResponse,
            ResendConfirmationCodeResponseBuilder> {
  _$ResendConfirmationCodeResponse? _$v;

  CodeDeliveryDetailsTypeBuilder? _codeDeliveryDetails;
  CodeDeliveryDetailsTypeBuilder get codeDeliveryDetails =>
      _$this._codeDeliveryDetails ??= new CodeDeliveryDetailsTypeBuilder();
  set codeDeliveryDetails(
          CodeDeliveryDetailsTypeBuilder? codeDeliveryDetails) =>
      _$this._codeDeliveryDetails = codeDeliveryDetails;

  ResendConfirmationCodeResponseBuilder();

  ResendConfirmationCodeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _codeDeliveryDetails = $v.codeDeliveryDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendConfirmationCodeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendConfirmationCodeResponse;
  }

  @override
  void update(void Function(ResendConfirmationCodeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResendConfirmationCodeResponse build() => _build();

  _$ResendConfirmationCodeResponse _build() {
    _$ResendConfirmationCodeResponse _$result;
    try {
      _$result = _$v ??
          new _$ResendConfirmationCodeResponse._(
              codeDeliveryDetails: _codeDeliveryDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'codeDeliveryDetails';
        _codeDeliveryDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ResendConfirmationCodeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
