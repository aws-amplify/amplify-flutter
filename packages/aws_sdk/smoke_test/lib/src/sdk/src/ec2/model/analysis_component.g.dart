// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analysis_component.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnalysisComponent extends AnalysisComponent {
  @override
  final String? id;
  @override
  final String? arn;
  @override
  final String? name;

  factory _$AnalysisComponent(
          [void Function(AnalysisComponentBuilder)? updates]) =>
      (new AnalysisComponentBuilder()..update(updates))._build();

  _$AnalysisComponent._({this.id, this.arn, this.name}) : super._();

  @override
  AnalysisComponent rebuild(void Function(AnalysisComponentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnalysisComponentBuilder toBuilder() =>
      new AnalysisComponentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnalysisComponent &&
        id == other.id &&
        arn == other.arn &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, arn.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AnalysisComponentBuilder
    implements Builder<AnalysisComponent, AnalysisComponentBuilder> {
  _$AnalysisComponent? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _arn;
  String? get arn => _$this._arn;
  set arn(String? arn) => _$this._arn = arn;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AnalysisComponentBuilder();

  AnalysisComponentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _arn = $v.arn;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnalysisComponent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnalysisComponent;
  }

  @override
  void update(void Function(AnalysisComponentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnalysisComponent build() => _build();

  _$AnalysisComponent _build() {
    final _$result =
        _$v ?? new _$AnalysisComponent._(id: id, arn: arn, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
