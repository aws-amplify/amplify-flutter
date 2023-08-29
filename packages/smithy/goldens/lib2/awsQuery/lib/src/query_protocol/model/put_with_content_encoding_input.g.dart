// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_with_content_encoding_input.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutWithContentEncodingInput extends PutWithContentEncodingInput {
  @override
  final String? encoding;
  @override
  final String? data;

  factory _$PutWithContentEncodingInput(
          [void Function(PutWithContentEncodingInputBuilder)? updates]) =>
      (new PutWithContentEncodingInputBuilder()..update(updates))._build();

  _$PutWithContentEncodingInput._({this.encoding, this.data}) : super._();

  @override
  PutWithContentEncodingInput rebuild(
          void Function(PutWithContentEncodingInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutWithContentEncodingInputBuilder toBuilder() =>
      new PutWithContentEncodingInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutWithContentEncodingInput &&
        encoding == other.encoding &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, encoding.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutWithContentEncodingInputBuilder
    implements
        Builder<PutWithContentEncodingInput,
            PutWithContentEncodingInputBuilder> {
  _$PutWithContentEncodingInput? _$v;

  String? _encoding;
  String? get encoding => _$this._encoding;
  set encoding(String? encoding) => _$this._encoding = encoding;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  PutWithContentEncodingInputBuilder();

  PutWithContentEncodingInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _encoding = $v.encoding;
      _data = $v.data;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutWithContentEncodingInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutWithContentEncodingInput;
  }

  @override
  void update(void Function(PutWithContentEncodingInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutWithContentEncodingInput build() => _build();

  _$PutWithContentEncodingInput _build() {
    final _$result = _$v ??
        new _$PutWithContentEncodingInput._(encoding: encoding, data: data);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
