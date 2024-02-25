import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MerchandiseRecord extends FirestoreRecord {
  MerchandiseRecord._(
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

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "product_type" field.
  String? _productType;
  String get productType => _productType ?? '';
  bool hasProductType() => _productType != null;

  // "product_size" field.
  String? _productSize;
  String get productSize => _productSize ?? '';
  bool hasProductSize() => _productSize != null;

  // "Colour" field.
  Color? _colour;
  Color? get colour => _colour;
  bool hasColour() => _colour != null;

  // "merchandise_image" field.
  String? _merchandiseImage;
  String get merchandiseImage => _merchandiseImage ?? '';
  bool hasMerchandiseImage() => _merchandiseImage != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _productType = snapshotData['product_type'] as String?;
    _productSize = snapshotData['product_size'] as String?;
    _colour = getSchemaColor(snapshotData['Colour']);
    _merchandiseImage = snapshotData['merchandise_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Merchandise');

  static Stream<MerchandiseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MerchandiseRecord.fromSnapshot(s));

  static Future<MerchandiseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MerchandiseRecord.fromSnapshot(s));

  static MerchandiseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MerchandiseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MerchandiseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MerchandiseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MerchandiseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MerchandiseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMerchandiseRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  double? salePrice,
  int? quantity,
  String? productType,
  String? productSize,
  Color? colour,
  String? merchandiseImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'sale_price': salePrice,
      'quantity': quantity,
      'product_type': productType,
      'product_size': productSize,
      'Colour': colour,
      'merchandise_image': merchandiseImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class MerchandiseRecordDocumentEquality implements Equality<MerchandiseRecord> {
  const MerchandiseRecordDocumentEquality();

  @override
  bool equals(MerchandiseRecord? e1, MerchandiseRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.salePrice == e2?.salePrice &&
        e1?.quantity == e2?.quantity &&
        e1?.productType == e2?.productType &&
        e1?.productSize == e2?.productSize &&
        e1?.colour == e2?.colour &&
        e1?.merchandiseImage == e2?.merchandiseImage;
  }

  @override
  int hash(MerchandiseRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.salePrice,
        e?.quantity,
        e?.productType,
        e?.productSize,
        e?.colour,
        e?.merchandiseImage
      ]);

  @override
  bool isValidKey(Object? o) => o is MerchandiseRecord;
}
