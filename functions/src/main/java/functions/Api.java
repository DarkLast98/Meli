package functions;

import com.google.cloud.functions.HttpFunction;
import com.google.cloud.functions.HttpRequest;
import com.google.cloud.functions.HttpResponse;
import java.io.BufferedWriter;
import java.io.IOException;

// public class Api implements HttpFunction {
//   // Simple function to return "Hello World"
//   @Override
//   public void service(HttpRequest request, HttpResponse response)
//       throws IOException {
//     BufferedWriter writer = response.getWriter();
//     writer.write("Hello World!");
//   }
  @SpringBootApplication
  public class Api {
    
    public static void main(String[] args) {
      SpringApplication.run(CloudFunctionMain.class, args);
    }
  
    @Bean
    public Function<String, String> uppercase() {
      return value -> value.toUpperCase();
    }
}