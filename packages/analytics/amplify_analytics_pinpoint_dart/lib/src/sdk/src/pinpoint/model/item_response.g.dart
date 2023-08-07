// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ItemResponse extends ItemResponse {
  @override
  final EndpointItemResponse? endpointItemResponse;
  @override
  final _i2.BuiltMap<String, EventItemResponse>? eventsItemResponse;

  factory _$ItemResponse([void Function(ItemResponseBuilder)? updates]) =>
      (new ItemResponseBuilder()..update(updates))._build();

  _$ItemResponse._({this.endpointItemResponse, this.eventsItemResponse})
      : super._();

  @override
  ItemResponse rebuild(void Function(ItemResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemResponseBuilder toBuilder() => new ItemResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemResponse &&
        endpointItemResponse == other.endpointItemResponse &&
        eventsItemResponse == other.eventsItemResponse;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endpointItemResponse.hashCode);
    _$hash = $jc(_$hash, eventsItemResponse.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ItemResponseBuilder
    implements Builder<ItemResponse, ItemResponseBuilder> {
  _$ItemResponse? _$v;

  EndpointItemResponseBuilder? _endpointItemResponse;
  EndpointItemResponseBuilder get endpointItemResponse =>
      _$this._endpointItemResponse ??= new EndpointItemResponseBuilder();
  set endpointItemResponse(EndpointItemResponseBuilder? endpointItemResponse) =>
      _$this._endpointItemResponse = endpointItemResponse;

  _i2.MapBuilder<String, EventItemResponse>? _eventsItemResponse;
  _i2.MapBuilder<String, EventItemResponse> get eventsItemResponse =>
      _$this._eventsItemResponse ??=
          new _i2.MapBuilder<String, EventItemResponse>();
  set eventsItemResponse(
          _i2.MapBuilder<String, EventItemResponse>? eventsItemResponse) =>
      _$this._eventsItemResponse = eventsItemResponse;

  ItemResponseBuilder();

  ItemResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endpointItemResponse = $v.endpointItemResponse?.toBuilder();
      _eventsItemResponse = $v.eventsItemResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemResponse;
  }

  @override
  void update(void Function(ItemResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemResponse build() => _build();

  _$ItemResponse _build() {
    _$ItemResponse _$result;
    try {
      _$result = _$v ??
          new _$ItemResponse._(
              endpointItemResponse: _endpointItemResponse?.build(),
              eventsItemResponse: _eventsItemResponse?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'endpointItemResponse';
        _endpointItemResponse?.build();
        _$failedField = 'eventsItemResponse';
        _eventsItemResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ItemResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
