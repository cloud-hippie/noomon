package noomon.controller;

import io.micronaut.http.MediaType;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.Produces;
import io.micronaut.http.client.annotation.Client;

@Controller("/hello") 
public class ApplicationController {
    @Get 
    @Produces(MediaType.APPLICATION_JSON) 
    public String index() {
        return "{\"message\": \"Hello World\"}";
    }
}

@Client("/hello")
interface HelloClient {
    @Get 
    @Produces(MediaType.APPLICATION_JSON) 
    String index();
}
