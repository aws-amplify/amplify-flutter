// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_payload_with_member_xml_name_input_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$HttpPayloadWithMemberXmlNameInputOutput
    extends HttpPayloadWithMemberXmlNameInputOutput {
  @override
  final PayloadWithXmlName? nested;

  factory _$HttpPayloadWithMemberXmlNameInputOutput([
    void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)? updates,
  ]) => (HttpPayloadWithMemberXmlNameInputOutputBuilder()..update(updates))
      ._build();

  _$HttpPayloadWithMemberXmlNameInputOutput._({this.nested}) : super._();
  @override
  HttpPayloadWithMemberXmlNameInputOutput rebuild(
    void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  HttpPayloadWithMemberXmlNameInputOutputBuilder toBuilder() =>
      HttpPayloadWithMemberXmlNameInputOutputBuilder()..replace(this);

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
        Builder<
          HttpPayloadWithMemberXmlNameInputOutput,
          HttpPayloadWithMemberXmlNameInputOutputBuilder
        > {
  _$HttpPayloadWithMemberXmlNameInputOutput? _$v;

  PayloadWithXmlNameBuilder? _nested;
  PayloadWithXmlNameBuilder get nested =>
      _$this._nested ??= PayloadWithXmlNameBuilder();
  set nested(PayloadWithXmlNameBuilder? nested) => _$this._nested = nested;

  HttpPayloadWithMemberXmlNameInputOutputBuilder();

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
    _$v = other as _$HttpPayloadWithMemberXmlNameInputOutput;
  }

  @override
  void update(
    void Function(HttpPayloadWithMemberXmlNameInputOutputBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  HttpPayloadWithMemberXmlNameInputOutput build() => _build();

  _$HttpPayloadWithMemberXmlNameInputOutput _build() {
    _$HttpPayloadWithMemberXmlNameInputOutput _$result;
    try {
      _$result =
          _$v ??
          _$HttpPayloadWithMemberXmlNameInputOutput._(nested: _nested?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nested';
        _nested?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'HttpPayloadWithMemberXmlNameInputOutput',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
