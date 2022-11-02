// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.delete_configuration_aggregator_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteConfigurationAggregatorRequest
    extends DeleteConfigurationAggregatorRequest {
  @override
  final String configurationAggregatorName;

  factory _$DeleteConfigurationAggregatorRequest(
          [void Function(DeleteConfigurationAggregatorRequestBuilder)?
              updates]) =>
      (new DeleteConfigurationAggregatorRequestBuilder()..update(updates))
          ._build();

  _$DeleteConfigurationAggregatorRequest._(
      {required this.configurationAggregatorName})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationAggregatorName,
        r'DeleteConfigurationAggregatorRequest', 'configurationAggregatorName');
  }

  @override
  DeleteConfigurationAggregatorRequest rebuild(
          void Function(DeleteConfigurationAggregatorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteConfigurationAggregatorRequestBuilder toBuilder() =>
      new DeleteConfigurationAggregatorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteConfigurationAggregatorRequest &&
        configurationAggregatorName == other.configurationAggregatorName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, configurationAggregatorName.hashCode));
  }
}

class DeleteConfigurationAggregatorRequestBuilder
    implements
        Builder<DeleteConfigurationAggregatorRequest,
            DeleteConfigurationAggregatorRequestBuilder> {
  _$DeleteConfigurationAggregatorRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  DeleteConfigurationAggregatorRequestBuilder() {
    DeleteConfigurationAggregatorRequest._init(this);
  }

  DeleteConfigurationAggregatorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteConfigurationAggregatorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteConfigurationAggregatorRequest;
  }

  @override
  void update(
      void Function(DeleteConfigurationAggregatorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteConfigurationAggregatorRequest build() => _build();

  _$DeleteConfigurationAggregatorRequest _build() {
    final _$result = _$v ??
        new _$DeleteConfigurationAggregatorRequest._(
            configurationAggregatorName: BuiltValueNullFieldError.checkNotNull(
                configurationAggregatorName,
                r'DeleteConfigurationAggregatorRequest',
                'configurationAggregatorName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
