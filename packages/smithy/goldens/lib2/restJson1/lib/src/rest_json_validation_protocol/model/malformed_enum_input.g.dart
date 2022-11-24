// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_validation_protocol.model.malformed_enum_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedEnumInput extends MalformedEnumInput {
  @override
  final _i5.BuiltList<_i3.EnumString>? list;
  @override
  final _i5.BuiltMap<_i3.EnumString, _i3.EnumString>? map;
  @override
  final _i3.EnumString? string;
  @override
  final _i4.EnumUnion? union;

  factory _$MalformedEnumInput(
          [void Function(MalformedEnumInputBuilder)? updates]) =>
      (new MalformedEnumInputBuilder()..update(updates))._build();

  _$MalformedEnumInput._({this.list, this.map, this.string, this.union})
      : super._();

  @override
  MalformedEnumInput rebuild(
          void Function(MalformedEnumInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedEnumInputBuilder toBuilder() =>
      new MalformedEnumInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedEnumInput &&
        list == other.list &&
        map == other.map &&
        string == other.string &&
        union == other.union;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, list.hashCode), map.hashCode), string.hashCode),
        union.hashCode));
  }
}

class MalformedEnumInputBuilder
    implements Builder<MalformedEnumInput, MalformedEnumInputBuilder> {
  _$MalformedEnumInput? _$v;

  _i5.ListBuilder<_i3.EnumString>? _list;
  _i5.ListBuilder<_i3.EnumString> get list =>
      _$this._list ??= new _i5.ListBuilder<_i3.EnumString>();
  set list(_i5.ListBuilder<_i3.EnumString>? list) => _$this._list = list;

  _i5.MapBuilder<_i3.EnumString, _i3.EnumString>? _map;
  _i5.MapBuilder<_i3.EnumString, _i3.EnumString> get map =>
      _$this._map ??= new _i5.MapBuilder<_i3.EnumString, _i3.EnumString>();
  set map(_i5.MapBuilder<_i3.EnumString, _i3.EnumString>? map) =>
      _$this._map = map;

  _i3.EnumString? _string;
  _i3.EnumString? get string => _$this._string;
  set string(_i3.EnumString? string) => _$this._string = string;

  _i4.EnumUnion? _union;
  _i4.EnumUnion? get union => _$this._union;
  set union(_i4.EnumUnion? union) => _$this._union = union;

  MalformedEnumInputBuilder() {
    MalformedEnumInput._init(this);
  }

  MalformedEnumInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _list = $v.list?.toBuilder();
      _map = $v.map?.toBuilder();
      _string = $v.string;
      _union = $v.union;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedEnumInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedEnumInput;
  }

  @override
  void update(void Function(MalformedEnumInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedEnumInput build() => _build();

  _$MalformedEnumInput _build() {
    _$MalformedEnumInput _$result;
    try {
      _$result = _$v ??
          new _$MalformedEnumInput._(
              list: _list?.build(),
              map: _map?.build(),
              string: string,
              union: union);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'list';
        _list?.build();
        _$failedField = 'map';
        _map?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MalformedEnumInput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
