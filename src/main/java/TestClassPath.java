import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

public class TestClassPath {
	public static void main(String[] args)
			throws FileNotFoundException, IOException {
		Properties p = new Properties();
		// p.load(new FileInputStream(new
		// File("src/main/java/aaa.properties")));
		p.load(new FileInputStream(new File(TestClassPath.class.getClassLoader()
				.getResource("aaa.properties").getFile())));
		System.out.println(p.get("a"));
		System.out.println(TestClassPath.class.getClassLoader()
				.getResource("aaa.properties"));
	}
}
