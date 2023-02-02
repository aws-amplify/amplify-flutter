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
    var _$hash = 0;
    _$hash = $jc(_$hash, payer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
