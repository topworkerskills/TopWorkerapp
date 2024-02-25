import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InterviewMaterialsRecord extends FirestoreRecord {
  InterviewMaterialsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Interview_Materials');

  static Stream<InterviewMaterialsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InterviewMaterialsRecord.fromSnapshot(s));

  static Future<InterviewMaterialsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => InterviewMaterialsRecord.fromSnapshot(s));

  static InterviewMaterialsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InterviewMaterialsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InterviewMaterialsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InterviewMaterialsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InterviewMaterialsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InterviewMaterialsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInterviewMaterialsRecordData({
  String? name,
  String? description,
  double? price,
  bool? onSale,
  double? salePrice,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class InterviewMaterialsRecordDocumentEquality
    implements Equality<InterviewMaterialsRecord> {
  const InterviewMaterialsRecordDocumentEquality();

  @override
  bool equals(InterviewMaterialsRecord? e1, InterviewMaterialsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(InterviewMaterialsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.onSale,
        e?.salePrice,
        e?.quantity
      ]);

  @override
  bool isValidKey(Object? o) => o is InterviewMaterialsRecord;
}
