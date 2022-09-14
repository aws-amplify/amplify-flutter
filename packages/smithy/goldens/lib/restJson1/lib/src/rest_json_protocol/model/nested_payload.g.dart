// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.nested_payload;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NestedPayload extends NestedPayload {
  @override
  final String? greeting;
  @override
  final String? name;

  factory _$NestedPayload([void Function(NestedPayloadBuilder)? updates]) =>
      (new NestedPayloadBuilder()..update(updates))._build();

  _$NestedPayload._({this.greeting, this.name}) : super._();

  @override
  NestedPayload rebuild(void Function(NestedPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedPayloadBuilder toBuilder() => new NestedPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedPayload &&
        greeting == other.greeting &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, greeting.hashCode), name.hashCode));
  }
}

class NestedPayloadBuilder
    implements Builder<NestedPayload, NestedPayloadBuilder> {
  _$NestedPayload? _$v;

  String? _greeting;
  String? get greeting => _$this._greeting;
  set greeting(String? greeting) => _$this._greeting = greeting;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NestedPayloadBuilder() {
    NestedPayload._init(this);
  }

  NestedPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _greeting = $v.greeting;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedPayload;
  }

  @override
  void update(void Function(NestedPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NestedPayload build() => _build();

  _$NestedPayload _build() {
    final _$result =
        _$v ?? new _$NestedPayload._(greeting: greeting, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
