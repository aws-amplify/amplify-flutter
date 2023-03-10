// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.request_validators;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RequestValidators extends RequestValidators {
  @override
  final _i3.BuiltList<_i2.RequestValidator>? items;
  @override
  final String? position;

  factory _$RequestValidators(
          [void Function(RequestValidatorsBuilder)? updates]) =>
      (new RequestValidatorsBuilder()..update(updates))._build();

  _$RequestValidators._({this.items, this.position}) : super._();

  @override
  RequestValidators rebuild(void Function(RequestValidatorsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestValidatorsBuilder toBuilder() =>
      new RequestValidatorsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestValidators &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RequestValidatorsBuilder
    implements Builder<RequestValidators, RequestValidatorsBuilder> {
  _$RequestValidators? _$v;

  _i3.ListBuilder<_i2.RequestValidator>? _items;
  _i3.ListBuilder<_i2.RequestValidator> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.RequestValidator>();
  set items(_i3.ListBuilder<_i2.RequestValidator>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  RequestValidatorsBuilder() {
    RequestValidators._init(this);
  }

  RequestValidatorsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestValidators other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestValidators;
  }

  @override
  void update(void Function(RequestValidatorsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestValidators build() => _build();

  _$RequestValidators _build() {
    _$RequestValidators _$result;
    try {
      _$result = _$v ??
          new _$RequestValidators._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RequestValidators', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
