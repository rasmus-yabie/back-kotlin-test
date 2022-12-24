package com.yabie.backend.salesanalytics

import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.*


@RequestMapping("api/v1/test")
@RestController
class APIController(val service: APIService) {

    @GetMapping
    fun getAllUsers() = service.getAll()

    @GetMapping("/{id}")
    fun getUser(@PathVariable id: Long) = service.getById(id)

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    fun createUser(@RequestBody user: String): String = service.create(user)

}