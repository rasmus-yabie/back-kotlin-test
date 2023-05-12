package com.yabie.backend.salesanalytics

import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Service

@Service
class APIService() {
    @Value("\${param1}")
    lateinit var param1: String;

    @Value("\${prop1}")
    lateinit var prop1: String;

    @Value("\${environment}")
    lateinit var environment: String;

    fun getAll(): List<String> = listOf("foo", "bar", "v1.0.6", param1, prop1)

    fun getById(id: Long): List<String> = listOf("bar")

    fun create(user: String): String = "User is $user"
}