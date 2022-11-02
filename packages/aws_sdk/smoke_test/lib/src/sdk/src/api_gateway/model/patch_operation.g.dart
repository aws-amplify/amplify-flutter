// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.patch_operation;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PatchOperation extends PatchOperation {
  @override
  final String? from;
  @override
  final _i2.Op? op;
  @override
  final String? path;
  @override
  final String? value;

  factory _$PatchOperation([void Function(PatchOperationBuilder)? updates]) =>
      (new PatchOperationBuilder()..update(updates))._build();

  _$PatchOperation._({this.from, this.op, this.path, this.value}) : super._();

  @override
  PatchOperation rebuild(void Function(PatchOperationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatchOperationBuilder toBuilder() =>
      new PatchOperationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatchOperation &&
        from == other.from &&
        op == other.op &&
        path == other.path &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, from.hashCode), op.hashCode), path.hashCode),
        value.hashCode));
  }
}

class PatchOperationBuilder
    implements Builder<PatchOperation, PatchOperationBuilder> {
  _$PatchOperation? _$v;

  String? _from;
  String? get from => _$this._from;
  set from(String? from) => _$this._from = from;

  _i2.Op? _op;
  _i2.Op? get op => _$this._op;
  set op(_i2.Op? op) => _$this._op = op;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  PatchOperationBuilder() {
    PatchOperation._init(this);
  }

  PatchOperationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _from = $v.from;
      _op = $v.op;
      _path = $v.path;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatchOperation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatchOperation;
  }

  @override
  void update(void Function(PatchOperationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatchOperation build() => _build();

  _$PatchOperation _build() {
    final _$result = _$v ??
        new _$PatchOperation._(from: from, op: op, path: path, value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
