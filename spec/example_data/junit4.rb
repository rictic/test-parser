#not sure if this is junit4
#stolen from http://www.samspublishing.com/articles/article.asp?p=32052&seqNum=6&rl=1
[
  ["% java com.networksByteDesign.eMarket.inventory.salesItemTest
  .F.
  Time: 0.033
  There was 1 failure:
  1) testConstructor(com.networksByteDesign.eMarket.inventory.salesItemTest)
    \"Expected exception was not thrown\"

  FAILURES!!!
  Tests run: 2, Failures: 1, Errors: 0",
  {:failure_count => 1, :success_count => 1, :test_count => 2,
   :failures => [{:test => 'testConstructor(com.networksByteDesign.eMarket.inventory.salesItemTest)',
                  :message => "Expected exception was not thrown"}]
  }],
  
  
  
  
  
  
  
  
  #actual output of building antlr-3.0
  ["Buildfile: build.xml

generator:

compile:

run-tests:
    [mkdir] Created dir: /Users/peter/Documents/Projects/antlr-3.0/build/tests/xml
    [mkdir] Created dir: /tmp/antlr3
    [junit] Running org.antlr.test.TestUnBufferedTreeNodeStream
    [junit] warning(105): <string>:2:7: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:2:7: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:2:7: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:3:5: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:2:8: no lexer rule corresponding to token: A
    [junit] warning(105): <string>:2:10: no lexer rule corresponding to token: B
    [junit] warning(105): <string>:2:9: no lexer rule corresponding to token: A
    [junit] warning(105): <string>:2:11: no lexer rule corresponding to token: B
    [junit] warning(105): <string>:2:10: no lexer rule corresponding to token: A
    [junit] warning(105): <string>:2:12: no lexer rule corresponding to token: B
    [junit] warning(105): <string>:2:10: no lexer rule corresponding to token: A
    [junit] warning(105): <string>:2:12: no lexer rule corresponding to token: B
    [junit] warning(105): <string>:3:5: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:2:8: no lexer rule corresponding to token: ID
    [junit] warning(105): <string>:4:5: no lexer rule corresponding to token: ID
    [junit] Tests run: 31, Failures: 0, Errors: 0, Time elapsed: 0.618 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] equeue:infos: []errors: [error(116): <string>:6:9: unknown attribute for rule a: stop]warnings: []
    [junit] Tests run: 107, Failures: 0, Errors: 0, Time elapsed: 12.856 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] Tests run: 36, Failures: 0, Errors: 0, Time elapsed: 70.159 sec
    [junit] Tests run: 29, Failures: 0, Errors: 0, Time elapsed: 0.106 sec
    [junit] Tests run: 16, Failures: 0, Errors: 0, Time elapsed: 0.013 sec
    [junit] Tests run: 59, Failures: 0, Errors: 0, Time elapsed: 0.268 sec
    [junit] Tests run: 4, Failures: 0, Errors: 0, Time elapsed: 0.018 sec
    [junit] Tests run: 6, Failures: 0, Errors: 0, Time elapsed: 0.04 sec
    [junit] Tests run: 4, Failures: 0, Errors: 0, Time elapsed: 0.061 sec
    [junit] Tests run: 34, Failures: 0, Errors: 0, Time elapsed: 0.007 sec
    [junit] Tests run: 7, Failures: 0, Errors: 0, Time elapsed: 7.957 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar PLexer.java
    [junit] Note: /tmp/antlr3/PLexer.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar PLexer.java
    [junit] Note: /tmp/antlr3/PLexer.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] Tests run: 13, Failures: 0, Errors: 0, Time elapsed: 19.943 sec
    [junit] Tests run: 1, Failures: 0, Errors: 0, Time elapsed: 0.365 sec
    [junit] Tests run: 54, Failures: 0, Errors: 0, Time elapsed: 0.103 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] /tmp/antlr3/TParser.java:76: illegal start of expression
    [junit]                 adaptor.addChild(root_0, adaptor.create(ID, ));
    [junit]                                                             ^
    [junit] /tmp/antlr3/TParser.java:76: ')' expected
    [junit]                 adaptor.addChild(root_0, adaptor.create(ID, ));
    [junit]                                                               ^
    [junit] 2 errors

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar Test.java
    [junit] /tmp/antlr3/TParser.java:76: illegal start of expression
    [junit]                 adaptor.addChild(root_0, adaptor.create(ID, ));
    [junit]                                                             ^
    [junit] /tmp/antlr3/TParser.java:76: ')' expected
    [junit]                 adaptor.addChild(root_0, adaptor.create(ID, ));
    [junit]                                                               ^
    [junit] 2 errors

    [junit] exec parser stderrVacuum: Exception in thread \"main\" java.lang.NoClassDefFoundError: Test

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] exec parser stderrVacuum: Exception in thread \"main\" org.antlr.runtime.tree.RewriteCardinalityException: token ID
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream._next(RewriteRuleElementStream.java:150)
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream.next(RewriteRuleElementStream.java:131)
    [junit]     at TParser.a(TParser.java:106)
    [junit]     at Test.main(Test.java:15)

    [junit] exec parser stderrVacuum: Exception in thread \"main\" org.antlr.runtime.tree.RewriteCardinalityException: token ID
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream._next(RewriteRuleElementStream.java:150)
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream.next(RewriteRuleElementStream.java:131)
    [junit]     at TParser.a(TParser.java:107)
    [junit]     at Test.main(Test.java:15)

    [junit] exec parser stderrVacuum: Exception in thread \"main\" org.antlr.runtime.tree.RewriteEmptyStreamException: token ID
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream._next(RewriteRuleElementStream.java:143)
    [junit]     at org.antlr.runtime.tree.RewriteRuleElementStream.next(RewriteRuleElementStream.java:131)
    [junit]     at TParser.a(TParser.java:100)
    [junit]     at Test.main(Test.java:15)

    [junit] exec parser stderrVacuum: Exception in thread \"main\" org.antlr.runtime.tree.RewriteEarlyExitException
    [junit]     at TParser.a(TParser.java:101)
    [junit]     at Test.main(Test.java:15)

    [junit] Tests run: 77, Failures: 1, Errors: 0, Time elapsed: 139.845 sec
    [junit] TEST org.antlr.test.TestRewriteAST FAILED
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TP.java
    [junit] Note: /tmp/antlr3/TP.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TParser.java
    [junit] Note: /tmp/antlr3/TParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TP.java
    [junit] Note: /tmp/antlr3/TP.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] Tests run: 17, Failures: 0, Errors: 0, Time elapsed: 29.494 sec
    [junit] Tests run: 15, Failures: 0, Errors: 0, Time elapsed: 27.215 sec
    [junit] Tests run: 32, Failures: 1, Errors: 0, Time elapsed: 0.084 sec
    [junit] TEST org.antlr.test.TestSemanticPredicates FAILED
    [junit] Tests run: 24, Failures: 0, Errors: 0, Time elapsed: 45.154 sec
    [junit] Tests run: 47, Failures: 0, Errors: 0, Time elapsed: 3.782 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar tParser.java
    [junit] Note: /tmp/antlr3/tParser.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] Tests run: 15, Failures: 0, Errors: 0, Time elapsed: 42.133 sec
    [junit] Tests run: 8, Failures: 0, Errors: 0, Time elapsed: 0.694 sec
    [junit] Tests run: 25, Failures: 0, Errors: 0, Time elapsed: 0.079 sec
    [junit] Tests run: 12, Failures: 0, Errors: 0, Time elapsed: 0.003 sec
    [junit] compile stderr from: javac -d /tmp/antlr3 -classpath /tmp/antlr3:/Users/peter/Documents/Projects/antlr-3.0/build/classes:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-2.7.7.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr-runtime-3.0.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/antlr.jar:/Users/peter/Documents/Projects/antlr-3.0/lib/stringtemplate-3.0.jar:/Users/peter/projects/junit4.4/junit-4.4.jar:/Developer/Java/Ant/lib/ant-launcher.jar:/Developer/Java/Ant/lib/ant.jar:/Developer/Java/Ant/lib/ant-junit.jar:/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0/Classes/.compatibility/14compatibility.jar TP.java
    [junit] Note: /tmp/antlr3/TP.java uses unchecked or unsafe operations.
    [junit] Note: Recompile with -Xlint:unchecked for details.

    [junit] Tests run: 10, Failures: 0, Errors: 0, Time elapsed: 30.671 sec
    [junit] Tests run: 14, Failures: 0, Errors: 0, Time elapsed: 0.009 sec
    [junit] Tests FAILED

run-reports:
    [mkdir] Created dir: /Users/peter/Documents/Projects/antlr-3.0/build/tests/reports
[junitreport] Transform time: 1167ms

test:

BUILD FAILED
/Users/peter/Documents/Projects/antlr-3.0/build.xml:158: Tests failed

Total time: 7 minutes 15 seconds",
  {:failure_count => 2, :success_count => 695, :test_count => 697,
   :failures => [{:test => "org.antlr.test.TestRewriteAST"}, {:test => "org.antlr.test.TestSemanticPredicates"}]}
  ]
]