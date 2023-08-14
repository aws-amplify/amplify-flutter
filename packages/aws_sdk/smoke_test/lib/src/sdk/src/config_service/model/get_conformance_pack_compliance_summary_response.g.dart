// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_conformance_pack_compliance_summary_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetConformancePackComplianceSummaryResponse
    extends GetConformancePackComplianceSummaryResponse {
  @override
  final _i2.BuiltList<ConformancePackComplianceSummary>?
      conformancePackComplianceSummaryList;
  @override
  final String? nextToken;

  factory _$GetConformancePackComplianceSummaryResponse(
          [void Function(GetConformancePackComplianceSummaryResponseBuilder)?
              updates]) =>
      (new GetConformancePackComplianceSummaryResponseBuilder()
            ..update(updates))
          ._build();

  _$GetConformancePackComplianceSummaryResponse._(
      {this.conformancePackComplianceSummaryList, this.nextToken})
      : super._();

  @override
  GetConformancePackComplianceSummaryResponse rebuild(
          void Function(GetConformancePackComplianceSummaryResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetConformancePackComplianceSummaryResponseBuilder toBuilder() =>
      new GetConformancePackComplianceSummaryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetConformancePackComplianceSummaryResponse &&
        conformancePackComplianceSummaryList ==
            other.conformancePackComplianceSummaryList &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conformancePackComplianceSummaryList.hashCode);
    _$hash = $jc(_$hash, nextToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetConformancePackComplianceSummaryResponseBuilder
    implements
        Builder<GetConformancePackComplianceSummaryResponse,
            GetConformancePackComplianceSummaryResponseBuilder> {
  _$GetConformancePackComplianceSummaryResponse? _$v;

  _i2.ListBuilder<ConformancePackComplianceSummary>?
      _conformancePackComplianceSummaryList;
  _i2.ListBuilder<ConformancePackComplianceSummary>
      get conformancePackComplianceSummaryList =>
          _$this._conformancePackComplianceSummaryList ??=
              new _i2.ListBuilder<ConformancePackComplianceSummary>();
  set conformancePackComplianceSummaryList(
          _i2.ListBuilder<ConformancePackComplianceSummary>?
              conformancePackComplianceSummaryList) =>
      _$this._conformancePackComplianceSummaryList =
          conformancePackComplianceSummaryList;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  GetConformancePackComplianceSummaryResponseBuilder();

  GetConformancePackComplianceSummaryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackComplianceSummaryList =
          $v.conformancePackComplianceSummaryList?.toBuilder();
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetConformancePackComplianceSummaryResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetConformancePackComplianceSummaryResponse;
  }

  @override
  void update(
      void Function(GetConformancePackComplianceSummaryResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetConformancePackComplianceSummaryResponse build() => _build();

  _$GetConformancePackComplianceSummaryResponse _build() {
    _$GetConformancePackComplianceSummaryResponse _$result;
    try {
      _$result = _$v ??
          new _$GetConformancePackComplianceSummaryResponse._(
              conformancePackComplianceSummaryList:
                  _conformancePackComplianceSummaryList?.build(),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackComplianceSummaryList';
        _conformancePackComplianceSummaryList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetConformancePackComplianceSummaryResponse',
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
