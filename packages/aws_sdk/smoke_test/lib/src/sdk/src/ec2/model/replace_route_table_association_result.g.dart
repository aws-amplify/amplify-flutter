// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replace_route_table_association_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReplaceRouteTableAssociationResult
    extends ReplaceRouteTableAssociationResult {
  @override
  final String? newAssociationId;
  @override
  final RouteTableAssociationState? associationState;

  factory _$ReplaceRouteTableAssociationResult(
          [void Function(ReplaceRouteTableAssociationResultBuilder)?
              updates]) =>
      (new ReplaceRouteTableAssociationResultBuilder()..update(updates))
          ._build();

  _$ReplaceRouteTableAssociationResult._(
      {this.newAssociationId, this.associationState})
      : super._();

  @override
  ReplaceRouteTableAssociationResult rebuild(
          void Function(ReplaceRouteTableAssociationResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReplaceRouteTableAssociationResultBuilder toBuilder() =>
      new ReplaceRouteTableAssociationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReplaceRouteTableAssociationResult &&
        newAssociationId == other.newAssociationId &&
        associationState == other.associationState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newAssociationId.hashCode);
    _$hash = $jc(_$hash, associationState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ReplaceRouteTableAssociationResultBuilder
    implements
        Builder<ReplaceRouteTableAssociationResult,
            ReplaceRouteTableAssociationResultBuilder> {
  _$ReplaceRouteTableAssociationResult? _$v;

  String? _newAssociationId;
  String? get newAssociationId => _$this._newAssociationId;
  set newAssociationId(String? newAssociationId) =>
      _$this._newAssociationId = newAssociationId;

  RouteTableAssociationStateBuilder? _associationState;
  RouteTableAssociationStateBuilder get associationState =>
      _$this._associationState ??= new RouteTableAssociationStateBuilder();
  set associationState(RouteTableAssociationStateBuilder? associationState) =>
      _$this._associationState = associationState;

  ReplaceRouteTableAssociationResultBuilder();

  ReplaceRouteTableAssociationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newAssociationId = $v.newAssociationId;
      _associationState = $v.associationState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReplaceRouteTableAssociationResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReplaceRouteTableAssociationResult;
  }

  @override
  void update(
      void Function(ReplaceRouteTableAssociationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReplaceRouteTableAssociationResult build() => _build();

  _$ReplaceRouteTableAssociationResult _build() {
    _$ReplaceRouteTableAssociationResult _$result;
    try {
      _$result = _$v ??
          new _$ReplaceRouteTableAssociationResult._(
              newAssociationId: newAssociationId,
              associationState: _associationState?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'associationState';
        _associationState?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ReplaceRouteTableAssociationResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
