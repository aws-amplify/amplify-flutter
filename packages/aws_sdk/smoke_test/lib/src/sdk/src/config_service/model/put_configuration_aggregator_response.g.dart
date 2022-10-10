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
    return $jf($jc(0, configurationAggregator.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
