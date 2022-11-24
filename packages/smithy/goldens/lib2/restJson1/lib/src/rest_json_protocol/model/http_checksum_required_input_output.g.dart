// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.http_checksum_required_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpChecksumRequiredInputOutput
    extends HttpChecksumRequiredInputOutput {
  @override
  final String? foo;

  factory _$HttpChecksumRequiredInputOutput(
          [void Function(HttpChecksumRequiredInputOutputBuilder)? updates]) =>
      (new HttpChecksumRequiredInputOutputBuilder()..update(updates))._build();

  _$HttpChecksumRequiredInputOutput._({this.foo}) : super._();

  @override
  HttpChecksumRequiredInputOutput rebuild(
          void Function(HttpChecksumRequiredInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpChecksumRequiredInputOutputBuilder toBuilder() =>
      new HttpChecksumRequiredInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpChecksumRequiredInputOutput && foo == other.foo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, foo.hashCode));
  }
}

class HttpChecksumRequiredInputOutputBuilder
    implements
        Builder<HttpChecksumRequiredInputOutput,
            HttpChecksumRequiredInputOutputBuilder> {
  _$HttpChecksumRequiredInputOutput? _$v;

  String? _foo;
  String? get foo => _$this._foo;
  set foo(String? foo) => _$this._foo = foo;

  HttpChecksumRequiredInputOutputBuilder() {
    HttpChecksumRequiredInputOutput._init(this);
  }

  HttpChecksumRequiredInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _foo = $v.foo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpChecksumRequiredInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpChecksumRequiredInputOutput;
  }

  @override
  void update(void Function(HttpChecksumRequiredInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpChecksumRequiredInputOutput build() => _build();

  _$HttpChecksumRequiredInputOutput _build() {
    final _$result = _$v ?? new _$HttpChecksumRequiredInputOutput._(foo: foo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
