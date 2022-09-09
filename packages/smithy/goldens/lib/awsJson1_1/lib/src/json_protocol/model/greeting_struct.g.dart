// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.greeting_struct;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GreetingStruct extends GreetingStruct {
  @override
  final String? hi;

  factory _$GreetingStruct([void Function(GreetingStructBuilder)? updates]) =>
      (new GreetingStructBuilder()..update(updates))._build();

  _$GreetingStruct._({this.hi}) : super._();

  @override
  GreetingStruct rebuild(void Function(GreetingStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GreetingStructBuilder toBuilder() =>
      new GreetingStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GreetingStruct && hi == other.hi;
  }

  @override
  int get hashCode {
    return $jf($jc(0, hi.hashCode));
  }
}

class GreetingStructBuilder
    implements Builder<GreetingStruct, GreetingStructBuilder> {
  _$GreetingStruct? _$v;

  String? _hi;
  String? get hi => _$this._hi;
  set hi(String? hi) => _$this._hi = hi;

  GreetingStructBuilder() {
    GreetingStruct._init(this);
  }

  GreetingStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hi = $v.hi;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GreetingStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GreetingStruct;
  }

  @override
  void update(void Function(GreetingStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GreetingStruct build() => _build();

  _$GreetingStruct _build() {
    final _$result = _$v ?? new _$GreetingStruct._(hi: hi);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
