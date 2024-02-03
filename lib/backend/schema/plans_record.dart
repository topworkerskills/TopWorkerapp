import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PlansRecord extends FirestoreRecord {
  PlansRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Plans_Title" field.
  String? _plansTitle;
  String get plansTitle => _plansTitle ?? '';
  bool hasPlansTitle() => _plansTitle != null;

  // "Plans_Details" field.
  String? _plansDetails;
  String get plansDetails => _plansDetails ?? '';
  bool hasPlansDetails() => _plansDetails != null;

  // "Due_Date" field.
  DateTime? _dueDate;
  DateTime? get dueDate => _dueDate;
  bool hasDueDate() => _dueDate != null;

  // "Assignment_Reference" field.
  DocumentReference? _assignmentReference;
  DocumentReference? get assignmentReference => _assignmentReference;
  bool hasAssignmentReference() => _assignmentReference != null;

  void _initializeFields() {
    _plansTitle = snapshotData['Plans_Title'] as String?;
    _plansDetails = snapshotData['Plans_Details'] as String?;
    _dueDate = snapshotData['Due_Date'] as DateTime?;
    _assignmentReference =
        snapshotData['Assignment_Reference'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlansRecord.fromSnapshot(s));

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlansRecord.fromSnapshot(s));

  static PlansRecord fromSnapshot(DocumentSnapshot snapshot) => PlansRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlansRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlansRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlansRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlansRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlansRecordData({
  String? plansTitle,
  String? plansDetails,
  DateTime? dueDate,
  DocumentReference? assignmentReference,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Plans_Title': plansTitle,
      'Plans_Details': plansDetails,
      'Due_Date': dueDate,
      'Assignment_Reference': assignmentReference,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlansRecordDocumentEquality implements Equality<PlansRecord> {
  const PlansRecordDocumentEquality();

  @override
  bool equals(PlansRecord? e1, PlansRecord? e2) {
    return e1?.plansTitle == e2?.plansTitle &&
        e1?.plansDetails == e2?.plansDetails &&
        e1?.dueDate == e2?.dueDate &&
        e1?.assignmentReference == e2?.assignmentReference;
  }

  @override
  int hash(PlansRecord? e) => const ListEquality().hash(
      [e?.plansTitle, e?.plansDetails, e?.dueDate, e?.assignmentReference]);

  @override
  bool isValidKey(Object? o) => o is PlansRecord;
}
