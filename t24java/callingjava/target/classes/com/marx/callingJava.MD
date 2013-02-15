CREATE A JAVA PROGRAM
- Use any code editor or IDE
Create a Jar file

1. Navigate to your project folder
2. Compile source code $ javac *.java
3. Create a manifest file $ echo Main-class: Main > manifest.txt
4. Create a jar file: $ jar cvfm [jarname].jar manifest.txt *.class
5. Test your jar $ java -jar [jarname]