// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.ignore_query_params_in_response_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$IgnoreQueryParamsInResponseOutput
    extends IgnoreQueryParamsInResponseOutput {
  @override
  final String? baz;

  factory _$IgnoreQueryParamsInResponseOutput(
          [void Function(IgnoreQueryParamsInResponseOutputBuilder)? updates]) =>
      (new IgnoreQueryParamsInResponseOutputBuilder()..update(updates))
          ._build();

  _$IgnoreQueryParamsInResponseOutput._({this.baz}) : super._();

  @override
  IgnoreQueryParamsInResponseOutput rebuild(
          void Function(IgnoreQueryParamsInResponseOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IgnoreQueryParamsInResponseOutputBuilder toBuilder() =>
      new IgnoreQueryParamsInResponseOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IgnoreQueryParamsInResponseOutput && baz == other.baz;
  }

  @override
  int get hashCode {
    return $jf($jc(0, baz.hashCode));
  }
}

class IgnoreQueryParamsInResponseOutputBuilder
    implements
        Builder<IgnoreQueryParamsInResponseOutput,
            IgnoreQueryParamsInResponseOutputBuilder> {
  _$IgnoreQueryParamsInResponseOutput? _$v;

  String? _baz;
  String? get baz => _$this._baz;
  set baz(String? baz) => _$this._baz = baz;

  IgnoreQueryParamsInResponseOutputBuilder() {
    IgnoreQueryParamsInResponseOutput._init(this);
  }

  IgnoreQueryParamsInResponseOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baz = $v.baz;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IgnoreQueryParamsInResponseOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IgnoreQueryParamsInResponseOutput;
  }

  @override
  void update(
      void Function(IgnoreQueryParamsInResponseOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IgnoreQueryParamsInResponseOutput build() => _build();

  _$IgnoreQueryParamsInResponseOutput _build() {
    final _$result = _$v ?? new _$IgnoreQueryParamsInResponseOutput._(baz: baz);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
