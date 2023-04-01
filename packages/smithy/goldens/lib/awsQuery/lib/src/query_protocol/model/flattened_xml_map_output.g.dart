// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_query_v1.query_protocol.model.flattened_xml_map_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlattenedXmlMapOutput extends FlattenedXmlMapOutput {
  @override
  final _i3.BuiltMap<String, _i2.FooEnum>? myMap;

  factory _$FlattenedXmlMapOutput(
          [void Function(FlattenedXmlMapOutputBuilder)? updates]) =>
      (new FlattenedXmlMapOutputBuilder()..update(updates))._build();

  _$FlattenedXmlMapOutput._({this.myMap}) : super._();

  @override
  FlattenedXmlMapOutput rebuild(
          void Function(FlattenedXmlMapOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlattenedXmlMapOutputBuilder toBuilder() =>
      new FlattenedXmlMapOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlattenedXmlMapOutput && myMap == other.myMap;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, myMap.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class FlattenedXmlMapOutputBuilder
    implements Builder<FlattenedXmlMapOutput, FlattenedXmlMapOutputBuilder> {
  _$FlattenedXmlMapOutput? _$v;

  _i3.MapBuilder<String, _i2.FooEnum>? _myMap;
  _i3.MapBuilder<String, _i2.FooEnum> get myMap =>
      _$this._myMap ??= new _i3.MapBuilder<String, _i2.FooEnum>();
  set myMap(_i3.MapBuilder<String, _i2.FooEnum>? myMap) =>
      _$this._myMap = myMap;

  FlattenedXmlMapOutputBuilder() {
    FlattenedXmlMapOutput._init(this);
  }

  FlattenedXmlMapOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _myMap = $v.myMap?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlattenedXmlMapOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FlattenedXmlMapOutput;
  }

  @override
  void update(void Function(FlattenedXmlMapOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlattenedXmlMapOutput build() => _build();

  _$FlattenedXmlMapOutput _build() {
    _$FlattenedXmlMapOutput _$result;
    try {
      _$result = _$v ?? new _$FlattenedXmlMapOutput._(myMap: _myMap?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'myMap';
        _myMap?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'FlattenedXmlMapOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
