// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_snapshot_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ImportSnapshotTask extends ImportSnapshotTask {
  @override
  final String? description;
  @override
  final String? importTaskId;
  @override
  final SnapshotTaskDetail? snapshotTaskDetail;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ImportSnapshotTask(
          [void Function(ImportSnapshotTaskBuilder)? updates]) =>
      (new ImportSnapshotTaskBuilder()..update(updates))._build();

  _$ImportSnapshotTask._(
      {this.description, this.importTaskId, this.snapshotTaskDetail, this.tags})
      : super._();

  @override
  ImportSnapshotTask rebuild(
          void Function(ImportSnapshotTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImportSnapshotTaskBuilder toBuilder() =>
      new ImportSnapshotTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImportSnapshotTask &&
        description == other.description &&
        importTaskId == other.importTaskId &&
        snapshotTaskDetail == other.snapshotTaskDetail &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, importTaskId.hashCode);
    _$hash = $jc(_$hash, snapshotTaskDetail.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ImportSnapshotTaskBuilder
    implements Builder<ImportSnapshotTask, ImportSnapshotTaskBuilder> {
  _$ImportSnapshotTask? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _importTaskId;
  String? get importTaskId => _$this._importTaskId;
  set importTaskId(String? importTaskId) => _$this._importTaskId = importTaskId;

  SnapshotTaskDetailBuilder? _snapshotTaskDetail;
  SnapshotTaskDetailBuilder get snapshotTaskDetail =>
      _$this._snapshotTaskDetail ??= new SnapshotTaskDetailBuilder();
  set snapshotTaskDetail(SnapshotTaskDetailBuilder? snapshotTaskDetail) =>
      _$this._snapshotTaskDetail = snapshotTaskDetail;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ImportSnapshotTaskBuilder();

  ImportSnapshotTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _importTaskId = $v.importTaskId;
      _snapshotTaskDetail = $v.snapshotTaskDetail?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImportSnapshotTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImportSnapshotTask;
  }

  @override
  void update(void Function(ImportSnapshotTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImportSnapshotTask build() => _build();

  _$ImportSnapshotTask _build() {
    _$ImportSnapshotTask _$result;
    try {
      _$result = _$v ??
          new _$ImportSnapshotTask._(
              description: description,
              importTaskId: importTaskId,
              snapshotTaskDetail: _snapshotTaskDetail?.build(),
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'snapshotTaskDetail';
        _snapshotTaskDetail?.build();
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImportSnapshotTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
