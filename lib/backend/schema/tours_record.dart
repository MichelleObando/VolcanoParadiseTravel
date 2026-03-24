import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToursRecord extends FirestoreRecord {
  ToursRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_volcan" field.
  DocumentReference? _idVolcan;
  DocumentReference? get idVolcan => _idVolcan;
  bool hasIdVolcan() => _idVolcan != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "precio_persona" field.
  double? _precioPersona;
  double get precioPersona => _precioPersona ?? 0.0;
  bool hasPrecioPersona() => _precioPersona != null;

  // "cupo_maximo" field.
  int? _cupoMaximo;
  int get cupoMaximo => _cupoMaximo ?? 0;
  bool hasCupoMaximo() => _cupoMaximo != null;

  // "cupos_disponibles" field.
  int? _cuposDisponibles;
  int get cuposDisponibles => _cuposDisponibles ?? 0;
  bool hasCuposDisponibles() => _cuposDisponibles != null;

  // "tipo_tour" field.
  String? _tipoTour;
  String get tipoTour => _tipoTour ?? '';
  bool hasTipoTour() => _tipoTour != null;

  void _initializeFields() {
    _idVolcan = snapshotData['id_volcan'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _precioPersona = castToType<double>(snapshotData['precio_persona']);
    _cupoMaximo = castToType<int>(snapshotData['cupo_maximo']);
    _cuposDisponibles = castToType<int>(snapshotData['cupos_disponibles']);
    _tipoTour = snapshotData['tipo_tour'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tours');

  static Stream<ToursRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToursRecord.fromSnapshot(s));

  static Future<ToursRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToursRecord.fromSnapshot(s));

  static ToursRecord fromSnapshot(DocumentSnapshot snapshot) => ToursRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToursRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToursRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToursRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToursRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToursRecordData({
  DocumentReference? idVolcan,
  DateTime? fecha,
  double? precioPersona,
  int? cupoMaximo,
  int? cuposDisponibles,
  String? tipoTour,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_volcan': idVolcan,
      'fecha': fecha,
      'precio_persona': precioPersona,
      'cupo_maximo': cupoMaximo,
      'cupos_disponibles': cuposDisponibles,
      'tipo_tour': tipoTour,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToursRecordDocumentEquality implements Equality<ToursRecord> {
  const ToursRecordDocumentEquality();

  @override
  bool equals(ToursRecord? e1, ToursRecord? e2) {
    return e1?.idVolcan == e2?.idVolcan &&
        e1?.fecha == e2?.fecha &&
        e1?.precioPersona == e2?.precioPersona &&
        e1?.cupoMaximo == e2?.cupoMaximo &&
        e1?.cuposDisponibles == e2?.cuposDisponibles &&
        e1?.tipoTour == e2?.tipoTour;
  }

  @override
  int hash(ToursRecord? e) => const ListEquality().hash([
        e?.idVolcan,
        e?.fecha,
        e?.precioPersona,
        e?.cupoMaximo,
        e?.cuposDisponibles,
        e?.tipoTour
      ]);

  @override
  bool isValidKey(Object? o) => o is ToursRecord;
}
