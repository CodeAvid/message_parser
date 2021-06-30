import 'package:equatable/equatable.dart';
import 'package:message_parser/index.dart';

class TransactionInfo extends Equatable {
  final String? cardExpiry;
  final String? cardPIN;
  final String? cardPAN;
  final String? cardTrack2;
  final String? iccString;
  final ICCData? iccData;
  final String? src;
  final String? csn;
  final int? amount;
  final String? stan;
  final AccountType? accountType;
  final OriginalTransactionInfoData? originalTransactionInfoData;
  final String? pinKsn;

  const TransactionInfo({
    this.cardExpiry,
    this.cardPIN,
    this.cardPAN,
    this.cardTrack2,
    this.iccString,
    this.iccData,
    this.src,
    this.csn,
    this.amount,
    this.stan,
    this.accountType,
    this.originalTransactionInfoData,
    this.pinKsn,
  });

  Map<String, dynamic> toJson() {
    return {
      'cardExpiry': cardExpiry,
      'cardPIN': cardPIN,
      'cardPAN': cardPAN,
      'cardTrack2': cardTrack2,
      'iccString': iccString,
      'iccData': iccData?.toJson(),
      'src': src,
      'csn': csn,
      'amount': amount,
      'stan': stan,
      'accountType': toString(accountType),
      'originalTransactionInfoData': originalTransactionInfoData?.toJson(),
      'pinKsn': pinKsn,
    };
  }

  TransactionInfo.fromJson(Map<String, dynamic> json)
      : cardExpiry = json['cardExpiry'],
        cardPIN = json['cardPIN'],
        cardPAN = json['cardPAN'],
        cardTrack2 = json['cardTrack2'],
        iccString = json['iccString'],
        iccData = ICCData.fromJson(json['iccData']),
        src = json['src'],
        csn = json['csn'],
        amount = json['amount'],
        stan = json['stan'],
        accountType = toAccountType(json['accountType']),
        originalTransactionInfoData = OriginalTransactionInfoData.fromJson(
            json['originalTransactionInfoData']),
        pinKsn = json['pinKsn'];

  @override
  List<Object?> get props => [
        cardExpiry,
        cardPIN,
        cardPAN,
        cardTrack2,
        iccString,
        iccData,
        src,
        csn,
        amount,
        stan,
        accountType,
        originalTransactionInfoData,
        pinKsn,
      ];
}
