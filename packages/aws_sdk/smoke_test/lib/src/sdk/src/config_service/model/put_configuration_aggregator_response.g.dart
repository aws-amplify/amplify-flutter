// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_configuration_aggregator_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConfigurationAggregatorResponse
    extends PutConfigurationAggregatorResponse {
  @override
  final _i2.ConfigurationAggregator? configurationAggregator;

  factory _$PutConfigurationAggregatorResponse(
          [void Function(PutConfigurationAggregatorResponseBuilder)?
              updates]) =>
      (new PutConfigurationAggregatorResponseBuilder()..update(updates))
          ._build();

  _$PutConfigurationAggregatorResponse._({this.configurationAggregator})
      : super._();

  @override
  PutConfigurationAggregatorResponse rebuild(
          void Function(PutConfigurationAggregatorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConfigurationAggregatorResponseBuilder toBuilder() =>
      new PutConfigurationAggregatorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConfigurationAggregatorResponse &&
        configurationAggregator == other.configurationAggregator;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregator.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutConfigurationAggregatorResponseBuilder
    implements
        Builder<PutConfigurationAggregatorResponse,
            PutConfigurationAggregatorResponseBuilder> {
  _$PutConfigurationAggregatorResponse? _$v;

  _i2.ConfigurationAggregatorBuilder? _configurationAggregator;
  _i2.ConfigurationAggregatorBuilder get configurationAggregator =>
      _$this._configurationAggregator ??=
          new _i2.ConfigurationAggregatorBuilder();
  set configurationAggregator(
          _i2.ConfigurationAggregatorBuilder? configurationAggregator) =>
      _$this._configurationAggregator = configurationAggregator;

  PutConfigurationAggregatorResponseBuilder() {
    PutConfigurationAggregatorResponse._init(this);
  }

  PutConfigurationAggregatorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregator = $v.configurationAggregator?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConfigurationAggregatorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConfigurationAggregatorResponse;
  }

  @override
  void update(
      void Function(PutConfigurationAggregatorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConfigurationAggregatorResponse build() => _build();

  _$PutConfigurationAggregatorResponse _build() {
    _$PutConfigurationAggregatorResponse _$result;
    try {
      _$result = _$v ??
          new _$PutConfigurationAggregatorResponse._(
              configurationAggregator: _configurationAggregator?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationAggregator';
        _configurationAggregator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutConfigurationAggregatorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
