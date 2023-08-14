// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unsuccessful_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UnsuccessfulItem extends UnsuccessfulItem {
  @override
  final UnsuccessfulItemError? error;
  @override
  final String? resourceId;

  factory _$UnsuccessfulItem(
          [void Function(UnsuccessfulItemBuilder)? updates]) =>
      (new UnsuccessfulItemBuilder()..update(updates))._build();

  _$UnsuccessfulItem._({this.error, this.resourceId}) : super._();

  @override
  UnsuccessfulItem rebuild(void Function(UnsuccessfulItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnsuccessfulItemBuilder toBuilder() =>
      new UnsuccessfulItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnsuccessfulItem &&
        error == other.error &&
        resourceId == other.resourceId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, resourceId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UnsuccessfulItemBuilder
    implements Builder<UnsuccessfulItem, UnsuccessfulItemBuilder> {
  _$UnsuccessfulItem? _$v;

  UnsuccessfulItemErrorBuilder? _error;
  UnsuccessfulItemErrorBuilder get error =>
      _$this._error ??= new UnsuccessfulItemErrorBuilder();
  set error(UnsuccessfulItemErrorBuilder? error) => _$this._error = error;

  String? _resourceId;
  String? get resourceId => _$this._resourceId;
  set resourceId(String? resourceId) => _$this._resourceId = resourceId;

  UnsuccessfulItemBuilder();

  UnsuccessfulItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error?.toBuilder();
      _resourceId = $v.resourceId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnsuccessfulItem other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnsuccessfulItem;
  }

  @override
  void update(void Function(UnsuccessfulItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnsuccessfulItem build() => _build();

  _$UnsuccessfulItem _build() {
    _$UnsuccessfulItem _$result;
    try {
      _$result = _$v ??
          new _$UnsuccessfulItem._(
              error: _error?.build(), resourceId: resourceId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'error';
        _error?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UnsuccessfulItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
