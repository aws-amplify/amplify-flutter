// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.deployment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Deployment extends Deployment {
  @override
  final _i3.BuiltMap<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>?
      apiSummary;
  @override
  final DateTime? createdDate;
  @override
  final String? description;
  @override
  final String? id;

  factory _$Deployment([void Function(DeploymentBuilder)? updates]) =>
      (new DeploymentBuilder()..update(updates))._build();

  _$Deployment._({this.apiSummary, this.createdDate, this.description, this.id})
      : super._();

  @override
  Deployment rebuild(void Function(DeploymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeploymentBuilder toBuilder() => new DeploymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Deployment &&
        apiSummary == other.apiSummary &&
        createdDate == other.createdDate &&
        description == other.description &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, apiSummary.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeploymentBuilder implements Builder<Deployment, DeploymentBuilder> {
  _$Deployment? _$v;

  _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>? _apiSummary;
  _i3.MapBuilder<String,
      _i3.BuiltMap<String, _i2.MethodSnapshot>> get apiSummary => _$this
          ._apiSummary ??=
      new _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>();
  set apiSummary(
          _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>?
              apiSummary) =>
      _$this._apiSummary = apiSummary;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  DeploymentBuilder() {
    Deployment._init(this);
  }

  DeploymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _apiSummary = $v.apiSummary?.toBuilder();
      _createdDate = $v.createdDate;
      _description = $v.description;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Deployment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Deployment;
  }

  @override
  void update(void Function(DeploymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Deployment build() => _build();

  _$Deployment _build() {
    _$Deployment _$result;
    try {
      _$result = _$v ??
          new _$Deployment._(
              apiSummary: _apiSummary?.build(),
              createdDate: createdDate,
              description: description,
              id: id);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'apiSummary';
        _apiSummary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'Deployment', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
