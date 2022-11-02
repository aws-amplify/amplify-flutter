// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.s3.model.end_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndEvent extends EndEvent {
  factory _$EndEvent([void Function(EndEventBuilder)? updates]) =>
      (new EndEventBuilder()..update(updates))._build();

  _$EndEvent._() : super._();

  @override
  EndEvent rebuild(void Function(EndEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndEventBuilder toBuilder() => new EndEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndEvent;
  }

  @override
  int get hashCode {
    return 663471014;
  }
}

class EndEventBuilder implements Builder<EndEvent, EndEventBuilder> {
  _$EndEvent? _$v;

  EndEventBuilder() {
    EndEvent._init(this);
  }

  @override
  void replace(EndEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EndEvent;
  }

  @override
  void update(void Function(EndEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndEvent build() => _build();

  _$EndEvent _build() {
    final _$result = _$v ?? new _$EndEvent._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
