package com.lib.config;

import org.springframework.security.access.prepost.PreAuthorize;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
//
//@Target({ ElementType.METHOD, ElementType.TYPE })
//@Retention(RetentionPolicy.RUNTIME)
//@PreAuthorize("hasAnyRole('USER')")
//public @interface UserAuthorize {
//}

@Target({ ElementType.METHOD, ElementType.TYPE })
@Retention(RetentionPolicy.RUNTIME)
public @interface UserAuthorize {
    @PreAuthorize("hasAnyRole('USER')")
    String value() default "";
}
