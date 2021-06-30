package com.octacoresoftwares.message_parser

interface IParser {
    fun parseKimonoPurchaseRequest(terminalInfo: Map<String, Any>, transactionInfo: Map<String, Any>): Pair<Map<String, String>, String>
    fun parseKimonoReversalRequest(terminalInfo: Map<String, Any>, transactionInfo: Map<String, Any>): Pair<Map<String, String>, String>
    fun parseNIBBSPurchaseRequest(terminalInfo: Map<String, Any>, transactionInfo: Map<String, Any>): ByteArray?
    fun parseNIBBSReversalRequest(terminalInfo: Map<String, Any>, transactionInfo: Map<String, Any>): ByteArray?
    fun parseNIBBSResponse(response: ByteArray): Map<String, Any>
    fun parseNIBBSKeyRequest(terminalInfo: Map<String, Any>, code: String): ByteArray?
    fun parseNIBBSKeyResponse(response: ByteArray, key: String): String?
    fun parseNIBBSTerminalParameterRequest(terminalInfo: Map<String, Any>): ByteArray?
    fun parseNIBBSTerminalParameterResponse(response: ByteArray): Map<String, Any>?
}