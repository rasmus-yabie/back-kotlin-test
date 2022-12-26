package com.yabie.backend.salesanalytics

import org.springframework.stereotype.Service

@Service
class APIService() {
    fun getAll(): List<String> = listOf("foo", "bar", "v1.0.3")

    fun getById(id: Long): List<String> = listOf("bar")

    fun create(user: String): String = "User is $user"
}