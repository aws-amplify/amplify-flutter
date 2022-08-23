// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.select_object_content_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectObjectContentRequest extends SelectObjectContentRequest {
  @override
  final String bucket;
  @override
  final String? expectedBucketOwner;
  @override
  final String expression;
  @override
  final _i3.ExpressionType expressionType;
  @override
  final _i4.InputSerialization inputSerialization;
  @override
  final String key;
  @override
  final _i5.OutputSerialization outputSerialization;
  @override
  final _i6.RequestProgress? requestProgress;
  @override
  final _i7.ScanRange? scanRange;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKey;
  @override
  final String? sseCustomerKeyMd5;

  factory _$SelectObjectContentRequest(
          [void Function(SelectObjectContentRequestBuilder)? updates]) =>
      (new SelectObjectContentRequestBuilder()..update(updates))._build();

  _$SelectObjectContentRequest._(
      {required this.bucket,
      this.expectedBucketOwner,
      required this.expression,
      required this.expressionType,
      required this.inputSerialization,
      required this.key,
      required this.outputSerialization,
      this.requestProgress,
      this.scanRange,
      this.sseCustomerAlgorithm,
      this.sseCustomerKey,
      this.sseCustomerKeyMd5})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'SelectObjectContentRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectObjectContentRequest', 'expression');
    BuiltValueNullFieldError.checkNotNull(
        expressionType, r'SelectObjectContentRequest', 'expressionType');
    BuiltValueNullFieldError.checkNotNull(inputSerialization,
        r'SelectObjectContentRequest', 'inputSerialization');
    BuiltValueNullFieldError.checkNotNull(
        key, r'SelectObjectContentRequest', 'key');
    BuiltValueNullFieldError.checkNotNull(outputSerialization,
        r'SelectObjectContentRequest', 'outputSerialization');
  }

  @override
  SelectObjectContentRequest rebuild(
          void Function(SelectObjectContentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentRequestBuilder toBuilder() =>
      new SelectObjectContentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentRequest &&
        bucket == other.bucket &&
        expectedBucketOwner == other.expectedBucketOwner &&
        expression == other.expression &&
        expressionType == other.expressionType &&
        inputSerialization == other.inputSerialization &&
        key == other.key &&
        outputSerialization == other.outputSerialization &&
        requestProgress == other.requestProgress &&
        scanRange == other.scanRange &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKey == other.sseCustomerKey &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, bucket.hashCode),
                                                expectedBucketOwner.hashCode),
                                            expression.hashCode),
                                        expressionType.hashCode),
                                    inputSerialization.hashCode),
                                key.hashCode),
                            outputSerialization.hashCode),
                        requestProgress.hashCode),
                    scanRange.hashCode),
                sseCustomerAlgorithm.hashCode),
            sseCustomerKey.hashCode),
        sseCustomerKeyMd5.hashCode));
  }
}

class SelectObjectContentRequestBuilder
    implements
        Builder<SelectObjectContentRequest, SelectObjectContentRequestBuilder> {
  _$SelectObjectContentRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _expectedBucketOwner;
  String? get expectedBucketOwner => _$this._expectedBucketOwner;
  set expectedBucketOwner(String? expectedBucketOwner) =>
      _$this._expectedBucketOwner = expectedBucketOwner;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  _i3.ExpressionType? _expressionType;
  _i3.ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(_i3.ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  _i4.InputSerializationBuilder? _inputSerialization;
  _i4.InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= new _i4.InputSerializationBuilder();
  set inputSerialization(_i4.InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  _i5.OutputSerializationBuilder? _outputSerialization;
  _i5.OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= new _i5.OutputSerializationBuilder();
  set outputSerialization(
          _i5.OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  _i6.RequestProgressBuilder? _requestProgress;
  _i6.RequestProgressBuilder get requestProgress =>
      _$this._requestProgress ??= new _i6.RequestProgressBuilder();
  set requestProgress(_i6.RequestProgressBuilder? requestProgress) =>
      _$this._requestProgress = requestProgress;

  _i7.ScanRangeBuilder? _scanRange;
  _i7.ScanRangeBuilder get scanRange =>
      _$this._scanRange ??= new _i7.ScanRangeBuilder();
  set scanRange(_i7.ScanRangeBuilder? scanRange) =>
      _$this._scanRange = scanRange;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKey;
  String? get sseCustomerKey => _$this._sseCustomerKey;
  set sseCustomerKey(String? sseCustomerKey) =>
      _$this._sseCustomerKey = sseCustomerKey;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  SelectObjectContentRequestBuilder() {
    SelectObjectContentRequest._init(this);
  }

  SelectObjectContentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _expectedBucketOwner = $v.expectedBucketOwner;
      _expression = $v.expression;
      _expressionType = $v.expressionType;
      _inputSerialization = $v.inputSerialization.toBuilder();
      _key = $v.key;
      _outputSerialization = $v.outputSerialization.toBuilder();
      _requestProgress = $v.requestProgress?.toBuilder();
      _scanRange = $v.scanRange?.toBuilder();
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKey = $v.sseCustomerKey;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectObjectContentRequest;
  }

  @override
  void update(void Function(SelectObjectContentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentRequest build() => _build();

  _$SelectObjectContentRequest _build() {
    _$SelectObjectContentRequest _$result;
    try {
      _$result = _$v ??
          new _$SelectObjectContentRequest._(
              bucket: BuiltValueNullFieldError.checkNotNull(
                  bucket, r'SelectObjectContentRequest', 'bucket'),
              expectedBucketOwner: expectedBucketOwner,
              expression: BuiltValueNullFieldError.checkNotNull(
                  expression, r'SelectObjectContentRequest', 'expression'),
              expressionType: BuiltValueNullFieldError.checkNotNull(
                  expressionType,
                  r'SelectObjectContentRequest',
                  'expressionType'),
              inputSerialization: inputSerialization.build(),
              key: BuiltValueNullFieldError.checkNotNull(
                  key, r'SelectObjectContentRequest', 'key'),
              outputSerialization: outputSerialization.build(),
              requestProgress: _requestProgress?.build(),
              scanRange: _scanRange?.build(),
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKey: sseCustomerKey,
              sseCustomerKeyMd5: sseCustomerKeyMd5);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputSerialization';
        inputSerialization.build();

        _$failedField = 'outputSerialization';
        outputSerialization.build();
        _$failedField = 'requestProgress';
        _requestProgress?.build();
        _$failedField = 'scanRange';
        _scanRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectObjectContentRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SelectObjectContentRequestPayload
    extends SelectObjectContentRequestPayload {
  @override
  final String expression;
  @override
  final _i3.ExpressionType expressionType;
  @override
  final _i4.InputSerialization inputSerialization;
  @override
  final _i5.OutputSerialization outputSerialization;
  @override
  final _i6.RequestProgress? requestProgress;
  @override
  final _i7.ScanRange? scanRange;

  factory _$SelectObjectContentRequestPayload(
          [void Function(SelectObjectContentRequestPayloadBuilder)? updates]) =>
      (new SelectObjectContentRequestPayloadBuilder()..update(updates))
          ._build();

  _$SelectObjectContentRequestPayload._(
      {required this.expression,
      required this.expressionType,
      required this.inputSerialization,
      required this.outputSerialization,
      this.requestProgress,
      this.scanRange})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        expression, r'SelectObjectContentRequestPayload', 'expression');
    BuiltValueNullFieldError.checkNotNull(
        expressionType, r'SelectObjectContentRequestPayload', 'expressionType');
    BuiltValueNullFieldError.checkNotNull(inputSerialization,
        r'SelectObjectContentRequestPayload', 'inputSerialization');
    BuiltValueNullFieldError.checkNotNull(outputSerialization,
        r'SelectObjectContentRequestPayload', 'outputSerialization');
  }

  @override
  SelectObjectContentRequestPayload rebuild(
          void Function(SelectObjectContentRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectObjectContentRequestPayloadBuilder toBuilder() =>
      new SelectObjectContentRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectObjectContentRequestPayload &&
        expression == other.expression &&
        expressionType == other.expressionType &&
        inputSerialization == other.inputSerialization &&
        outputSerialization == other.outputSerialization &&
        requestProgress == other.requestProgress &&
        scanRange == other.scanRange;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, expression.hashCode), expressionType.hashCode),
                    inputSerialization.hashCode),
                outputSerialization.hashCode),
            requestProgress.hashCode),
        scanRange.hashCode));
  }
}

class SelectObjectContentRequestPayloadBuilder
    implements
        Builder<SelectObjectContentRequestPayload,
            SelectObjectContentRequestPayloadBuilder> {
  _$SelectObjectContentRequestPayload? _$v;

  String? _expression;
  String? get expression => _$this._expression;
  set expression(String? expression) => _$this._expression = expression;

  _i3.ExpressionType? _expressionType;
  _i3.ExpressionType? get expressionType => _$this._expressionType;
  set expressionType(_i3.ExpressionType? expressionType) =>
      _$this._expressionType = expressionType;

  _i4.InputSerializationBuilder? _inputSerialization;
  _i4.InputSerializationBuilder get inputSerialization =>
      _$this._inputSerialization ??= new _i4.InputSerializationBuilder();
  set inputSerialization(_i4.InputSerializationBuilder? inputSerialization) =>
      _$this._inputSerialization = inputSerialization;

  _i5.OutputSerializationBuilder? _outputSerialization;
  _i5.OutputSerializationBuilder get outputSerialization =>
      _$this._outputSerialization ??= new _i5.OutputSerializationBuilder();
  set outputSerialization(
          _i5.OutputSerializationBuilder? outputSerialization) =>
      _$this._outputSerialization = outputSerialization;

  _i6.RequestProgressBuilder? _requestProgress;
  _i6.RequestProgressBuilder get requestProgress =>
      _$this._requestProgress ??= new _i6.RequestProgressBuilder();
  set requestProgress(_i6.RequestProgressBuilder? requestProgress) =>
      _$this._requestProgress = requestProgress;

  _i7.ScanRangeBuilder? _scanRange;
  _i7.ScanRangeBuilder get scanRange =>
      _$this._scanRange ??= new _i7.ScanRangeBuilder();
  set scanRange(_i7.ScanRangeBuilder? scanRange) =>
      _$this._scanRange = scanRange;

  SelectObjectContentRequestPayloadBuilder() {
    SelectObjectContentRequestPayload._init(this);
  }

  SelectObjectContentRequestPayloadBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _expression = $v.expression;
      _expressionType = $v.expressionType;
      _inputSerialization = $v.inputSerialization.toBuilder();
      _outputSerialization = $v.outputSerialization.toBuilder();
      _requestProgress = $v.requestProgress?.toBuilder();
      _scanRange = $v.scanRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectObjectContentRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectObjectContentRequestPayload;
  }

  @override
  void update(
      void Function(SelectObjectContentRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectObjectContentRequestPayload build() => _build();

  _$SelectObjectContentRequestPayload _build() {
    _$SelectObjectContentRequestPayload _$result;
    try {
      _$result = _$v ??
          new _$SelectObjectContentRequestPayload._(
              expression: BuiltValueNullFieldError.checkNotNull(expression,
                  r'SelectObjectContentRequestPayload', 'expression'),
              expressionType: BuiltValueNullFieldError.checkNotNull(
                  expressionType,
                  r'SelectObjectContentRequestPayload',
                  'expressionType'),
              inputSerialization: inputSerialization.build(),
              outputSerialization: outputSerialization.build(),
              requestProgress: _requestProgress?.build(),
              scanRange: _scanRange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'inputSerialization';
        inputSerialization.build();
        _$failedField = 'outputSerialization';
        outputSerialization.build();
        _$failedField = 'requestProgress';
        _requestProgress?.build();
        _$failedField = 'scanRange';
        _scanRange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectObjectContentRequestPayload', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
