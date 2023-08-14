// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'xml_blobs_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlBlobsOutput extends XmlBlobsOutput {
  @override
  final _i2.Uint8List? data;

  factory _$XmlBlobsOutput([void Function(XmlBlobsOutputBuilder)? updates]) =>
      (new XmlBlobsOutputBuilder()..update(updates))._build();

  _$XmlBlobsOutput._({this.data}) : super._();

  @override
  XmlBlobsOutput rebuild(void Function(XmlBlobsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlBlobsOutputBuilder toBuilder() =>
      new XmlBlobsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlBlobsOutput && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class XmlBlobsOutputBuilder
    implements Builder<XmlBlobsOutput, XmlBlobsOutputBuilder> {
  _$XmlBlobsOutput? _$v;

  _i2.Uint8List? _data;
  _i2.Uint8List? get data => _$this._data;
  set data(_i2.Uint8List? data) => _$this._data = data;

  XmlBlobsOutputBuilder();

  XmlBlobsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlBlobsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlBlobsOutput;
  }

  @override
  void update(void Function(XmlBlobsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlBlobsOutput build() => _build();

  _$XmlBlobsOutput _build() {
    final _$result = _$v ?? new _$XmlBlobsOutput._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
