// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_query_v2.query_protocol.model.recursive_xml_shapes_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RecursiveXmlShapesOutput extends RecursiveXmlShapesOutput {
  @override
  final _i2.RecursiveXmlShapesOutputNested1? nested;

  factory _$RecursiveXmlShapesOutput(
          [void Function(RecursiveXmlShapesOutputBuilder)? updates]) =>
      (new RecursiveXmlShapesOutputBuilder()..update(updates))._build();

  _$RecursiveXmlShapesOutput._({this.nested}) : super._();

  @override
  RecursiveXmlShapesOutput rebuild(
          void Function(RecursiveXmlShapesOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RecursiveXmlShapesOutputBuilder toBuilder() =>
      new RecursiveXmlShapesOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RecursiveXmlShapesOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class RecursiveXmlShapesOutputBuilder
    implements
        Builder<RecursiveXmlShapesOutput, RecursiveXmlShapesOutputBuilder> {
  _$RecursiveXmlShapesOutput? _$v;

  _i2.RecursiveXmlShapesOutputNested1Builder? _nested;
  _i2.RecursiveXmlShapesOutputNested1Builder get nested =>
      _$this._nested ??= new _i2.RecursiveXmlShapesOutputNested1Builder();
  set nested(_i2.RecursiveXmlShapesOutputNested1Builder? nested) =>
      _$this._nested = nested;

  RecursiveXmlShapesOutputBuilder() {
    RecursiveXmlShapesOutput._init(this);
  }

  RecursiveXmlShapesOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RecursiveXmlShapesOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RecursiveXmlShapesOutput;
  }

  @override
  void update(void Function(RecursiveXmlShapesOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RecursiveXmlShapesOutput build() => _build();

  _$RecursiveXmlShapesOutput _build() {
    _$RecursiveXmlShapesOutput _$result;
    try {
      _$result =
          _$v ?? new _$RecursiveXmlShapesOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RecursiveXmlShapesOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
