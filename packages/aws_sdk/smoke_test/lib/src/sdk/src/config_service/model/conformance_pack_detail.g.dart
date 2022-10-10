// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackDetail extends ConformancePackDetail {
  @override
  final String conformancePackArn;
  @override
  final String conformancePackId;
  @override
  final _i4.BuiltList<_i2.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final String conformancePackName;
  @override
  final String? createdBy;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final DateTime? lastUpdateRequestedTime;
  @override
  final _i3.TemplateSsmDocumentDetails? templateSsmDocumentDetails;

  factory _$ConformancePackDetail(
          [void Function(ConformancePackDetailBuilder)? updates]) =>
      (new ConformancePackDetailBuilder()..update(updates))._build();

  _$ConformancePackDetail._(
      {required this.conformancePackArn,
      required this.conformancePackId,
      this.conformancePackInputParameters,
      required this.conformancePackName,
      this.createdBy,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.lastUpdateRequestedTime,
      this.templateSsmDocumentDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        conformancePackArn, r'ConformancePackDetail', 'conformancePackArn');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackId, r'ConformancePackDetail', 'conformancePackId');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackName, r'ConformancePackDetail', 'conformancePackName');
  }

  @override
  ConformancePackDetail rebuild(
          void Function(ConformancePackDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackDetailBuilder toBuilder() =>
      new ConformancePackDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackDetail &&
        conformancePackArn == other.conformancePackArn &&
        conformancePackId == other.conformancePackId &&
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        conformancePackName == other.conformancePackName &&
        createdBy == other.createdBy &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        lastUpdateRequestedTime == other.lastUpdateRequestedTime &&
        templateSsmDocumentDetails == other.templateSsmDocumentDetails;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, conformancePackArn.hashCode),
                                    conformancePackId.hashCode),
                                conformancePackInputParameters.hashCode),
                            conformancePackName.hashCode),
                        createdBy.hashCode),
                    deliveryS3Bucket.hashCode),
                deliveryS3KeyPrefix.hashCode),
            lastUpdateRequestedTime.hashCode),
        templateSsmDocumentDetails.hashCode));
  }
}

class ConformancePackDetailBuilder
    implements Builder<ConformancePackDetail, ConformancePackDetailBuilder> {
  _$ConformancePackDetail? _$v;

  String? _conformancePackArn;
  String? get conformancePackArn => _$this._conformancePackArn;
  set conformancePackArn(String? conformancePackArn) =>
      _$this._conformancePackArn = conformancePackArn;

  String? _conformancePackId;
  String? get conformancePackId => _$this._conformancePackId;
  set conformancePackId(String? conformancePackId) =>
      _$this._conformancePackId = conformancePackId;

  _i4.ListBuilder<_i2.ConformancePackInputParameter>?
      _conformancePackInputParameters;
  _i4.ListBuilder<_i2.ConformancePackInputParameter>
      get conformancePackInputParameters =>
          _$this._conformancePackInputParameters ??=
              new _i4.ListBuilder<_i2.ConformancePackInputParameter>();
  set conformancePackInputParameters(
          _i4.ListBuilder<_i2.ConformancePackInputParameter>?
              conformancePackInputParameters) =>
      _$this._conformancePackInputParameters = conformancePackInputParameters;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  String? _deliveryS3Bucket;
  String? get deliveryS3Bucket => _$this._deliveryS3Bucket;
  set deliveryS3Bucket(String? deliveryS3Bucket) =>
      _$this._deliveryS3Bucket = deliveryS3Bucket;

  String? _deliveryS3KeyPrefix;
  String? get deliveryS3KeyPrefix => _$this._deliveryS3KeyPrefix;
  set deliveryS3KeyPrefix(String? deliveryS3KeyPrefix) =>
      _$this._deliveryS3KeyPrefix = deliveryS3KeyPrefix;

  DateTime? _lastUpdateRequestedTime;
  DateTime? get lastUpdateRequestedTime => _$this._lastUpdateRequestedTime;
  set lastUpdateRequestedTime(DateTime? lastUpdateRequestedTime) =>
      _$this._lastUpdateRequestedTime = lastUpdateRequestedTime;

  _i3.TemplateSsmDocumentDetailsBuilder? _templateSsmDocumentDetails;
  _i3.TemplateSsmDocumentDetailsBuilder get templateSsmDocumentDetails =>
      _$this._templateSsmDocumentDetails ??=
          new _i3.TemplateSsmDocumentDetailsBuilder();
  set templateSsmDocumentDetails(
          _i3.TemplateSsmDocumentDetailsBuilder? templateSsmDocumentDetails) =>
      _$this._templateSsmDocumentDetails = templateSsmDocumentDetails;

  ConformancePackDetailBuilder() {
    ConformancePackDetail._init(this);
  }

  ConformancePackDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackArn = $v.conformancePackArn;
      _conformancePackId = $v.conformancePackId;
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _conformancePackName = $v.conformancePackName;
      _createdBy = $v.createdBy;
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _lastUpdateRequestedTime = $v.lastUpdateRequestedTime;
      _templateSsmDocumentDetails = $v.templateSsmDocumentDetails?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackDetail;
  }

  @override
  void update(void Function(ConformancePackDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackDetail build() => _build();

  _$ConformancePackDetail _build() {
    _$ConformancePackDetail _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackDetail._(
              conformancePackArn: BuiltValueNullFieldError.checkNotNull(
                  conformancePackArn,
                  r'ConformancePackDetail',
                  'conformancePackArn'),
              conformancePackId: BuiltValueNullFieldError.checkNotNull(
                  conformancePackId,
                  r'ConformancePackDetail',
                  'conformancePackId'),
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'ConformancePackDetail',
                  'conformancePackName'),
              createdBy: createdBy,
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              lastUpdateRequestedTime: lastUpdateRequestedTime,
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
            r'ConformancePackDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
