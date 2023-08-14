// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_unions_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlUnionsInputOutput extends XmlUnionsInputOutput {
  @override
  final XmlUnionShape? unionValue;

  factory _$XmlUnionsInputOutput(
          [void Function(XmlUnionsInputOutputBuilder)? updates]) =>
      (new XmlUnionsInputOutputBuilder()..update(updates))._build();

  _$XmlUnionsInputOutput._({this.unionValue}) : super._();

  @override
  XmlUnionsInputOutput rebuild(
          void Function(XmlUnionsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlUnionsInputOutputBuilder toBuilder() =>
      new XmlUnionsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlUnionsInputOutput && unionValue == other.unionValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, unionValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlUnionsInputOutputBuilder
    implements Builder<XmlUnionsInputOutput, XmlUnionsInputOutputBuilder> {
  _$XmlUnionsInputOutput? _$v;

  XmlUnionShape? _unionValue;
  XmlUnionShape? get unionValue => _$this._unionValue;
  set unionValue(XmlUnionShape? unionValue) => _$this._unionValue = unionValue;

  XmlUnionsInputOutputBuilder();

  XmlUnionsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _unionValue = $v.unionValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlUnionsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlUnionsInputOutput;
  }

  @override
  void update(void Function(XmlUnionsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlUnionsInputOutput build() => _build();

  _$XmlUnionsInputOutput _build() {
    final _$result =
        _$v ?? new _$XmlUnionsInputOutput._(unionValue: unionValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
