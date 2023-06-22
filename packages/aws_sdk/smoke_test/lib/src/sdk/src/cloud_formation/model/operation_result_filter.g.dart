// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_result_filter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OperationResultFilter extends OperationResultFilter {
  @override
  final _i2.OperationResultFilterName? name;
  @override
  final String? values;

  factory _$OperationResultFilter(
          [void Function(OperationResultFilterBuilder)? updates]) =>
      (new OperationResultFilterBuilder()..update(updates))._build();

  _$OperationResultFilter._({this.name, this.values}) : super._();

  @override
  OperationResultFilter rebuild(
          void Function(OperationResultFilterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OperationResultFilterBuilder toBuilder() =>
      new OperationResultFilterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OperationResultFilter &&
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

class OperationResultFilterBuilder
    implements Builder<OperationResultFilter, OperationResultFilterBuilder> {
  _$OperationResultFilter? _$v;

  _i2.OperationResultFilterName? _name;
  _i2.OperationResultFilterName? get name => _$this._name;
  set name(_i2.OperationResultFilterName? name) => _$this._name = name;

  String? _values;
  String? get values => _$this._values;
  set values(String? values) => _$this._values = values;

  OperationResultFilterBuilder() {
    OperationResultFilter._init(this);
  }

  OperationResultFilterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _values = $v.values;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OperationResultFilter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OperationResultFilter;
  }

  @override
  void update(void Function(OperationResultFilterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OperationResultFilter build() => _build();

  _$OperationResultFilter _build() {
    final _$result =
        _$v ?? new _$OperationResultFilter._(name: name, values: values);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
