// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.api_gateway.model.rest_apis;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RestApis extends RestApis {
  @override
  final _i3.BuiltList<_i2.RestApi>? items;
  @override
  final String? position;

  factory _$RestApis([void Function(RestApisBuilder)? updates]) =>
      (new RestApisBuilder()..update(updates))._build();

  _$RestApis._({this.items, this.position}) : super._();

  @override
  RestApis rebuild(void Function(RestApisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestApisBuilder toBuilder() => new RestApisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestApis &&
        items == other.items &&
        position == other.position;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, items.hashCode), position.hashCode));
  }
}

class RestApisBuilder implements Builder<RestApis, RestApisBuilder> {
  _$RestApis? _$v;

  _i3.ListBuilder<_i2.RestApi>? _items;
  _i3.ListBuilder<_i2.RestApi> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.RestApi>();
  set items(_i3.ListBuilder<_i2.RestApi>? items) => _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  RestApisBuilder() {
    RestApis._init(this);
  }

  RestApisBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestApis other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestApis;
  }

  @override
  void update(void Function(RestApisBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestApis build() => _build();

  _$RestApis _build() {
    _$RestApis _$result;
    try {
      _$result =
          _$v ?? new _$RestApis._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestApis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
