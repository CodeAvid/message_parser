import 'package:equatable/equatable.dart';

class TerminalInfoResponse extends Equatable {
  final String? merchantId;
  final String? currencyCode;
  final String? countryCode;
  final int? serverTimeoutInSec;
  final int? callHomeTimeInMin;
  final String? merchantCategoryCode;
  final String? merchantNameAndLocation;

  const TerminalInfoResponse({
    this.merchantId,
    this.currencyCode,
    this.countryCode,
    this.serverTimeoutInSec,
    this.callHomeTimeInMin,
    this.merchantCategoryCode,
    this.merchantNameAndLocation,
  });

  Map<String, dynamic> toJson() {
    return {
      'merchantId': merchantId,
      'currencyCode': currencyCode,
      'countryCode': countryCode,
      'serverTimeoutInSec': serverTimeoutInSec,
      'callHomeTimeInMin': callHomeTimeInMin,
      'merchantCategoryCode': merchantCategoryCode,
      'merchantNameAndLocation': merchantNameAndLocation,
    };
  }

  TerminalInfoResponse.fromJson(Map<String, dynamic> json)
      : merchantId = json['merchantId'],
        currencyCode = json['currencyCode'],
        countryCode = json['countryCode'],
        serverTimeoutInSec = json['serverTimeoutInSec'],
        callHomeTimeInMin = json['callHomeTimeInMin'],
        merchantCategoryCode = json['merchantCategoryCode'],
        merchantNameAndLocation = json['merchantNameAndLocation'];

  @override
  List<Object?> get props => [
    merchantId,
    currencyCode,
    countryCode,
    serverTimeoutInSec,
    callHomeTimeInMin,
    merchantCategoryCode,
    merchantNameAndLocation,
  ];
}
