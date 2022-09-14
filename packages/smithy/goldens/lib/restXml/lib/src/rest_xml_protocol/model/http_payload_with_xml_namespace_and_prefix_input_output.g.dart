// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.http_payload_with_xml_namespace_and_prefix_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput
    extends HttpPayloadWithXmlNamespaceAndPrefixInputOutput {
  @override
  final _i2.PayloadWithXmlNamespaceAndPrefix? nested;

  factory _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput(
          [void Function(
                  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)?
              updates]) =>
      (new HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder()
            ..update(updates))
          ._build();

  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._({this.nested})
      : super._();

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutput rebuild(
          void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder toBuilder() =>
      new HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadWithXmlNamespaceAndPrefixInputOutput &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nested.hashCode));
  }
}

class HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder
    implements
        Builder<HttpPayloadWithXmlNamespaceAndPrefixInputOutput,
            HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder> {
  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput? _$v;

  _i2.PayloadWithXmlNamespaceAndPrefixBuilder? _nested;
  _i2.PayloadWithXmlNamespaceAndPrefixBuilder get nested =>
      _$this._nested ??= new _i2.PayloadWithXmlNamespaceAndPrefixBuilder();
  set nested(_i2.PayloadWithXmlNamespaceAndPrefixBuilder? nested) =>
      _$this._nested = nested;

  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder() {
    HttpPayloadWithXmlNamespaceAndPrefixInputOutput._init(this);
  }

  HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadWithXmlNamespaceAndPrefixInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput;
  }

  @override
  void update(
      void Function(HttpPayloadWithXmlNamespaceAndPrefixInputOutputBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithXmlNamespaceAndPrefixInputOutput build() => _build();

  _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput _build() {
    _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPayloadWithXmlNamespaceAndPrefixInputOutput._(
              nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPayloadWithXmlNamespaceAndPrefixInputOutput',
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
