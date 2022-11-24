// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.http_payload_with_structure_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithStructureInputOutput
    extends HttpPayloadWithStructureInputOutput {
  @override
  final _i2.NestedPayload? nested;

  factory _$HttpPayloadWithStructureInputOutput(
          [void Function(HttpPayloadWithStructureInputOutputBuilder)?
              updates]) =>
      (new HttpPayloadWithStructureInputOutputBuilder()..update(updates))
          ._build();

  _$HttpPayloadWithStructureInputOutput._({this.nested}) : super._();

  @override
  HttpPayloadWithStructureInputOutput rebuild(
          void Function(HttpPayloadWithStructureInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithStructureInputOutputBuilder toBuilder() =>
      new HttpPayloadWithStructureInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadWithStructureInputOutput &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }
}

class HttpPayloadWithStructureInputOutputBuilder
    implements
        Builder<HttpPayloadWithStructureInputOutput,
            HttpPayloadWithStructureInputOutputBuilder> {
  _$HttpPayloadWithStructureInputOutput? _$v;

  _i2.NestedPayloadBuilder? _nested;
  _i2.NestedPayloadBuilder get nested =>
      _$this._nested ??= new _i2.NestedPayloadBuilder();
  set nested(_i2.NestedPayloadBuilder? nested) => _$this._nested = nested;

  HttpPayloadWithStructureInputOutputBuilder() {
    HttpPayloadWithStructureInputOutput._init(this);
  }

  HttpPayloadWithStructureInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadWithStructureInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadWithStructureInputOutput;
  }

  @override
  void update(
      void Function(HttpPayloadWithStructureInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithStructureInputOutput build() => _build();

  _$HttpPayloadWithStructureInputOutput _build() {
    _$HttpPayloadWithStructureInputOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPayloadWithStructureInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPayloadWithStructureInputOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
