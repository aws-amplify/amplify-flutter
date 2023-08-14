// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_get_resource_config_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetResourceConfigResponse extends BatchGetResourceConfigResponse {
  @override
  final _i2.BuiltList<BaseConfigurationItem>? baseConfigurationItems;
  @override
  final _i2.BuiltList<ResourceKey>? unprocessedResourceKeys;

  factory _$BatchGetResourceConfigResponse(
          [void Function(BatchGetResourceConfigResponseBuilder)? updates]) =>
      (new BatchGetResourceConfigResponseBuilder()..update(updates))._build();

  _$BatchGetResourceConfigResponse._(
      {this.baseConfigurationItems, this.unprocessedResourceKeys})
      : super._();

  @override
  BatchGetResourceConfigResponse rebuild(
          void Function(BatchGetResourceConfigResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetResourceConfigResponseBuilder toBuilder() =>
      new BatchGetResourceConfigResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetResourceConfigResponse &&
        baseConfigurationItems == other.baseConfigurationItems &&
        unprocessedResourceKeys == other.unprocessedResourceKeys;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, baseConfigurationItems.hashCode);
    _$hash = $jc(_$hash, unprocessedResourceKeys.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class BatchGetResourceConfigResponseBuilder
    implements
        Builder<BatchGetResourceConfigResponse,
            BatchGetResourceConfigResponseBuilder> {
  _$BatchGetResourceConfigResponse? _$v;

  _i2.ListBuilder<BaseConfigurationItem>? _baseConfigurationItems;
  _i2.ListBuilder<BaseConfigurationItem> get baseConfigurationItems =>
      _$this._baseConfigurationItems ??=
          new _i2.ListBuilder<BaseConfigurationItem>();
  set baseConfigurationItems(
          _i2.ListBuilder<BaseConfigurationItem>? baseConfigurationItems) =>
      _$this._baseConfigurationItems = baseConfigurationItems;

  _i2.ListBuilder<ResourceKey>? _unprocessedResourceKeys;
  _i2.ListBuilder<ResourceKey> get unprocessedResourceKeys =>
      _$this._unprocessedResourceKeys ??= new _i2.ListBuilder<ResourceKey>();
  set unprocessedResourceKeys(
          _i2.ListBuilder<ResourceKey>? unprocessedResourceKeys) =>
      _$this._unprocessedResourceKeys = unprocessedResourceKeys;

  BatchGetResourceConfigResponseBuilder();

  BatchGetResourceConfigResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baseConfigurationItems = $v.baseConfigurationItems?.toBuilder();
      _unprocessedResourceKeys = $v.unprocessedResourceKeys?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetResourceConfigResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetResourceConfigResponse;
  }

  @override
  void update(void Function(BatchGetResourceConfigResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetResourceConfigResponse build() => _build();

  _$BatchGetResourceConfigResponse _build() {
    _$BatchGetResourceConfigResponse _$result;
    try {
      _$result = _$v ??
          new _$BatchGetResourceConfigResponse._(
              baseConfigurationItems: _baseConfigurationItems?.build(),
              unprocessedResourceKeys: _unprocessedResourceKeys?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'baseConfigurationItems';
        _baseConfigurationItems?.build();
        _$failedField = 'unprocessedResourceKeys';
        _unprocessedResourceKeys?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetResourceConfigResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
