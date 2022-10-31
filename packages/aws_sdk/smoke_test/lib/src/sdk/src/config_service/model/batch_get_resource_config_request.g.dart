// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.batch_get_resource_config_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatchGetResourceConfigRequest extends BatchGetResourceConfigRequest {
  @override
  final _i4.BuiltList<_i3.ResourceKey> resourceKeys;

  factory _$BatchGetResourceConfigRequest(
          [void Function(BatchGetResourceConfigRequestBuilder)? updates]) =>
      (new BatchGetResourceConfigRequestBuilder()..update(updates))._build();

  _$BatchGetResourceConfigRequest._({required this.resourceKeys}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceKeys, r'BatchGetResourceConfigRequest', 'resourceKeys');
  }

  @override
  BatchGetResourceConfigRequest rebuild(
          void Function(BatchGetResourceConfigRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatchGetResourceConfigRequestBuilder toBuilder() =>
      new BatchGetResourceConfigRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatchGetResourceConfigRequest &&
        resourceKeys == other.resourceKeys;
  }

  @override
  int get hashCode {
    return $jf($jc(0, resourceKeys.hashCode));
  }
}

class BatchGetResourceConfigRequestBuilder
    implements
        Builder<BatchGetResourceConfigRequest,
            BatchGetResourceConfigRequestBuilder> {
  _$BatchGetResourceConfigRequest? _$v;

  _i4.ListBuilder<_i3.ResourceKey>? _resourceKeys;
  _i4.ListBuilder<_i3.ResourceKey> get resourceKeys =>
      _$this._resourceKeys ??= new _i4.ListBuilder<_i3.ResourceKey>();
  set resourceKeys(_i4.ListBuilder<_i3.ResourceKey>? resourceKeys) =>
      _$this._resourceKeys = resourceKeys;

  BatchGetResourceConfigRequestBuilder() {
    BatchGetResourceConfigRequest._init(this);
  }

  BatchGetResourceConfigRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _resourceKeys = $v.resourceKeys.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatchGetResourceConfigRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatchGetResourceConfigRequest;
  }

  @override
  void update(void Function(BatchGetResourceConfigRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatchGetResourceConfigRequest build() => _build();

  _$BatchGetResourceConfigRequest _build() {
    _$BatchGetResourceConfigRequest _$result;
    try {
      _$result = _$v ??
          new _$BatchGetResourceConfigRequest._(
              resourceKeys: resourceKeys.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceKeys';
        resourceKeys.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BatchGetResourceConfigRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
