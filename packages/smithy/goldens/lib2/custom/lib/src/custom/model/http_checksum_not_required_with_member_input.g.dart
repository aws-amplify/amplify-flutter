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
    return $jf($jc($jc(0, checksumAlgorithm.hashCode), content.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
