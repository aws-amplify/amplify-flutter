// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.malformed_blob_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MalformedBlobInput extends MalformedBlobInput {
  @override
  final _i3.Uint8List? blob;

  factory _$MalformedBlobInput(
          [void Function(MalformedBlobInputBuilder)? updates]) =>
      (new MalformedBlobInputBuilder()..update(updates))._build();

  _$MalformedBlobInput._({this.blob}) : super._();

  @override
  MalformedBlobInput rebuild(
          void Function(MalformedBlobInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MalformedBlobInputBuilder toBuilder() =>
      new MalformedBlobInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MalformedBlobInput && blob == other.blob;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, blob.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class MalformedBlobInputBuilder
    implements Builder<MalformedBlobInput, MalformedBlobInputBuilder> {
  _$MalformedBlobInput? _$v;

  _i3.Uint8List? _blob;
  _i3.Uint8List? get blob => _$this._blob;
  set blob(_i3.Uint8List? blob) => _$this._blob = blob;

  MalformedBlobInputBuilder() {
    MalformedBlobInput._init(this);
  }

  MalformedBlobInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _blob = $v.blob;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MalformedBlobInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MalformedBlobInput;
  }

  @override
  void update(void Function(MalformedBlobInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MalformedBlobInput build() => _build();

  _$MalformedBlobInput _build() {
    final _$result = _$v ?? new _$MalformedBlobInput._(blob: blob);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
