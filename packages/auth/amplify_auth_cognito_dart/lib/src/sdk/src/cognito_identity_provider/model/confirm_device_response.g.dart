// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito_dart.cognito_identity_provider.model.confirm_device_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConfirmDeviceResponse extends ConfirmDeviceResponse {
  @override
  final bool userConfirmationNecessary;

  factory _$ConfirmDeviceResponse(
          [void Function(ConfirmDeviceResponseBuilder)? updates]) =>
      (new ConfirmDeviceResponseBuilder()..update(updates))._build();

  _$ConfirmDeviceResponse._({required this.userConfirmationNecessary})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userConfirmationNecessary,
        r'ConfirmDeviceResponse', 'userConfirmationNecessary');
  }

  @override
  ConfirmDeviceResponse rebuild(
          void Function(ConfirmDeviceResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmDeviceResponseBuilder toBuilder() =>
      new ConfirmDeviceResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmDeviceResponse &&
        userConfirmationNecessary == other.userConfirmationNecessary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userConfirmationNecessary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConfirmDeviceResponseBuilder
    implements Builder<ConfirmDeviceResponse, ConfirmDeviceResponseBuilder> {
  _$ConfirmDeviceResponse? _$v;

  bool? _userConfirmationNecessary;
  bool? get userConfirmationNecessary => _$this._userConfirmationNecessary;
  set userConfirmationNecessary(bool? userConfirmationNecessary) =>
      _$this._userConfirmationNecessary = userConfirmationNecessary;

  ConfirmDeviceResponseBuilder() {
    ConfirmDeviceResponse._init(this);
  }

  ConfirmDeviceResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userConfirmationNecessary = $v.userConfirmationNecessary;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmDeviceResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmDeviceResponse;
  }

  @override
  void update(void Function(ConfirmDeviceResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConfirmDeviceResponse build() => _build();

  _$ConfirmDeviceResponse _build() {
    final _$result = _$v ??
        new _$ConfirmDeviceResponse._(
            userConfirmationNecessary: BuiltValueNullFieldError.checkNotNull(
                userConfirmationNecessary,
                r'ConfirmDeviceResponse',
                'userConfirmationNecessary'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
