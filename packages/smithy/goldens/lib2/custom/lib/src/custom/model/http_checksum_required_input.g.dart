// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom.model.http_checksum_required_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumRequiredInput extends HttpChecksumRequiredInput {
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumRequiredInput(
          [void Function(HttpChecksumRequiredInputBuilder)? updates]) =>
      (new HttpChecksumRequiredInputBuilder()..update(updates))._build();

  _$HttpChecksumRequiredInput._({this.content}) : super._();

  @override
  HttpChecksumRequiredInput rebuild(
          void Function(HttpChecksumRequiredInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumRequiredInputBuilder toBuilder() =>
      new HttpChecksumRequiredInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumRequiredInput && content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpChecksumRequiredInputBuilder
    implements
        Builder<HttpChecksumRequiredInput, HttpChecksumRequiredInputBuilder> {
  _$HttpChecksumRequiredInput? _$v;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumRequiredInputBuilder() {
    HttpChecksumRequiredInput._init(this);
  }

  HttpChecksumRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumRequiredInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumRequiredInput;
  }

  @override
  void update(void Function(HttpChecksumRequiredInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumRequiredInput build() => _build();

  _$HttpChecksumRequiredInput _build() {
    final _$result = _$v ?? new _$HttpChecksumRequiredInput._(content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
