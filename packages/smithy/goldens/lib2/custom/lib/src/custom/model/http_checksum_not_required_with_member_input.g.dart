// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom.model.http_checksum_not_required_with_member_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumNotRequiredWithMemberInput
    extends HttpChecksumNotRequiredWithMemberInput {
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumNotRequiredWithMemberInput(
          [void Function(HttpChecksumNotRequiredWithMemberInputBuilder)?
              updates]) =>
      (new HttpChecksumNotRequiredWithMemberInputBuilder()..update(updates))
          ._build();

  _$HttpChecksumNotRequiredWithMemberInput._(
      {this.checksumAlgorithm, this.content})
      : super._();

  @override
  HttpChecksumNotRequiredWithMemberInput rebuild(
          void Function(HttpChecksumNotRequiredWithMemberInputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumNotRequiredWithMemberInputBuilder toBuilder() =>
      new HttpChecksumNotRequiredWithMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumNotRequiredWithMemberInput &&
        checksumAlgorithm == other.checksumAlgorithm &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, checksumAlgorithm.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpChecksumNotRequiredWithMemberInputBuilder
    implements
        Builder<HttpChecksumNotRequiredWithMemberInput,
            HttpChecksumNotRequiredWithMemberInputBuilder> {
  _$HttpChecksumNotRequiredWithMemberInput? _$v;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumNotRequiredWithMemberInputBuilder() {
    HttpChecksumNotRequiredWithMemberInput._init(this);
  }

  HttpChecksumNotRequiredWithMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumNotRequiredWithMemberInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumNotRequiredWithMemberInput;
  }

  @override
  void update(
      void Function(HttpChecksumNotRequiredWithMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumNotRequiredWithMemberInput build() => _build();

  _$HttpChecksumNotRequiredWithMemberInput _build() {
    final _$result = _$v ??
        new _$HttpChecksumNotRequiredWithMemberInput._(
            checksumAlgorithm: checksumAlgorithm, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
