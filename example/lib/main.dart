import 'package:flutter/material.dart';
import 'dart:async';

import 'package:message_parser/index.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late IParser _parser;
  dynamic data;

  @override
  void initState() {
    _parser = Parser();
    super.initState();
  }

  Future<void> initPlatformState() async {
    final terminalInfo = TerminalInfo(
        terminalId: '2ISW0256',
        merchantId: '2ISW123IFIS0254',
        merchantNameAndLocation: 'NIBSS VAS              LA           LANG',
        merchantCategoryCode: '9399',
        countryCode: '566',
        currencyCode: '566',
        sessionKey: '123456',
        serialNumber: '5C173336',
        capabilities: 'E0F0C8',
        serverIp: '196.6.0.103',
        serverPort: 5008
    );
    final transactionInfo = TransactionInfo(
        cardExpiry: '2204',
        cardPIN: 'BD24A2ABE325C42D',
        cardPAN: '5198994054454370',
        cardTrack2: '5198994054454370D22042219684810',
        iccString: '9F260877EA915B316859459F2701409F10120110650003020000000000000000000000FF9F370449EC37F29F360203EF950504800000009A032004179C01009F02060000000100005F2A020566820239009F1A0205669F34034103029F3303E0F0C89F3501228407A00000000410109F',
        iccData: ICCData(
            transactionAmount: '000000001000',
            anotherAmount: '000000000000',
            applicationInterchangeProfile: '3800',
            applicationTransactionCounter: '0496',
            authorizationRequest: 'F049814E7F3C1036',
            cryptogramInfoData: '80',
            cardholderVerificationResult: '420300',
            issuerAppData: '0110A080002A00001EEA00000000000000FF',
            transactionCurrencyCode: '566',
            terminalVerificationResult: '0080248000',
            terminalCountryCode: '566',
            terminalType: '22',
            terminalCapabilities: 'E0F0C8',
            transactionDate: '200305',
            transactionType: '10',
            unpredictableNumber: '24C65416',
            dedicatedFileName: 'A0000000041010'
        ),
        src: '501',
        csn: '000',
        amount: 100,
        stan: '000001',
        accountType: AccountType.Default,
        originalTransactionInfoData: OriginalTransactionInfoData(
            originalStan: '000001',
            originalTransmissionDateAndTime: '2020-03-06T23:11:07',
            originalAuthorizationId: '000001',
            originalAmount: '100',
            month: '0306',
            time: -1
        ),
        pinKsn: '000002DDDDE00002'
    );
    final res = await _parser.parseKimonoReversalRequest(terminalInfo, transactionInfo);
    setState(() {
      data = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Result gotten:',
                ),
                Text(
                  '$data',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: initPlatformState,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
