// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_get_aggregate_resource_config_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetAggregateResourceConfigResponse
    extends BatchGetAggregateResourceConfigResponse {
  @override
  final _i2.BuiltList<BaseConfigurationItem>? baseConfigurationItems;
  @override
  final _i2.BuiltList<AggregateResourceIdentifier>?
      unprocessedResourceIdentifiers;

  factory _$BatchGetAggregateResourceConfigResponse(
          [void Function(BatchGetAggregateResourceConfigResponseBuilder)?
              updates]) =>
      (new BatchGetAggregateResourceConfigResponseBuilder()..update(updates))
          ._build();

  _$BatchGetAggregateResourceConfigResponse._(
      {this.baseConfigurationItems, this.unprocessedResourceIdentifiers})
      : super._();

  @override
  BatchGetAggregateResourceConfigResponse rebuild(
          void Function(BatchGetAggregateResourceConfigResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetAggregateResourceConfigResponseBuilder toBuilder() =>
      new BatchGetAggregateResourceConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetAggregateResourceConfigResponse &&
        baseConfigurationItems == other.baseConfigurationItems &&
        unprocessedResourceIdentifiers == other.unprocessedResourceIdentifiers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseConfigurationItems.hashCode);
    _$hash = $jc(_$hash, unprocessedResourceIdentifiers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchGetAggregateResourceConfigResponseBuilder
    implements
        Builder<BatchGetAggregateResourceConfigResponse,
            BatchGetAggregateResourceConfigResponseBuilder> {
  _$BatchGetAggregateResourceConfigResponse? _$v;

  _i2.ListBuilder<BaseConfigurationItem>? _baseConfigurationItems;
  _i2.ListBuilder<BaseConfigurationItem> get baseConfigurationItems =>
      _$this._baseConfigurationItems ??=
          new _i2.ListBuilder<BaseConfigurationItem>();
  set baseConfigurationItems(
          _i2.ListBuilder<BaseConfigurationItem>? baseConfigurationItems) =>
      _$this._baseConfigurationItems = baseConfigurationItems;

  _i2.ListBuilder<AggregateResourceIdentifier>? _unprocessedResourceIdentifiers;
  _i2.ListBuilder<AggregateResourceIdentifier>
      get unprocessedResourceIdentifiers =>
          _$this._unprocessedResourceIdentifiers ??=
              new _i2.ListBuilder<AggregateResourceIdentifier>();
  set unprocessedResourceIdentifiers(
          _i2.ListBuilder<AggregateResourceIdentifier>?
              unprocessedResourceIdentifiers) =>
      _$this._unprocessedResourceIdentifiers = unprocessedResourceIdentifiers;

  BatchGetAggregateResourceConfigResponseBuilder();

  BatchGetAggregateResourceConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseConfigurationItems = $v.baseConfigurationItems?.toBuilder();
      _unprocessedResourceIdentifiers =
          $v.unprocessedResourceIdentifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetAggregateResourceConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetAggregateResourceConfigResponse;
  }

  @override
  void update(
      void Function(BatchGetAggregateResourceConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetAggregateResourceConfigResponse build() => _build();

  _$BatchGetAggregateResourceConfigResponse _build() {
    _$BatchGetAggregateResourceConfigResponse _$result;
    try {
      _$result = _$v ??
          new _$BatchGetAggregateResourceConfigResponse._(
              baseConfigurationItems: _baseConfigurationItems?.build(),
              unprocessedResourceIdentifiers:
                  _unprocessedResourceIdentifiers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baseConfigurationItems';
        _baseConfigurationItems?.build();
        _$failedField = 'unprocessedResourceIdentifiers';
        _unprocessedResourceIdentifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetAggregateResourceConfigResponse',
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
