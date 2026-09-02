/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member
// ignore_for_file: dead_code, unnecessary_type_check

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod/protocol.dart' as _i2;
import 'modules/waitlist/models/join_waitlist_request.dart' as _i3;
import 'modules/waitlist/models/waitlist_entry.dart' as _i4;
import 'modules/waitlist/models/waitlist_exception.dart' as _i5;
import 'modules/waitlist/models/waitlist_locale.dart' as _i6;
import 'modules/waitlist/models/waitlist_source.dart' as _i7;
import 'modules/waitlist/models/waitlist_status.dart' as _i8;
export 'modules/waitlist/models/join_waitlist_request.dart';
export 'modules/waitlist/models/waitlist_entry.dart';
export 'modules/waitlist/models/waitlist_exception.dart';
export 'modules/waitlist/models/waitlist_locale.dart';
export 'modules/waitlist/models/waitlist_source.dart';
export 'modules/waitlist/models/waitlist_status.dart';

class Protocol extends _i1.DatabaseSerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  final Set<_i1.SerializationManager> _hostProtocols = {};

  static List<_i2.TableDefinition> get targetTableDefinitions => [
    _i2.TableDefinition(
      name: 'commercial_waitlist_entry',
      dartName: 'WaitlistEntry',
      schema: 'public',
      module: 'gewerber_backend_commercial',
      columns: [
        _i2.ColumnDefinition(
          name: 'id',
          columnType: _i2.ColumnType.bigint,
          isNullable: false,
          dartType: 'int?',
          columnDefault: 'serial',
        ),
        _i2.ColumnDefinition(
          name: 'email',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'String',
        ),
        _i2.ColumnDefinition(
          name: 'locale',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistLocale',
          columnDefault: '\'de\'',
        ),
        _i2.ColumnDefinition(
          name: 'source',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistSource',
          columnDefault: '\'website\'',
        ),
        _i2.ColumnDefinition(
          name: 'referrer',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'utmSource',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'utmMedium',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'utmCampaign',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'businessType',
          columnType: _i2.ColumnType.text,
          isNullable: true,
          dartType: 'String?',
        ),
        _i2.ColumnDefinition(
          name: 'status',
          columnType: _i2.ColumnType.text,
          isNullable: false,
          dartType: 'protocol:WaitlistStatus',
          columnDefault: '\'pending\'',
        ),
        _i2.ColumnDefinition(
          name: 'createdAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: false,
          dartType: 'DateTime',
          columnDefault: 'now',
        ),
        _i2.ColumnDefinition(
          name: 'invitedAt',
          columnType: _i2.ColumnType.timestampWithoutTimeZone,
          isNullable: true,
          dartType: 'DateTime?',
        ),
      ],
      foreignKeys: [],
      indexes: [
        _i2.IndexDefinition(
          indexName: 'commercial_waitlist_entry__email__unique_idx',
          tableSpace: null,
          elements: [
            _i2.IndexElementDefinition(
              type: _i2.IndexElementDefinitionType.column,
              definition: 'email',
            ),
          ],
          type: 'btree',
          isUnique: true,
          isPrimary: false,
        ),
      ],
      managed: true,
    ),
  ];

  void registerHostProtocol(
    String projectName,
    _i1.SerializationManager protocol,
  ) {
    _hostProtocols.add(protocol);
  }

  static String? getClassNameFromObjectJson(dynamic data) {
    if (data is! Map) return null;
    final className = data['__className__'] as String?;
    if (className == null) return null;
    if (!className.startsWith('gewerber_backend_commercial.')) return className;
    return className.substring(20);
  }

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;

    final dataClassName = getClassNameFromObjectJson(data);
    if (dataClassName != null && dataClassName != getClassNameForType(t)) {
      try {
        return deserializeByClassName({
          'className': dataClassName,
          'data': data,
        });
      } on FormatException catch (_) {
        // If the className is not recognized (e.g., older client receiving
        // data with a new subtype), fall back to deserializing without the
        // className, using the expected type T.
      }
    }

    if (t == _i3.JoinWaitlistRequest) {
      return _i3.JoinWaitlistRequest.fromJson(data) as T;
    }
    if (t == _i4.WaitlistEntry) {
      return _i4.WaitlistEntry.fromJson(data) as T;
    }
    if (t == _i5.WaitlistException) {
      return _i5.WaitlistException.fromJson(data) as T;
    }
    if (t == _i6.WaitlistLocale) {
      return _i6.WaitlistLocale.fromJson(data) as T;
    }
    if (t == _i7.WaitlistSource) {
      return _i7.WaitlistSource.fromJson(data) as T;
    }
    if (t == _i8.WaitlistStatus) {
      return _i8.WaitlistStatus.fromJson(data) as T;
    }
    if (t == _i1.getType<_i3.JoinWaitlistRequest?>()) {
      return (data != null ? _i3.JoinWaitlistRequest.fromJson(data) : null)
          as T;
    }
    if (t == _i1.getType<_i4.WaitlistEntry?>()) {
      return (data != null ? _i4.WaitlistEntry.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.WaitlistException?>()) {
      return (data != null ? _i5.WaitlistException.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.WaitlistLocale?>()) {
      return (data != null ? _i6.WaitlistLocale.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.WaitlistSource?>()) {
      return (data != null ? _i7.WaitlistSource.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i8.WaitlistStatus?>()) {
      return (data != null ? _i8.WaitlistStatus.fromJson(data) : null) as T;
    }
    try {
      return _i2.Protocol().deserialize<T>(data, t);
    } on _i1.DeserializationTypeNotFoundException catch (_) {}
    return super.deserialize<T>(data, t);
  }

  static String? getClassNameForType(Type type) {
    return switch (type) {
      _i3.JoinWaitlistRequest => 'JoinWaitlistRequest',
      _i4.WaitlistEntry => 'WaitlistEntry',
      _i5.WaitlistException => 'WaitlistException',
      _i6.WaitlistLocale => 'WaitlistLocale',
      _i7.WaitlistSource => 'WaitlistSource',
      _i8.WaitlistStatus => 'WaitlistStatus',
      _ => null,
    };
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;

    if (data is Map<String, dynamic> && data['__className__'] is String) {
      return (data['__className__'] as String).replaceFirst(
        'gewerber_backend_commercial.',
        '',
      );
    }

    switch (data) {
      case _i3.JoinWaitlistRequest():
        return 'JoinWaitlistRequest';
      case _i4.WaitlistEntry():
        return 'WaitlistEntry';
      case _i5.WaitlistException():
        return 'WaitlistException';
      case _i6.WaitlistLocale():
        return 'WaitlistLocale';
      case _i7.WaitlistSource():
        return 'WaitlistSource';
      case _i8.WaitlistStatus():
        return 'WaitlistStatus';
    }
    className = _i2.Protocol().getClassNameForObject(data);
    if (className != null) {
      return className.contains('.') ? className : 'serverpod.$className';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'JoinWaitlistRequest') {
      return deserialize<_i3.JoinWaitlistRequest>(data['data']);
    }
    if (dataClassName == 'WaitlistEntry') {
      return deserialize<_i4.WaitlistEntry>(data['data']);
    }
    if (dataClassName == 'WaitlistException') {
      return deserialize<_i5.WaitlistException>(data['data']);
    }
    if (dataClassName == 'WaitlistLocale') {
      return deserialize<_i6.WaitlistLocale>(data['data']);
    }
    if (dataClassName == 'WaitlistSource') {
      return deserialize<_i7.WaitlistSource>(data['data']);
    }
    if (dataClassName == 'WaitlistStatus') {
      return deserialize<_i8.WaitlistStatus>(data['data']);
    }
    if (dataClassName.startsWith('serverpod.')) {
      data['className'] = dataClassName.substring(10);
      return _i2.Protocol().deserializeByClassName(data);
    }
    return super.deserializeByClassName(data);
  }

  @override
  Object? dynamicFieldToJson(
    Object? object, {
    bool forProtocol = false,
  }) {
    if ((object is List || object is Set || object is Map) ||
        getClassNameForObject(object) != null) {
      return super.dynamicFieldToJson(object, forProtocol: forProtocol);
    }
    for (final protocol in _hostProtocols) {
      final className = protocol.getClassNameForObject(object);
      if (className == null) continue;
      final host = protocol.getModuleName();
      final wrapped = {
        'className': className.contains('.') ? className : '$host.$className',
        'data': object,
      };
      return forProtocol
          ? _i1.SerializationManager.toEncodableForProtocol(wrapped)
          : _i1.SerializationManager.toEncodable(wrapped);
    }
    return super.dynamicFieldToJson(object, forProtocol: forProtocol);
  }

  @override
  dynamic deserializeDynamicFieldValue(Object? value) {
    if (value == null) return null;
    if (value is! Map<String, dynamic> || value['className'] is! String) {
      throw FormatException(
        'Dynamic fields are encoded as a Map with className and data, but got '
        '${value.runtimeType} instead.',
      );
    }
    final className = value['className'] as String;
    for (final protocol in _hostProtocols) {
      final host = protocol.getModuleName();
      final hostPrefix = '$host.';
      if (className.startsWith(hostPrefix)) {
        final strippedClassName = className.substring(hostPrefix.length);
        if (strippedClassName.contains('.')) {
          throw FormatException(
            'Dynamic field className must not use multiple prefixes: $className',
          );
        }
        final hostData = Map<String, dynamic>.from(value);
        hostData['className'] = strippedClassName;
        return protocol.deserializeByClassName(hostData);
      }
    }
    if (className.contains('.')) {
      for (final protocol in _hostProtocols) {
        try {
          return protocol.deserializeByClassName(value);
        } on FormatException catch (_) {}
      }
    }
    return deserializeByClassName(value);
  }

  @override
  _i1.Table? getTableForType(Type t) {
    {
      var table = _i2.Protocol().getTableForType(t);
      if (table != null) {
        return table;
      }
    }
    switch (t) {
      case _i4.WaitlistEntry:
        return _i4.WaitlistEntry.t;
    }
    return null;
  }

  @override
  List<_i2.TableDefinition> getTargetTableDefinitions() =>
      targetTableDefinitions;

  @override
  String getModuleName() => 'gewerber_backend_commercial';

  /// Maps any `Record`s known to this [Protocol] to their JSON representation
  ///
  /// Throws in case the record type is not known.
  ///
  /// This method will return `null` (only) for `null` inputs.
  Map<String, dynamic>? mapRecordToJson(Record? record) {
    if (record == null) {
      return null;
    }
    try {
      return _i2.Protocol().mapRecordToJson(record);
    } catch (_) {}
    throw Exception('Unsupported record type ${record.runtimeType}');
  }
}
