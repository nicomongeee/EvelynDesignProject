import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProyectosRecord extends FirestoreRecord {
  ProyectosRecord._(
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

  // "disponible" field.
  bool? _disponible;
  bool get disponible => _disponible ?? false;
  bool hasDisponible() => _disponible != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _disponible = snapshotData['disponible'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Proyectos');

  static Stream<ProyectosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProyectosRecord.fromSnapshot(s));

  static Future<ProyectosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProyectosRecord.fromSnapshot(s));

  static ProyectosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProyectosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProyectosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProyectosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProyectosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProyectosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProyectosRecordData({
  String? nombre,
  String? descripcion,
  String? imagen,
  bool? disponible,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'imagen': imagen,
      'disponible': disponible,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProyectosRecordDocumentEquality implements Equality<ProyectosRecord> {
  const ProyectosRecordDocumentEquality();

  @override
  bool equals(ProyectosRecord? e1, ProyectosRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.disponible == e2?.disponible;
  }

  @override
  int hash(ProyectosRecord? e) => const ListEquality()
      .hash([e?.nombre, e?.descripcion, e?.imagen, e?.disponible]);

  @override
  bool isValidKey(Object? o) => o is ProyectosRecord;
}
