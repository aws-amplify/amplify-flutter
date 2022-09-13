// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1.rest_json_protocol.model.constant_and_variable_query_string_input;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConstantAndVariableQueryStringInput
    extends ConstantAndVariableQueryStringInput {
  @override
  final String? baz;
  @override
  final String? maybeSet;

  factory _$ConstantAndVariableQueryStringInput(
          [void Function(ConstantAndVariableQueryStringInputBuilder)?
              updates]) =>
      (new ConstantAndVariableQueryStringInputBuilder()..update(updates))
          ._build();

  _$ConstantAndVariableQueryStringInput._({this.baz, this.maybeSet})
      : super._();

  @override
  ConstantAndVariableQueryStringInput rebuild(
          void Function(ConstantAndVariableQueryStringInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantAndVariableQueryStringInputBuilder toBuilder() =>
      new ConstantAndVariableQueryStringInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantAndVariableQueryStringInput &&
        baz == other.baz &&
        maybeSet == other.maybeSet;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, baz.hashCode), maybeSet.hashCode));
  }
}

class ConstantAndVariableQueryStringInputBuilder
    implements
        Builder<ConstantAndVariableQueryStringInput,
            ConstantAndVariableQueryStringInputBuilder> {
  _$ConstantAndVariableQueryStringInput? _$v;

  String? _baz;
  String? get baz => _$this._baz;
  set baz(String? baz) => _$this._baz = baz;

  String? _maybeSet;
  String? get maybeSet => _$this._maybeSet;
  set maybeSet(String? maybeSet) => _$this._maybeSet = maybeSet;

  ConstantAndVariableQueryStringInputBuilder() {
    ConstantAndVariableQueryStringInput._init(this);
  }

  ConstantAndVariableQueryStringInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _baz = $v.baz;
      _maybeSet = $v.maybeSet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConstantAndVariableQueryStringInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantAndVariableQueryStringInput;
  }

  @override
  void update(
      void Function(ConstantAndVariableQueryStringInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantAndVariableQueryStringInput build() => _build();

  _$ConstantAndVariableQueryStringInput _build() {
    final _$result = _$v ??
        new _$ConstantAndVariableQueryStringInput._(
            baz: baz, maybeSet: maybeSet);
    replace(_$result);
    return _$result;
  }
}

class _$ConstantAndVariableQueryStringInputPayload
    extends ConstantAndVariableQueryStringInputPayload {
  factory _$ConstantAndVariableQueryStringInputPayload(
          [void Function(ConstantAndVariableQueryStringInputPayloadBuilder)?
              updates]) =>
      (new ConstantAndVariableQueryStringInputPayloadBuilder()..update(updates))
          ._build();

  _$ConstantAndVariableQueryStringInputPayload._() : super._();

  @override
  ConstantAndVariableQueryStringInputPayload rebuild(
          void Function(ConstantAndVariableQueryStringInputPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConstantAndVariableQueryStringInputPayloadBuilder toBuilder() =>
      new ConstantAndVariableQueryStringInputPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConstantAndVariableQueryStringInputPayload;
  }

  @override
  int get hashCode {
    return 167754841;
  }
}

class ConstantAndVariableQueryStringInputPayloadBuilder
    implements
        Builder<ConstantAndVariableQueryStringInputPayload,
            ConstantAndVariableQueryStringInputPayloadBuilder> {
  _$ConstantAndVariableQueryStringInputPayload? _$v;

  ConstantAndVariableQueryStringInputPayloadBuilder() {
    ConstantAndVariableQueryStringInputPayload._init(this);
  }

  @override
  void replace(ConstantAndVariableQueryStringInputPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConstantAndVariableQueryStringInputPayload;
  }

  @override
  void update(
      void Function(ConstantAndVariableQueryStringInputPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  ConstantAndVariableQueryStringInputPayload build() => _build();

  _$ConstantAndVariableQueryStringInputPayload _build() {
    final _$result =
        _$v ?? new _$ConstantAndVariableQueryStringInputPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
