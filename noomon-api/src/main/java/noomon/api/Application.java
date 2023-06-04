package noomon.api;

import io.micronaut.runtime.Micronaut;
import io.swagger.v3.oas.annotations.*;
import io.swagger.v3.oas.annotations.info.*;


@OpenAPIDefinition(
        info = @Info(
                title = "NooMon API",
                version = "0.0.1",
                description = "The official Noomon API",
                license = @License(name = "Apache 2.0", url = "https://foo.bar"),
                contact = @Contact(url = "https://foo.bar", name = "NooMon", email = "foo@bar")
        )
)
public class Application {

    public static void main(String[] args) {
        Micronaut.run(Application.class, args);
    }
}