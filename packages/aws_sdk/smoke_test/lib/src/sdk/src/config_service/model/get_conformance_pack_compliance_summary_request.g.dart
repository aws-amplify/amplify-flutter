// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_conformance_pack_compliance_summary_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConformancePackComplianceSummaryRequest
    extends GetConformancePackComplianceSummaryRequest {
  @override
  final _i3.BuiltList<String> conformancePackNames;
  @override
  final int? limit;
  @override
  final String? nextToken;

  factory _$GetConformancePackComplianceSummaryRequest(
          [void Function(GetConformancePackComplianceSummaryRequestBuilder)?
              updates]) =>
      (new GetConformancePackComplianceSummaryRequestBuilder()..update(updates))
          ._build();

  _$GetConformancePackComplianceSummaryRequest._(
      {required this.conformancePackNames, this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackNames,
        r'GetConformancePackComplianceSummaryRequest', 'conformancePackNames');
  }

  @override
  GetConformancePackComplianceSummaryRequest rebuild(
          void Function(GetConformancePackComplianceSummaryRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConformancePackComplianceSummaryRequestBuilder toBuilder() =>
      new GetConformancePackComplianceSummaryRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConformancePackComplianceSummaryRequest &&
        conformancePackNames == other.conformancePackNames &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, conformancePackNames.hashCode), limit.hashCode),
        nextToken.hashCode));
  }
}

class GetConformancePackComplianceSummaryRequestBuilder
    implements
        Builder<GetConformancePackComplianceSummaryRequest,
            GetConformancePackComplianceSummaryRequestBuilder> {
  _$GetConformancePackComplianceSummaryRequest? _$v;

  _i3.ListBuilder<String>? _conformancePackNames;
  _i3.ListBuilder<String> get conformancePackNames =>
      _$this._conformancePackNames ??= new _i3.ListBuilder<String>();
  set conformancePackNames(_i3.ListBuilder<String>? conformancePackNames) =>
      _$this._conformancePackNames = conformancePackNames;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetConformancePackComplianceSummaryRequestBuilder() {
    GetConformancePackComplianceSummaryRequest._init(this);
  }

  GetConformancePackComplianceSummaryRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackNames = $v.conformancePackNames.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConformancePackComplianceSummaryRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConformancePackComplianceSummaryRequest;
  }

  @override
  void update(
      void Function(GetConformancePackComplianceSummaryRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConformancePackComplianceSummaryRequest build() => _build();

  _$GetConformancePackComplianceSummaryRequest _build() {
    _$GetConformancePackComplianceSummaryRequest _$result;
    try {
      _$result = _$v ??
          new _$GetConformancePackComplianceSummaryRequest._(
              conformancePackNames: conformancePackNames.build(),
              limit: limit,
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackNames';
        conformancePackNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetConformancePackComplianceSummaryRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
