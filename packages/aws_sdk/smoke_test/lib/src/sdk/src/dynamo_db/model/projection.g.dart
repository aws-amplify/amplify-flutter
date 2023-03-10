// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.dynamo_db.model.projection;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Projection extends Projection {
  @override
  final _i3.BuiltList<String>? nonKeyAttributes;
  @override
  final _i2.ProjectionType? projectionType;

  factory _$Projection([void Function(ProjectionBuilder)? updates]) =>
      (new ProjectionBuilder()..update(updates))._build();

  _$Projection._({this.nonKeyAttributes, this.projectionType}) : super._();

  @override
  Projection rebuild(void Function(ProjectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProjectionBuilder toBuilder() => new ProjectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Projection &&
        nonKeyAttributes == other.nonKeyAttributes &&
        projectionType == other.projectionType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nonKeyAttributes.hashCode);
    _$hash = $jc(_$hash, projectionType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ProjectionBuilder implements Builder<Projection, ProjectionBuilder> {
  _$Projection? _$v;

  _i3.ListBuilder<String>? _nonKeyAttributes;
  _i3.ListBuilder<String> get nonKeyAttributes =>
      _$this._nonKeyAttributes ??= new _i3.ListBuilder<String>();
  set nonKeyAttributes(_i3.ListBuilder<String>? nonKeyAttributes) =>
      _$this._nonKeyAttributes = nonKeyAttributes;

  _i2.ProjectionType? _projectionType;
  _i2.ProjectionType? get projectionType => _$this._projectionType;
  set projectionType(_i2.ProjectionType? projectionType) =>
      _$this._projectionType = projectionType;

  ProjectionBuilder() {
    Projection._init(this);
  }

  ProjectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nonKeyAttributes = $v.nonKeyAttributes?.toBuilder();
      _projectionType = $v.projectionType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Projection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Projection;
  }

  @override
  void update(void Function(ProjectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Projection build() => _build();

  _$Projection _build() {
    _$Projection _$result;
    try {
      _$result = _$v ??
          new _$Projection._(
              nonKeyAttributes: _nonKeyAttributes?.build(),
              projectionType: projectionType);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nonKeyAttributes';
        _nonKeyAttributes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Projection', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
