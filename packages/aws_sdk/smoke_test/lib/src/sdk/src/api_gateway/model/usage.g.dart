// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.usage;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Usage extends Usage {
  @override
  final String? endDate;
  @override
  final _i3.BuiltListMultimap<String, _i3.BuiltList<_i2.Int64>>? items;
  @override
  final String? position;
  @override
  final String? startDate;
  @override
  final String? usagePlanId;

  factory _$Usage([void Function(UsageBuilder)? updates]) =>
      (new UsageBuilder()..update(updates))._build();

  _$Usage._(
      {this.endDate,
      this.items,
      this.position,
      this.startDate,
      this.usagePlanId})
      : super._();

  @override
  Usage rebuild(void Function(UsageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsageBuilder toBuilder() => new UsageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Usage &&
        endDate == other.endDate &&
        items == other.items &&
        position == other.position &&
        startDate == other.startDate &&
        usagePlanId == other.usagePlanId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, endDate.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, startDate.hashCode);
    _$hash = $jc(_$hash, usagePlanId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class UsageBuilder implements Builder<Usage, UsageBuilder> {
  _$Usage? _$v;

  String? _endDate;
  String? get endDate => _$this._endDate;
  set endDate(String? endDate) => _$this._endDate = endDate;

  _i3.ListMultimapBuilder<String, _i3.BuiltList<_i2.Int64>>? _items;
  _i3.ListMultimapBuilder<String, _i3.BuiltList<_i2.Int64>> get items =>
      _$this._items ??=
          new _i3.ListMultimapBuilder<String, _i3.BuiltList<_i2.Int64>>();
  set items(_i3.ListMultimapBuilder<String, _i3.BuiltList<_i2.Int64>>? items) =>
      _$this._items = items;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _startDate;
  String? get startDate => _$this._startDate;
  set startDate(String? startDate) => _$this._startDate = startDate;

  String? _usagePlanId;
  String? get usagePlanId => _$this._usagePlanId;
  set usagePlanId(String? usagePlanId) => _$this._usagePlanId = usagePlanId;

  UsageBuilder() {
    Usage._init(this);
  }

  UsageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _endDate = $v.endDate;
      _items = $v.items?.toBuilder();
      _position = $v.position;
      _startDate = $v.startDate;
      _usagePlanId = $v.usagePlanId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Usage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Usage;
  }

  @override
  void update(void Function(UsageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Usage build() => _build();

  _$Usage _build() {
    _$Usage _$result;
    try {
      _$result = _$v ??
          new _$Usage._(
              endDate: endDate,
              items: _items?.build(),
              position: position,
              startDate: startDate,
              usagePlanId: usagePlanId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Usage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
