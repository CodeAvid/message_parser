import 'package:equatable/equatable.dart';

class TerminalInfo extends Equatable {
  final String? terminalId;
  final String? merchantId;
  final String? merchantNameAndLocation;
  final String? merchantCategoryCode;
  final String? countryCode;
  final String? currencyCode;
  final String? sessionKey;
  final String? serialNumber;
  final String? capabilities;
  final String? serverIp;
  final int? serverPort;

  const TerminalInfo({
    this.terminalId,
    this.merchantId,
    this.merchantNameAndLocation,
    this.merchantCategoryCode,
    this.countryCode,
    this.currencyCode,
    this.sessionKey,
    this.serialNumber,
    this.capabilities,
    this.serverIp,
    this.serverPort,
  });

  Map<String, dynamic> toJson() {
    return {
      'terminalId': terminalId,
      'merchantId': merchantId,
      'merchantNameAndLocation': merchantNameAndLocation,
      'merchantCategoryCode': merchantCategoryCode,
      'countryCode': countryCode,
      'currencyCode': currencyCode,
      'sessionKey': sessionKey,
      'serialNumber': serialNumber,
      'capabilities': capabilities,
      'serverIp': serverIp,
      'serverPort': serverPort
    };
  }

  TerminalInfo.fromJson(Map<String, dynamic> json)
      : terminalId = json['terminalId'],
        merchantId = json['merchantId'],
        merchantNameAndLocation = json['merchantNameAndLocation'],
        merchantCategoryCode = json['merchantCategoryCode'],
        countryCode = json['countryCode'],
        currencyCode = json['currencyCode'],
        sessionKey = json['sessionKey'],
        serialNumber = json['serialNumber'],
        capabilities = json['capabilities'],
        serverIp = json['serverIp'],
        serverPort = json['serverPort'];

  @override
  List<Object?> get props => [
        terminalId,
        merchantId,
        merchantNameAndLocation,
        merchantCategoryCode,
        countryCode,
        currencyCode,
        sessionKey,
        serialNumber,
        capabilities,
        serverIp,
        serverPort,
      ];
}
