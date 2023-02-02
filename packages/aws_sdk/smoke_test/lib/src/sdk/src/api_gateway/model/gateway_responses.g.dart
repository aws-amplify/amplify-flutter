// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.gateway_responses;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GatewayResponses extends GatewayResponses {
  @override
  final _i3.BuiltList<_i2.GatewayResponse>? items;
  @override
  final String? position;

  factory _$GatewayResponses(
          [void Function(GatewayResponsesBuilder)? updates]) =>
      (new GatewayResponsesBuilder()..update(updates))._build();

  _$GatewayResponses._({this.items, this.position}) : super._();

  @override
  GatewayResponses rebuild(void Function(GatewayResponsesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GatewayResponsesBuilder toBuilder() =>
      new GatewayResponsesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GatewayResponses &&
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

class GatewayResponsesBuilder
    implements Builder<GatewayResponses, GatewayResponsesBuilder> {
  _$GatewayResponses? _$v;

  _i3.ListBuilder<_i2.GatewayResponse>? _items;
  _i3.ListBuilder<_i2.GatewayResponse> get items =>
      _$this._items ??= new _i3.ListBuilder<_i2.GatewayResponse>();
  set items(_i3.ListBuilder<_i2.GatewayResponse>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  GatewayResponsesBuilder() {
    GatewayResponses._init(this);
  }

  GatewayResponsesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GatewayResponses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GatewayResponses;
  }

  @override
  void update(void Function(GatewayResponsesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GatewayResponses build() => _build();

  _$GatewayResponses _build() {
    _$GatewayResponses _$result;
    try {
      _$result = _$v ??
          new _$GatewayResponses._(items: _items?.build(), position: position);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GatewayResponses', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
