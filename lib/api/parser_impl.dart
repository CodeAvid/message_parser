import 'dart:developer';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:message_parser/index.dart';

class Parser implements IParser {
  static const _platform = const MethodChannel('octacore.message_parser/parser');

  @override
  Future<Map<dynamic, dynamic>?> parseKimonoPurchaseRequest(
      TerminalInfo terminalInfo, TransactionInfo transactionInfo) async {
    try {
      return _platform.invokeMethod('parseKimonoPurchaseRequest', {
        'terminalInfo': terminalInfo.toJson(),
        'transactionInfo': transactionInfo.toJson()
      });
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<Map<dynamic, dynamic>?> parseKimonoReversalRequest(
      TerminalInfo terminalInfo, TransactionInfo transactionInfo) async {
    try {
      return _platform.invokeMethod('parseKimonoReversalRequest', {
        'terminalInfo': terminalInfo.toJson(),
        'transactionInfo': transactionInfo.toJson()
      });
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<Uint8List?> parseNIBBSPurchaseRequest(
      TerminalInfo terminalInfo, TransactionInfo transactionInfo) async {
    try {
      return _platform.invokeMethod('parseNIBBSPurchaseRequest', {
        'terminalInfo': terminalInfo.toJson(),
        'transactionInfo': transactionInfo.toJson()
      });
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<Uint8List?> parseNIBBSReversalRequest(
      TerminalInfo terminalInfo, TransactionInfo transactionInfo) async {
    Uint8List? result;
    try {
      return _platform.invokeMethod('parseNIBBSReversalRequest', {
        'terminalInfo': terminalInfo.toJson(),
        'transactionInfo': transactionInfo.toJson()
      });
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<Uint8List?> parseNIBBSKeyRequest(
      TerminalInfo terminalInfo, String code) async {
    try {
      return _platform.invokeMethod('parseNIBBSKeyRequest',
          {'terminalInfo': terminalInfo.toJson(), 'code': code});
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<String?> parseNIBBSKeyResponse(Uint8List response, String key) async {
    try {
      return await _platform.invokeMethod(
          'parseNIBBSKeyResponse', {'nResponse': response, 'key': key});
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse NIBBS response with key: $key because: ${e.message}';
    }
  }

  @override
  Future<TransactionResponse> parseNIBBSResponse(Uint8List response) async {
    try {
      final result = await _platform.invokeMethod('parseNIBBSResponse', {
        'nResponse': response,
      });
      if (result == null) {
        return TransactionResponse();
      }
      return TransactionResponse.fromJson(result);
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse NIBBS response because: ${e.message}';
    }
  }

  @override
  Future<Uint8List?> parseNIBBSTerminalParameterRequest(
      TerminalInfo terminalInfo) async {
    try {
      return _platform.invokeMethod('parseNIBBSTerminalParameterRequest', {
        'terminalInfo': terminalInfo.toJson(),
      });
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal info with id ${terminalInfo.terminalId} because: ${e.message}';
    }
  }

  @override
  Future<TerminalInfoResponse?> parseNIBBSTerminalParameterResponse(
      Uint8List response) async {
    try {
      final result =
          await _platform.invokeMethod('parseNIBBSTerminalParameterResponse', {
        'nResponse': response,
      });
      if (result == null) {
        return TerminalInfoResponse();
      }
      return TerminalInfoResponse.fromJson(result);
    } on PlatformException catch (e) {
      log(e.message.toString());
      throw 'Unable to parse terminal parameters because: ${e.message}';
    }
  }
}
