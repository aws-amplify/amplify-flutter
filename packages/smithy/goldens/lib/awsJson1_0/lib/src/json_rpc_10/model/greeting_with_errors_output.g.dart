// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_0.json_rpc_10.model.greeting_with_errors_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GreetingWithErrorsOutput extends GreetingWithErrorsOutput {
  @override
  final String? greeting;

  factory _$GreetingWithErrorsOutput(
          [void Function(GreetingWithErrorsOutputBuilder)? updates]) =>
      (new GreetingWithErrorsOutputBuilder()..update(updates))._build();

  _$GreetingWithErrorsOutput._({this.greeting}) : super._();

  @override
  GreetingWithErrorsOutput rebuild(
          void Function(GreetingWithErrorsOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreetingWithErrorsOutputBuilder toBuilder() =>
      new GreetingWithErrorsOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingWithErrorsOutput && greeting == other.greeting;
  }

  @override
  int get hashCode {
    return $jf($jc(0, greeting.hashCode));
  }
}

class GreetingWithErrorsOutputBuilder
    implements
        Builder<GreetingWithErrorsOutput, GreetingWithErrorsOutputBuilder> {
  _$GreetingWithErrorsOutput? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  GreetingWithErrorsOutputBuilder() {
    GreetingWithErrorsOutput._init(this);
  }

  GreetingWithErrorsOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreetingWithErrorsOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreetingWithErrorsOutput;
  }

  @override
  void update(void Function(GreetingWithErrorsOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreetingWithErrorsOutput build() => _build();

  _$GreetingWithErrorsOutput _build() {
    final _$result =
        _$v ?? new _$GreetingWithErrorsOutput._(greeting: greeting);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
