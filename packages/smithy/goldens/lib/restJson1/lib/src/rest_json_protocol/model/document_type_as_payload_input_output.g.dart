// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.document_type_as_payload_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentTypeAsPayloadInputOutput
    extends DocumentTypeAsPayloadInputOutput {
  @override
  final _i2.JsonObject? documentValue;

  factory _$DocumentTypeAsPayloadInputOutput(
          [void Function(DocumentTypeAsPayloadInputOutputBuilder)? updates]) =>
      (new DocumentTypeAsPayloadInputOutputBuilder()..update(updates))._build();

  _$DocumentTypeAsPayloadInputOutput._({this.documentValue}) : super._();

  @override
  DocumentTypeAsPayloadInputOutput rebuild(
          void Function(DocumentTypeAsPayloadInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentTypeAsPayloadInputOutputBuilder toBuilder() =>
      new DocumentTypeAsPayloadInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentTypeAsPayloadInputOutput &&
        documentValue == other.documentValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DocumentTypeAsPayloadInputOutputBuilder
    implements
        Builder<DocumentTypeAsPayloadInputOutput,
            DocumentTypeAsPayloadInputOutputBuilder> {
  _$DocumentTypeAsPayloadInputOutput? _$v;

  _i2.JsonObject? _documentValue;
  _i2.JsonObject? get documentValue => _$this._documentValue;
  set documentValue(_i2.JsonObject? documentValue) =>
      _$this._documentValue = documentValue;

  DocumentTypeAsPayloadInputOutputBuilder() {
    DocumentTypeAsPayloadInputOutput._init(this);
  }

  DocumentTypeAsPayloadInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentValue = $v.documentValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentTypeAsPayloadInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentTypeAsPayloadInputOutput;
  }

  @override
  void update(void Function(DocumentTypeAsPayloadInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentTypeAsPayloadInputOutput build() => _build();

  _$DocumentTypeAsPayloadInputOutput _build() {
    final _$result = _$v ??
        new _$DocumentTypeAsPayloadInputOutput._(documentValue: documentValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
