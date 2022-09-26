// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v1.json_protocol.model.put_and_get_inline_documents_input_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutAndGetInlineDocumentsInputOutput
    extends PutAndGetInlineDocumentsInputOutput {
  @override
  final _i3.JsonObject? inlineDocument;

  factory _$PutAndGetInlineDocumentsInputOutput(
          [void Function(PutAndGetInlineDocumentsInputOutputBuilder)?
              updates]) =>
      (new PutAndGetInlineDocumentsInputOutputBuilder()..update(updates))
          ._build();

  _$PutAndGetInlineDocumentsInputOutput._({this.inlineDocument}) : super._();

  @override
  PutAndGetInlineDocumentsInputOutput rebuild(
          void Function(PutAndGetInlineDocumentsInputOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutAndGetInlineDocumentsInputOutputBuilder toBuilder() =>
      new PutAndGetInlineDocumentsInputOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutAndGetInlineDocumentsInputOutput &&
        inlineDocument == other.inlineDocument;
  }

  @override
  int get hashCode {
    return $jf($jc(0, inlineDocument.hashCode));
  }
}

class PutAndGetInlineDocumentsInputOutputBuilder
    implements
        Builder<PutAndGetInlineDocumentsInputOutput,
            PutAndGetInlineDocumentsInputOutputBuilder> {
  _$PutAndGetInlineDocumentsInputOutput? _$v;

  _i3.JsonObject? _inlineDocument;
  _i3.JsonObject? get inlineDocument => _$this._inlineDocument;
  set inlineDocument(_i3.JsonObject? inlineDocument) =>
      _$this._inlineDocument = inlineDocument;

  PutAndGetInlineDocumentsInputOutputBuilder() {
    PutAndGetInlineDocumentsInputOutput._init(this);
  }

  PutAndGetInlineDocumentsInputOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inlineDocument = $v.inlineDocument;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutAndGetInlineDocumentsInputOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutAndGetInlineDocumentsInputOutput;
  }

  @override
  void update(
      void Function(PutAndGetInlineDocumentsInputOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutAndGetInlineDocumentsInputOutput build() => _build();

  _$PutAndGetInlineDocumentsInputOutput _build() {
    final _$result = _$v ??
        new _$PutAndGetInlineDocumentsInputOutput._(
            inlineDocument: inlineDocument);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
