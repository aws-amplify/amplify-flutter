// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_empty_strings_input_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, emptyString.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
