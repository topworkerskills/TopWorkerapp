import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Tasks_Title" field.
  String? _tasksTitle;
  String get tasksTitle => _tasksTitle ?? '';
  bool hasTasksTitle() => _tasksTitle != null;

  // "Task_Detail" field.
  String? _taskDetail;
  String get taskDetail => _taskDetail ?? '';
  bool hasTaskDetail() => _taskDetail != null;

  // "Complete_Flag" field.
  bool? _completeFlag;
  bool get completeFlag => _completeFlag ?? false;
  bool hasCompleteFlag() => _completeFlag != null;

  // "Due_Date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "Assignment_Reference" field.
  DocumentReference? _assignmentReference;
  DocumentReference? get assignmentReference => _assignmentReference;
  bool hasAssignmentReference() => _assignmentReference != null;

  // "Plans_Reference" field.
  DocumentReference? _plansReference;
  DocumentReference? get plansReference => _plansReference;
  bool hasPlansReference() => _plansReference != null;

  // "Task_assignee" field.
  DocumentReference? _taskAssignee;
  DocumentReference? get taskAssignee => _taskAssignee;
  bool hasTaskAssignee() => _taskAssignee != null;

  // "completed_date" field.
  DateTime? _completedDate;
  DateTime? get completedDate => _completedDate;
  bool hasCompletedDate() => _completedDate != null;

  void _initializeFields() {
    _tasksTitle = snapshotData['Tasks_Title'] as String?;
    _taskDetail = snapshotData['Task_Detail'] as String?;
    _completeFlag = snapshotData['Complete_Flag'] as bool?;
    _dueDate = snapshotData['Due_Date'] as DateTime?;
    _assignmentReference =
        snapshotData['Assignment_Reference'] as DocumentReference?;
    _plansReference = snapshotData['Plans_Reference'] as DocumentReference?;
    _taskAssignee = snapshotData['Task_assignee'] as DocumentReference?;
    _completedDate = snapshotData['completed_date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? tasksTitle,
  String? taskDetail,
  bool? completeFlag,
  DateTime? dueDate,
  DocumentReference? assignmentReference,
  DocumentReference? plansReference,
  DocumentReference? taskAssignee,
  DateTime? completedDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Tasks_Title': tasksTitle,
      'Task_Detail': taskDetail,
      'Complete_Flag': completeFlag,
      'Due_Date': dueDate,
      'Assignment_Reference': assignmentReference,
      'Plans_Reference': plansReference,
      'Task_assignee': taskAssignee,
      'completed_date': completedDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.tasksTitle == e2?.tasksTitle &&
        e1?.taskDetail == e2?.taskDetail &&
        e1?.completeFlag == e2?.completeFlag &&
        e1?.dueDate == e2?.dueDate &&
        e1?.assignmentReference == e2?.assignmentReference &&
        e1?.plansReference == e2?.plansReference &&
        e1?.taskAssignee == e2?.taskAssignee &&
        e1?.completedDate == e2?.completedDate;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.tasksTitle,
        e?.taskDetail,
        e?.completeFlag,
        e?.dueDate,
        e?.assignmentReference,
        e?.plansReference,
        e?.taskAssignee,
        e?.completedDate
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
