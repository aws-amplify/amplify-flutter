// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conformance_pack_compliance_summary_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConformancePackComplianceSummaryRequest
    extends GetConformancePackComplianceSummaryRequest {
  @override
  final _i3.BuiltList<String> conformancePackNames;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$GetConformancePackComplianceSummaryRequest(
          [void Function(GetConformancePackComplianceSummaryRequestBuilder)?
              updates]) =>
      (new GetConformancePackComplianceSummaryRequestBuilder()..update(updates))
          ._build();

  _$GetConformancePackComplianceSummaryRequest._(
      {required this.conformancePackNames, required this.limit, this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackNames,
        r'GetConformancePackComplianceSummaryRequest', 'conformancePackNames');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'GetConformancePackComplianceSummaryRequest', 'limit');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackNames.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'GetConformancePackComplianceSummaryRequest', 'limit'),
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
