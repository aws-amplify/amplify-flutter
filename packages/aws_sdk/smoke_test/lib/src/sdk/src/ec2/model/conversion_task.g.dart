// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversion_task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConversionTask extends ConversionTask {
  @override
  final String? conversionTaskId;
  @override
  final String? expirationTime;
  @override
  final ImportInstanceTaskDetails? importInstance;
  @override
  final ImportVolumeTaskDetails? importVolume;
  @override
  final ConversionTaskState? state;
  @override
  final String? statusMessage;
  @override
  final _i2.BuiltList<Tag>? tags;

  factory _$ConversionTask([void Function(ConversionTaskBuilder)? updates]) =>
      (new ConversionTaskBuilder()..update(updates))._build();

  _$ConversionTask._(
      {this.conversionTaskId,
      this.expirationTime,
      this.importInstance,
      this.importVolume,
      this.state,
      this.statusMessage,
      this.tags})
      : super._();

  @override
  ConversionTask rebuild(void Function(ConversionTaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConversionTaskBuilder toBuilder() =>
      new ConversionTaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConversionTask &&
        conversionTaskId == other.conversionTaskId &&
        expirationTime == other.expirationTime &&
        importInstance == other.importInstance &&
        importVolume == other.importVolume &&
        state == other.state &&
        statusMessage == other.statusMessage &&
        tags == other.tags;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conversionTaskId.hashCode);
    _$hash = $jc(_$hash, expirationTime.hashCode);
    _$hash = $jc(_$hash, importInstance.hashCode);
    _$hash = $jc(_$hash, importVolume.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, statusMessage.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class ConversionTaskBuilder
    implements Builder<ConversionTask, ConversionTaskBuilder> {
  _$ConversionTask? _$v;

  String? _conversionTaskId;
  String? get conversionTaskId => _$this._conversionTaskId;
  set conversionTaskId(String? conversionTaskId) =>
      _$this._conversionTaskId = conversionTaskId;

  String? _expirationTime;
  String? get expirationTime => _$this._expirationTime;
  set expirationTime(String? expirationTime) =>
      _$this._expirationTime = expirationTime;

  ImportInstanceTaskDetailsBuilder? _importInstance;
  ImportInstanceTaskDetailsBuilder get importInstance =>
      _$this._importInstance ??= new ImportInstanceTaskDetailsBuilder();
  set importInstance(ImportInstanceTaskDetailsBuilder? importInstance) =>
      _$this._importInstance = importInstance;

  ImportVolumeTaskDetailsBuilder? _importVolume;
  ImportVolumeTaskDetailsBuilder get importVolume =>
      _$this._importVolume ??= new ImportVolumeTaskDetailsBuilder();
  set importVolume(ImportVolumeTaskDetailsBuilder? importVolume) =>
      _$this._importVolume = importVolume;

  ConversionTaskState? _state;
  ConversionTaskState? get state => _$this._state;
  set state(ConversionTaskState? state) => _$this._state = state;

  String? _statusMessage;
  String? get statusMessage => _$this._statusMessage;
  set statusMessage(String? statusMessage) =>
      _$this._statusMessage = statusMessage;

  _i2.ListBuilder<Tag>? _tags;
  _i2.ListBuilder<Tag> get tags => _$this._tags ??= new _i2.ListBuilder<Tag>();
  set tags(_i2.ListBuilder<Tag>? tags) => _$this._tags = tags;

  ConversionTaskBuilder();

  ConversionTaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conversionTaskId = $v.conversionTaskId;
      _expirationTime = $v.expirationTime;
      _importInstance = $v.importInstance?.toBuilder();
      _importVolume = $v.importVolume?.toBuilder();
      _state = $v.state;
      _statusMessage = $v.statusMessage;
      _tags = $v.tags?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConversionTask other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConversionTask;
  }

  @override
  void update(void Function(ConversionTaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConversionTask build() => _build();

  _$ConversionTask _build() {
    _$ConversionTask _$result;
    try {
      _$result = _$v ??
          new _$ConversionTask._(
              conversionTaskId: conversionTaskId,
              expirationTime: expirationTime,
              importInstance: _importInstance?.build(),
              importVolume: _importVolume?.build(),
              state: state,
              statusMessage: statusMessage,
              tags: _tags?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'importInstance';
        _importInstance?.build();
        _$failedField = 'importVolume';
        _importVolume?.build();

        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConversionTask', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
