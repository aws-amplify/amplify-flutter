// GENERATED CODE - DO NOT MODIFY BY HAND

part of aws_json1_1_v2.json_protocol.model.put_and_get_inline_documents_input_output;

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
    var _$hash = 0;
    _$hash = $jc(_$hash, inlineDocument.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
