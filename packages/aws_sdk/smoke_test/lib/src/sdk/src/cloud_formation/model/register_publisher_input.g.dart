// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.register_publisher_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterPublisherInput extends RegisterPublisherInput {
  @override
  final bool? acceptTermsAndConditions;
  @override
  final String? connectionArn;

  factory _$RegisterPublisherInput(
          [void Function(RegisterPublisherInputBuilder)? updates]) =>
      (new RegisterPublisherInputBuilder()..update(updates))._build();

  _$RegisterPublisherInput._(
      {this.acceptTermsAndConditions, this.connectionArn})
      : super._();

  @override
  RegisterPublisherInput rebuild(
          void Function(RegisterPublisherInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterPublisherInputBuilder toBuilder() =>
      new RegisterPublisherInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterPublisherInput &&
        acceptTermsAndConditions == other.acceptTermsAndConditions &&
        connectionArn == other.connectionArn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, acceptTermsAndConditions.hashCode);
    _$hash = $jc(_$hash, connectionArn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RegisterPublisherInputBuilder
    implements Builder<RegisterPublisherInput, RegisterPublisherInputBuilder> {
  _$RegisterPublisherInput? _$v;

  bool? _acceptTermsAndConditions;
  bool? get acceptTermsAndConditions => _$this._acceptTermsAndConditions;
  set acceptTermsAndConditions(bool? acceptTermsAndConditions) =>
      _$this._acceptTermsAndConditions = acceptTermsAndConditions;

  String? _connectionArn;
  String? get connectionArn => _$this._connectionArn;
  set connectionArn(String? connectionArn) =>
      _$this._connectionArn = connectionArn;

  RegisterPublisherInputBuilder() {
    RegisterPublisherInput._init(this);
  }

  RegisterPublisherInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _acceptTermsAndConditions = $v.acceptTermsAndConditions;
      _connectionArn = $v.connectionArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterPublisherInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterPublisherInput;
  }

  @override
  void update(void Function(RegisterPublisherInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RegisterPublisherInput build() => _build();

  _$RegisterPublisherInput _build() {
    final _$result = _$v ??
        new _$RegisterPublisherInput._(
            acceptTermsAndConditions: acceptTermsAndConditions,
            connectionArn: connectionArn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
