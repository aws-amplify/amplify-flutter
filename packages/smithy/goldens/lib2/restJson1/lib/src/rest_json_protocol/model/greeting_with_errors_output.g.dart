// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v2.rest_json_protocol.model.greeting_with_errors_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, greeting.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

class _$GreetingWithErrorsOutputPayload
    extends GreetingWithErrorsOutputPayload {
  factory _$GreetingWithErrorsOutputPayload(
          [void Function(GreetingWithErrorsOutputPayloadBuilder)? updates]) =>
      (new GreetingWithErrorsOutputPayloadBuilder()..update(updates))._build();

  _$GreetingWithErrorsOutputPayload._() : super._();

  @override
  GreetingWithErrorsOutputPayload rebuild(
          void Function(GreetingWithErrorsOutputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreetingWithErrorsOutputPayloadBuilder toBuilder() =>
      new GreetingWithErrorsOutputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingWithErrorsOutputPayload;
  }

  @override
  int get hashCode {
    return 622540788;
  }
}

class GreetingWithErrorsOutputPayloadBuilder
    implements
        Builder<GreetingWithErrorsOutputPayload,
            GreetingWithErrorsOutputPayloadBuilder> {
  _$GreetingWithErrorsOutputPayload? _$v;

  GreetingWithErrorsOutputPayloadBuilder() {
    GreetingWithErrorsOutputPayload._init(this);
  }

  @override
  void replace(GreetingWithErrorsOutputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreetingWithErrorsOutputPayload;
  }

  @override
  void update(void Function(GreetingWithErrorsOutputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreetingWithErrorsOutputPayload build() => _build();

  _$GreetingWithErrorsOutputPayload _build() {
    final _$result = _$v ?? new _$GreetingWithErrorsOutputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
