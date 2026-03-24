import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PromotionsRecord extends FirestoreRecord {
  PromotionsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "porcentajeDescuento" field.
  double? _porcentajeDescuento;
  double get porcentajeDescuento => _porcentajeDescuento ?? 0.0;
  bool hasPorcentajeDescuento() => _porcentajeDescuento != null;

  // "fechaVigenciaInicio" field.
  DateTime? _fechaVigenciaInicio;
  DateTime? get fechaVigenciaInicio => _fechaVigenciaInicio;
  bool hasFechaVigenciaInicio() => _fechaVigenciaInicio != null;

  // "fechaVigenciaFin" field.
  DateTime? _fechaVigenciaFin;
  DateTime? get fechaVigenciaFin => _fechaVigenciaFin;
  bool hasFechaVigenciaFin() => _fechaVigenciaFin != null;

  // "volcanesAplicables" field.
  List<DocumentReference>? _volcanesAplicables;
  List<DocumentReference> get volcanesAplicables =>
      _volcanesAplicables ?? const [];
  bool hasVolcanesAplicables() => _volcanesAplicables != null;

  // "condiciones" field.
  String? _condiciones;
  String get condiciones => _condiciones ?? '';
  bool hasCondiciones() => _condiciones != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _porcentajeDescuento =
        castToType<double>(snapshotData['porcentajeDescuento']);
    _fechaVigenciaInicio = snapshotData['fechaVigenciaInicio'] as DateTime?;
    _fechaVigenciaFin = snapshotData['fechaVigenciaFin'] as DateTime?;
    _volcanesAplicables = getDataList(snapshotData['volcanesAplicables']);
    _condiciones = snapshotData['condiciones'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Promotions');

  static Stream<PromotionsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PromotionsRecord.fromSnapshot(s));

  static Future<PromotionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PromotionsRecord.fromSnapshot(s));

  static PromotionsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PromotionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PromotionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PromotionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PromotionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PromotionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPromotionsRecordData({
  String? descripcion,
  double? porcentajeDescuento,
  DateTime? fechaVigenciaInicio,
  DateTime? fechaVigenciaFin,
  String? condiciones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'porcentajeDescuento': porcentajeDescuento,
      'fechaVigenciaInicio': fechaVigenciaInicio,
      'fechaVigenciaFin': fechaVigenciaFin,
      'condiciones': condiciones,
    }.withoutNulls,
  );

  return firestoreData;
}

class PromotionsRecordDocumentEquality implements Equality<PromotionsRecord> {
  const PromotionsRecordDocumentEquality();

  @override
  bool equals(PromotionsRecord? e1, PromotionsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.descripcion == e2?.descripcion &&
        e1?.porcentajeDescuento == e2?.porcentajeDescuento &&
        e1?.fechaVigenciaInicio == e2?.fechaVigenciaInicio &&
        e1?.fechaVigenciaFin == e2?.fechaVigenciaFin &&
        listEquality.equals(e1?.volcanesAplicables, e2?.volcanesAplicables) &&
        e1?.condiciones == e2?.condiciones;
  }

  @override
  int hash(PromotionsRecord? e) => const ListEquality().hash([
        e?.descripcion,
        e?.porcentajeDescuento,
        e?.fechaVigenciaInicio,
        e?.fechaVigenciaFin,
        e?.volcanesAplicables,
        e?.condiciones
      ]);

  @override
  bool isValidKey(Object? o) => o is PromotionsRecord;
}
