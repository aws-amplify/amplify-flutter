// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_pool_add_on_not_enabled_exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPoolAddOnNotEnabledException
    extends UserPoolAddOnNotEnabledException {
  @override
  final String? message;
  @override
  final Map<String, String>? headers;

  factory _$UserPoolAddOnNotEnabledException(
          [void Function(UserPoolAddOnNotEnabledExceptionBuilder)? updates]) =>
      (new UserPoolAddOnNotEnabledExceptionBuilder()..update(updates))._build();

  _$UserPoolAddOnNotEnabledException._({this.message, this.headers})
      : super._();

  @override
  UserPoolAddOnNotEnabledException rebuild(
          void Function(UserPoolAddOnNotEnabledExceptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPoolAddOnNotEnabledExceptionBuilder toBuilder() =>
      new UserPoolAddOnNotEnabledExceptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPoolAddOnNotEnabledException &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UserPoolAddOnNotEnabledExceptionBuilder
    implements
        Builder<UserPoolAddOnNotEnabledException,
            UserPoolAddOnNotEnabledExceptionBuilder> {
  _$UserPoolAddOnNotEnabledException? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  Map<String, String>? _headers;
  Map<String, String>? get headers => _$this._headers;
  set headers(Map<String, String>? headers) => _$this._headers = headers;

  UserPoolAddOnNotEnabledExceptionBuilder();

  UserPoolAddOnNotEnabledExceptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _headers = $v.headers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPoolAddOnNotEnabledException other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserPoolAddOnNotEnabledException;
  }

  @override
  void update(void Function(UserPoolAddOnNotEnabledExceptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPoolAddOnNotEnabledException build() => _build();

  _$UserPoolAddOnNotEnabledException _build() {
    final _$result = _$v ??
        new _$UserPoolAddOnNotEnabledException._(
            message: message, headers: headers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
