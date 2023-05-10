// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_conformance_pack_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConformancePackRequest extends PutConformancePackRequest {
  @override
  final String conformancePackName;
  @override
  final String? templateS3Uri;
  @override
  final String? templateBody;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final _i5.BuiltList<_i3.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final _i4.TemplateSsmDocumentDetails? templateSsmDocumentDetails;

  factory _$PutConformancePackRequest(
          [void Function(PutConformancePackRequestBuilder)? updates]) =>
      (new PutConformancePackRequestBuilder()..update(updates))._build();

  _$PutConformancePackRequest._(
      {required this.conformancePackName,
      this.templateS3Uri,
      this.templateBody,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.conformancePackInputParameters,
      this.templateSsmDocumentDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackName,
        r'PutConformancePackRequest', 'conformancePackName');
  }

  @override
  PutConformancePackRequest rebuild(
          void Function(PutConformancePackRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PutConformancePackRequestBuilder toBuilder() =>
      new PutConformancePackRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PutConformancePackRequest &&
        conformancePackName == other.conformancePackName &&
        templateS3Uri == other.templateS3Uri &&
        templateBody == other.templateBody &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        templateSsmDocumentDetails == other.templateSsmDocumentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, templateS3Uri.hashCode);
    _$hash = $jc(_$hash, templateBody.hashCode);
    _$hash = $jc(_$hash, deliveryS3Bucket.hashCode);
    _$hash = $jc(_$hash, deliveryS3KeyPrefix.hashCode);
    _$hash = $jc(_$hash, conformancePackInputParameters.hashCode);
    _$hash = $jc(_$hash, templateSsmDocumentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class PutConformancePackRequestBuilder
    implements
        Builder<PutConformancePackRequest, PutConformancePackRequestBuilder> {
  _$PutConformancePackRequest? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  String? _templateS3Uri;
  String? get templateS3Uri => _$this._templateS3Uri;
  set templateS3Uri(String? templateS3Uri) =>
      _$this._templateS3Uri = templateS3Uri;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _deliveryS3Bucket;
  String? get deliveryS3Bucket => _$this._deliveryS3Bucket;
  set deliveryS3Bucket(String? deliveryS3Bucket) =>
      _$this._deliveryS3Bucket = deliveryS3Bucket;

  String? _deliveryS3KeyPrefix;
  String? get deliveryS3KeyPrefix => _$this._deliveryS3KeyPrefix;
  set deliveryS3KeyPrefix(String? deliveryS3KeyPrefix) =>
      _$this._deliveryS3KeyPrefix = deliveryS3KeyPrefix;

  _i5.ListBuilder<_i3.ConformancePackInputParameter>?
      _conformancePackInputParameters;
  _i5.ListBuilder<_i3.ConformancePackInputParameter>
      get conformancePackInputParameters =>
          _$this._conformancePackInputParameters ??=
              new _i5.ListBuilder<_i3.ConformancePackInputParameter>();
  set conformancePackInputParameters(
          _i5.ListBuilder<_i3.ConformancePackInputParameter>?
              conformancePackInputParameters) =>
      _$this._conformancePackInputParameters = conformancePackInputParameters;

  _i4.TemplateSsmDocumentDetailsBuilder? _templateSsmDocumentDetails;
  _i4.TemplateSsmDocumentDetailsBuilder get templateSsmDocumentDetails =>
      _$this._templateSsmDocumentDetails ??=
          new _i4.TemplateSsmDocumentDetailsBuilder();
  set templateSsmDocumentDetails(
          _i4.TemplateSsmDocumentDetailsBuilder? templateSsmDocumentDetails) =>
      _$this._templateSsmDocumentDetails = templateSsmDocumentDetails;

  PutConformancePackRequestBuilder() {
    PutConformancePackRequest._init(this);
  }

  PutConformancePackRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackName = $v.conformancePackName;
      _templateS3Uri = $v.templateS3Uri;
      _templateBody = $v.templateBody;
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _templateSsmDocumentDetails = $v.templateSsmDocumentDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PutConformancePackRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PutConformancePackRequest;
  }

  @override
  void update(void Function(PutConformancePackRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PutConformancePackRequest build() => _build();

  _$PutConformancePackRequest _build() {
    _$PutConformancePackRequest _$result;
    try {
      _$result = _$v ??
          new _$PutConformancePackRequest._(
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'PutConformancePackRequest',
                  'conformancePackName'),
              templateS3Uri: templateS3Uri,
              templateBody: templateBody,
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              templateSsmDocumentDetails: _templateSsmDocumentDetails?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackInputParameters';
        _conformancePackInputParameters?.build();
        _$failedField = 'templateSsmDocumentDetails';
        _templateSsmDocumentDetails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PutConformancePackRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
