// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.template_ssm_document_details;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TemplateSsmDocumentDetails extends TemplateSsmDocumentDetails {
  @override
  final String documentName;
  @override
  final String? documentVersion;

  factory _$TemplateSsmDocumentDetails(
          [void Function(TemplateSsmDocumentDetailsBuilder)? updates]) =>
      (new TemplateSsmDocumentDetailsBuilder()..update(updates))._build();

  _$TemplateSsmDocumentDetails._(
      {required this.documentName, this.documentVersion})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        documentName, r'TemplateSsmDocumentDetails', 'documentName');
  }

  @override
  TemplateSsmDocumentDetails rebuild(
          void Function(TemplateSsmDocumentDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TemplateSsmDocumentDetailsBuilder toBuilder() =>
      new TemplateSsmDocumentDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TemplateSsmDocumentDetails &&
        documentName == other.documentName &&
        documentVersion == other.documentVersion;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, documentName.hashCode);
    _$hash = $jc(_$hash, documentVersion.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class TemplateSsmDocumentDetailsBuilder
    implements
        Builder<TemplateSsmDocumentDetails, TemplateSsmDocumentDetailsBuilder> {
  _$TemplateSsmDocumentDetails? _$v;

  String? _documentName;
  String? get documentName => _$this._documentName;
  set documentName(String? documentName) => _$this._documentName = documentName;

  String? _documentVersion;
  String? get documentVersion => _$this._documentVersion;
  set documentVersion(String? documentVersion) =>
      _$this._documentVersion = documentVersion;

  TemplateSsmDocumentDetailsBuilder() {
    TemplateSsmDocumentDetails._init(this);
  }

  TemplateSsmDocumentDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _documentName = $v.documentName;
      _documentVersion = $v.documentVersion;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TemplateSsmDocumentDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TemplateSsmDocumentDetails;
  }

  @override
  void update(void Function(TemplateSsmDocumentDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TemplateSsmDocumentDetails build() => _build();

  _$TemplateSsmDocumentDetails _build() {
    final _$result = _$v ??
        new _$TemplateSsmDocumentDetails._(
            documentName: BuiltValueNullFieldError.checkNotNull(
                documentName, r'TemplateSsmDocumentDetails', 'documentName'),
            documentVersion: documentVersion);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
