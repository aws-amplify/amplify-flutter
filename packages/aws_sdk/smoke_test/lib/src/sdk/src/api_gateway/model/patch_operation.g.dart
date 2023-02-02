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
    var _$hash = 0;
    _$hash = $jc(_$hash, from.hashCode);
    _$hash = $jc(_$hash, op.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
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

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
