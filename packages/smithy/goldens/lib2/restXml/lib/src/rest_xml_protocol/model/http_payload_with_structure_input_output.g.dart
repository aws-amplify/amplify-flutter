// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_xml_v2.rest_xml_protocol.model.http_payload_with_structure_input_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, nested.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
