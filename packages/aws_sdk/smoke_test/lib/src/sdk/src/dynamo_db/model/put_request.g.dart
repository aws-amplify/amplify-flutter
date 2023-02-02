// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.put_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutRequest extends PutRequest {
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue> item;

  factory _$PutRequest([void Function(PutRequestBuilder)? updates]) =>
      (new PutRequestBuilder()..update(updates))._build();

  _$PutRequest._({required this.item}) : super._() {
    BuiltValueNullFieldError.checkNotNull(item, r'PutRequest', 'item');
  }

  @override
  PutRequest rebuild(void Function(PutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutRequestBuilder toBuilder() => new PutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutRequest && item == other.item;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutRequestBuilder implements Builder<PutRequest, PutRequestBuilder> {
  _$PutRequest? _$v;

  _i3.MapBuilder<String, _i2.AttributeValue>? _item;
  _i3.MapBuilder<String, _i2.AttributeValue> get item =>
      _$this._item ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set item(_i3.MapBuilder<String, _i2.AttributeValue>? item) =>
      _$this._item = item;

  PutRequestBuilder() {
    PutRequest._init(this);
  }

  PutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _item = $v.item.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutRequest;
  }

  @override
  void update(void Function(PutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutRequest build() => _build();

  _$PutRequest _build() {
    _$PutRequest _$result;
    try {
      _$result = _$v ?? new _$PutRequest._(item: item.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
