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
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
