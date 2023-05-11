// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.stack_instance_filter;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StackInstanceFilter extends StackInstanceFilter {
  @override
  final _i2.StackInstanceFilterName? name;
  @override
  final String? values;

  factory _$StackInstanceFilter(
          [void Function(StackInstanceFilterBuilder)? updates]) =>
      (new StackInstanceFilterBuilder()..update(updates))._build();

  _$StackInstanceFilter._({this.name, this.values}) : super._();

  @override
  StackInstanceFilter rebuild(
          void Function(StackInstanceFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StackInstanceFilterBuilder toBuilder() =>
      new StackInstanceFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StackInstanceFilter &&
        name == other.name &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class StackInstanceFilterBuilder
    implements Builder<StackInstanceFilter, StackInstanceFilterBuilder> {
  _$StackInstanceFilter? _$v;

  _i2.StackInstanceFilterName? _name;
  _i2.StackInstanceFilterName? get name => _$this._name;
  set name(_i2.StackInstanceFilterName? name) => _$this._name = name;

  String? _values;
  String? get values => _$this._values;
  set values(String? values) => _$this._values = values;

  StackInstanceFilterBuilder() {
    StackInstanceFilter._init(this);
  }

  StackInstanceFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _values = $v.values;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StackInstanceFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StackInstanceFilter;
  }

  @override
  void update(void Function(StackInstanceFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StackInstanceFilter build() => _build();

  _$StackInstanceFilter _build() {
    final _$result =
        _$v ?? new _$StackInstanceFilter._(name: name, values: values);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
