// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.change;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Change extends Change {
  @override
  final _i2.ChangeType? type;
  @override
  final int? hookInvocationCount;
  @override
  final _i3.ResourceChange? resourceChange;

  factory _$Change([void Function(ChangeBuilder)? updates]) =>
      (new ChangeBuilder()..update(updates))._build();

  _$Change._({this.type, this.hookInvocationCount, this.resourceChange})
      : super._();

  @override
  Change rebuild(void Function(ChangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeBuilder toBuilder() => new ChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Change &&
        type == other.type &&
        hookInvocationCount == other.hookInvocationCount &&
        resourceChange == other.resourceChange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, hookInvocationCount.hashCode);
    _$hash = $jc(_$hash, resourceChange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ChangeBuilder implements Builder<Change, ChangeBuilder> {
  _$Change? _$v;

  _i2.ChangeType? _type;
  _i2.ChangeType? get type => _$this._type;
  set type(_i2.ChangeType? type) => _$this._type = type;

  int? _hookInvocationCount;
  int? get hookInvocationCount => _$this._hookInvocationCount;
  set hookInvocationCount(int? hookInvocationCount) =>
      _$this._hookInvocationCount = hookInvocationCount;

  _i3.ResourceChangeBuilder? _resourceChange;
  _i3.ResourceChangeBuilder get resourceChange =>
      _$this._resourceChange ??= new _i3.ResourceChangeBuilder();
  set resourceChange(_i3.ResourceChangeBuilder? resourceChange) =>
      _$this._resourceChange = resourceChange;

  ChangeBuilder() {
    Change._init(this);
  }

  ChangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _hookInvocationCount = $v.hookInvocationCount;
      _resourceChange = $v.resourceChange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Change other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Change;
  }

  @override
  void update(void Function(ChangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Change build() => _build();

  _$Change _build() {
    _$Change _$result;
    try {
      _$result = _$v ??
          new _$Change._(
              type: type,
              hookInvocationCount: hookInvocationCount,
              resourceChange: _resourceChange?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'resourceChange';
        _resourceChange?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Change', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
