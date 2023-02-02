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
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
