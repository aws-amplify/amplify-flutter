// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.delete;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Delete extends Delete {
  @override
  final _i3.BuiltList<_i2.ObjectIdentifier> objects;
  @override
  final bool quiet;

  factory _$Delete([void Function(DeleteBuilder)? updates]) =>
      (new DeleteBuilder()..update(updates))._build();

  _$Delete._({required this.objects, required this.quiet}) : super._() {
    BuiltValueNullFieldError.checkNotNull(objects, r'Delete', 'objects');
    BuiltValueNullFieldError.checkNotNull(quiet, r'Delete', 'quiet');
  }

  @override
  Delete rebuild(void Function(DeleteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeleteBuilder toBuilder() => new DeleteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Delete && objects == other.objects && quiet == other.quiet;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, objects.hashCode), quiet.hashCode));
  }
}

class DeleteBuilder implements Builder<Delete, DeleteBuilder> {
  _$Delete? _$v;

  _i3.ListBuilder<_i2.ObjectIdentifier>? _objects;
  _i3.ListBuilder<_i2.ObjectIdentifier> get objects =>
      _$this._objects ??= new _i3.ListBuilder<_i2.ObjectIdentifier>();
  set objects(_i3.ListBuilder<_i2.ObjectIdentifier>? objects) =>
      _$this._objects = objects;

  bool? _quiet;
  bool? get quiet => _$this._quiet;
  set quiet(bool? quiet) => _$this._quiet = quiet;

  DeleteBuilder() {
    Delete._init(this);
  }

  DeleteBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _objects = $v.objects.toBuilder();
      _quiet = $v.quiet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Delete other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Delete;
  }

  @override
  void update(void Function(DeleteBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Delete build() => _build();

  _$Delete _build() {
    _$Delete _$result;
    try {
      _$result = _$v ??
          new _$Delete._(
              objects: objects.build(),
              quiet: BuiltValueNullFieldError.checkNotNull(
                  quiet, r'Delete', 'quiet'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'objects';
        objects.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Delete', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
