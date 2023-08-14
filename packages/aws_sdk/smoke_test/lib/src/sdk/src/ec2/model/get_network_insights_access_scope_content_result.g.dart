// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_network_insights_access_scope_content_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetNetworkInsightsAccessScopeContentResult
    extends GetNetworkInsightsAccessScopeContentResult {
  @override
  final NetworkInsightsAccessScopeContent? networkInsightsAccessScopeContent;

  factory _$GetNetworkInsightsAccessScopeContentResult(
          [void Function(GetNetworkInsightsAccessScopeContentResultBuilder)?
              updates]) =>
      (new GetNetworkInsightsAccessScopeContentResultBuilder()..update(updates))
          ._build();

  _$GetNetworkInsightsAccessScopeContentResult._(
      {this.networkInsightsAccessScopeContent})
      : super._();

  @override
  GetNetworkInsightsAccessScopeContentResult rebuild(
          void Function(GetNetworkInsightsAccessScopeContentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetNetworkInsightsAccessScopeContentResultBuilder toBuilder() =>
      new GetNetworkInsightsAccessScopeContentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetNetworkInsightsAccessScopeContentResult &&
        networkInsightsAccessScopeContent ==
            other.networkInsightsAccessScopeContent;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsAccessScopeContent.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetNetworkInsightsAccessScopeContentResultBuilder
    implements
        Builder<GetNetworkInsightsAccessScopeContentResult,
            GetNetworkInsightsAccessScopeContentResultBuilder> {
  _$GetNetworkInsightsAccessScopeContentResult? _$v;

  NetworkInsightsAccessScopeContentBuilder? _networkInsightsAccessScopeContent;
  NetworkInsightsAccessScopeContentBuilder
      get networkInsightsAccessScopeContent =>
          _$this._networkInsightsAccessScopeContent ??=
              new NetworkInsightsAccessScopeContentBuilder();
  set networkInsightsAccessScopeContent(
          NetworkInsightsAccessScopeContentBuilder?
              networkInsightsAccessScopeContent) =>
      _$this._networkInsightsAccessScopeContent =
          networkInsightsAccessScopeContent;

  GetNetworkInsightsAccessScopeContentResultBuilder();

  GetNetworkInsightsAccessScopeContentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsAccessScopeContent =
          $v.networkInsightsAccessScopeContent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetNetworkInsightsAccessScopeContentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetNetworkInsightsAccessScopeContentResult;
  }

  @override
  void update(
      void Function(GetNetworkInsightsAccessScopeContentResultBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetNetworkInsightsAccessScopeContentResult build() => _build();

  _$GetNetworkInsightsAccessScopeContentResult _build() {
    _$GetNetworkInsightsAccessScopeContentResult _$result;
    try {
      _$result = _$v ??
          new _$GetNetworkInsightsAccessScopeContentResult._(
              networkInsightsAccessScopeContent:
                  _networkInsightsAccessScopeContent?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'networkInsightsAccessScopeContent';
        _networkInsightsAccessScopeContent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetNetworkInsightsAccessScopeContentResult',
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
