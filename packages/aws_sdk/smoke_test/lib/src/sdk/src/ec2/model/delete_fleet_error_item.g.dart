// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_fleet_error_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeleteFleetErrorItem extends DeleteFleetErrorItem {
  @override
  final DeleteFleetError? error;
  @override
  final String? fleetId;

  factory _$DeleteFleetErrorItem(
          [void Function(DeleteFleetErrorItemBuilder)? updates]) =>
      (new DeleteFleetErrorItemBuilder()..update(updates))._build();

  _$DeleteFleetErrorItem._({this.error, this.fleetId}) : super._();

  @override
  DeleteFleetErrorItem rebuild(
          void Function(DeleteFleetErrorItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteFleetErrorItemBuilder toBuilder() =>
      new DeleteFleetErrorItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeleteFleetErrorItem &&
        error == other.error &&
        fleetId == other.fleetId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, fleetId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeleteFleetErrorItemBuilder
    implements Builder<DeleteFleetErrorItem, DeleteFleetErrorItemBuilder> {
  _$DeleteFleetErrorItem? _$v;

  DeleteFleetErrorBuilder? _error;
  DeleteFleetErrorBuilder get error =>
      _$this._error ??= new DeleteFleetErrorBuilder();
  set error(DeleteFleetErrorBuilder? error) => _$this._error = error;

  String? _fleetId;
  String? get fleetId => _$this._fleetId;
  set fleetId(String? fleetId) => _$this._fleetId = fleetId;

  DeleteFleetErrorItemBuilder();

  DeleteFleetErrorItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _fleetId = $v.fleetId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeleteFleetErrorItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeleteFleetErrorItem;
  }

  @override
  void update(void Function(DeleteFleetErrorItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeleteFleetErrorItem build() => _build();

  _$DeleteFleetErrorItem _build() {
    _$DeleteFleetErrorItem _$result;
    try {
      _$result = _$v ??
          new _$DeleteFleetErrorItem._(
              error: _error?.build(), fleetId: fleetId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DeleteFleetErrorItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
