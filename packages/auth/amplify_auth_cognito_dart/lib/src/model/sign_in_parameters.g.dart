// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_parameters.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SignInParameters> _$signInParametersSerializer =
    _$SignInParametersSerializer();

class _$SignInParametersSerializer
    implements StructuredSerializer<SignInParameters> {
  @override
  final Iterable<Type> types = const [SignInParameters, _$SignInParameters];
  @override
  final String wireName = 'SignInParameters';

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    SignInParameters object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = <Object?>[
      'username',
      serializers.serialize(
        object.username,
        specifiedType: const FullType(String),
      ),
    ];
    Object? value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    value = object.preferredFirstFactor;
    if (value != null) {
      result
        ..add('preferredFirstFactor')
        ..add(
          serializers.serialize(
            value,
            specifiedType: const FullType(AuthFactorType),
          ),
        );
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(
          serializers.serialize(value, specifiedType: const FullType(String)),
        );
    }
    return result;
  }

  @override
  SignInParameters deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignInParametersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )!
                  as String;
          break;
        case 'password':
          result.password =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
          break;
        case 'preferredFirstFactor':
          result.preferredFirstFactor =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(AuthFactorType),
                  )
                  as AuthFactorType?;
          break;
        case 'session':
          result.session =
              serializers.deserialize(
                    value,
                    specifiedType: const FullType(String),
                  )
                  as String?;
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
  @override
  final AuthFactorType? preferredFirstFactor;
  @override
  final String? session;

  factory _$SignInParameters([
    void Function(SignInParametersBuilder)? updates,
  ]) => (SignInParametersBuilder()..update(updates))._build();

  _$SignInParameters._({
    required this.username,
    this.password,
    this.preferredFirstFactor,
    this.session,
  }) : super._();
  @override
  SignInParameters rebuild(void Function(SignInParametersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInParametersBuilder toBuilder() =>
      SignInParametersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInParameters &&
        username == other.username &&
        password == other.password &&
        preferredFirstFactor == other.preferredFirstFactor &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, preferredFirstFactor.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignInParameters')
          ..add('username', username)
          ..add('password', password)
          ..add('preferredFirstFactor', preferredFirstFactor)
          ..add('session', session))
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

  AuthFactorType? _preferredFirstFactor;
  AuthFactorType? get preferredFirstFactor => _$this._preferredFirstFactor;
  set preferredFirstFactor(AuthFactorType? preferredFirstFactor) =>
      _$this._preferredFirstFactor = preferredFirstFactor;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  SignInParametersBuilder();

  SignInParametersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _password = $v.password;
      _preferredFirstFactor = $v.preferredFirstFactor;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInParameters other) {
    _$v = other as _$SignInParameters;
  }

  @override
  void update(void Function(SignInParametersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignInParameters build() => _build();

  _$SignInParameters _build() {
    final _$result =
        _$v ??
        _$SignInParameters._(
          username: BuiltValueNullFieldError.checkNotNull(
            username,
            r'SignInParameters',
            'username',
          ),
          password: password,
          preferredFirstFactor: preferredFirstFactor,
          session: session,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
