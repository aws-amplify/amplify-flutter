// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.create_user_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateUserResponse extends CreateUserResponse {
  @override
  final _i2.User? user;

  factory _$CreateUserResponse(
          [void Function(CreateUserResponseBuilder)? updates]) =>
      (new CreateUserResponseBuilder()..update(updates))._build();

  _$CreateUserResponse._({this.user}) : super._();

  @override
  CreateUserResponse rebuild(
          void Function(CreateUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateUserResponseBuilder toBuilder() =>
      new CreateUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateUserResponse && user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateUserResponseBuilder
    implements Builder<CreateUserResponse, CreateUserResponseBuilder> {
  _$CreateUserResponse? _$v;

  _i2.UserBuilder? _user;
  _i2.UserBuilder get user => _$this._user ??= new _i2.UserBuilder();
  set user(_i2.UserBuilder? user) => _$this._user = user;

  CreateUserResponseBuilder() {
    CreateUserResponse._init(this);
  }

  CreateUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateUserResponse;
  }

  @override
  void update(void Function(CreateUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateUserResponse build() => _build();

  _$CreateUserResponse _build() {
    _$CreateUserResponse _$result;
    try {
      _$result = _$v ?? new _$CreateUserResponse._(user: _user?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
