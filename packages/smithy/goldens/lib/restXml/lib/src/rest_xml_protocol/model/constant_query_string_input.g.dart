// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.constant_query_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConstantQueryStringInput extends ConstantQueryStringInput {
  @override
  final String hello;

  factory _$ConstantQueryStringInput(
          [void Function(ConstantQueryStringInputBuilder)? updates]) =>
      (new ConstantQueryStringInputBuilder()..update(updates))._build();

  _$ConstantQueryStringInput._({required this.hello}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        hello, r'ConstantQueryStringInput', 'hello');
  }

  @override
  ConstantQueryStringInput rebuild(
          void Function(ConstantQueryStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputBuilder toBuilder() =>
      new ConstantQueryStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInput && hello == other.hello;
  }

  @override
  int get hashCode {
    return $jf($jc(0, hello.hashCode));
  }
}

class ConstantQueryStringInputBuilder
    implements
        Builder<ConstantQueryStringInput, ConstantQueryStringInputBuilder> {
  _$ConstantQueryStringInput? _$v;

  String? _hello;
  String? get hello => _$this._hello;
  set hello(String? hello) => _$this._hello = hello;

  ConstantQueryStringInputBuilder() {
    ConstantQueryStringInput._init(this);
  }

  ConstantQueryStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _hello = $v.hello;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstantQueryStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantQueryStringInput;
  }

  @override
  void update(void Function(ConstantQueryStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantQueryStringInput build() => _build();

  _$ConstantQueryStringInput _build() {
    final _$result = _$v ??
        new _$ConstantQueryStringInput._(
            hello: BuiltValueNullFieldError.checkNotNull(
                hello, r'ConstantQueryStringInput', 'hello'));
    replace(_$result);
    return _$result;
  }
}

class _$ConstantQueryStringInputPayload
    extends ConstantQueryStringInputPayload {
  factory _$ConstantQueryStringInputPayload(
          [void Function(ConstantQueryStringInputPayloadBuilder)? updates]) =>
      (new ConstantQueryStringInputPayloadBuilder()..update(updates))._build();

  _$ConstantQueryStringInputPayload._() : super._();

  @override
  ConstantQueryStringInputPayload rebuild(
          void Function(ConstantQueryStringInputPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantQueryStringInputPayloadBuilder toBuilder() =>
      new ConstantQueryStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantQueryStringInputPayload;
  }

  @override
  int get hashCode {
    return 646295052;
  }
}

class ConstantQueryStringInputPayloadBuilder
    implements
        Builder<ConstantQueryStringInputPayload,
            ConstantQueryStringInputPayloadBuilder> {
  _$ConstantQueryStringInputPayload? _$v;

  ConstantQueryStringInputPayloadBuilder() {
    ConstantQueryStringInputPayload._init(this);
  }

  @override
  void replace(ConstantQueryStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantQueryStringInputPayload;
  }

  @override
  void update(void Function(ConstantQueryStringInputPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantQueryStringInputPayload build() => _build();

  _$ConstantQueryStringInputPayload _build() {
    final _$result = _$v ?? new _$ConstantQueryStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
