package in.nit.config;

import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import in.nit.runner.MessageRunner;

//ctrl+shift+O
@Configuration
public class AppConfig {

	//no.of methods = no.of objects
	@Bean
	//public MessageRunner msObj() {
	public CommandLineRunner msObj() {
		return new MessageRunner();
		//MessageRunner m=new MessageRunner();return m;
	}
}




