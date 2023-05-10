// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.cloud_formation.model.create_change_set_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateChangeSetOutput extends CreateChangeSetOutput {
  @override
  final String? id;
  @override
  final String? stackId;

  factory _$CreateChangeSetOutput(
          [void Function(CreateChangeSetOutputBuilder)? updates]) =>
      (new CreateChangeSetOutputBuilder()..update(updates))._build();

  _$CreateChangeSetOutput._({this.id, this.stackId}) : super._();

  @override
  CreateChangeSetOutput rebuild(
          void Function(CreateChangeSetOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateChangeSetOutputBuilder toBuilder() =>
      new CreateChangeSetOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateChangeSetOutput &&
        id == other.id &&
        stackId == other.stackId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, stackId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateChangeSetOutputBuilder
    implements Builder<CreateChangeSetOutput, CreateChangeSetOutputBuilder> {
  _$CreateChangeSetOutput? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _stackId;
  String? get stackId => _$this._stackId;
  set stackId(String? stackId) => _$this._stackId = stackId;

  CreateChangeSetOutputBuilder() {
    CreateChangeSetOutput._init(this);
  }

  CreateChangeSetOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _stackId = $v.stackId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateChangeSetOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateChangeSetOutput;
  }

  @override
  void update(void Function(CreateChangeSetOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateChangeSetOutput build() => _build();

  _$CreateChangeSetOutput _build() {
    final _$result =
        _$v ?? new _$CreateChangeSetOutput._(id: id, stackId: stackId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
