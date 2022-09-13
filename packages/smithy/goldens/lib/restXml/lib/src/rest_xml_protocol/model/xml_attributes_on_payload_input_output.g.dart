// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml.rest_xml_protocol.model.xml_attributes_on_payload_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$XmlAttributesOnPayloadInputOutput
    extends XmlAttributesOnPayloadInputOutput {
  @override
  final _i2.XmlAttributesInputOutput? payload;

  factory _$XmlAttributesOnPayloadInputOutput(
          [void Function(XmlAttributesOnPayloadInputOutputBuilder)? updates]) =>
      (new XmlAttributesOnPayloadInputOutputBuilder()..update(updates))
          ._build();

  _$XmlAttributesOnPayloadInputOutput._({this.payload}) : super._();

  @override
  XmlAttributesOnPayloadInputOutput rebuild(
          void Function(XmlAttributesOnPayloadInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  XmlAttributesOnPayloadInputOutputBuilder toBuilder() =>
      new XmlAttributesOnPayloadInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is XmlAttributesOnPayloadInputOutput &&
        payload == other.payload;
  }

  @override
  int get hashCode {
    return $jf($jc(0, payload.hashCode));
  }
}

class XmlAttributesOnPayloadInputOutputBuilder
    implements
        Builder<XmlAttributesOnPayloadInputOutput,
            XmlAttributesOnPayloadInputOutputBuilder> {
  _$XmlAttributesOnPayloadInputOutput? _$v;

  _i2.XmlAttributesInputOutputBuilder? _payload;
  _i2.XmlAttributesInputOutputBuilder get payload =>
      _$this._payload ??= new _i2.XmlAttributesInputOutputBuilder();
  set payload(_i2.XmlAttributesInputOutputBuilder? payload) =>
      _$this._payload = payload;

  XmlAttributesOnPayloadInputOutputBuilder() {
    XmlAttributesOnPayloadInputOutput._init(this);
  }

  XmlAttributesOnPayloadInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(XmlAttributesOnPayloadInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$XmlAttributesOnPayloadInputOutput;
  }

  @override
  void update(
      void Function(XmlAttributesOnPayloadInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  XmlAttributesOnPayloadInputOutput build() => _build();

  _$XmlAttributesOnPayloadInputOutput _build() {
    _$XmlAttributesOnPayloadInputOutput _$result;
    try {
      _$result = _$v ??
          new _$XmlAttributesOnPayloadInputOutput._(payload: _payload?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'XmlAttributesOnPayloadInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
