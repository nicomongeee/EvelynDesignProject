import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturaRecord extends FirestoreRecord {
  FacturaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "fechaCompra" field.
  DateTime? _fechaCompra;
  DateTime? get fechaCompra => _fechaCompra;
  bool hasFechaCompra() => _fechaCompra != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "producto" field.
  DocumentReference? _producto;
  DocumentReference? get producto => _producto;
  bool hasProducto() => _producto != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _correo = snapshotData['correo'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _fechaCompra = snapshotData['fechaCompra'] as DateTime?;
    _total = castToType<double>(snapshotData['total']);
    _producto = snapshotData['producto'] as DocumentReference?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Factura');

  static Stream<FacturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturaRecord.fromSnapshot(s));

  static Future<FacturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturaRecord.fromSnapshot(s));

  static FacturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturaRecordData({
  String? nombre,
  String? correo,
  String? telefono,
  String? direccion,
  DateTime? fechaCompra,
  double? total,
  DocumentReference? producto,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'correo': correo,
      'telefono': telefono,
      'direccion': direccion,
      'fechaCompra': fechaCompra,
      'total': total,
      'producto': producto,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturaRecordDocumentEquality implements Equality<FacturaRecord> {
  const FacturaRecordDocumentEquality();

  @override
  bool equals(FacturaRecord? e1, FacturaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.correo == e2?.correo &&
        e1?.telefono == e2?.telefono &&
        e1?.direccion == e2?.direccion &&
        e1?.fechaCompra == e2?.fechaCompra &&
        e1?.total == e2?.total &&
        e1?.producto == e2?.producto &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(FacturaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.correo,
        e?.telefono,
        e?.direccion,
        e?.fechaCompra,
        e?.total,
        e?.producto,
        e?.estado
      ]);

  @override
  bool isValidKey(Object? o) => o is FacturaRecord;
}
