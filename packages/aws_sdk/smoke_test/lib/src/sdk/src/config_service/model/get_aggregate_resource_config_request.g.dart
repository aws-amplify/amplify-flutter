// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateResourceConfigRequest
    extends GetAggregateResourceConfigRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.AggregateResourceIdentifier resourceIdentifier;

  factory _$GetAggregateResourceConfigRequest(
          [void Function(GetAggregateResourceConfigRequestBuilder)? updates]) =>
      (new GetAggregateResourceConfigRequestBuilder()..update(updates))
          ._build();

  _$GetAggregateResourceConfigRequest._(
      {required this.configurationAggregatorName,
      required this.resourceIdentifier})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(configurationAggregatorName,
        r'GetAggregateResourceConfigRequest', 'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(resourceIdentifier,
        r'GetAggregateResourceConfigRequest', 'resourceIdentifier');
  }

  @override
  GetAggregateResourceConfigRequest rebuild(
          void Function(GetAggregateResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateResourceConfigRequestBuilder toBuilder() =>
      new GetAggregateResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateResourceConfigRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        resourceIdentifier == other.resourceIdentifier;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationAggregatorName.hashCode);
    _$hash = $jc(_$hash, resourceIdentifier.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateResourceConfigRequestBuilder
    implements
        Builder<GetAggregateResourceConfigRequest,
            GetAggregateResourceConfigRequestBuilder> {
  _$GetAggregateResourceConfigRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.AggregateResourceIdentifierBuilder? _resourceIdentifier;
  _i3.AggregateResourceIdentifierBuilder get resourceIdentifier =>
      _$this._resourceIdentifier ??=
          new _i3.AggregateResourceIdentifierBuilder();
  set resourceIdentifier(
          _i3.AggregateResourceIdentifierBuilder? resourceIdentifier) =>
      _$this._resourceIdentifier = resourceIdentifier;

  GetAggregateResourceConfigRequestBuilder() {
    GetAggregateResourceConfigRequest._init(this);
  }

  GetAggregateResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _resourceIdentifier = $v.resourceIdentifier.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateResourceConfigRequest;
  }

  @override
  void update(
      void Function(GetAggregateResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateResourceConfigRequest build() => _build();

  _$GetAggregateResourceConfigRequest _build() {
    _$GetAggregateResourceConfigRequest _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateResourceConfigRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'GetAggregateResourceConfigRequest',
                      'configurationAggregatorName'),
              resourceIdentifier: resourceIdentifier.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceIdentifier';
        resourceIdentifier.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateResourceConfigRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
