// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.empty_struct;

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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
