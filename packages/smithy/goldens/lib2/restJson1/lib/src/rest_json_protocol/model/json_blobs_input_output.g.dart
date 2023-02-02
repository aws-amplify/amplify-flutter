// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.json_blobs_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$JsonBlobsInputOutput extends JsonBlobsInputOutput {
  @override
  final _i3.Uint8List? data;

  factory _$JsonBlobsInputOutput(
          [void Function(JsonBlobsInputOutputBuilder)? updates]) =>
      (new JsonBlobsInputOutputBuilder()..update(updates))._build();

  _$JsonBlobsInputOutput._({this.data}) : super._();

  @override
  JsonBlobsInputOutput rebuild(
          void Function(JsonBlobsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  JsonBlobsInputOutputBuilder toBuilder() =>
      new JsonBlobsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is JsonBlobsInputOutput && data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class JsonBlobsInputOutputBuilder
    implements Builder<JsonBlobsInputOutput, JsonBlobsInputOutputBuilder> {
  _$JsonBlobsInputOutput? _$v;

  _i3.Uint8List? _data;
  _i3.Uint8List? get data => _$this._data;
  set data(_i3.Uint8List? data) => _$this._data = data;

  JsonBlobsInputOutputBuilder() {
    JsonBlobsInputOutput._init(this);
  }

  JsonBlobsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(JsonBlobsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$JsonBlobsInputOutput;
  }

  @override
  void update(void Function(JsonBlobsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  JsonBlobsInputOutput build() => _build();

  _$JsonBlobsInputOutput _build() {
    final _$result = _$v ?? new _$JsonBlobsInputOutput._(data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
