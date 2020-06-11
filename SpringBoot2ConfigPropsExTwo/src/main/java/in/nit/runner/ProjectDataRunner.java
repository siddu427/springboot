package in.nit.runner;

import java.util.Properties;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "my.app")
public class ProjectDataRunner implements CommandLineRunner{

	//private Map<String,Double> versions;
	private Properties versions;
	
	
	@Override
	public void run(String... args) throws Exception {
		System.out.println(this);
	}

	//alt+shift+S,R> SelectAll>Generate
	
	public Properties getVersions() {
		return versions;
	}

	public void setVersions(Properties versions) {
		this.versions = versions;
	}

	//alt+shift+S,S>OK
	@Override
	public String toString() {
		return "ProjectDataRunner [versions=" + versions + "]";
	}

	
	
	

	
	
	
}



