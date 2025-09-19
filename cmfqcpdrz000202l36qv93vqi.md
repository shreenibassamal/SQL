---
title: "TestNG Suite Creation"
datePublished: Fri Sep 19 2025 04:40:05 GMT+0000 (Coordinated Universal Time)
cuid: cmfqcpdrz000202l36qv93vqi
slug: testng-suite-creation
tags: shreenibas

---

# 📌 TestNG XML Tags & Attributes

---

## 🔹 1. `<suite>`

👉 Root element, defines the entire suite.  
**Attributes**:

* `name` → Suite name (required).
    
* `verbose` → Logging level (`0`\=silent, `1`\=basic, `10`\=debug).
    
* `parallel` → Defines parallel mode: `tests`, `classes`, `methods`, `instances`.
    
* `thread-count` → Number of threads for parallel execution.
    
* `configfailurepolicy` → What to do if `@Before*` or `@After*` fails (`skip` or `continue`).
    
* `junit` → If `true`, runs tests in JUnit mode.
    
* `data-provider-thread-count` → Threads for `@DataProvider`.
    
* `time-out` → Global timeout in ms.
    

✅ Example:

```xml
<suite name="SalesInventorySuite" parallel="tests" thread-count="2" verbose="1" configfailurepolicy="continue">
```

---

## 🔹 2. `<test>`

👉 Represents a **test block** (set of classes or packages).  
**Attributes**:

* `name` → Logical name of test.
    
* `preserve-order` → If `true`, runs tests in order they are defined.
    
* `parallel` → Override suite parallel setting (`methods`, `classes`, etc).
    
* `thread-count` → Number of threads for this test.
    
* `time-out` → Timeout in ms (overrides suite).
    

✅ Example:

```xml
<test name="SmokeTests" preserve-order="true" parallel="classes" thread-count="2">
```

---

## 🔹 3. `<parameter>`

👉 Defines a key-value pair that can be injected into test methods with `@Parameters`.  
**Attributes**:

* `name` → Parameter name.
    
* `value` → Parameter value.
    

✅ Example:

```xml
<parameter name="browser" value="chrome"/>
<parameter name="env" value="qa"/>
```

---

## 🔹 4. `<groups>`

👉 Used to **include/exclude groups** of tests.

Sub-tags:

* `<run>` → Holds include/exclude rules.
    
* `<include name="groupName"/>` → Runs only specified groups.
    
* `<exclude name="groupName"/>` → Skips specific groups.
    

✅ Example:

```xml
<groups>
   <run>
      <include name="smoke"/>
      <exclude name="broken"/>
   </run>
</groups>
```

---

## 🔹 5. `<classes>`

👉 Holds multiple test classes to run.  
**Attributes**: (none for `<classes>` itself).

✅ Example:

```xml
<classes>
   <class name="com.salesinventory.tests.LoginTest"/>
   <class name="com.salesinventory.tests.InventoryTest"/>
</classes>
```

---

## 🔹 6. `<class>`

👉 Defines one test class.  
**Attributes**:

* `name` → Fully qualified class name (`packageName.ClassName`).
    

✅ Example:

```xml
<class name="com.salesinventory.tests.SalesTest"/>
```

---

## 🔹 7. `<methods>`

👉 Allows you to include/exclude specific methods of a class.

Sub-tags:

* `<include name="methodName"/>` → Runs only that method.
    
* `<exclude name="methodName"/>` → Skips that method.
    

✅ Example:

```xml
<class name="com.salesinventory.tests.LoginTest">
   <methods>
      <include name="testValidLogin"/>
      <exclude name="testInvalidLogin"/>
   </methods>
</class>
```

---

## 🔹 8. `<packages>`

👉 Run all classes in a package.  
**Attributes**:

* `name` → Package name.
    

✅ Example:

```xml
<packages>
   <package name="com.salesinventory.tests"/>
</packages>
```

---

## 🔹 9. `<listeners>`

👉 Registers custom listeners or reporters (`ITestListener`, `ISuiteListener`).  
**Attributes**:

* `class-name` → Fully qualified class name of listener.
    

✅ Example:

```xml
<listeners>
   <listener class-name="com.salesinventory.utils.ExtentReportListener"/>
</listeners>
```

---

## 🔹 10. `<suite-files>`

👉 Include multiple suite files inside one master suite.  
**Attributes**:

* `path` → Path of another `testng.xml`.
    

✅ Example:

```xml
<suite-files>
   <suite-file path="smoke.xml"/>
   <suite-file path="regression.xml"/>
</suite-files>
```

---

# 🔹 Hierarchy Summary

```xml
<suite>
   <parameter/>
   <listeners/>
   <suite-files/>
   <test>
      <parameter/>
      <groups/>
      <packages/>
      <classes>
         <class>
            <methods/>
         </class>
      </classes>
   </test>
</suite>
```

---

✅ **How to explain in interview**:

> “In TestNG, the suite file is highly flexible. At the root we have `<suite>`, inside it `<test>` blocks, and within each test we can define `<classes>`, `<packages>`, or `<groups>`. Attributes like `parallel`, `thread-count`, and `preserve-order` help manage execution. Parameters can be passed at suite or test level. Listeners and suite-files add reporting and modularity. I configure this in Maven’s Surefire plugin so running `mvn test` picks up the suite automatically.”

Awesome 🚀 Let’s create **3 real TestNG suite files** for your **Sales & Inventory Project**.  
I’ll include **all major tags + attributes** so you can **directly plug and play**.

---

# 📌 1️⃣ `smoke.xml` → For quick checks (Login, Add Item)

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">

<suite name="SmokeSuite" verbose="1" parallel="false">

    <!-- 🔹 Parameters at suite level -->
    <parameter name="env" value="qa"/>
    <parameter name="browser" value="chrome"/>

    <!-- 🔹 Single test block for smoke -->
    <test name="SmokeTests" preserve-order="true">
        <groups>
            <run>
                <include name="smoke"/>
            </run>
        </groups>
        <classes>
            <class name="com.salesinventory.tests.LoginTest"/>
            <class name="com.salesinventory.tests.AddItemTest"/>
        </classes>
    </test>

</suite>
```

✅ Runs only tests tagged with `@Test(groups="smoke")` in **Chrome**, **QA environment**.

---

# 📌 2️⃣ `regression.xml` → Full flow (Login → Inventory → Sales → Reports)

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">

<suite name="RegressionSuite" verbose="2" parallel="classes" thread-count="3" configfailurepolicy="continue">

    <!-- 🔹 Parameters -->
    <parameter name="env" value="uat"/>
    <parameter name="browser" value="firefox"/>

    <!-- 🔹 Regression test block -->
    <test name="RegressionTests" preserve-order="true" time-out="60000">
        <groups>
            <run>
                <include name="regression"/>
                <exclude name="broken"/>
            </run>
        </groups>
        <classes>
            <class name="com.salesinventory.tests.LoginTest"/>
            <class name="com.salesinventory.tests.InventoryTest"/>
            <class name="com.salesinventory.tests.SalesTest"/>
            <class name="com.salesinventory.tests.ReportTest"/>
        </classes>
    </test>

</suite>
```

✅ Runs **all regression tests** in **Firefox**, with `thread-count=3` for faster execution.  
✅ If a config method (`@BeforeTest`) fails, other tests continue (`configfailurepolicy="continue"`).

---

# 📌 3️⃣ `parallel.xml` → Multi-browser execution (Chrome + Firefox)

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">

<suite name="ParallelSuite" parallel="tests" thread-count="2" verbose="1">

    <!-- 🔹 Chrome Tests -->
    <test name="ChromeTests" preserve-order="true">
        <parameter name="browser" value="chrome"/>
        <parameter name="env" value="qa"/>
        <classes>
            <class name="com.salesinventory.tests.LoginTest"/>
            <class name="com.salesinventory.tests.InventoryTest"/>
        </classes>
    </test>

    <!-- 🔹 Firefox Tests -->
    <test name="FirefoxTests" preserve-order="true">
        <parameter name="browser" value="firefox"/>
        <parameter name="env" value="qa"/>
        <classes>
            <class name="com.salesinventory.tests.SalesTest"/>
            <class name="com.salesinventory.tests.ReportTest"/>
        </classes>
    </test>

</suite>
```

✅ Runs tests in **parallel** across **Chrome & Firefox**.  
✅ `thread-count=2` means both browsers run simultaneously.

---

# 📌 4️⃣ (Optional) `master-suite.xml` → Combine everything

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">

<suite name="MasterSuite" verbose="1">

    <suite-files>
        <suite-file path="smoke.xml"/>
        <suite-file path="regression.xml"/>
        <suite-file path="parallel.xml"/>
    </suite-files>

</suite>
```

👉 This lets you execute all three suites with a single run.

---

# 📌 How to Run from Maven

### In `pom.xml` (Surefire plugin):

```xml
<plugin>
  <groupId>org.apache.maven.plugins</groupId>
  <artifactId>maven-surefire-plugin</artifactId>
  <version>3.2.5</version>
  <configuration>
    <suiteXmlFiles>
      <suiteXmlFile>smoke.xml</suiteXmlFile>
    </suiteXmlFiles>
  </configuration>
</plugin>
```

### From command line:

```xml
mvn clean test -DsuiteXmlFile=smoke.xml
mvn clean test -DsuiteXmlFile=regression.xml
mvn clean test -DsuiteXmlFile=parallel.xml
```

###### ChatGPT said:

Perfect 👍 Let’s connect the **TestNG suite files (**`smoke.xml`, `regression.xml`, `parallel.xml`) with **real Java test classes** for your **Sales & Inventory project**.

I’ll show you:  
✅ How to use `@Test(groups="...")` to match groups in XML  
✅ How to use `@Parameters` to fetch browser & environment  
✅ Full examples for **Login**, **AddItem**, **Inventory**, **Sales**, and **Report**

---

# 📌 1. [`LoginTest.java`](http://LoginTest.java)

```xml
package com.salesinventory.tests;

import org.testng.annotations.*;

public class LoginTest {

    @Parameters({"browser", "env"})
    @BeforeTest
    public void setup(String browser, String env) {
        System.out.println("Launching " + browser + " in " + env + " environment...");
        // WebDriver setup based on browser
        // driver = new ChromeDriver() / FirefoxDriver()
        // driver.get(getEnvUrl(env));
    }

    @Test(groups = {"smoke", "regression"})
    public void testValidLogin() {
        System.out.println("Running Valid Login Test...");
        // assert login success
    }

    @Test(groups = {"regression"})
    public void testInvalidLogin() {
        System.out.println("Running Invalid Login Test...");
        // assert error message
    }

    @AfterTest
    public void tearDown() {
        System.out.println("Closing browser...");
        // driver.quit();
    }
}
```

---

# 📌 2. [`AddItemTest.java`](http://AddItemTest.java)

```xml
package com.salesinventory.tests;

import org.testng.annotations.*;

public class AddItemTest {

    @Test(groups = {"smoke"})
    public void testAddNewItem() {
        System.out.println("Adding new inventory item...");
        // add item steps
    }

    @Test(groups = {"regression"})
    public void testAddDuplicateItem() {
        System.out.println("Adding duplicate inventory item...");
        // validate duplicate item error
    }
}
```

---

# 📌 3. [`InventoryTest.java`](http://InventoryTest.java)

```xml
package com.salesinventory.tests;

import org.testng.annotations.*;

public class InventoryTest {

    @Test(groups = {"regression"})
    public void testUpdateInventory() {
        System.out.println("Updating inventory stock...");
        // update stock logic
    }

    @Test(groups = {"regression"})
    public void testDeleteInventoryItem() {
        System.out.println("Deleting inventory item...");
        // delete item logic
    }
}
```

---

# 📌 4. [`SalesTest.java`](http://SalesTest.java)

```xml
package com.salesinventory.tests;

import org.testng.annotations.*;

public class SalesTest {

    @Test(groups = {"regression"})
    public void testNewSaleTransaction() {
        System.out.println("Processing new sale...");
        // sale transaction steps
    }

    @Test(groups = {"regression"})
    public void testDiscountApplication() {
        System.out.println("Applying discount to sale...");
        // discount validation
    }
}
```

---

# 📌 5. [`ReportTest.java`](http://ReportTest.java)

```xml
package com.salesinventory.tests;

import org.testng.annotations.*;

public class ReportTest {

    @Test(groups = {"regression"})
    public void testGenerateDailyReport() {
        System.out.println("Generating daily sales report...");
        // report validation
    }

    @Test(groups = {"regression"})
    public void testExportReportToExcel() {
        System.out.println("Exporting report to Excel...");
        // export functionality
    }
}
```

---

# 📌 How Everything Connects

✅ `smoke.xml` → Runs `LoginTest.testValidLogin` + `AddItemTest.testAddNewItem` (both in **smoke group**)  
✅ `regression.xml` → Runs all **regression group** tests across all classes (Login, Inventory, Sales, Report)  
✅ `parallel.xml` → Runs **Chrome tests + Firefox tests simultaneously**

---

# 📌 Run from Maven

```xml
mvn clean test -DsuiteXmlFile=smoke.xml
mvn clean test -DsuiteXmlFile=regression.xml
mvn clean test -DsuiteXmlFile=parallel.xml
```

Awesome 🔥 Let’s integrate **ExtentReports** into your Sales & Inventory Automation Framework.  
We’ll use a **TestNG Listener** + `<listeners>` tag in `testng.xml` so you get **beautiful HTML reports** after execution.

---

# 📌 1. Add ExtentReports Dependency in `pom.xml`

```xml
<dependency>
    <groupId>com.aventstack</groupId>
    <artifactId>extentreports</artifactId>
    <version>5.0.9</version>
</dependency>
```

---

# 📌 2. Create Extent Report Listener

👉 File: [`ExtentReportListener.java`](http://ExtentReportListener.java)  
Path: `com.salesinventory.utils`

```xml
package com.salesinventory.utils;

import com.aventstack.extentreports.*;
import com.aventstack.extentreports.reporter.ExtentSparkReporter;
import org.testng.*;

public class ExtentReportListener implements ITestListener {

    private static ExtentReports extent;
    private static ExtentTest test;

    @Override
    public void onStart(ITestContext context) {
        // Report Path
        String reportPath = System.getProperty("user.dir") + "/reports/extent-report.html";

        ExtentSparkReporter spark = new ExtentSparkReporter(reportPath);
        spark.config().setDocumentTitle("Sales & Inventory Automation Report");
        spark.config().setReportName("Automation Test Execution");

        extent = new ExtentReports();
        extent.attachReporter(spark);

        extent.setSystemInfo("Project", "Sales & Inventory Management");
        extent.setSystemInfo("Tester", "Your Name");
        extent.setSystemInfo("Environment", context.getCurrentXmlTest().getParameter("env"));
    }

    @Override
    public void onTestStart(ITestResult result) {
        test = extent.createTest(result.getMethod().getMethodName());
    }

    @Override
    public void onTestSuccess(ITestResult result) {
        test.pass("✅ Test Passed: " + result.getMethod().getMethodName());
    }

    @Override
    public void onTestFailure(ITestResult result) {
        test.fail("❌ Test Failed: " + result.getMethod().getMethodName());
        test.fail(result.getThrowable());
    }

    @Override
    public void onTestSkipped(ITestResult result) {
        test.skip("⚠️ Test Skipped: " + result.getMethod().getMethodName());
    }

    @Override
    public void onFinish(ITestContext context) {
        extent.flush();
    }
}
```

---

# 📌 3. Register Listener in `testng.xml`

👉 Add this block at the **suite level** inside `smoke.xml`, `regression.xml`, or `parallel.xml`.

```xml
<listeners>
    <listener class-name="com.salesinventory.utils.ExtentReportListener"/>
</listeners>
```

---

# 📌 4. Run Test & View Report

Run from Maven:

```xml
mvn clean test -DsuiteXmlFile=smoke.xml
```

📂 After execution, check the report here:

```xml
/reports/extent-report.html
```

Open in browser → You’ll see a **colorful interactive dashboard** with:

* ✅ Passed tests
    
* ❌ Failed tests with stack trace
    
* ⚠️ Skipped tests
    
* 📊 Execution summary
    

---

# 📌 5. Example `smoke.xml` with Listener

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">

<suite name="SmokeSuite" verbose="1" parallel="false">

    <listeners>
        <listener class-name="com.salesinventory.utils.ExtentReportListener"/>
    </listeners>

    <parameter name="env" value="qa"/>
    <parameter name="browser" value="chrome"/>

    <test name="SmokeTests" preserve-order="true">
        <groups>
            <run>
                <include name="smoke"/>
            </run>
        </groups>
        <classes>
            <class name="com.salesinventory.tests.LoginTest"/>
            <class name="com.salesinventory.tests.AddItemTest"/>
        </classes>
    </test>

</suite>
```

---

✅ Now every suite (`smoke.xml`, `regression.xml`, `parallel.xml`) can include this listener → All executions generate **one neat HTML report** 🎉

Perfect 🔥 Let’s upgrade your **ExtentReport setup** so that when a test fails, it will **capture a screenshot and attach it to the report**.

---

# 📌 1. Create a Screenshot Utility

👉 File: [`ScreenshotUtils.java`](http://ScreenshotUtils.java)  
Path: `com.salesinventory.utils`

```xml
package com.salesinventory.utils;

import org.openqa.selenium.*;
import org.openqa.selenium.io.FileHandler;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ScreenshotUtils {

    public static String captureScreenshot(WebDriver driver, String testName) {
        String timestamp = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
        String screenshotPath = System.getProperty("user.dir") + "/reports/screenshots/" + testName + "_" + timestamp + ".png";

        File src = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
        try {
            FileHandler.copy(src, new File(screenshotPath));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return screenshotPath;
    }
}
```

---

# 📌 2. Modify ExtentReportListener for Screenshots

👉 Update `onTestFailure` inside [`ExtentReportListener.java`](http://ExtentReportListener.java)

```xml
@Override
public void onTestFailure(ITestResult result) {
    test.fail("❌ Test Failed: " + result.getMethod().getMethodName());
    test.fail(result.getThrowable());

    // Capture screenshot
    Object testClass = result.getInstance();
    WebDriver driver = ((com.salesinventory.base.BaseTest) testClass).getDriver();

    String screenshotPath = ScreenshotUtils.captureScreenshot(driver, result.getMethod().getMethodName());
    try {
        test.addScreenCaptureFromPath(screenshotPath);
    } catch (IOException e) {
        e.printStackTrace();
    }
}
```

---

# 📌 3. Make Sure `BaseTest` Exposes WebDriver

👉 In [`BaseTest.java`](http://BaseTest.java) add this getter:

```xml
public WebDriver getDriver() {
    return driver;
}
```

This allows the listener to fetch the current WebDriver instance.

---

# 📌 4. Folder Structure

After test execution, your framework will generate:

```xml
/reports
   ├── extent-report.html   ✅ Beautiful HTML report
   └── /screenshots
         ├── LoginTest_20250919_092030.png
         ├── AddItemTest_20250919_092145.png
```

Each failed test will have a clickable screenshot inside the report.

---

# 📌 5. Example Report with Screenshot

* ✅ Passed Test → Green ✔
    
* ❌ Failed Test → Red ❌ + Screenshot attached
    
* ⚠ Skipped Test → Yellow ⚠
    

When you click the failed test in the HTML report → you’ll see the screenshot thumbnail, and you can expand it.

---

⚡ Now your **Sales & Inventory Automation Framework** has:

* TestNG Suites (`smoke.xml`, `regression.xml`, `parallel.xml`)
    
* ExtentReports (interactive HTML reports)
    
* **Screenshot capture on failures**
    

🔥 Awesome! Let’s power up your **Sales & Inventory Automation Framework** with **Log4j + ExtentReports integration**, so your report shows not only **screenshots on failures** but also **step-wise logs** (INFO, WARN, ERROR) for better debugging.

---

# 📌 1. Add Log4j Dependency in `pom.xml`

```xml
<dependency>
    <groupId>org.apache.logging.log4j</groupId>
    <artifactId>log4j-core</artifactId>
    <version>2.22.1</version>
</dependency>

<dependency>
    <groupId>org.apache.logging.log4j</groupId>
    <artifactId>log4j-api</artifactId>
    <version>2.22.1</version>
</dependency>
```

---

# 📌 2. Create Log4j Config File

👉 File: `log4j2.xml`  
Path: `src/test/resources`

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Configuration status="WARN">
    <Appenders>
        <Console name="ConsoleAppender" target="SYSTEM_OUT">
            <PatternLayout pattern="[%d{HH:mm:ss}] [%-5level] %c{1} - %msg%n"/>
        </Console>

        <File name="FileAppender" fileName="logs/automation.log">
            <PatternLayout pattern="[%d{yyyy-MM-dd HH:mm:ss}] [%-5level] %c{1} - %msg%n"/>
        </File>
    </Appenders>

    <Loggers>
        <Root level="info">
            <AppenderRef ref="ConsoleAppender"/>
            <AppenderRef ref="FileAppender"/>
        </Root>
    </Loggers>
</Configuration>
```

📂 After test execution → logs will be stored in `/logs/automation.log`.

---

# 📌 3. Create a Logger Utility

👉 File: [`LoggerUtils.java`](http://LoggerUtils.java)  
Path: `com.salesinventory.utils`

```xml
package com.salesinventory.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LoggerUtils {
    public static Logger getLogger(Class<?> clazz) {
        return LogManager.getLogger(clazz);
    }
}
```

---

# 📌 4. Use Logger in Your Test

Example → [`LoginTest.java`](http://LoginTest.java)

```xml
package com.salesinventory.tests;

import com.salesinventory.base.BaseTest;
import com.salesinventory.utils.LoggerUtils;
import org.apache.logging.log4j.Logger;
import org.testng.annotations.Test;

public class LoginTest extends BaseTest {
    Logger log = LoggerUtils.getLogger(LoginTest.class);

    @Test(groups = {"smoke"})
    public void validLoginTest() {
        log.info("Starting validLoginTest");
        driver.get("https://salesinventory.com/login");
        log.info("Navigated to Login Page");

        // Perform login
        log.info("Entering username");
        // code...
        log.info("Entering password");
        // code...
        log.info("Clicking on Login button");

        // Assertion
        log.info("Verifying login success");
        // assertion code...
    }
}
```

---

# 📌 5. Modify ExtentReportListener to Capture Logs

👉 Update [`ExtentReportListener.java`](http://ExtentReportListener.java)

```xml
@Override
public void onTestStart(ITestResult result) {
    test = extent.createTest(result.getMethod().getMethodName());
}

@Override
public void onTestSuccess(ITestResult result) {
    test.pass("✅ Test Passed: " + result.getMethod().getMethodName());
}

@Override
public void onTestFailure(ITestResult result) {
    test.fail("❌ Test Failed: " + result.getMethod().getMethodName());
    test.fail(result.getThrowable());

    // Screenshot
    Object testClass = result.getInstance();
    WebDriver driver = ((com.salesinventory.base.BaseTest) testClass).getDriver();
    String screenshotPath = ScreenshotUtils.captureScreenshot(driver, result.getMethod().getMethodName());

    try {
        test.addScreenCaptureFromPath(screenshotPath);
    } catch (IOException e) {
        e.printStackTrace();
    }
}

@Override
public void onTestSkipped(ITestResult result) {
    test.skip("⚠️ Test Skipped: " + result.getMethod().getMethodName());
}
```

---

# 📌 6. Extent Logging from Tests

Now you can log directly to ExtentReport **and** Log4j simultaneously.

Example in test:

```xml
log.info("User entered username");
ExtentReportListener.test.info("User entered username");

log.warn("Password field is empty");
ExtentReportListener.test.warning("Password field is empty");

log.error("Login failed due to invalid credentials");
ExtentReportListener.test.fail("Login failed due to invalid credentials");
```

---

# 📌 7. Final Output

✅ You get **dual logging**:

* 📂 `logs/automation.log` → step-wise execution log
    
* 📂 `reports/extent-report.html` → interactive report with
    
    * INFO / WARN / ERROR logs
        
    * Screenshots for failed tests
        
    * Pass/Fail summary
        

Superb 🚀 Now let’s integrate your **ExtentReports + Log4j setup with Jenkins** so that:

* ✅ HTML report (`extent-report.html`) gets published inside Jenkins.
    
* ✅ Log files (`automation.log`) are archived and viewable.
    
* ✅ You can open them directly from the Jenkins job dashboard after build.
    

---

# 📌 1. Pre-requisites in Jenkins

1. Install plugins:
    
    * **Maven Integration** (to run your Maven project)
        
    * **HTML Publisher Plugin** (to show ExtentReports in Jenkins UI)
        
2. Make sure your project is configured as a **Maven Project** or **Pipeline Project** in Jenkins.
    

---

# 📌 2. Run Tests via Jenkins Job

### If you are using **Freestyle Project**

* In **Build → Invoke top-level Maven targets**
    
    ```xml
    clean test -DsuiteXmlFile=smoke.xml
    ```
    

### If you are using **Pipeline (Jenkinsfile)**

```xml
pipeline {
    agent any

    tools {
        maven 'Maven3'
        jdk 'JDK11'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/your-repo-url.git'
            }
        }

        stage('Build & Test') {
            steps {
                sh 'mvn clean test -DsuiteXmlFile=smoke.xml'
            }
        }

        stage('Publish Reports') {
            steps {
                // Publish ExtentReport
                publishHTML([allowMissing: false,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: 'reports',
                    reportFiles: 'extent-report.html',
                    reportName: 'Extent Report'])

                // Archive logs
                archiveArtifacts artifacts: 'logs/*.log', fingerprint: true
            }
        }
    }
}
```

---

# 📌 3. After Build Execution

* ✅ You’ll see a **"Extent Report"** link on the left side of Jenkins job → opens your HTML report in Jenkins UI.
    
* ✅ `automation.log` file gets stored as build artifact → downloadable.
    
* ✅ Failed screenshots (`/reports/screenshots/`) can also be archived if needed.
    

To archive screenshots, just add:

```xml
archiveArtifacts artifacts: 'reports/screenshots/*.png', fingerprint: true
```

---

# 📌 4. Best Practice

👉 Keep reports clean by deleting old files before every run.  
Add in your `pom.xml` under `maven-surefire-plugin` config:

```xml
<configuration>
    <systemPropertyVariables>
        <extent.reporter.dir>${project.basedir}/reports</extent.reporter.dir>
    </systemPropertyVariables>
</configuration>
```

This ensures **fresh reports** each build.

---

# 📌 5. Workflow Summary

1. Jenkins pulls latest code from Git.
    
2. Runs Maven (`clean test`).
    
3. TestNG executes → ExtentReport + Screenshots + Log4j logs generated.
    
4. Jenkins archives:
    
    * `extent-report.html` (interactive report)
        
    * `automation.log` (execution log)
        
    * `screenshots/*.png` (failures)
        
5. QA opens Jenkins → clicks **Extent Report** → sees logs, screenshots, pass/fail.
    

---

⚡ Now your **Sales & Inventory Automation Framework** is fully CI/CD ready with **Jenkins + Maven + TestNG + ExtentReports + Log4j + Screenshots** ✅

Perfect 🎯 Let’s prepare a **Jenkins Interview Q&A Guide for Automation Testers (Java + Selenium + TestNG + Maven)**.

These are **real-world Q&A** that interviewers ask when they know you’ve used Jenkins for automation frameworks.

---

# 📌 Jenkins Interview Q&A for Automation Testers

---

## 🔹 Basics

**Q1: What is Jenkins? Why is it used in automation testing?**  
👉 Jenkins is an open-source CI/CD tool. It automates build, test, and deployment.  
For automation testers:

* Runs Selenium TestNG/Maven jobs automatically
    
* Schedules tests (daily/weekly builds)
    
* Provides reports (Extent, Allure, HTML)
    
* Integrates with Git, Maven, Docker, etc.
    

---

**Q2: How do you integrate Jenkins with your Selenium framework?**  
👉 Steps:

1. Push project to GitHub/GitLab/Bitbucket.
    
2. Configure Jenkins job → source code management → Git repo URL.
    
3. In build step → run `mvn clean test -DsuiteXmlFile=smoke.xml`.
    
4. Publish reports (Extent, HTML).
    
5. Archive logs and screenshots.
    

---

**Q3: What are different job types in Jenkins?**

* **Freestyle Project** → basic job, run commands/scripts
    
* **Pipeline** → code-as-pipeline (Jenkinsfile, Groovy script)
    
* **Multi-Configuration (Matrix)** → test across multiple environments (e.g., Chrome, Firefox)
    
* **Multibranch Pipeline** → auto-detects and builds branches
    

---

**Q4: What’s the difference between Freestyle and Pipeline jobs?**

* Freestyle → UI-based, simple, limited flexibility
    
* Pipeline → Groovy script-based, powerful, supports CI/CD pipelines with multiple stages
    

---

## 🔹 Maven & TestNG in Jenkins

**Q5: How do you run a specific TestNG suite from Jenkins?**  
👉 Add in build step:

```xml
mvn clean test -DsuiteXmlFile=smoke.xml
```

---

**Q6: How do you pass parameters like browser or environment in Jenkins?**

* Add parameters in Jenkins job → "This project is parameterized"
    
* Example:
    
    * `BROWSER=chrome`
        
    * `ENV=qa`
        
* Pass via Maven command:
    

```xml
mvn clean test -Dbrowser=$BROWSER -Denv=$ENV
```

* Read using `System.getProperty("browser")` in TestNG.
    

---

**Q7: How do you publish TestNG/Extent Reports in Jenkins?**

* Install **HTML Publisher Plugin**
    
* Add post-build action → Publish HTML
    
* Report directory: `reports`
    
* Report files: `extent-report.html`
    
* Report name: "Extent Report"
    

---

## 🔹 CI/CD & Scheduling

**Q8: How do you schedule jobs in Jenkins?**

* Use **Build Triggers → Build periodically**
    
* Example CRON syntax:
    
    * `H 9 * * 1-5` → Run every weekday at 9 AM
        
    * `H/30 * * * *` → Run every 30 mins
        

---

**Q9: How does Jenkins help in CI/CD pipeline for testing?**

* **Continuous Integration** → Runs automation suite on every code push
    
* **Continuous Testing** → Executes regression suite nightly
    
* **Continuous Delivery** → Ensures tested code is always ready for release
    

---

## 🔹 Logs, Reports, Screenshots

**Q10: How do you handle screenshots/logs in Jenkins?**

* Store in `/reports/screenshots` and `/logs`
    
* Archive them:
    

```xml
archiveArtifacts artifacts: 'reports/screenshots/*.png, logs/*.log'
```

* View from Jenkins job dashboard
    

---

**Q11: Can Jenkins send email alerts with reports?**  
👉 Yes, configure **Email Extension Plugin**

* Send email with build status (SUCCESS/FAILURE)
    
* Attach extent-report.html or link Jenkins report
    

---

## 🔹 Advanced

**Q12: How do you run jobs in parallel in Jenkins?**

* **TestNG parallel execution** (`parallel="tests" or "classes"`)
    
* **Matrix jobs** (test across browsers, OS)
    
* **Pipeline stages in parallel** using:
    

```xml
parallel {
   stage('Chrome') { steps { sh 'mvn test -Dbrowser=chrome' } }
   stage('Firefox') { steps { sh 'mvn test -Dbrowser=firefox' } }
}
```

---

**Q13: How do you integrate Jenkins with GitHub?**

* Configure GitHub Webhook → triggers Jenkins build on every commit (`push`)
    
* Jenkins job SCM → GitHub repo URL
    

---

**Q14: What is a Jenkinsfile? Why is it important?**

* A text file (Groovy DSL) that defines pipeline stages (build, test, deploy)
    
* Stored in repo → version-controlled pipeline
    
* Example:
    

```xml
pipeline {
    stages {
        stage('Build') { steps { sh 'mvn clean install' } }
        stage('Test')  { steps { sh 'mvn test' } }
        stage('Report'){ steps { publishHTML([reportDir: 'reports', reportFiles: 'extent-report.html', reportName: 'Extent Report']) } }
    }
}
```

---

**Q15: If your Jenkins build fails, how do you debug?**

* Check **Console Output** in Jenkins
    
* Review archived `automation.log`
    
* Open screenshots from `/reports/screenshots`
    
* Verify Maven errors (pom.xml issues, dependency conflicts)
    
* Check if TestNG suite path is correct
    

---

# ✅ Summary

Interviewers want to see if you can:

* Setup Jenkins jobs (Freestyle, Pipeline)
    
* Run Maven/TestNG suites
    
* Pass parameters (browser/env)
    
* Publish Extent Reports
    
* Handle logs/screenshots
    
* Explain CI/CD process