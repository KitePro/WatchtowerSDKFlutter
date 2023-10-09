// import 'dart:ffi';
// import 'dart:typed_data';

// class SessionRecord {
//   final String sessionId;
//   final List<Uint8List> frames;

//   const SessionRecord({required this.sessionId, required this.frames});
//   SessionRecord.fromJson(Map<String, dynamic> json)
//       : sessionId = json['sessionId'],
//         frames = json['frames'];

//   Map<String, dynamic> toJson() => {'sessionId': sessionId, 'frames': frames};

//   SessionRecord copyWith({sessionId, timestamp, frames}) => SessionRecord(
//         sessionId: sessionId ?? this.sessionId,
//         frames: frames ?? this.frames,
//       );
// }
