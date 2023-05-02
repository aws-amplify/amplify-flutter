// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.change_password_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ChangePasswordRequest extends ChangePasswordRequest {
  @override
  final String oldPassword;
  @override
  final String newPassword;

  factory _$ChangePasswordRequest(
          [void Function(ChangePasswordRequestBuilder)? updates]) =>
      (new ChangePasswordRequestBuilder()..update(updates))._build();

  _$ChangePasswordRequest._(
      {required this.oldPassword, required this.newPassword})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        oldPassword, r'ChangePasswordRequest', 'oldPassword');
    BuiltValueNullFieldError.checkNotNull(
        newPassword, r'ChangePasswordRequest', 'newPassword');
  }

  @override
  ChangePasswordRequest rebuild(
          void Function(ChangePasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangePasswordRequestBuilder toBuilder() =>
      new ChangePasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangePasswordRequest &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oldPassword.hashCode);
    _$hash = $jc(_$hash, newPassword.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangePasswordRequestBuilder
    implements Builder<ChangePasswordRequest, ChangePasswordRequestBuilder> {
  _$ChangePasswordRequest? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  ChangePasswordRequestBuilder() {
    ChangePasswordRequest._init(this);
  }

  ChangePasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangePasswordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangePasswordRequest;
  }

  @override
  void update(void Function(ChangePasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangePasswordRequest build() => _build();

  _$ChangePasswordRequest _build() {
    final _$result = _$v ??
        new _$ChangePasswordRequest._(
            oldPassword: BuiltValueNullFieldError.checkNotNull(
                oldPassword, r'ChangePasswordRequest', 'oldPassword'),
            newPassword: BuiltValueNullFieldError.checkNotNull(
                newPassword, r'ChangePasswordRequest', 'newPassword'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
