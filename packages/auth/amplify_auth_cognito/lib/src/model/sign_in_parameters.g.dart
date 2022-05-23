// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_auth_cognito.model.sign_in_parameters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignInParameters> _$signInParametersSerializer =
    new _$SignInParametersSerializer();

class _$SignInParametersSerializer
    implements StructuredSerializer<SignInParameters> {
  @override
  final Iterable<Type> types = const [SignInParameters, _$SignInParameters];
  @override
  final String wireName = 'SignInParameters';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignInParameters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignInParameters deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignInParametersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SignInParameters extends SignInParameters {
  @override
  final String username;
  @override
  final String? password;

  factory _$SignInParameters(
          [void Function(SignInParametersBuilder)? updates]) =>
      (new SignInParametersBuilder()..update(updates))._build();

  _$SignInParameters._({required this.username, this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'SignInParameters', 'username');
  }

  @override
  SignInParameters rebuild(void Function(SignInParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInParametersBuilder toBuilder() =>
      new SignInParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInParameters &&
        username == other.username &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignInParameters')
          ..add('username', username)
          ..add('password', password))
        .toString();
  }
}

class SignInParametersBuilder
    implements Builder<SignInParameters, SignInParametersBuilder> {
  _$SignInParameters? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SignInParametersBuilder();

  SignInParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInParameters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInParameters;
  }

  @override
  void update(void Function(SignInParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInParameters build() => _build();

  _$SignInParameters _build() {
    final _$result = _$v ??
        new _$SignInParameters._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'SignInParameters', 'username'),
            password: password);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
