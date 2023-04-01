// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.get_user_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUserResponse extends GetUserResponse {
  @override
  final _i2.User user;

  factory _$GetUserResponse([void Function(GetUserResponseBuilder)? updates]) =>
      (new GetUserResponseBuilder()..update(updates))._build();

  _$GetUserResponse._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(user, r'GetUserResponse', 'user');
  }

  @override
  GetUserResponse rebuild(void Function(GetUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserResponseBuilder toBuilder() =>
      new GetUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserResponse && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetUserResponseBuilder
    implements Builder<GetUserResponse, GetUserResponseBuilder> {
  _$GetUserResponse? _$v;

  _i2.UserBuilder? _user;
  _i2.UserBuilder get user => _$this._user ??= new _i2.UserBuilder();
  set user(_i2.UserBuilder? user) => _$this._user = user;

  GetUserResponseBuilder() {
    GetUserResponse._init(this);
  }

  GetUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserResponse;
  }

  @override
  void update(void Function(GetUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetUserResponse build() => _build();

  _$GetUserResponse _build() {
    _$GetUserResponse _$result;
    try {
      _$result = _$v ?? new _$GetUserResponse._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
