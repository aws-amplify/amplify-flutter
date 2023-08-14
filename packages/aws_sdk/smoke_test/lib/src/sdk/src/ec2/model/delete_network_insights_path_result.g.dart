// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_network_insights_path_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteNetworkInsightsPathResult
    extends DeleteNetworkInsightsPathResult {
  @override
  final String? networkInsightsPathId;

  factory _$DeleteNetworkInsightsPathResult(
          [void Function(DeleteNetworkInsightsPathResultBuilder)? updates]) =>
      (new DeleteNetworkInsightsPathResultBuilder()..update(updates))._build();

  _$DeleteNetworkInsightsPathResult._({this.networkInsightsPathId}) : super._();

  @override
  DeleteNetworkInsightsPathResult rebuild(
          void Function(DeleteNetworkInsightsPathResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteNetworkInsightsPathResultBuilder toBuilder() =>
      new DeleteNetworkInsightsPathResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteNetworkInsightsPathResult &&
        networkInsightsPathId == other.networkInsightsPathId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, networkInsightsPathId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteNetworkInsightsPathResultBuilder
    implements
        Builder<DeleteNetworkInsightsPathResult,
            DeleteNetworkInsightsPathResultBuilder> {
  _$DeleteNetworkInsightsPathResult? _$v;

  String? _networkInsightsPathId;
  String? get networkInsightsPathId => _$this._networkInsightsPathId;
  set networkInsightsPathId(String? networkInsightsPathId) =>
      _$this._networkInsightsPathId = networkInsightsPathId;

  DeleteNetworkInsightsPathResultBuilder();

  DeleteNetworkInsightsPathResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _networkInsightsPathId = $v.networkInsightsPathId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteNetworkInsightsPathResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteNetworkInsightsPathResult;
  }

  @override
  void update(void Function(DeleteNetworkInsightsPathResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteNetworkInsightsPathResult build() => _build();

  _$DeleteNetworkInsightsPathResult _build() {
    final _$result = _$v ??
        new _$DeleteNetworkInsightsPathResult._(
            networkInsightsPathId: networkInsightsPathId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
