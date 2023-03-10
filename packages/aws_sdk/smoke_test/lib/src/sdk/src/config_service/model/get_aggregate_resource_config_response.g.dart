// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_aggregate_resource_config_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAggregateResourceConfigResponse
    extends GetAggregateResourceConfigResponse {
  @override
  final _i2.ConfigurationItem? configurationItem;

  factory _$GetAggregateResourceConfigResponse(
          [void Function(GetAggregateResourceConfigResponseBuilder)?
              updates]) =>
      (new GetAggregateResourceConfigResponseBuilder()..update(updates))
          ._build();

  _$GetAggregateResourceConfigResponse._({this.configurationItem}) : super._();

  @override
  GetAggregateResourceConfigResponse rebuild(
          void Function(GetAggregateResourceConfigResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAggregateResourceConfigResponseBuilder toBuilder() =>
      new GetAggregateResourceConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAggregateResourceConfigResponse &&
        configurationItem == other.configurationItem;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, configurationItem.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetAggregateResourceConfigResponseBuilder
    implements
        Builder<GetAggregateResourceConfigResponse,
            GetAggregateResourceConfigResponseBuilder> {
  _$GetAggregateResourceConfigResponse? _$v;

  _i2.ConfigurationItemBuilder? _configurationItem;
  _i2.ConfigurationItemBuilder get configurationItem =>
      _$this._configurationItem ??= new _i2.ConfigurationItemBuilder();
  set configurationItem(_i2.ConfigurationItemBuilder? configurationItem) =>
      _$this._configurationItem = configurationItem;

  GetAggregateResourceConfigResponseBuilder() {
    GetAggregateResourceConfigResponse._init(this);
  }

  GetAggregateResourceConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationItem = $v.configurationItem?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAggregateResourceConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAggregateResourceConfigResponse;
  }

  @override
  void update(
      void Function(GetAggregateResourceConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAggregateResourceConfigResponse build() => _build();

  _$GetAggregateResourceConfigResponse _build() {
    _$GetAggregateResourceConfigResponse _$result;
    try {
      _$result = _$v ??
          new _$GetAggregateResourceConfigResponse._(
              configurationItem: _configurationItem?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'configurationItem';
        _configurationItem?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetAggregateResourceConfigResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
