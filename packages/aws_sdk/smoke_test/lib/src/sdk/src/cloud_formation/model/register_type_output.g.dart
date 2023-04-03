// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.register_type_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterTypeOutput extends RegisterTypeOutput {
  @override
  final String? registrationToken;

  factory _$RegisterTypeOutput(
          [void Function(RegisterTypeOutputBuilder)? updates]) =>
      (new RegisterTypeOutputBuilder()..update(updates))._build();

  _$RegisterTypeOutput._({this.registrationToken}) : super._();

  @override
  RegisterTypeOutput rebuild(
          void Function(RegisterTypeOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterTypeOutputBuilder toBuilder() =>
      new RegisterTypeOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterTypeOutput &&
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

class RegisterTypeOutputBuilder
    implements Builder<RegisterTypeOutput, RegisterTypeOutputBuilder> {
  _$RegisterTypeOutput? _$v;

  String? _registrationToken;
  String? get registrationToken => _$this._registrationToken;
  set registrationToken(String? registrationToken) =>
      _$this._registrationToken = registrationToken;

  RegisterTypeOutputBuilder() {
    RegisterTypeOutput._init(this);
  }

  RegisterTypeOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _registrationToken = $v.registrationToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterTypeOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterTypeOutput;
  }

  @override
  void update(void Function(RegisterTypeOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterTypeOutput build() => _build();

  _$RegisterTypeOutput _build() {
    final _$result =
        _$v ?? new _$RegisterTypeOutput._(registrationToken: registrationToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
