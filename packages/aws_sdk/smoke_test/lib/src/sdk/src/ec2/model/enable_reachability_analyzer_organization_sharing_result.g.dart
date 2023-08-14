// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enable_reachability_analyzer_organization_sharing_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EnableReachabilityAnalyzerOrganizationSharingResult
    extends EnableReachabilityAnalyzerOrganizationSharingResult {
  @override
  final bool returnValue;

  factory _$EnableReachabilityAnalyzerOrganizationSharingResult(
          [void Function(
                  EnableReachabilityAnalyzerOrganizationSharingResultBuilder)?
              updates]) =>
      (new EnableReachabilityAnalyzerOrganizationSharingResultBuilder()
            ..update(updates))
          ._build();

  _$EnableReachabilityAnalyzerOrganizationSharingResult._(
      {required this.returnValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(returnValue,
        r'EnableReachabilityAnalyzerOrganizationSharingResult', 'returnValue');
  }

  @override
  EnableReachabilityAnalyzerOrganizationSharingResult rebuild(
          void Function(
                  EnableReachabilityAnalyzerOrganizationSharingResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EnableReachabilityAnalyzerOrganizationSharingResultBuilder toBuilder() =>
      new EnableReachabilityAnalyzerOrganizationSharingResultBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EnableReachabilityAnalyzerOrganizationSharingResult &&
        returnValue == other.returnValue;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, returnValue.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class EnableReachabilityAnalyzerOrganizationSharingResultBuilder
    implements
        Builder<EnableReachabilityAnalyzerOrganizationSharingResult,
            EnableReachabilityAnalyzerOrganizationSharingResultBuilder> {
  _$EnableReachabilityAnalyzerOrganizationSharingResult? _$v;

  bool? _returnValue;
  bool? get returnValue => _$this._returnValue;
  set returnValue(bool? returnValue) => _$this._returnValue = returnValue;

  EnableReachabilityAnalyzerOrganizationSharingResultBuilder() {
    EnableReachabilityAnalyzerOrganizationSharingResult._init(this);
  }

  EnableReachabilityAnalyzerOrganizationSharingResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _returnValue = $v.returnValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EnableReachabilityAnalyzerOrganizationSharingResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EnableReachabilityAnalyzerOrganizationSharingResult;
  }

  @override
  void update(
      void Function(EnableReachabilityAnalyzerOrganizationSharingResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  EnableReachabilityAnalyzerOrganizationSharingResult build() => _build();

  _$EnableReachabilityAnalyzerOrganizationSharingResult _build() {
    final _$result = _$v ??
        new _$EnableReachabilityAnalyzerOrganizationSharingResult._(
            returnValue: BuiltValueNullFieldError.checkNotNull(
                returnValue,
                r'EnableReachabilityAnalyzerOrganizationSharingResult',
                'returnValue'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
