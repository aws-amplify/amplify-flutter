// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.http_payload_with_member_xml_name_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithMemberXmlNameInputOutput
    extends HttpPayloadWithMemberXmlNameInputOutput {
  @override
  final _i2.PayloadWithXmlName? nested;

  factory _$HttpPayloadWithMemberXmlNameInputOutput(
          [void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)?
              updates]) =>
      (new HttpPayloadWithMemberXmlNameInputOutputBuilder()..update(updates))
          ._build();

  _$HttpPayloadWithMemberXmlNameInputOutput._({this.nested}) : super._();

  @override
  HttpPayloadWithMemberXmlNameInputOutput rebuild(
          void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithMemberXmlNameInputOutputBuilder toBuilder() =>
      new HttpPayloadWithMemberXmlNameInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpPayloadWithMemberXmlNameInputOutput &&
        nested == other.nested;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class HttpPayloadWithMemberXmlNameInputOutputBuilder
    implements
        Builder<HttpPayloadWithMemberXmlNameInputOutput,
            HttpPayloadWithMemberXmlNameInputOutputBuilder> {
  _$HttpPayloadWithMemberXmlNameInputOutput? _$v;

  _i2.PayloadWithXmlNameBuilder? _nested;
  _i2.PayloadWithXmlNameBuilder get nested =>
      _$this._nested ??= new _i2.PayloadWithXmlNameBuilder();
  set nested(_i2.PayloadWithXmlNameBuilder? nested) => _$this._nested = nested;

  HttpPayloadWithMemberXmlNameInputOutputBuilder() {
    HttpPayloadWithMemberXmlNameInputOutput._init(this);
  }

  HttpPayloadWithMemberXmlNameInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nested = $v.nested?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpPayloadWithMemberXmlNameInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpPayloadWithMemberXmlNameInputOutput;
  }

  @override
  void update(
      void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithMemberXmlNameInputOutput build() => _build();

  _$HttpPayloadWithMemberXmlNameInputOutput _build() {
    _$HttpPayloadWithMemberXmlNameInputOutput _$result;
    try {
      _$result = _$v ??
          new _$HttpPayloadWithMemberXmlNameInputOutput._(
              nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'HttpPayloadWithMemberXmlNameInputOutput',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
