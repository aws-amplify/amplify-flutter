// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_detail;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackDetail extends ConformancePackDetail {
  @override
  final String conformancePackName;
  @override
  final String conformancePackArn;
  @override
  final String conformancePackId;
  @override
  final String? deliveryS3Bucket;
  @override
  final String? deliveryS3KeyPrefix;
  @override
  final _i4.BuiltList<_i2.ConformancePackInputParameter>?
      conformancePackInputParameters;
  @override
  final DateTime? lastUpdateRequestedTime;
  @override
  final String? createdBy;
  @override
  final _i3.TemplateSsmDocumentDetails? templateSsmDocumentDetails;

  factory _$ConformancePackDetail(
          [void Function(ConformancePackDetailBuilder)? updates]) =>
      (new ConformancePackDetailBuilder()..update(updates))._build();

  _$ConformancePackDetail._(
      {required this.conformancePackName,
      required this.conformancePackArn,
      required this.conformancePackId,
      this.deliveryS3Bucket,
      this.deliveryS3KeyPrefix,
      this.conformancePackInputParameters,
      this.lastUpdateRequestedTime,
      this.createdBy,
      this.templateSsmDocumentDetails})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        conformancePackName, r'ConformancePackDetail', 'conformancePackName');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackArn, r'ConformancePackDetail', 'conformancePackArn');
    BuiltValueNullFieldError.checkNotNull(
        conformancePackId, r'ConformancePackDetail', 'conformancePackId');
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
        conformancePackName == other.conformancePackName &&
        conformancePackArn == other.conformancePackArn &&
        conformancePackId == other.conformancePackId &&
        deliveryS3Bucket == other.deliveryS3Bucket &&
        deliveryS3KeyPrefix == other.deliveryS3KeyPrefix &&
        conformancePackInputParameters ==
            other.conformancePackInputParameters &&
        lastUpdateRequestedTime == other.lastUpdateRequestedTime &&
        createdBy == other.createdBy &&
        templateSsmDocumentDetails == other.templateSsmDocumentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackName.hashCode);
    _$hash = $jc(_$hash, conformancePackArn.hashCode);
    _$hash = $jc(_$hash, conformancePackId.hashCode);
    _$hash = $jc(_$hash, deliveryS3Bucket.hashCode);
    _$hash = $jc(_$hash, deliveryS3KeyPrefix.hashCode);
    _$hash = $jc(_$hash, conformancePackInputParameters.hashCode);
    _$hash = $jc(_$hash, lastUpdateRequestedTime.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, templateSsmDocumentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConformancePackDetailBuilder
    implements Builder<ConformancePackDetail, ConformancePackDetailBuilder> {
  _$ConformancePackDetail? _$v;

  String? _conformancePackName;
  String? get conformancePackName => _$this._conformancePackName;
  set conformancePackName(String? conformancePackName) =>
      _$this._conformancePackName = conformancePackName;

  String? _conformancePackArn;
  String? get conformancePackArn => _$this._conformancePackArn;
  set conformancePackArn(String? conformancePackArn) =>
      _$this._conformancePackArn = conformancePackArn;

  String? _conformancePackId;
  String? get conformancePackId => _$this._conformancePackId;
  set conformancePackId(String? conformancePackId) =>
      _$this._conformancePackId = conformancePackId;

  String? _deliveryS3Bucket;
  String? get deliveryS3Bucket => _$this._deliveryS3Bucket;
  set deliveryS3Bucket(String? deliveryS3Bucket) =>
      _$this._deliveryS3Bucket = deliveryS3Bucket;

  String? _deliveryS3KeyPrefix;
  String? get deliveryS3KeyPrefix => _$this._deliveryS3KeyPrefix;
  set deliveryS3KeyPrefix(String? deliveryS3KeyPrefix) =>
      _$this._deliveryS3KeyPrefix = deliveryS3KeyPrefix;

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

  DateTime? _lastUpdateRequestedTime;
  DateTime? get lastUpdateRequestedTime => _$this._lastUpdateRequestedTime;
  set lastUpdateRequestedTime(DateTime? lastUpdateRequestedTime) =>
      _$this._lastUpdateRequestedTime = lastUpdateRequestedTime;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

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
      _conformancePackName = $v.conformancePackName;
      _conformancePackArn = $v.conformancePackArn;
      _conformancePackId = $v.conformancePackId;
      _deliveryS3Bucket = $v.deliveryS3Bucket;
      _deliveryS3KeyPrefix = $v.deliveryS3KeyPrefix;
      _conformancePackInputParameters =
          $v.conformancePackInputParameters?.toBuilder();
      _lastUpdateRequestedTime = $v.lastUpdateRequestedTime;
      _createdBy = $v.createdBy;
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
              conformancePackName: BuiltValueNullFieldError.checkNotNull(
                  conformancePackName,
                  r'ConformancePackDetail',
                  'conformancePackName'),
              conformancePackArn: BuiltValueNullFieldError.checkNotNull(
                  conformancePackArn,
                  r'ConformancePackDetail',
                  'conformancePackArn'),
              conformancePackId: BuiltValueNullFieldError.checkNotNull(
                  conformancePackId,
                  r'ConformancePackDetail',
                  'conformancePackId'),
              deliveryS3Bucket: deliveryS3Bucket,
              deliveryS3KeyPrefix: deliveryS3KeyPrefix,
              conformancePackInputParameters:
                  _conformancePackInputParameters?.build(),
              lastUpdateRequestedTime: lastUpdateRequestedTime,
              createdBy: createdBy,
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
