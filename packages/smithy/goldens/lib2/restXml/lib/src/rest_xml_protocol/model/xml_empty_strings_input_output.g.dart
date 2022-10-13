// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.xml_empty_strings_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlEmptyStringsInputOutput extends XmlEmptyStringsInputOutput {
  @override
  final String? emptyString;

  factory _$XmlEmptyStringsInputOutput(
          [void Function(XmlEmptyStringsInputOutputBuilder)? updates]) =>
      (new XmlEmptyStringsInputOutputBuilder()..update(updates))._build();

  _$XmlEmptyStringsInputOutput._({this.emptyString}) : super._();

  @override
  XmlEmptyStringsInputOutput rebuild(
          void Function(XmlEmptyStringsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlEmptyStringsInputOutputBuilder toBuilder() =>
      new XmlEmptyStringsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlEmptyStringsInputOutput &&
        emptyString == other.emptyString;
  }

  @override
  int get hashCode {
    return $jf($jc(0, emptyString.hashCode));
  }
}

class XmlEmptyStringsInputOutputBuilder
    implements
        Builder<XmlEmptyStringsInputOutput, XmlEmptyStringsInputOutputBuilder> {
  _$XmlEmptyStringsInputOutput? _$v;

  String? _emptyString;
  String? get emptyString => _$this._emptyString;
  set emptyString(String? emptyString) => _$this._emptyString = emptyString;

  XmlEmptyStringsInputOutputBuilder() {
    XmlEmptyStringsInputOutput._init(this);
  }

  XmlEmptyStringsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _emptyString = $v.emptyString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlEmptyStringsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlEmptyStringsInputOutput;
  }

  @override
  void update(void Function(XmlEmptyStringsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlEmptyStringsInputOutput build() => _build();

  _$XmlEmptyStringsInputOutput _build() {
    final _$result =
        _$v ?? new _$XmlEmptyStringsInputOutput._(emptyString: emptyString);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
