---
title: "Apache Maven"
datePublished: Tue Aug 12 2025 06:43:55 GMT+0000 (Coordinated Universal Time)
cuid: cme86e9qj000u02kyb1vra8no
slug: apache-maven
tags: shreenibas

---

# 🚀 Apache Maven – Complete Guide for Selenium Automation

---

## 🔹 1. What is Maven?

* **Buil****d Automation** **& Project M****anagement Tool** for Java projects.
    
* Handles:
    
    * **Depe****ndency management** → JARs via `pom.xml` (no manual downloads).
        
    * **Standard project** **structure** → Consistency across teams.
        
    * **Build lifecycle** → Compile → Test → Package → Deploy.
        
    * **Plugins** → Extend functionality (TestNG, Surefire, Reporting).
        
    * **CI/CD Integratio****n** → Works with Jenkins, GitHub Actions, etc.
        

💡 In automation frameworks, Maven ensures you don’t manually manage Selenium/TestNG JARs.

---

## 🔹 2. Maven Installation & Setup

1. Download Maven from Apache Maven.
    
2. Extract and set environment variables:
    
    * `MAVEN_HOME = C:\``apache-maven`
        
    * Add `%MAVEN_HOME%``\bin` to `PATH`.
        
3. Verify:
    

```bash
mvn -v
```

---

## 🔹 3. Standard Maven Project Structure

```bash
selenium-framework/
│── pom.xml                # Project configuration
│── src/
│   ├── main/
│   │   ├── java/          # Utility classes, Page Objects
│   │   └── resources/     # Config files (e.g., log4j.properties)
│   └── test/
│       ├── java/          # Selenium TestNG test classes
│       └── resources/     # testng.xml, test data
│── target/                # Compiled code, reports, JAR/WAR files
```

💡 Interview Point → Maven enforces this **convention over configuration**, so projects are uniform.

---

## 🔹 4. POM (Project Object Model)

The **heart of Mav****en** is `pom.xm``l`.

### Minimal Selenium Project POM:

```bash
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
                             http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>com.automation</groupId>
  <artifactId>selenium-framework</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>jar</packaging>

  <properties>
    <maven.compiler.source>11</maven.compiler.source>
    <maven.compiler.target>11</maven.compiler.target>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
  </properties>

  <dependencies>
    <!-- Selenium -->
    <dependency>
      <groupId>org.seleniumhq.selenium</groupId>
      <artifactId>selenium-java</artifactId>
      <version>4.23.0</version>
    </dependency>

    <!-- TestNG -->
    <dependency>
      <groupId>org.testng</groupId>
      <artifactId>testng</artifactId>
      <version>7.9.0</version>
      <scope>test</scope>
    </dependency>

    <!-- WebDriverManager -->
    <dependency>
      <groupId>io.github.bonigarcia</groupId>
      <artifactId>webdrivermanager</artifactId>
      <version>5.9.2</version>
    </dependency>
  </dependencies>

  <build>
    <plugins>
      <!-- Compiler Plugin -->
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-compiler-plugin</artifactId>
        <version>3.11.0</version>
        <configuration>
          <source>11</source>
          <target>11</target>
        </configuration>
      </plugin>

      <!-- Surefire Plugin (for TestNG execution) -->
      <plugin>
        <groupId>org.apache.maven.plugins</groupId>
        <artifactId>maven-surefire-plugin</artifactId>
        <version>3.2.5</version>
        <configuration>
          <suiteXmlFiles>
            <suiteXmlFile>src/test/resources/testng.xml</suiteXmlFile>
          </suiteXmlFiles>
        </configuration>
      </plugin>
    </plugins>
  </build>
</project>
```

---

## 🔹 5. Maven Lifecycle

Maven defines **ph****ases** in the build lifecycle:

1. **validate** → Validate project structure
    
2. **compile** → Compile source code
    
3. **test** → Run unit/automation tests (via TestNG/JUnit)
    
4. **package** → Package code into JAR/WAR
    
5. **install** → Install into local repository (`~/.m2/repository`)
    
6. **deploy** → Deploy to remote repository (e.g., Nexus, Artifactory)
    

💡 For automation:

* `mvn cl``ean test` is most common.
    

---

## 🔹 6. Dependency Scope

* **co****mpile** (default) → Available everywhere
    
* **test** → Only in `s``rc/test/java` (e.g., TestNG)
    
* **provided** → Provided by container (e.g., servlet-api)
    
* **runtime** → Needed only at runtime
    

💡 Selenium = compile, TestNG = test.

---

## 🔹 7. Running Tests with Maven

1. Run all tests:
    

```bash
mvn test
```

2. Clean build:
    

```bash
mvn clean test
```

3. Run specific test class:
    

```bash
mvn -Dtest=GoogleTest test
```

4. Run TestNG groups:
    

```bash
mvn test -Dgroups=smoke
```

5. Pass parameters:
    

```bash
mvn test -Dbrowser=chrome
```

---

## 🔹 8. Profiles (Multi-Environment Setup)

```bash
<profiles>
  <profile>
    <id>qa</id>
    <properties>
      <env>qa</env>
      <browser>chrome</browser>
    </properties>
  </profile>
  <profile>
    <id>staging</id>
    <properties>
      <env>staging</env>
      <browser>firefox</browser>
    </properties>
  </profile>
</profiles>
```

Run:

```bash
mvn test -Pqa
```

💡 Helps in running the same suite against **QA / UAT / Prod**.

---

## 🔹 9. Reports in Maven

* **Su****refire Reports** → default in `target/surefire-reports`
    
* **ExtentReports /** **Allure** → add dependency + listener
    
* Generate HTML report:
    

```bash
mvn surefire-report:report
```

---

## 🔹 10. Maven with Jenkins (CI/CD)

1. Install Maven in Jenkins (Global Tool Configuration).
    
2. Create a job → **B****uild Step →** **Invoke top-level Maven targets** → enter `clean test`.
    
3. Publish TestNG results:  
    Path = `**/target/surefire-reports/testng-results.xml`.
    
4. Run builds automatically on GitHub push.
    

---

## 🔹 11. Advanced Maven Usage

* **Multi-Module Pro****ject** → separate `framework` and `tests` modules.
    
* **Dependency Tree**:
    

```bash
mvn dependency:tree
```

* **Effective POM**:
    

```bash
mvn help:effective-pom
```

* **Check latest ver****sions**:
    

```bash
mvn versions:display-dependency-updates
```

---

## 🔹 12. Interview\-Focused Quick Points

1. What is Maven?  
    → Build automation & dependency management tool.
    
2. Difference between `install` & `deploy`?  
    → `install` → local repo; `deploy` → remote repo.
    
3. How to run specific TestNG suite with Maven?  
    → Configure in `surefire-plugin`, then `mvn test`.
    
4. How to handle multiple environments?  
    → Use Maven profiles (`-Pqa`, `-Pstaging`).
    
5. How does Maven integrate with Jenkins?  
    → Run `mvn clean test`, publish surefire/testng results.
    

## **1\. What is a Maven Profile?**

A Maven profile is like a **configuration switch** inside your `pom.xml` that lets you:

* Change **test environment** (QA, UAT, Staging, Prod).
    
* Change **browser type** (Chrome, Firefox, Edge).
    
* Change **data/config paths** (DB connection strings, API endpoints, file paths).
    
* Include/exclude certain **test suites**.
    

**Benefit:**  
You don’t need to touch Java code for these changes — you just pick a profile at runtime using:

```java
bashCopyEditmvn clean test -Pqa
```

---

## **2\. Why We Use Profiles in Selenium Projects**

| Reason | Example |
| --- | --- |
| **Environment Switching** | QA → [`https://qa.app.com`](https://qa.app.com), UAT → [`https://uat.app.com`](https://uat.app.com) |
| **Browser Switching** | `chrome`, `firefox`, `edge` |
| **Different Data Sets** | Run with staging DB vs local DB |
| **Selective Execution** | Run only smoke tests or full regression |
| **Jenkins Integration** | Pass profile as build parameter in Jenkins job |

---

## **3\. Example** `pom.xml` with Profiles

Here’s a real-world Maven profile setup for Selenium + TestNG:

```java
xmlCopyEdit<project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.mycompany</groupId>
    <artifactId>selenium-automation</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>11</maven.compiler.source>
        <maven.compiler.target>11</maven.compiler.target>
    </properties>

    <profiles>
        <!-- QA Environment -->
        <profile>
            <id>qa</id>
            <properties>
                <base.url>https://qa.myapp.com</base.url>
                <browser>chrome</browser>
            </properties>
        </profile>

        <!-- UAT Environment -->
        <profile>
            <id>uat</id>
            <properties>
                <base.url>https://uat.myapp.com</base.url>
                <browser>firefox</browser>
            </properties>
        </profile>

        <!-- Regression on Chrome -->
        <profile>
            <id>regression</id>
            <properties>
                <base.url>https://qa.myapp.com</base.url>
                <browser>chrome</browser>
                <suiteXmlFile>testng-regression.xml</suiteXmlFile>
            </properties>
        </profile>
    </profiles>

    <build>
        <plugins>
            <!-- Surefire Plugin to run TestNG -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>3.0.0-M5</version>
                <configuration>
                    <suiteXmlFiles>
                        <suiteXmlFile>${suiteXmlFile}</suiteXmlFile>
                    </suiteXmlFiles>
                    <systemPropertyVariables>
                        <base.url>${base.url}</base.url>
                        <browser>${browser}</browser>
                    </systemPropertyVariables>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

---

## **4\. Using These Profiles in Selenium Code**

```java
javaCopyEditimport org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class TestBase {
    public static WebDriver driver;

    public void setUp() {
        String baseUrl = System.getProperty("base.url");
        String browser = System.getProperty("browser");

        if (browser.equalsIgnoreCase("chrome")) {
            driver = new ChromeDriver();
        } else if (browser.equalsIgnoreCase("firefox")) {
            driver = new FirefoxDriver();
        }

        driver.manage().window().maximize();
        driver.get(baseUrl);
    }
}
```

---

## **5\. Running with Maven**

```java
bashCopyEditmvn clean test -Pqa
```

This will:

* Use [`https://qa.myapp.com`](https://qa.myapp.com) as the base URL.
    
* Use Chrome browser.
    

```java
bashCopyEditmvn clean test -Puat
```

This will:

* Use [`https://uat.myapp.com`](https://uat.myapp.com) as the base URL.
    
* Use Firefox browser.
    

---

## **6\. Jenkins Integration**

Here’s how to connect Maven profiles with Jenkins:

### **Jenkins Job Configuration**

1. **Add "String Parameter"** called `envProfile` in Jenkins job.
    
2. In the **Build Step**, run:
    
    ```java
    bashCopyEditmvn clean test -P${envProfile}
    ```
    
3. Now, when you run the Jenkins job:
    
    * Enter `qa` → Runs in QA env.
        
    * Enter `uat` → Runs in UAT env.
        

---

## **7\. Advantages in Automation**

* **Single codebase** runs on all environments.
    
* **Quick switch** without modifying code.
    
* Easy to **parameterize in Jenkins**.
    
* Supports **parallel execution** with different configs.
    

---

If you want, I can prepare a **ready-to-run Maven + TestNG + Selenium project** with profiles, `pom.xml`, and sample tests so you can just clone and run it both locally and from Jenkins. That will give you a complete working example from scratch.

##### You said:

ok

###### ChatGPT said:

Great — I’ll prepare a **ready-to-run Maven + Selenium + TestNG** project structure with profiles so you can directly use it.

Here’s what I’ll include:

* `pom.xml` with **profiles** for QA & UAT
    
* **TestBase** class that reads profile properties (`base.url`, `browser`)
    
* A **sample TestNG test** that opens the environment URL and checks page title
    
* **TestNG suite XMLs** for regression/smoke execution
    

---

Do you want me to make it

* **Basic** (just one test + profile switching)  
    or
    
* **Full-featured** (includes regression/smoke suites, reporting, and Jenkins-ready commands)?
    

##### You said:

Full-featured

###### ChatGPT said:

Alright ✅  
I’ll give you a **full-featured Maven + Selenium + TestNG project** that’s:

* **Profile-based** (QA, UAT, Regression, Smoke)
    
* **Supports multiple browsers** (Chrome, Firefox)
    
* **Jenkins-ready** (just pass `-Pqa` or `-Puat`)
    
* **Generates TestNG HTML reports**
    
* Has **separate suite XMLs** for smoke & regression
    

---

## **1\. Project Structure**

```java
pgsqlCopyEditselenium-automation/
│── pom.xml
│── src
│   ├── main
│   │    └── java
│   │         └── base
│   │              └── TestBase.java
│   ├── test
│        ├── java
│        │     └── tests
│        │          ├── LoginTest.java
│        │          └── HomePageTest.java
│        └── resources
│              ├── testng-smoke.xml
│              └── testng-regression.xml
```

---

## **2.** `pom.xml`

```java
xmlCopyEdit<project>
    <modelVersion>4.0.0</modelVersion>
    <groupId>com.mycompany</groupId>
    <artifactId>selenium-automation</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>11</maven.compiler.source>
        <maven.compiler.target>11</maven.compiler.target>
    </properties>

    <dependencies>
        <!-- Selenium -->
        <dependency>
            <groupId>org.seleniumhq.selenium</groupId>
            <artifactId>selenium-java</artifactId>
            <version>4.22.0</version>
        </dependency>

        <!-- WebDriverManager -->
        <dependency>
            <groupId>io.github.bonigarcia</groupId>
            <artifactId>webdrivermanager</artifactId>
            <version>5.9.2</version>
        </dependency>

        <!-- TestNG -->
        <dependency>
            <groupId>org.testng</groupId>
            <artifactId>testng</artifactId>
            <version>7.10.2</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <profiles>
        <!-- QA -->
        <profile>
            <id>qa</id>
            <properties>
                <base.url>https://qa.myapp.com</base.url>
                <browser>chrome</browser>
                <suiteXmlFile>src/test/resources/testng-regression.xml</suiteXmlFile>
            </properties>
        </profile>

        <!-- UAT -->
        <profile>
            <id>uat</id>
            <properties>
                <base.url>https://uat.myapp.com</base.url>
                <browser>firefox</browser>
                <suiteXmlFile>src/test/resources/testng-regression.xml</suiteXmlFile>
            </properties>
        </profile>

        <!-- Smoke -->
        <profile>
            <id>smoke</id>
            <properties>
                <base.url>https://qa.myapp.com</base.url>
                <browser>chrome</browser>
                <suiteXmlFile>src/test/resources/testng-smoke.xml</suiteXmlFile>
            </properties>
        </profile>
    </profiles>

    <build>
        <plugins>
            <!-- Surefire Plugin to run TestNG -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>3.0.0-M5</version>
                <configuration>
                    <suiteXmlFiles>
                        <suiteXmlFile>${suiteXmlFile}</suiteXmlFile>
                    </suiteXmlFiles>
                    <systemPropertyVariables>
                        <base.url>${base.url}</base.url>
                        <browser>${browser}</browser>
                    </systemPropertyVariables>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```

---

## **3\. Base Class (**[`TestBase.java`](http://TestBase.java))

```java
javaCopyEditpackage base;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import io.github.bonigarcia.wdm.WebDriverManager;

public class TestBase {
    protected static WebDriver driver;

    public void setUp() {
        String browser = System.getProperty("browser");
        String baseUrl = System.getProperty("base.url");

        if (browser.equalsIgnoreCase("chrome")) {
            WebDriverManager.chromedriver().setup();
            driver = new ChromeDriver();
        } else if (browser.equalsIgnoreCase("firefox")) {
            WebDriverManager.firefoxdriver().setup();
            driver = new FirefoxDriver();
        } else {
            throw new RuntimeException("Invalid browser: " + browser);
        }

        driver.manage().window().maximize();
        driver.get(baseUrl);
    }

    public void tearDown() {
        if (driver != null) {
            driver.quit();
        }
    }
}
```

---

## **4\. Sample Test (**[`LoginTest.java`](http://LoginTest.java))

```java
javaCopyEditpackage tests;

import base.TestBase;
import org.testng.Assert;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class LoginTest extends TestBase {

    @BeforeMethod
    public void beforeTest() {
        setUp();
    }

    @Test
    public void verifyTitle() {
        String title = driver.getTitle();
        System.out.println("Page Title: " + title);
        Assert.assertTrue(title.contains("MyApp"), "Title verification failed!");
    }

    @AfterMethod
    public void afterTest() {
        tearDown();
    }
}
```

---

## **5\. TestNG Suite Files**

### `testng-smoke.xml`

```java
xmlCopyEdit<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd" >
<suite name="Smoke Suite">
    <test name="Smoke Tests">
        <classes>
            <class name="tests.LoginTest"/>
        </classes>
    </test>
</suite>
```

### `testng-regression.xml`

```java
xmlCopyEdit<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd" >
<suite name="Regression Suite">
    <test name="Regression Tests">
        <classes>
            <class name="tests.LoginTest"/>
            <class name="tests.HomePageTest"/>
        </classes>
    </test>
</suite>
```

---

## **6\. Run Commands**

```java
bashCopyEdit# Run QA Regression
mvn clean test -Pqa

# Run UAT Regression
mvn clean test -Puat

# Run Smoke Tests in QA
mvn clean test -Psmoke
```

---

## **7\. Jenkins Integration**

* Create a **String Parameter** in Jenkins called `envProfile`.
    
* Build command in Jenkins:
    
    ```java
    bashCopyEditmvn clean test -P${envProfile}
    ```
    
* Now, in Jenkins:
    
    * Enter `qa` → Runs regression in QA.
        
    * Enter `smoke` → Runs smoke in QA.
        
    * Enter `uat` → Runs regression in UAT.