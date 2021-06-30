import 'package:equatable/equatable.dart';

class OriginalTransactionInfoData extends Equatable {
  final String? originalStan;
  final String? originalTransmissionDateAndTime;
  final String? originalAuthorizationId;
  final String? originalAmount;
  final String? month;
  final int? time;

  const OriginalTransactionInfoData({
    this.originalStan,
    this.originalTransmissionDateAndTime,
    this.originalAuthorizationId,
    this.originalAmount,
    this.month,
    this.time,
  });

  Map<String, dynamic> toJson() {
    return {
      'originalStan': originalStan,
      'originalTransmissionDateAndTime': originalTransmissionDateAndTime,
      'originalAuthorizationId': originalAuthorizationId,
      'originalAmount': originalAmount,
      'month': month,
      'time': time,
    };
  }

  OriginalTransactionInfoData.fromJson(Map<String, dynamic> json)
      : originalStan = json['originalStan'],
        originalTransmissionDateAndTime =
            json['originalTransmissionDateAndTime'],
        originalAuthorizationId = json['originalAuthorizationId'],
        originalAmount = json['originalAmount'],
        month = json['month'],
        time = json['time'];

  @override
  List<Object?> get props => [
        originalStan,
        originalTransmissionDateAndTime,
        originalAuthorizationId,
        originalAmount,
        month,
        time,
      ];
}
