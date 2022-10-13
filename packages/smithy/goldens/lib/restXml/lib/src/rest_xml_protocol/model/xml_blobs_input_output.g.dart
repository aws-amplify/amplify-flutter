// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.xml_blobs_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlBlobsInputOutput extends XmlBlobsInputOutput {
  @override
  final _i3.Uint8List? data;

  factory _$XmlBlobsInputOutput(
          [void Function(XmlBlobsInputOutputBuilder)? updates]) =>
      (new XmlBlobsInputOutputBuilder()..update(updates))._build();

  _$XmlBlobsInputOutput._({this.data}) : super._();

  @override
  XmlBlobsInputOutput rebuild(
          void Function(XmlBlobsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlBlobsInputOutputBuilder toBuilder() =>
      new XmlBlobsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlBlobsInputOutput && data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(0, data.hashCode));
  }
}

class XmlBlobsInputOutputBuilder
    implements Builder<XmlBlobsInputOutput, XmlBlobsInputOutputBuilder> {
  _$XmlBlobsInputOutput? _$v;

  _i3.Uint8List? _data;
  _i3.Uint8List? get data => _$this._data;
  set data(_i3.Uint8List? data) => _$this._data = data;

  XmlBlobsInputOutputBuilder() {
    XmlBlobsInputOutput._init(this);
  }

  XmlBlobsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlBlobsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlBlobsInputOutput;
  }

  @override
  void update(void Function(XmlBlobsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlBlobsInputOutput build() => _build();

  _$XmlBlobsInputOutput _build() {
    final _$result = _$v ?? new _$XmlBlobsInputOutput._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
