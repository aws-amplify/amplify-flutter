// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_analytics_pinpoint_dart.pinpoint.model.endpoint_batch_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointBatchRequest extends EndpointBatchRequest {
  @override
  final _i2.BuiltList<_i3.EndpointBatchItem> item;

  factory _$EndpointBatchRequest(
          [void Function(EndpointBatchRequestBuilder)? updates]) =>
      (new EndpointBatchRequestBuilder()..update(updates))._build();

  _$EndpointBatchRequest._({required this.item}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        item, r'EndpointBatchRequest', 'item');
  }

  @override
  EndpointBatchRequest rebuild(
          void Function(EndpointBatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndpointBatchRequestBuilder toBuilder() =>
      new EndpointBatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndpointBatchRequest && item == other.item;
  }

  @override
  int get hashCode {
    return $jf($jc(0, item.hashCode));
  }
}

class EndpointBatchRequestBuilder
    implements Builder<EndpointBatchRequest, EndpointBatchRequestBuilder> {
  _$EndpointBatchRequest? _$v;

  _i2.ListBuilder<_i3.EndpointBatchItem>? _item;
  _i2.ListBuilder<_i3.EndpointBatchItem> get item =>
      _$this._item ??= new _i2.ListBuilder<_i3.EndpointBatchItem>();
  set item(_i2.ListBuilder<_i3.EndpointBatchItem>? item) => _$this._item = item;

  EndpointBatchRequestBuilder() {
    EndpointBatchRequest._init(this);
  }

  EndpointBatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndpointBatchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndpointBatchRequest;
  }

  @override
  void update(void Function(EndpointBatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndpointBatchRequest build() => _build();

  _$EndpointBatchRequest _build() {
    _$EndpointBatchRequest _$result;
    try {
      _$result = _$v ?? new _$EndpointBatchRequest._(item: item.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EndpointBatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
