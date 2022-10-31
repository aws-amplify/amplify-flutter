// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.put_conformance_pack_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PutConformancePackRequest extends PutConformancePackRequest {
  @override
  final _i5.BuiltList<_i3.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final String conformancePackName;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final String? templateBody;
  @override
  final String? templateS3Uri;
  @override
  final _i4.TemplateSsmDocumentDetails? templateSsmDocumentDetails;

  factory _$PutConformancePackRequest(
          [void Function(PutConformancePackRequestBuilder)? updates]) =>
      (new PutConformancePackRequestBuilder()..update(updates))._build();

  _$PutConformancePackRequest._(
      {this.conformancePackInputParameters,
      required this.conformancePackName,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.templateBody,
      this.templateS3Uri,
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
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        conformancePackName == other.conformancePackName &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        templateBody == other.templateBody &&
        templateS3Uri == other.templateS3Uri &&
        templateSsmDocumentDetails == other.templateSsmDocumentDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, conformancePackInputParameters.hashCode),
                            conformancePackName.hashCode),
                        deliveryS3Bucket.hashCode),
                    deliveryS3KeyPrefix.hashCode),
                templateBody.hashCode),
            templateS3Uri.hashCode),
        templateSsmDocumentDetails.hashCode));
  }
}

class PutConformancePackRequestBuilder
    implements
        Builder<PutConformancePackRequest, PutConformancePackRequestBuilder> {
  _$PutConformancePackRequest? _$v;

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

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  String? _deliveryS3Bucket;
  String? get deliveryS3Bucket => _$this._deliveryS3Bucket;
  set deliveryS3Bucket(String? deliveryS3Bucket) =>
      _$this._deliveryS3Bucket = deliveryS3Bucket;

  String? _deliveryS3KeyPrefix;
  String? get deliveryS3KeyPrefix => _$this._deliveryS3KeyPrefix;
  set deliveryS3KeyPrefix(String? deliveryS3KeyPrefix) =>
      _$this._deliveryS3KeyPrefix = deliveryS3KeyPrefix;

  String? _templateBody;
  String? get templateBody => _$this._templateBody;
  set templateBody(String? templateBody) => _$this._templateBody = templateBody;

  String? _templateS3Uri;
  String? get templateS3Uri => _$this._templateS3Uri;
  set templateS3Uri(String? templateS3Uri) =>
      _$this._templateS3Uri = templateS3Uri;

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
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _conformancePackName = $v.conformancePackName;
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _templateBody = $v.templateBody;
      _templateS3Uri = $v.templateS3Uri;
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
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'PutConformancePackRequest',
                  'conformancePackName'),
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              templateBody: templateBody,
              templateS3Uri: templateS3Uri,
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
