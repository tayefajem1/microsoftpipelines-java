/*
 * This file was generated by the Gradle 'init' task.
 */

plugins {
    `java-library`
    `maven-publish`
}
group = "helloworld"
version = "1.0-SNAPSHOT"
description = "Hello world sample web app"
java.sourceCompatibility = JavaVersion.VERSION_1_8

repositories {
    mavenLocal()
    maven {
        url = uri("https://repo.maven.apache.org/maven2/")
    }
}

dependencies {
    testImplementation(libs.junit.junit)
}


publishing {
    publications.create<MavenPublication>("maven") {
        from(components["java"])
    }
}
