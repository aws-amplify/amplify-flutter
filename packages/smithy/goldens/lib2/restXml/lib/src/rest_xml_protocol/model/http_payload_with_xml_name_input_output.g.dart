// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_payload_with_xml_name_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithXmlNameInputOutput
    extends HttpPayloadWithXmlNameInputOutput {
  @override
  final _i2.PayloadWithXmlName? nested;

  factory _$HttpPayloadWithXmlNameInputOutput(
          [void Function(HttpPayloadWithXmlNameInputOutputBuilder)? updates]) =>
      (new HttpPayloadWithXmlNameInputOutputBuilder()..update(updates))
          ._build();

  _$HttpPayloadWithXmlNameInputOutput._({this.nested}) : super._();

  @override
  HttpPayloadWithXmlNameInputOutput rebuild(
          void Function(HttpPayloadWithXmlNameInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithXmlNameInputOutputBuilder toBuilder() =>
      new HttpPayloadWithXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadWithXmlNameInputOutput && nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPayloadWithXmlNameInputOutputBuilder
    implements
        Builder<HttpPayloadWithXmlNameInputOutput,
            HttpPayloadWithXmlNameInputOutputBuilder> {
  _$HttpPayloadWithXmlNameInputOutput? _$v;

  _i2.PayloadWithXmlNameBuilder? _nested;
  _i2.PayloadWithXmlNameBuilder get nested =>
      _$this._nested ??= new _i2.PayloadWithXmlNameBuilder();
  set nested(_i2.PayloadWithXmlNameBuilder? nested) => _$this._nested = nested;

  HttpPayloadWithXmlNameInputOutputBuilder() {
    HttpPayloadWithXmlNameInputOutput._init(this);
  }

  HttpPayloadWithXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadWithXmlNameInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadWithXmlNameInputOutput;
  }

  @override
  void update(
      void Function(HttpPayloadWithXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithXmlNameInputOutput build() => _build();

  _$HttpPayloadWithXmlNameInputOutput _build() {
    _$HttpPayloadWithXmlNameInputOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPayloadWithXmlNameInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPayloadWithXmlNameInputOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
