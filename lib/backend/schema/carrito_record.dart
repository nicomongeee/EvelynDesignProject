import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarritoRecord extends FirestoreRecord {
  CarritoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  void _initializeFields() {
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _producto = snapshotData['producto'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Carrito');

  static Stream<CarritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoRecord.fromSnapshot(s));

  static Future<CarritoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoRecord.fromSnapshot(s));

  static CarritoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoRecordData({
  int? cantidad,
  double? subTotal,
  DocumentReference? producto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cantidad': cantidad,
      'subTotal': subTotal,
      'producto': producto,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoRecordDocumentEquality implements Equality<CarritoRecord> {
  const CarritoRecordDocumentEquality();

  @override
  bool equals(CarritoRecord? e1, CarritoRecord? e2) {
    return e1?.cantidad == e2?.cantidad &&
        e1?.subTotal == e2?.subTotal &&
        e1?.producto == e2?.producto;
  }

  @override
  int hash(CarritoRecord? e) =>
      const ListEquality().hash([e?.cantidad, e?.subTotal, e?.producto]);

  @override
  bool isValidKey(Object? o) => o is CarritoRecord;
}
