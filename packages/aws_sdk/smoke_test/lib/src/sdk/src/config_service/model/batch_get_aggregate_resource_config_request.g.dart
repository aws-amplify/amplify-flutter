// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.batch_get_aggregate_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetAggregateResourceConfigRequest
    extends BatchGetAggregateResourceConfigRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i4.BuiltList<_i3.AggregateResourceIdentifier> resourceIdentifiers;

  factory _$BatchGetAggregateResourceConfigRequest(
          [void Function(BatchGetAggregateResourceConfigRequestBuilder)?
              updates]) =>
      (new BatchGetAggregateResourceConfigRequestBuilder()..update(updates))
          ._build();

  _$BatchGetAggregateResourceConfigRequest._(
      {required this.configurationAggregatorName,
      required this.resourceIdentifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'BatchGetAggregateResourceConfigRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(resourceIdentifiers,
        r'BatchGetAggregateResourceConfigRequest', 'resourceIdentifiers');
  }

  @override
  BatchGetAggregateResourceConfigRequest rebuild(
          void Function(BatchGetAggregateResourceConfigRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetAggregateResourceConfigRequestBuilder toBuilder() =>
      new BatchGetAggregateResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetAggregateResourceConfigRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        resourceIdentifiers == other.resourceIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, resourceIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchGetAggregateResourceConfigRequestBuilder
    implements
        Builder<BatchGetAggregateResourceConfigRequest,
            BatchGetAggregateResourceConfigRequestBuilder> {
  _$BatchGetAggregateResourceConfigRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i4.ListBuilder<_i3.AggregateResourceIdentifier>? _resourceIdentifiers;
  _i4.ListBuilder<_i3.AggregateResourceIdentifier> get resourceIdentifiers =>
      _$this._resourceIdentifiers ??=
          new _i4.ListBuilder<_i3.AggregateResourceIdentifier>();
  set resourceIdentifiers(
          _i4.ListBuilder<_i3.AggregateResourceIdentifier>?
              resourceIdentifiers) =>
      _$this._resourceIdentifiers = resourceIdentifiers;

  BatchGetAggregateResourceConfigRequestBuilder() {
    BatchGetAggregateResourceConfigRequest._init(this);
  }

  BatchGetAggregateResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _resourceIdentifiers = $v.resourceIdentifiers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetAggregateResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetAggregateResourceConfigRequest;
  }

  @override
  void update(
      void Function(BatchGetAggregateResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetAggregateResourceConfigRequest build() => _build();

  _$BatchGetAggregateResourceConfigRequest _build() {
    _$BatchGetAggregateResourceConfigRequest _$result;
    try {
      _$result = _$v ??
          new _$BatchGetAggregateResourceConfigRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'BatchGetAggregateResourceConfigRequest',
                      'configurationAggregatorName'),
              resourceIdentifiers: resourceIdentifiers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIdentifiers';
        resourceIdentifiers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetAggregateResourceConfigRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
