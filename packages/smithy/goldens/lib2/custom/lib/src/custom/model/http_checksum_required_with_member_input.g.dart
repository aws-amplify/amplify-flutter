// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom.model.http_checksum_required_with_member_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumRequiredWithMemberInput
    extends HttpChecksumRequiredWithMemberInput {
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumRequiredWithMemberInput(
          [void Function(HttpChecksumRequiredWithMemberInputBuilder)?
              updates]) =>
      (new HttpChecksumRequiredWithMemberInputBuilder()..update(updates))
          ._build();

  _$HttpChecksumRequiredWithMemberInput._(
      {this.checksumAlgorithm, this.content})
      : super._();

  @override
  HttpChecksumRequiredWithMemberInput rebuild(
          void Function(HttpChecksumRequiredWithMemberInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumRequiredWithMemberInputBuilder toBuilder() =>
      new HttpChecksumRequiredWithMemberInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumRequiredWithMemberInput &&
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

class HttpChecksumRequiredWithMemberInputBuilder
    implements
        Builder<HttpChecksumRequiredWithMemberInput,
            HttpChecksumRequiredWithMemberInputBuilder> {
  _$HttpChecksumRequiredWithMemberInput? _$v;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumRequiredWithMemberInputBuilder() {
    HttpChecksumRequiredWithMemberInput._init(this);
  }

  HttpChecksumRequiredWithMemberInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumRequiredWithMemberInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumRequiredWithMemberInput;
  }

  @override
  void update(
      void Function(HttpChecksumRequiredWithMemberInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumRequiredWithMemberInput build() => _build();

  _$HttpChecksumRequiredWithMemberInput _build() {
    final _$result = _$v ??
        new _$HttpChecksumRequiredWithMemberInput._(
            checksumAlgorithm: checksumAlgorithm, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
