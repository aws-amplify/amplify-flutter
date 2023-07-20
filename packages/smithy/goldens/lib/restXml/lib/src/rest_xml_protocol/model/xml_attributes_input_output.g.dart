// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_attributes_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlAttributesInputOutput extends XmlAttributesInputOutput {
  @override
  final String? foo;
  @override
  final String? attr;

  factory _$XmlAttributesInputOutput(
          [void Function(XmlAttributesInputOutputBuilder)? updates]) =>
      (new XmlAttributesInputOutputBuilder()..update(updates))._build();

  _$XmlAttributesInputOutput._({this.foo, this.attr}) : super._();

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
        foo == other.foo &&
        attr == other.attr;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, foo.hashCode);
    _$hash = $jc(_$hash, attr.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlAttributesInputOutputBuilder
    implements
        Builder<XmlAttributesInputOutput, XmlAttributesInputOutputBuilder> {
  _$XmlAttributesInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  String? _attr;
  String? get attr => _$this._attr;
  set attr(String? attr) => _$this._attr = attr;

  XmlAttributesInputOutputBuilder();

  XmlAttributesInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _attr = $v.attr;
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
        _$v ?? new _$XmlAttributesInputOutput._(foo: foo, attr: attr);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
