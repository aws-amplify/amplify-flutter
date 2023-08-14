// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fleets_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetsResult extends DeleteFleetsResult {
  @override
  final _i2.BuiltList<DeleteFleetSuccessItem>? successfulFleetDeletions;
  @override
  final _i2.BuiltList<DeleteFleetErrorItem>? unsuccessfulFleetDeletions;

  factory _$DeleteFleetsResult(
          [void Function(DeleteFleetsResultBuilder)? updates]) =>
      (new DeleteFleetsResultBuilder()..update(updates))._build();

  _$DeleteFleetsResult._(
      {this.successfulFleetDeletions, this.unsuccessfulFleetDeletions})
      : super._();

  @override
  DeleteFleetsResult rebuild(
          void Function(DeleteFleetsResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetsResultBuilder toBuilder() =>
      new DeleteFleetsResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetsResult &&
        successfulFleetDeletions == other.successfulFleetDeletions &&
        unsuccessfulFleetDeletions == other.unsuccessfulFleetDeletions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, successfulFleetDeletions.hashCode);
    _$hash = $jc(_$hash, unsuccessfulFleetDeletions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFleetsResultBuilder
    implements Builder<DeleteFleetsResult, DeleteFleetsResultBuilder> {
  _$DeleteFleetsResult? _$v;

  _i2.ListBuilder<DeleteFleetSuccessItem>? _successfulFleetDeletions;
  _i2.ListBuilder<DeleteFleetSuccessItem> get successfulFleetDeletions =>
      _$this._successfulFleetDeletions ??=
          new _i2.ListBuilder<DeleteFleetSuccessItem>();
  set successfulFleetDeletions(
          _i2.ListBuilder<DeleteFleetSuccessItem>? successfulFleetDeletions) =>
      _$this._successfulFleetDeletions = successfulFleetDeletions;

  _i2.ListBuilder<DeleteFleetErrorItem>? _unsuccessfulFleetDeletions;
  _i2.ListBuilder<DeleteFleetErrorItem> get unsuccessfulFleetDeletions =>
      _$this._unsuccessfulFleetDeletions ??=
          new _i2.ListBuilder<DeleteFleetErrorItem>();
  set unsuccessfulFleetDeletions(
          _i2.ListBuilder<DeleteFleetErrorItem>? unsuccessfulFleetDeletions) =>
      _$this._unsuccessfulFleetDeletions = unsuccessfulFleetDeletions;

  DeleteFleetsResultBuilder();

  DeleteFleetsResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _successfulFleetDeletions = $v.successfulFleetDeletions?.toBuilder();
      _unsuccessfulFleetDeletions = $v.unsuccessfulFleetDeletions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetsResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetsResult;
  }

  @override
  void update(void Function(DeleteFleetsResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetsResult build() => _build();

  _$DeleteFleetsResult _build() {
    _$DeleteFleetsResult _$result;
    try {
      _$result = _$v ??
          new _$DeleteFleetsResult._(
              successfulFleetDeletions: _successfulFleetDeletions?.build(),
              unsuccessfulFleetDeletions: _unsuccessfulFleetDeletions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'successfulFleetDeletions';
        _successfulFleetDeletions?.build();
        _$failedField = 'unsuccessfulFleetDeletions';
        _unsuccessfulFleetDeletions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFleetsResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
