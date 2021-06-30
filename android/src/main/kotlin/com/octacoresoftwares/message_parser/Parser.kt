package com.octacoresoftwares.message_parser

import com.example.messageparserlibrary.MessageParser
import com.example.messageparserlibrary.model.TerminalInfo
import com.example.messageparserlibrary.model.TerminalInfoResponse.Companion.toMap
import com.example.messageparserlibrary.model.TransactionInfo
import com.example.messageparserlibrary.model.TransactionResponse.Companion.toMap

internal class Parser : IParser {

    override fun parseKimonoPurchaseRequest(
            terminalInfo: Map<String, Any>,
            transactionInfo: Map<String, Any>): Pair<Map<String, String>, String> {
        return MessageParser.getInstance().parseKimonoPurchaseRequest(
                terminalInfo = TerminalInfo.fromMap(terminalInfo),
                transactionInfo = TransactionInfo.fromMap(transactionInfo)
        )
    }

    override fun parseKimonoReversalRequest(
            terminalInfo: Map<String, Any>,
            transactionInfo: Map<String, Any>): Pair<Map<String, String>, String> {
        return MessageParser.getInstance().parseKimonoReversalRequest(
                terminalInfo = TerminalInfo.fromMap(terminalInfo),
                transactionInfo = TransactionInfo.fromMap(transactionInfo)
        )
    }

    override fun parseNIBBSPurchaseRequest(
            terminalInfo: Map<String, Any>,
            transactionInfo: Map<String, Any>): ByteArray? {
        return MessageParser.getInstance().parseNIBBSPurchaseRequest(
                terminalInfo = TerminalInfo.fromMap(terminalInfo),
                transactionInfo = TransactionInfo.fromMap(transactionInfo)
        )
    }

    override fun parseNIBBSReversalRequest(
            terminalInfo: Map<String, Any>,
            transactionInfo: Map<String, Any>): ByteArray? {
        return MessageParser.getInstance().parseNIBBSReversalRequest(
                terminalInfo = TerminalInfo.fromMap(terminalInfo),
                transactionInfo = TransactionInfo.fromMap(transactionInfo)
        )
    }

    override fun parseNIBBSResponse(response: ByteArray): Map<String, Any> {
        val result = MessageParser.getInstance().parseNIBBSResponse(response = response)
        return result.toMap()
    }

    override fun parseNIBBSKeyRequest(
            terminalInfo: Map<String, Any>,
            code: String): ByteArray? {
        return MessageParser.getInstance().parseNIBBSKeyRequest(
                terminalInfo = TerminalInfo.fromMap(terminalInfo),
                code = code
        )
    }

    override fun parseNIBBSKeyResponse(response: ByteArray, key: String): String? {
        return MessageParser.getInstance().parseNIBBSKeyResponse(response, key)
    }

    override fun parseNIBBSTerminalParameterRequest(terminalInfo: Map<String, Any>): ByteArray? {
        return MessageParser.getInstance().parseNIBBSTerminalParameterRequest(terminalInfo = TerminalInfo.fromMap(terminalInfo))
    }

    override fun parseNIBBSTerminalParameterResponse(response: ByteArray): Map<String, Any>? {
        val result = MessageParser.getInstance().parseNIBBSTerminalParameterResponse(response)
        return result?.toMap()
    }
}