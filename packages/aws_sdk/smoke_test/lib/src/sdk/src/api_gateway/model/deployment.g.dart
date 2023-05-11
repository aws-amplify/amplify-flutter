// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.deployment;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Deployment extends Deployment {
  @override
  final String? id;
  @override
  final String? description;
  @override
  final DateTime? createdDate;
  @override
  final _i3.BuiltMap<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>?
      apiSummary;

  factory _$Deployment([void Function(DeploymentBuilder)? updates]) =>
      (new DeploymentBuilder()..update(updates))._build();

  _$Deployment._({this.id, this.description, this.createdDate, this.apiSummary})
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
        id == other.id &&
        description == other.description &&
        createdDate == other.createdDate &&
        apiSummary == other.apiSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdDate.hashCode);
    _$hash = $jc(_$hash, apiSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class DeploymentBuilder implements Builder<Deployment, DeploymentBuilder> {
  _$Deployment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>? _apiSummary;
  _i3.MapBuilder<String,
      _i3.BuiltMap<String, _i2.MethodSnapshot>> get apiSummary => _$this
          ._apiSummary ??=
      new _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>();
  set apiSummary(
          _i3.MapBuilder<String, _i3.BuiltMap<String, _i2.MethodSnapshot>>?
              apiSummary) =>
      _$this._apiSummary = apiSummary;

  DeploymentBuilder() {
    Deployment._init(this);
  }

  DeploymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _description = $v.description;
      _createdDate = $v.createdDate;
      _apiSummary = $v.apiSummary?.toBuilder();
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
              id: id,
              description: description,
              createdDate: createdDate,
              apiSummary: _apiSummary?.build());
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
