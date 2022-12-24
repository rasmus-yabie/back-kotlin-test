package com.yabie.backend.salesanalytics

import org.springframework.boot.Banner
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SalesanalyticsApplication

fun main(args: Array<String>) {
	runApplication<SalesanalyticsApplication>(*args) {
		setBannerMode(Banner.Mode.OFF)
	}
}
