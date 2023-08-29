// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_reachability_analyzer_organization_sharing_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableReachabilityAnalyzerOrganizationSharingRequest
    extends EnableReachabilityAnalyzerOrganizationSharingRequest {
  @override
  final bool dryRun;

  factory _$EnableReachabilityAnalyzerOrganizationSharingRequest(
          [void Function(
                  EnableReachabilityAnalyzerOrganizationSharingRequestBuilder)?
              updates]) =>
      (new EnableReachabilityAnalyzerOrganizationSharingRequestBuilder()
            ..update(updates))
          ._build();

  _$EnableReachabilityAnalyzerOrganizationSharingRequest._(
      {required this.dryRun})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(dryRun,
        r'EnableReachabilityAnalyzerOrganizationSharingRequest', 'dryRun');
  }

  @override
  EnableReachabilityAnalyzerOrganizationSharingRequest rebuild(
          void Function(
                  EnableReachabilityAnalyzerOrganizationSharingRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableReachabilityAnalyzerOrganizationSharingRequestBuilder toBuilder() =>
      new EnableReachabilityAnalyzerOrganizationSharingRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableReachabilityAnalyzerOrganizationSharingRequest &&
        dryRun == other.dryRun;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dryRun.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableReachabilityAnalyzerOrganizationSharingRequestBuilder
    implements
        Builder<EnableReachabilityAnalyzerOrganizationSharingRequest,
            EnableReachabilityAnalyzerOrganizationSharingRequestBuilder> {
  _$EnableReachabilityAnalyzerOrganizationSharingRequest? _$v;

  bool? _dryRun;
  bool? get dryRun => _$this._dryRun;
  set dryRun(bool? dryRun) => _$this._dryRun = dryRun;

  EnableReachabilityAnalyzerOrganizationSharingRequestBuilder() {
    EnableReachabilityAnalyzerOrganizationSharingRequest._init(this);
  }

  EnableReachabilityAnalyzerOrganizationSharingRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dryRun = $v.dryRun;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableReachabilityAnalyzerOrganizationSharingRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableReachabilityAnalyzerOrganizationSharingRequest;
  }

  @override
  void update(
      void Function(
              EnableReachabilityAnalyzerOrganizationSharingRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableReachabilityAnalyzerOrganizationSharingRequest build() => _build();

  _$EnableReachabilityAnalyzerOrganizationSharingRequest _build() {
    final _$result = _$v ??
        new _$EnableReachabilityAnalyzerOrganizationSharingRequest._(
            dryRun: BuiltValueNullFieldError.checkNotNull(
                dryRun,
                r'EnableReachabilityAnalyzerOrganizationSharingRequest',
                'dryRun'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
