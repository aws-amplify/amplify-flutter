// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_batch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndpointBatchRequest extends EndpointBatchRequest {
  @override
  final _i2.BuiltList<EndpointBatchItem> item;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EndpointBatchRequestBuilder
    implements Builder<EndpointBatchRequest, EndpointBatchRequestBuilder> {
  _$EndpointBatchRequest? _$v;

  _i2.ListBuilder<EndpointBatchItem>? _item;
  _i2.ListBuilder<EndpointBatchItem> get item =>
      _$this._item ??= new _i2.ListBuilder<EndpointBatchItem>();
  set item(_i2.ListBuilder<EndpointBatchItem>? item) => _$this._item = item;

  EndpointBatchRequestBuilder();

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
