import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiciosRecord extends FirestoreRecord {
  ServiciosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  // "idcategoria" field.
  DocumentReference? _idcategoria;
  DocumentReference? get idcategoria => _idcategoria;
  bool hasIdcategoria() => _idcategoria != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _precio = castToType<int>(snapshotData['precio']);
    _disponible = snapshotData['disponible'] as bool?;
    _idcategoria = snapshotData['idcategoria'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Servicios');

  static Stream<ServiciosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiciosRecord.fromSnapshot(s));

  static Future<ServiciosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiciosRecord.fromSnapshot(s));

  static ServiciosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiciosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiciosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiciosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiciosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiciosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiciosRecordData({
  String? nombre,
  String? descripcion,
  String? imagen,
  int? precio,
  bool? disponible,
  DocumentReference? idcategoria,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'imagen': imagen,
      'precio': precio,
      'disponible': disponible,
      'idcategoria': idcategoria,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiciosRecordDocumentEquality implements Equality<ServiciosRecord> {
  const ServiciosRecordDocumentEquality();

  @override
  bool equals(ServiciosRecord? e1, ServiciosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.precio == e2?.precio &&
        e1?.disponible == e2?.disponible &&
        e1?.idcategoria == e2?.idcategoria;
  }

  @override
  int hash(ServiciosRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.imagen,
        e?.precio,
        e?.disponible,
        e?.idcategoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiciosRecord;
}
