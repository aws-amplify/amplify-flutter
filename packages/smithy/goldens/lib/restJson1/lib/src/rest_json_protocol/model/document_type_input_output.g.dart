// GENERATED CODE - DO NOT MODIFY BY HAND

part of rest_json1_v1.rest_json_protocol.model.document_type_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentTypeInputOutput extends DocumentTypeInputOutput {
  @override
  final _i3.JsonObject? documentValue;
  @override
  final String? stringValue;

  factory _$DocumentTypeInputOutput(
          [void Function(DocumentTypeInputOutputBuilder)? updates]) =>
      (new DocumentTypeInputOutputBuilder()..update(updates))._build();

  _$DocumentTypeInputOutput._({this.documentValue, this.stringValue})
      : super._();

  @override
  DocumentTypeInputOutput rebuild(
          void Function(DocumentTypeInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentTypeInputOutputBuilder toBuilder() =>
      new DocumentTypeInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentTypeInputOutput &&
        documentValue == other.documentValue &&
        stringValue == other.stringValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, documentValue.hashCode), stringValue.hashCode));
  }
}

class DocumentTypeInputOutputBuilder
    implements
        Builder<DocumentTypeInputOutput, DocumentTypeInputOutputBuilder> {
  _$DocumentTypeInputOutput? _$v;

  _i3.JsonObject? _documentValue;
  _i3.JsonObject? get documentValue => _$this._documentValue;
  set documentValue(_i3.JsonObject? documentValue) =>
      _$this._documentValue = documentValue;

  String? _stringValue;
  String? get stringValue => _$this._stringValue;
  set stringValue(String? stringValue) => _$this._stringValue = stringValue;

  DocumentTypeInputOutputBuilder() {
    DocumentTypeInputOutput._init(this);
  }

  DocumentTypeInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentValue = $v.documentValue;
      _stringValue = $v.stringValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentTypeInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentTypeInputOutput;
  }

  @override
  void update(void Function(DocumentTypeInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentTypeInputOutput build() => _build();

  _$DocumentTypeInputOutput _build() {
    final _$result = _$v ??
        new _$DocumentTypeInputOutput._(
            documentValue: documentValue, stringValue: stringValue);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
