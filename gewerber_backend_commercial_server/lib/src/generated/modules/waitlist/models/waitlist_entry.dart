/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../../../modules/waitlist/models/waitlist_locale.dart' as _i2;
import '../../../modules/waitlist/models/waitlist_source.dart' as _i3;
import '../../../modules/waitlist/models/waitlist_status.dart' as _i4;

abstract class WaitlistEntry
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  WaitlistEntry._({
    this.id,
    required this.email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    this.referrer,
    this.utmSource,
    this.utmMedium,
    this.utmCampaign,
    this.businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    this.invitedAt,
  }) : locale = locale ?? _i2.WaitlistLocale.de,
       source = source ?? _i3.WaitlistSource.website,
       status = status ?? _i4.WaitlistStatus.pending,
       createdAt = createdAt ?? DateTime.now();

  factory WaitlistEntry({
    int? id,
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) = _WaitlistEntryImpl;

  factory WaitlistEntry.fromJson(Map<String, dynamic> jsonSerialization) {
    return WaitlistEntry(
      id: jsonSerialization['id'] as int?,
      email: jsonSerialization['email'] as String,
      locale: jsonSerialization['locale'] == null
          ? null
          : _i2.WaitlistLocale.fromJson(
              (jsonSerialization['locale'] as String),
            ),
      source: jsonSerialization['source'] == null
          ? null
          : _i3.WaitlistSource.fromJson(
              (jsonSerialization['source'] as String),
            ),
      referrer: jsonSerialization['referrer'] as String?,
      utmSource: jsonSerialization['utmSource'] as String?,
      utmMedium: jsonSerialization['utmMedium'] as String?,
      utmCampaign: jsonSerialization['utmCampaign'] as String?,
      businessType: jsonSerialization['businessType'] as String?,
      status: jsonSerialization['status'] == null
          ? null
          : _i4.WaitlistStatus.fromJson(
              (jsonSerialization['status'] as String),
            ),
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      invitedAt: jsonSerialization['invitedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['invitedAt']),
    );
  }

  static final t = WaitlistEntryTable();

  static const db = WaitlistEntryRepository._();

  @override
  int? id;

  String email;

  _i2.WaitlistLocale locale;

  _i3.WaitlistSource source;

  String? referrer;

  String? utmSource;

  String? utmMedium;

  String? utmCampaign;

  String? businessType;

  _i4.WaitlistStatus status;

  DateTime createdAt;

  DateTime? invitedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  WaitlistEntry copyWith({
    int? id,
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      '__className__': 'gewerber_backend_commercial.WaitlistEntry',
      if (id != null) 'id': id,
      'email': email,
      'locale': locale.toJson(),
      'source': source.toJson(),
      if (referrer != null) 'referrer': referrer,
      if (utmSource != null) 'utmSource': utmSource,
      if (utmMedium != null) 'utmMedium': utmMedium,
      if (utmCampaign != null) 'utmCampaign': utmCampaign,
      if (businessType != null) 'businessType': businessType,
      'status': status.toJson(),
      'createdAt': createdAt.toJson(),
      if (invitedAt != null) 'invitedAt': invitedAt?.toJson(),
    };
  }

  static WaitlistEntryInclude include() {
    return WaitlistEntryInclude._();
  }

  static WaitlistEntryIncludeList includeList({
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    WaitlistEntryInclude? include,
  }) {
    return WaitlistEntryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _WaitlistEntryImpl extends WaitlistEntry {
  _WaitlistEntryImpl({
    int? id,
    required String email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    String? referrer,
    String? utmSource,
    String? utmMedium,
    String? utmCampaign,
    String? businessType,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    DateTime? invitedAt,
  }) : super._(
         id: id,
         email: email,
         locale: locale,
         source: source,
         referrer: referrer,
         utmSource: utmSource,
         utmMedium: utmMedium,
         utmCampaign: utmCampaign,
         businessType: businessType,
         status: status,
         createdAt: createdAt,
         invitedAt: invitedAt,
       );

  /// Returns a shallow copy of this [WaitlistEntry]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  WaitlistEntry copyWith({
    Object? id = _Undefined,
    String? email,
    _i2.WaitlistLocale? locale,
    _i3.WaitlistSource? source,
    Object? referrer = _Undefined,
    Object? utmSource = _Undefined,
    Object? utmMedium = _Undefined,
    Object? utmCampaign = _Undefined,
    Object? businessType = _Undefined,
    _i4.WaitlistStatus? status,
    DateTime? createdAt,
    Object? invitedAt = _Undefined,
  }) {
    return WaitlistEntry(
      id: id is int? ? id : this.id,
      email: email ?? this.email,
      locale: locale ?? this.locale,
      source: source ?? this.source,
      referrer: referrer is String? ? referrer : this.referrer,
      utmSource: utmSource is String? ? utmSource : this.utmSource,
      utmMedium: utmMedium is String? ? utmMedium : this.utmMedium,
      utmCampaign: utmCampaign is String? ? utmCampaign : this.utmCampaign,
      businessType: businessType is String? ? businessType : this.businessType,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      invitedAt: invitedAt is DateTime? ? invitedAt : this.invitedAt,
    );
  }
}

class WaitlistEntryUpdateTable extends _i1.UpdateTable<WaitlistEntryTable> {
  WaitlistEntryUpdateTable(super.table);

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<_i2.WaitlistLocale, _i2.WaitlistLocale> locale(
    _i2.WaitlistLocale value,
  ) => _i1.ColumnValue(
    table.locale,
    value,
  );

  _i1.ColumnValue<_i3.WaitlistSource, _i3.WaitlistSource> source(
    _i3.WaitlistSource value,
  ) => _i1.ColumnValue(
    table.source,
    value,
  );

  _i1.ColumnValue<String, String> referrer(String? value) => _i1.ColumnValue(
    table.referrer,
    value,
  );

  _i1.ColumnValue<String, String> utmSource(String? value) => _i1.ColumnValue(
    table.utmSource,
    value,
  );

  _i1.ColumnValue<String, String> utmMedium(String? value) => _i1.ColumnValue(
    table.utmMedium,
    value,
  );

  _i1.ColumnValue<String, String> utmCampaign(String? value) => _i1.ColumnValue(
    table.utmCampaign,
    value,
  );

  _i1.ColumnValue<String, String> businessType(String? value) =>
      _i1.ColumnValue(
        table.businessType,
        value,
      );

  _i1.ColumnValue<_i4.WaitlistStatus, _i4.WaitlistStatus> status(
    _i4.WaitlistStatus value,
  ) => _i1.ColumnValue(
    table.status,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> invitedAt(DateTime? value) =>
      _i1.ColumnValue(
        table.invitedAt,
        value,
      );
}

class WaitlistEntryTable extends _i1.Table<int?> {
  WaitlistEntryTable({super.tableRelation})
    : super(tableName: 'commercial_waitlist_entry') {
    updateTable = WaitlistEntryUpdateTable(this);
    email = _i1.ColumnString(
      'email',
      this,
    );
    locale = _i1.ColumnEnum(
      'locale',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    source = _i1.ColumnEnum(
      'source',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    referrer = _i1.ColumnString(
      'referrer',
      this,
    );
    utmSource = _i1.ColumnString(
      'utmSource',
      this,
    );
    utmMedium = _i1.ColumnString(
      'utmMedium',
      this,
    );
    utmCampaign = _i1.ColumnString(
      'utmCampaign',
      this,
    );
    businessType = _i1.ColumnString(
      'businessType',
      this,
    );
    status = _i1.ColumnEnum(
      'status',
      this,
      _i1.EnumSerialization.byName,
      hasDefault: true,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
      hasDefault: true,
    );
    invitedAt = _i1.ColumnDateTime(
      'invitedAt',
      this,
    );
  }

  late final WaitlistEntryUpdateTable updateTable;

  late final _i1.ColumnString email;

  late final _i1.ColumnEnum<_i2.WaitlistLocale> locale;

  late final _i1.ColumnEnum<_i3.WaitlistSource> source;

  late final _i1.ColumnString referrer;

  late final _i1.ColumnString utmSource;

  late final _i1.ColumnString utmMedium;

  late final _i1.ColumnString utmCampaign;

  late final _i1.ColumnString businessType;

  late final _i1.ColumnEnum<_i4.WaitlistStatus> status;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime invitedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    email,
    locale,
    source,
    referrer,
    utmSource,
    utmMedium,
    utmCampaign,
    businessType,
    status,
    createdAt,
    invitedAt,
  ];
}

class WaitlistEntryInclude extends _i1.IncludeObject {
  WaitlistEntryInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => WaitlistEntry.t;
}

class WaitlistEntryIncludeList extends _i1.IncludeList {
  WaitlistEntryIncludeList._({
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(WaitlistEntry.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => WaitlistEntry.t;
}

class WaitlistEntryRepository {
  const WaitlistEntryRepository._();

  /// Returns a list of [WaitlistEntry]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<WaitlistEntry>> find(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.find<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      limit: limit,
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Returns the first matching [WaitlistEntry] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<WaitlistEntry?> findFirstRow(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? offset,
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findFirstRow<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      offset: offset,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Finds a single [WaitlistEntry] by its [id] or null if no such row exists.
  Future<WaitlistEntry?> findById(
    _i1.DatabaseSession session,
    int id, {
    _i1.Transaction? transaction,
    _i1.LockMode? lockMode,
    _i1.LockBehavior? lockBehavior,
  }) async {
    return session.db.findById<WaitlistEntry>(
      id,
      transaction: transaction,
      lockMode: lockMode,
      lockBehavior: lockBehavior,
    );
  }

  /// Inserts all [WaitlistEntry]s in the list and returns the inserted rows.
  ///
  /// The returned [WaitlistEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  ///
  /// If [ignoreConflicts] is set to `true`, rows that conflict with existing
  /// rows are silently skipped, and only the successfully inserted rows are
  /// returned.
  ///
  /// If [noReturn] is set to `true`, the inserted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> insert(
    _i1.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _i1.Transaction? transaction,
    bool ignoreConflicts = false,
    bool noReturn = false,
  }) async {
    return session.db.insert<WaitlistEntry>(
      rows,
      transaction: transaction,
      ignoreConflicts: ignoreConflicts,
      noReturn: noReturn,
    );
  }

  /// Inserts a single [WaitlistEntry] and returns the inserted row.
  ///
  /// The returned [WaitlistEntry] will have its `id` field set.
  Future<WaitlistEntry> insertRow(
    _i1.DatabaseSession session,
    WaitlistEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<WaitlistEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Upserts all [WaitlistEntry]s in the list and returns the resulting rows.
  ///
  /// If a row conflicts on the given [conflictColumns], the existing row is
  /// updated with the new values. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies to rows matching the
  /// given expression. Conflicting rows that don't match are skipped and not
  /// returned, so the resulting list may be shorter than [rows].
  ///
  /// The returned [WaitlistEntry]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails,
  /// none of the rows will be affected.
  ///
  /// If [noReturn] is set to `true`, the resulting rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> upsert(
    _i1.DatabaseSession session,
    List<WaitlistEntry> rows, {
    required _i1.ColumnSelections<WaitlistEntryTable> conflictColumns,
    _i1.ColumnSelections<WaitlistEntryTable>? updateColumns,
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? updateWhere,
    _i1.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.upsert<WaitlistEntry>(
      rows,
      conflictColumns: conflictColumns(WaitlistEntry.t),
      updateColumns: updateColumns?.call(WaitlistEntry.t),
      updateWhere: updateWhere?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Upserts a single [WaitlistEntry] and returns the resulting row.
  ///
  /// If the row conflicts on the given [conflictColumns], the existing row is
  /// updated. Otherwise, a new row is inserted.
  ///
  /// If [updateColumns] is provided, only those columns will be updated on
  /// conflict. If null, all non-conflict, non-id columns are updated.
  ///
  /// If [updateWhere] is provided, the update only applies when the existing
  /// row matches the expression. Returns `null` if no row was affected — for
  /// example when [updateWhere] does not match the conflicting row.
  ///
  /// The returned [WaitlistEntry] will have its `id` field set.
  Future<WaitlistEntry?> upsertRow(
    _i1.DatabaseSession session,
    WaitlistEntry row, {
    required _i1.ColumnSelections<WaitlistEntryTable> conflictColumns,
    _i1.ColumnSelections<WaitlistEntryTable>? updateColumns,
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? updateWhere,
    _i1.Transaction? transaction,
  }) async {
    return session.db.upsertRow<WaitlistEntry>(
      row,
      conflictColumns: conflictColumns(WaitlistEntry.t),
      updateColumns: updateColumns?.call(WaitlistEntry.t),
      updateWhere: updateWhere?.call(WaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates all [WaitlistEntry]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> update(
    _i1.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _i1.ColumnSelections<WaitlistEntryTable>? columns,
    _i1.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.update<WaitlistEntry>(
      rows,
      columns: columns?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Updates a single [WaitlistEntry]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<WaitlistEntry> updateRow(
    _i1.DatabaseSession session,
    WaitlistEntry row, {
    _i1.ColumnSelections<WaitlistEntryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<WaitlistEntry>(
      row,
      columns: columns?.call(WaitlistEntry.t),
      transaction: transaction,
    );
  }

  /// Updates a single [WaitlistEntry] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<WaitlistEntry?> updateById(
    _i1.DatabaseSession session,
    int id, {
    required _i1.ColumnValueListBuilder<WaitlistEntryUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<WaitlistEntry>(
      id,
      columnValues: columnValues(WaitlistEntry.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [WaitlistEntry]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  ///
  /// If [noReturn] is set to `true`, the updated rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> updateWhere(
    _i1.DatabaseSession session, {
    required _i1.ColumnValueListBuilder<WaitlistEntryUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<WaitlistEntryTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _i1.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.updateWhere<WaitlistEntry>(
      columnValues: columnValues(WaitlistEntry.t.updateTable),
      where: where(WaitlistEntry.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes all [WaitlistEntry]s in the list and returns the deleted rows.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> delete(
    _i1.DatabaseSession session,
    List<WaitlistEntry> rows, {
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _i1.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.delete<WaitlistEntry>(
      rows,
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Deletes a single [WaitlistEntry].
  Future<WaitlistEntry> deleteRow(
    _i1.DatabaseSession session,
    WaitlistEntry row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<WaitlistEntry>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  ///
  /// To specify the order of the returned rows use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// If [noReturn] is set to `true`, the deleted rows are not read back from
  /// the database and an empty list is returned. This avoids the overhead of
  /// transferring and deserializing the rows when the result is not needed.
  Future<List<WaitlistEntry>> deleteWhere(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<WaitlistEntryTable> where,
    _i1.OrderByBuilder<WaitlistEntryTable>? orderBy,
    _i1.OrderByListBuilder<WaitlistEntryTable>? orderByList,
    _i1.Transaction? transaction,
    bool noReturn = false,
  }) async {
    return session.db.deleteWhere<WaitlistEntry>(
      where: where(WaitlistEntry.t),
      orderBy: orderBy?.call(WaitlistEntry.t),
      orderByList: orderByList?.call(WaitlistEntry.t),
      transaction: transaction,
      noReturn: noReturn,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.DatabaseSession session, {
    _i1.WhereExpressionBuilder<WaitlistEntryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<WaitlistEntry>(
      where: where?.call(WaitlistEntry.t),
      limit: limit,
      transaction: transaction,
    );
  }

  /// Acquires row-level locks on [WaitlistEntry] rows matching the [where] expression.
  Future<void> lockRows(
    _i1.DatabaseSession session, {
    required _i1.WhereExpressionBuilder<WaitlistEntryTable> where,
    required _i1.LockMode lockMode,
    required _i1.Transaction transaction,
    _i1.LockBehavior lockBehavior = _i1.LockBehavior.wait,
  }) async {
    return session.db.lockRows<WaitlistEntry>(
      where: where(WaitlistEntry.t),
      lockMode: lockMode,
      lockBehavior: lockBehavior,
      transaction: transaction,
    );
  }
}
