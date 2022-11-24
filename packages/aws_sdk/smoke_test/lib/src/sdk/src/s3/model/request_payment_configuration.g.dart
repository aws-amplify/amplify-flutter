// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.request_payment_configuration;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestPaymentConfiguration extends RequestPaymentConfiguration {
  @override
  final _i2.Payer payer;

  factory _$RequestPaymentConfiguration(
          [void Function(RequestPaymentConfigurationBuilder)? updates]) =>
      (new RequestPaymentConfigurationBuilder()..update(updates))._build();

  _$RequestPaymentConfiguration._({required this.payer}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        payer, r'RequestPaymentConfiguration', 'payer');
  }

  @override
  RequestPaymentConfiguration rebuild(
          void Function(RequestPaymentConfigurationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestPaymentConfigurationBuilder toBuilder() =>
      new RequestPaymentConfigurationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestPaymentConfiguration && payer == other.payer;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payer.hashCode));
  }
}

class RequestPaymentConfigurationBuilder
    implements
        Builder<RequestPaymentConfiguration,
            RequestPaymentConfigurationBuilder> {
  _$RequestPaymentConfiguration? _$v;

  _i2.Payer? _payer;
  _i2.Payer? get payer => _$this._payer;
  set payer(_i2.Payer? payer) => _$this._payer = payer;

  RequestPaymentConfigurationBuilder() {
    RequestPaymentConfiguration._init(this);
  }

  RequestPaymentConfigurationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payer = $v.payer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestPaymentConfiguration other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestPaymentConfiguration;
  }

  @override
  void update(void Function(RequestPaymentConfigurationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestPaymentConfiguration build() => _build();

  _$RequestPaymentConfiguration _build() {
    final _$result = _$v ??
        new _$RequestPaymentConfiguration._(
            payer: BuiltValueNullFieldError.checkNotNull(
                payer, r'RequestPaymentConfiguration', 'payer'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
