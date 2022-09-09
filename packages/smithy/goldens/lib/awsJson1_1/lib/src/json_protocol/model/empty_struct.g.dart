// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1.json_protocol.model.empty_struct;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmptyStruct extends EmptyStruct {
  factory _$EmptyStruct([void Function(EmptyStructBuilder)? updates]) =>
      (new EmptyStructBuilder()..update(updates))._build();

  _$EmptyStruct._() : super._();

  @override
  EmptyStruct rebuild(void Function(EmptyStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmptyStructBuilder toBuilder() => new EmptyStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmptyStruct;
  }

  @override
  int get hashCode {
    return 166523092;
  }
}

class EmptyStructBuilder implements Builder<EmptyStruct, EmptyStructBuilder> {
  _$EmptyStruct? _$v;

  EmptyStructBuilder() {
    EmptyStruct._init(this);
  }

  @override
  void replace(EmptyStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmptyStruct;
  }

  @override
  void update(void Function(EmptyStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmptyStruct build() => _build();

  _$EmptyStruct _build() {
    final _$result = _$v ?? new _$EmptyStruct._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
