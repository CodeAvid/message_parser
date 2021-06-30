import 'package:equatable/equatable.dart';

class ICCData extends Equatable {
  final String? transactionAmount;
  final String? anotherAmount;
  final String? applicationInterchangeProfile;
  final String? applicationTransactionCounter;
  final String? authorizationRequest;
  final String? cryptogramInfoData;
  final String? cardholderVerificationResult;
  final String? issuerAppData;
  final String? transactionCurrencyCode;
  final String? terminalVerificationResult;
  final String? terminalCountryCode;
  final String? terminalType;
  final String? terminalCapabilities;
  final String? transactionDate;
  final String? transactionType;
  final String? unpredictableNumber;
  final String? dedicatedFileName;

  const ICCData({
    this.transactionAmount,
    this.anotherAmount,
    this.applicationInterchangeProfile,
    this.applicationTransactionCounter,
    this.authorizationRequest,
    this.cryptogramInfoData,
    this.cardholderVerificationResult,
    this.issuerAppData,
    this.transactionCurrencyCode,
    this.terminalVerificationResult,
    this.terminalCountryCode,
    this.terminalType,
    this.terminalCapabilities,
    this.transactionDate,
    this.transactionType,
    this.unpredictableNumber,
    this.dedicatedFileName,
  });

  Map<String, String?> toJson() {
    return {
      'transactionAmount': transactionAmount,
      'anotherAmount': anotherAmount,
      'applicationInterchangeProfile': applicationInterchangeProfile,
      'applicationTransactionCounter': applicationTransactionCounter,
      'authorizationRequest': authorizationRequest,
      'cryptogramInfoData': cryptogramInfoData,
      'cardholderVerificationResult': cardholderVerificationResult,
      'issuerAppData': issuerAppData,
      'transactionCurrencyCode': transactionCurrencyCode,
      'terminalVerificationResult': terminalVerificationResult,
      'terminalCountryCode': terminalCountryCode,
      'terminalType': terminalType,
      'terminalCapabilities': terminalCapabilities,
      'transactionDate': transactionDate,
      'transactionType': transactionType,
      'unpredictableNumber': unpredictableNumber,
      'dedicatedFileName': dedicatedFileName
    };
  }

  ICCData.fromJson(Map<String, String?> json)
      : transactionAmount = json['transactionAmount'],
        anotherAmount = json['anotherAmount'],
        applicationInterchangeProfile = json['applicationInterchangeProfile'],
        applicationTransactionCounter = json['applicationTransactionCounter'],
        authorizationRequest = json['authorizationRequest'],
        cryptogramInfoData = json['cryptogramInfoData'],
        cardholderVerificationResult = json['cardholderVerificationResult'],
        issuerAppData = json['issuerAppData'],
        transactionCurrencyCode = json['transactionCurrencyCode'],
        terminalVerificationResult = json['terminalVerificationResult'],
        terminalCountryCode = json['terminalCountryCode'],
        terminalType = json['terminalType'],
        terminalCapabilities = json['terminalCapabilities'],
        transactionDate = json['transactionDate'],
        transactionType = json['transactionType'],
        unpredictableNumber = json['unpredictableNumber'],
        dedicatedFileName = json['dedicatedFileName'];

  @override
  List<Object?> get props =>
      [
        transactionAmount,
        anotherAmount,
        applicationInterchangeProfile,
        applicationTransactionCounter,
        authorizationRequest,
        cryptogramInfoData,
        cardholderVerificationResult,
        issuerAppData,
        transactionCurrencyCode,
        terminalVerificationResult,
        terminalCountryCode,
        terminalType,
        terminalCapabilities,
        transactionDate,
        transactionType,
        unpredictableNumber,
        dedicatedFileName,
      ];
}
