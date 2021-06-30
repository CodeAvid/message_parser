import 'package:equatable/equatable.dart';

class TransactionResponse extends Equatable {
  final String? responseCode;
  final String? authCode;
  final String? rrn;

  const TransactionResponse({
    this.responseCode,
    this.authCode,
    this.rrn,
  });

  Map<String, String?> toJson() {
    return {
      'responseCode': responseCode,
      'authCode': authCode,
      'rrn': rrn,
    };
  }

  TransactionResponse.fromJson(Map<String, String?> json)
      : responseCode = json['responseCode'],
        authCode = json['authCode'],
        rrn = json['rrn'];

  @override
  List<Object?> get props => [responseCode, authCode, rrn];
}
