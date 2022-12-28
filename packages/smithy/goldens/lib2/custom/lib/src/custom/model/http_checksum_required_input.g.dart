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
    return $jf($jc(0, content.hashCode));
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
