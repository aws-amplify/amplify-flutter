// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_attributes_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlAttributesInputOutput extends XmlAttributesInputOutput {
  @override
  final String? attr;
  @override
  final String? foo;

  factory _$XmlAttributesInputOutput(
          [void Function(XmlAttributesInputOutputBuilder)? updates]) =>
      (new XmlAttributesInputOutputBuilder()..update(updates))._build();

  _$XmlAttributesInputOutput._({this.attr, this.foo}) : super._();

  @override
  XmlAttributesInputOutput rebuild(
          void Function(XmlAttributesInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlAttributesInputOutputBuilder toBuilder() =>
      new XmlAttributesInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlAttributesInputOutput &&
        attr == other.attr &&
        foo == other.foo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, attr.hashCode);
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlAttributesInputOutputBuilder
    implements
        Builder<XmlAttributesInputOutput, XmlAttributesInputOutputBuilder> {
  _$XmlAttributesInputOutput? _$v;

  String? _attr;
  String? get attr => _$this._attr;
  set attr(String? attr) => _$this._attr = attr;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  XmlAttributesInputOutputBuilder() {
    XmlAttributesInputOutput._init(this);
  }

  XmlAttributesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _attr = $v.attr;
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlAttributesInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlAttributesInputOutput;
  }

  @override
  void update(void Function(XmlAttributesInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlAttributesInputOutput build() => _build();

  _$XmlAttributesInputOutput _build() {
    final _$result =
        _$v ?? new _$XmlAttributesInputOutput._(attr: attr, foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
