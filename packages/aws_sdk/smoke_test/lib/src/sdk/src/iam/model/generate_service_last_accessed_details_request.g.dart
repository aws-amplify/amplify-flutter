// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.iam.model.generate_service_last_accessed_details_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GenerateServiceLastAccessedDetailsRequest
    extends GenerateServiceLastAccessedDetailsRequest {
  @override
  final String arn;
  @override
  final _i3.AccessAdvisorUsageGranularityType? granularity;

  factory _$GenerateServiceLastAccessedDetailsRequest(
          [void Function(GenerateServiceLastAccessedDetailsRequestBuilder)?
              updates]) =>
      (new GenerateServiceLastAccessedDetailsRequestBuilder()..update(updates))
          ._build();

  _$GenerateServiceLastAccessedDetailsRequest._(
      {required this.arn, this.granularity})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        arn, r'GenerateServiceLastAccessedDetailsRequest', 'arn');
  }

  @override
  GenerateServiceLastAccessedDetailsRequest rebuild(
          void Function(GenerateServiceLastAccessedDetailsRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenerateServiceLastAccessedDetailsRequestBuilder toBuilder() =>
      new GenerateServiceLastAccessedDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenerateServiceLastAccessedDetailsRequest &&
        arn == other.arn &&
        granularity == other.granularity;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, granularity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GenerateServiceLastAccessedDetailsRequestBuilder
    implements
        Builder<GenerateServiceLastAccessedDetailsRequest,
            GenerateServiceLastAccessedDetailsRequestBuilder> {
  _$GenerateServiceLastAccessedDetailsRequest? _$v;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  _i3.AccessAdvisorUsageGranularityType? _granularity;
  _i3.AccessAdvisorUsageGranularityType? get granularity => _$this._granularity;
  set granularity(_i3.AccessAdvisorUsageGranularityType? granularity) =>
      _$this._granularity = granularity;

  GenerateServiceLastAccessedDetailsRequestBuilder() {
    GenerateServiceLastAccessedDetailsRequest._init(this);
  }

  GenerateServiceLastAccessedDetailsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _arn = $v.arn;
      _granularity = $v.granularity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenerateServiceLastAccessedDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GenerateServiceLastAccessedDetailsRequest;
  }

  @override
  void update(
      void Function(GenerateServiceLastAccessedDetailsRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GenerateServiceLastAccessedDetailsRequest build() => _build();

  _$GenerateServiceLastAccessedDetailsRequest _build() {
    final _$result = _$v ??
        new _$GenerateServiceLastAccessedDetailsRequest._(
            arn: BuiltValueNullFieldError.checkNotNull(
                arn, r'GenerateServiceLastAccessedDetailsRequest', 'arn'),
            granularity: granularity);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
