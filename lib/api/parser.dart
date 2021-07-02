import 'dart:typed_data';
import 'package:analyzer_plugin/utilities/pair.dart';
import 'package:message_parser/index.dart';

abstract class IParser {
 Future<Pair<Map<dynamic, dynamic>, String>?> parseKimonoPurchaseRequest(TerminalInfo terminalInfo, TransactionInfo transactionInfo);
 Future<Pair<Map<dynamic, dynamic>, String>?> parseKimonoReversalRequest(TerminalInfo terminalInfo, TransactionInfo transactionInfo);
 Future<Uint8List?> parseNIBBSPurchaseRequest(TerminalInfo terminalInfo, TransactionInfo transactionInfo);
 Future<Uint8List?> parseNIBBSReversalRequest(TerminalInfo terminalInfo, TransactionInfo transactionInfo);
 Future<TransactionResponse> parseNIBBSResponse(Uint8List response);
 Future<Uint8List?> parseNIBBSKeyRequest(TerminalInfo terminalInfo, String code);
 Future<String?> parseNIBBSKeyResponse(Uint8List response, String key);
 Future<Uint8List?> parseNIBBSTerminalParameterRequest(TerminalInfo terminalInfo);
 Future<TerminalInfoResponse?> parseNIBBSTerminalParameterResponse(Uint8List response);
}

