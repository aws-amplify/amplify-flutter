// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_network_acl_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceNetworkAclAssociationResult
    extends ReplaceNetworkAclAssociationResult {
  @override
  final String? newAssociationId;

  factory _$ReplaceNetworkAclAssociationResult(
          [void Function(ReplaceNetworkAclAssociationResultBuilder)?
              updates]) =>
      (new ReplaceNetworkAclAssociationResultBuilder()..update(updates))
          ._build();

  _$ReplaceNetworkAclAssociationResult._({this.newAssociationId}) : super._();

  @override
  ReplaceNetworkAclAssociationResult rebuild(
          void Function(ReplaceNetworkAclAssociationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceNetworkAclAssociationResultBuilder toBuilder() =>
      new ReplaceNetworkAclAssociationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceNetworkAclAssociationResult &&
        newAssociationId == other.newAssociationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newAssociationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceNetworkAclAssociationResultBuilder
    implements
        Builder<ReplaceNetworkAclAssociationResult,
            ReplaceNetworkAclAssociationResultBuilder> {
  _$ReplaceNetworkAclAssociationResult? _$v;

  String? _newAssociationId;
  String? get newAssociationId => _$this._newAssociationId;
  set newAssociationId(String? newAssociationId) =>
      _$this._newAssociationId = newAssociationId;

  ReplaceNetworkAclAssociationResultBuilder();

  ReplaceNetworkAclAssociationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newAssociationId = $v.newAssociationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceNetworkAclAssociationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceNetworkAclAssociationResult;
  }

  @override
  void update(
      void Function(ReplaceNetworkAclAssociationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceNetworkAclAssociationResult build() => _build();

  _$ReplaceNetworkAclAssociationResult _build() {
    final _$result = _$v ??
        new _$ReplaceNetworkAclAssociationResult._(
            newAssociationId: newAssociationId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
