import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fechainicio" field.
  DateTime? _fechainicio;
  DateTime? get fechainicio => _fechainicio;
  bool hasFechainicio() => _fechainicio != null;

  // "fechaFin" field.
  DateTime? _fechaFin;
  DateTime? get fechaFin => _fechaFin;
  bool hasFechaFin() => _fechaFin != null;

  // "bloqueaDisponibilidad" field.
  bool? _bloqueaDisponibilidad;
  bool get bloqueaDisponibilidad => _bloqueaDisponibilidad ?? false;
  bool hasBloqueaDisponibilidad() => _bloqueaDisponibilidad != null;

  void _initializeFields() {
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fechainicio = snapshotData['fechainicio'] as DateTime?;
    _fechaFin = snapshotData['fechaFin'] as DateTime?;
    _bloqueaDisponibilidad = snapshotData['bloqueaDisponibilidad'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? titulo,
  String? descripcion,
  DateTime? fechainicio,
  DateTime? fechaFin,
  bool? bloqueaDisponibilidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'titulo': titulo,
      'descripcion': descripcion,
      'fechainicio': fechainicio,
      'fechaFin': fechaFin,
      'bloqueaDisponibilidad': bloqueaDisponibilidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    return e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fechainicio == e2?.fechainicio &&
        e1?.fechaFin == e2?.fechaFin &&
        e1?.bloqueaDisponibilidad == e2?.bloqueaDisponibilidad;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.titulo,
        e?.descripcion,
        e?.fechainicio,
        e?.fechaFin,
        e?.bloqueaDisponibilidad
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
