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
    return $jf($jc(0, configurationItem.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
