// GENERATED CODE - DO NOT MODIFY BY HAND

part of custom_v2.custom.model.http_checksum_really_not_required_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumReallyNotRequiredInput
    extends HttpChecksumReallyNotRequiredInput {
  @override
  final _i4.ChecksumAlgorithm? checksumAlgorithm;
  @override
  final _i2.Uint8List? content;

  factory _$HttpChecksumReallyNotRequiredInput(
          [void Function(HttpChecksumReallyNotRequiredInputBuilder)?
              updates]) =>
      (new HttpChecksumReallyNotRequiredInputBuilder()..update(updates))
          ._build();

  _$HttpChecksumReallyNotRequiredInput._({this.checksumAlgorithm, this.content})
      : super._();

  @override
  HttpChecksumReallyNotRequiredInput rebuild(
          void Function(HttpChecksumReallyNotRequiredInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumReallyNotRequiredInputBuilder toBuilder() =>
      new HttpChecksumReallyNotRequiredInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumReallyNotRequiredInput &&
        checksumAlgorithm == other.checksumAlgorithm &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, checksumAlgorithm.hashCode), content.hashCode));
  }
}

class HttpChecksumReallyNotRequiredInputBuilder
    implements
        Builder<HttpChecksumReallyNotRequiredInput,
            HttpChecksumReallyNotRequiredInputBuilder> {
  _$HttpChecksumReallyNotRequiredInput? _$v;

  _i4.ChecksumAlgorithm? _checksumAlgorithm;
  _i4.ChecksumAlgorithm? get checksumAlgorithm => _$this._checksumAlgorithm;
  set checksumAlgorithm(_i4.ChecksumAlgorithm? checksumAlgorithm) =>
      _$this._checksumAlgorithm = checksumAlgorithm;

  _i2.Uint8List? _content;
  _i2.Uint8List? get content => _$this._content;
  set content(_i2.Uint8List? content) => _$this._content = content;

  HttpChecksumReallyNotRequiredInputBuilder() {
    HttpChecksumReallyNotRequiredInput._init(this);
  }

  HttpChecksumReallyNotRequiredInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checksumAlgorithm = $v.checksumAlgorithm;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumReallyNotRequiredInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumReallyNotRequiredInput;
  }

  @override
  void update(
      void Function(HttpChecksumReallyNotRequiredInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumReallyNotRequiredInput build() => _build();

  _$HttpChecksumReallyNotRequiredInput _build() {
    final _$result = _$v ??
        new _$HttpChecksumReallyNotRequiredInput._(
            checksumAlgorithm: checksumAlgorithm, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
