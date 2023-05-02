// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.describe_type_registration_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeTypeRegistrationInput extends DescribeTypeRegistrationInput {
  @override
  final String registrationToken;

  factory _$DescribeTypeRegistrationInput(
          [void Function(DescribeTypeRegistrationInputBuilder)? updates]) =>
      (new DescribeTypeRegistrationInputBuilder()..update(updates))._build();

  _$DescribeTypeRegistrationInput._({required this.registrationToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(registrationToken,
        r'DescribeTypeRegistrationInput', 'registrationToken');
  }

  @override
  DescribeTypeRegistrationInput rebuild(
          void Function(DescribeTypeRegistrationInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeTypeRegistrationInputBuilder toBuilder() =>
      new DescribeTypeRegistrationInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeTypeRegistrationInput &&
        registrationToken == other.registrationToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, registrationToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DescribeTypeRegistrationInputBuilder
    implements
        Builder<DescribeTypeRegistrationInput,
            DescribeTypeRegistrationInputBuilder> {
  _$DescribeTypeRegistrationInput? _$v;

  String? _registrationToken;
  String? get registrationToken => _$this._registrationToken;
  set registrationToken(String? registrationToken) =>
      _$this._registrationToken = registrationToken;

  DescribeTypeRegistrationInputBuilder() {
    DescribeTypeRegistrationInput._init(this);
  }

  DescribeTypeRegistrationInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registrationToken = $v.registrationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeTypeRegistrationInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeTypeRegistrationInput;
  }

  @override
  void update(void Function(DescribeTypeRegistrationInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeTypeRegistrationInput build() => _build();

  _$DescribeTypeRegistrationInput _build() {
    final _$result = _$v ??
        new _$DescribeTypeRegistrationInput._(
            registrationToken: BuiltValueNullFieldError.checkNotNull(
                registrationToken,
                r'DescribeTypeRegistrationInput',
                'registrationToken'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
