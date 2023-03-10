// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v1.rest_xml_protocol.model.body_with_xml_name_input_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
