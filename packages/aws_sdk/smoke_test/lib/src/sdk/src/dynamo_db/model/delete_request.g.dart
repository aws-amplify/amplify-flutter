// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.delete_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteRequest extends DeleteRequest {
  @override
  final _i3.BuiltMap<String, _i2.AttributeValue> key;

  factory _$DeleteRequest([void Function(DeleteRequestBuilder)? updates]) =>
      (new DeleteRequestBuilder()..update(updates))._build();

  _$DeleteRequest._({required this.key}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, r'DeleteRequest', 'key');
  }

  @override
  DeleteRequest rebuild(void Function(DeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteRequestBuilder toBuilder() => new DeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteRequest && key == other.key;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteRequestBuilder
    implements Builder<DeleteRequest, DeleteRequestBuilder> {
  _$DeleteRequest? _$v;

  _i3.MapBuilder<String, _i2.AttributeValue>? _key;
  _i3.MapBuilder<String, _i2.AttributeValue> get key =>
      _$this._key ??= new _i3.MapBuilder<String, _i2.AttributeValue>();
  set key(_i3.MapBuilder<String, _i2.AttributeValue>? key) => _$this._key = key;

  DeleteRequestBuilder() {
    DeleteRequest._init(this);
  }

  DeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteRequest;
  }

  @override
  void update(void Function(DeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteRequest build() => _build();

  _$DeleteRequest _build() {
    _$DeleteRequest _$result;
    try {
      _$result = _$v ?? new _$DeleteRequest._(key: key.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'key';
        key.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
