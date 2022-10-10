// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.batch_get_resource_config_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetResourceConfigResponse extends BatchGetResourceConfigResponse {
  @override
  final _i4.BuiltList<_i2.BaseConfigurationItem>? baseConfigurationItems;
  @override
  final _i4.BuiltList<_i3.ResourceKey>? unprocessedResourceKeys;

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
    return $jf($jc($jc(0, baseConfigurationItems.hashCode),
        unprocessedResourceKeys.hashCode));
  }
}

class BatchGetResourceConfigResponseBuilder
    implements
        Builder<BatchGetResourceConfigResponse,
            BatchGetResourceConfigResponseBuilder> {
  _$BatchGetResourceConfigResponse? _$v;

  _i4.ListBuilder<_i2.BaseConfigurationItem>? _baseConfigurationItems;
  _i4.ListBuilder<_i2.BaseConfigurationItem> get baseConfigurationItems =>
      _$this._baseConfigurationItems ??=
          new _i4.ListBuilder<_i2.BaseConfigurationItem>();
  set baseConfigurationItems(
          _i4.ListBuilder<_i2.BaseConfigurationItem>? baseConfigurationItems) =>
      _$this._baseConfigurationItems = baseConfigurationItems;

  _i4.ListBuilder<_i3.ResourceKey>? _unprocessedResourceKeys;
  _i4.ListBuilder<_i3.ResourceKey> get unprocessedResourceKeys =>
      _$this._unprocessedResourceKeys ??=
          new _i4.ListBuilder<_i3.ResourceKey>();
  set unprocessedResourceKeys(
          _i4.ListBuilder<_i3.ResourceKey>? unprocessedResourceKeys) =>
      _$this._unprocessedResourceKeys = unprocessedResourceKeys;

  BatchGetResourceConfigResponseBuilder() {
    BatchGetResourceConfigResponse._init(this);
  }

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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
