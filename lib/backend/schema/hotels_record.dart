import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelsRecord extends FirestoreRecord {
  HotelsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "idVolcanesCercanos" field.
  List<DocumentReference>? _idVolcanesCercanos;
  List<DocumentReference> get idVolcanesCercanos =>
      _idVolcanesCercanos ?? const [];
  bool hasIdVolcanesCercanos() => _idVolcanesCercanos != null;

  // "precioNoche" field.
  double? _precioNoche;
  double get precioNoche => _precioNoche ?? 0.0;
  bool hasPrecioNoche() => _precioNoche != null;

  // "habitacionesDisponibles" field.
  int? _habitacionesDisponibles;
  int get habitacionesDisponibles => _habitacionesDisponibles ?? 0;
  bool hasHabitacionesDisponibles() => _habitacionesDisponibles != null;

  // "imagenes" field.
  List<String>? _imagenes;
  List<String> get imagenes => _imagenes ?? const [];
  bool hasImagenes() => _imagenes != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _ubicacion = snapshotData['ubicacion'] as String?;
    _idVolcanesCercanos = getDataList(snapshotData['idVolcanesCercanos']);
    _precioNoche = castToType<double>(snapshotData['precioNoche']);
    _habitacionesDisponibles =
        castToType<int>(snapshotData['habitacionesDisponibles']);
    _imagenes = getDataList(snapshotData['imagenes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Hotels');

  static Stream<HotelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HotelsRecord.fromSnapshot(s));

  static Future<HotelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HotelsRecord.fromSnapshot(s));

  static HotelsRecord fromSnapshot(DocumentSnapshot snapshot) => HotelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HotelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HotelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HotelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HotelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHotelsRecordData({
  String? nombre,
  String? ubicacion,
  double? precioNoche,
  int? habitacionesDisponibles,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'ubicacion': ubicacion,
      'precioNoche': precioNoche,
      'habitacionesDisponibles': habitacionesDisponibles,
    }.withoutNulls,
  );

  return firestoreData;
}

class HotelsRecordDocumentEquality implements Equality<HotelsRecord> {
  const HotelsRecordDocumentEquality();

  @override
  bool equals(HotelsRecord? e1, HotelsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nombre == e2?.nombre &&
        e1?.ubicacion == e2?.ubicacion &&
        listEquality.equals(e1?.idVolcanesCercanos, e2?.idVolcanesCercanos) &&
        e1?.precioNoche == e2?.precioNoche &&
        e1?.habitacionesDisponibles == e2?.habitacionesDisponibles &&
        listEquality.equals(e1?.imagenes, e2?.imagenes);
  }

  @override
  int hash(HotelsRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.ubicacion,
        e?.idVolcanesCercanos,
        e?.precioNoche,
        e?.habitacionesDisponibles,
        e?.imagenes
      ]);

  @override
  bool isValidKey(Object? o) => o is HotelsRecord;
}
