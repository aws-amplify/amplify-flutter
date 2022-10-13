// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.body_with_xml_name_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BodyWithXmlNameInputOutput extends BodyWithXmlNameInputOutput {
  @override
  final _i3.PayloadWithXmlName? nested;

  factory _$BodyWithXmlNameInputOutput(
          [void Function(BodyWithXmlNameInputOutputBuilder)? updates]) =>
      (new BodyWithXmlNameInputOutputBuilder()..update(updates))._build();

  _$BodyWithXmlNameInputOutput._({this.nested}) : super._();

  @override
  BodyWithXmlNameInputOutput rebuild(
          void Function(BodyWithXmlNameInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BodyWithXmlNameInputOutputBuilder toBuilder() =>
      new BodyWithXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BodyWithXmlNameInputOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }
}

class BodyWithXmlNameInputOutputBuilder
    implements
        Builder<BodyWithXmlNameInputOutput, BodyWithXmlNameInputOutputBuilder> {
  _$BodyWithXmlNameInputOutput? _$v;

  _i3.PayloadWithXmlNameBuilder? _nested;
  _i3.PayloadWithXmlNameBuilder get nested =>
      _$this._nested ??= new _i3.PayloadWithXmlNameBuilder();
  set nested(_i3.PayloadWithXmlNameBuilder? nested) => _$this._nested = nested;

  BodyWithXmlNameInputOutputBuilder() {
    BodyWithXmlNameInputOutput._init(this);
  }

  BodyWithXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BodyWithXmlNameInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BodyWithXmlNameInputOutput;
  }

  @override
  void update(void Function(BodyWithXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BodyWithXmlNameInputOutput build() => _build();

  _$BodyWithXmlNameInputOutput _build() {
    _$BodyWithXmlNameInputOutput _$result;
    try {
      _$result =
          _$v ?? new _$BodyWithXmlNameInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'BodyWithXmlNameInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
