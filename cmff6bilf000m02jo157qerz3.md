---
title: "Types Of Testing we perform"
datePublished: Thu Sep 11 2025 08:55:52 GMT+0000 (Coordinated Universal Time)
cuid: cmff6bilf000m02jo157qerz3
slug: types-of-testing-we-perform
tags: shreenibas

---

In **Software Testing**, there are many types depending on **what we are testing, when we are testing, and how we are testing**.  
Here’s a **structured list** for you (commonly asked in interviews):

---

## 🔹 1. Based on **Execution Method**

* **Manual Testing** – Tester executes test cases manually without tools.
    
* **Automation Testing** – Test cases are executed using automation tools (Selenium, JUnit, TestNG, etc.).
    

---

## 🔹 2. Based on **Development Phase**

* **Unit Testing** – Testing individual modules/components.
    
* **Integration Testing** – Testing the interaction between modules.
    
* **System Testing** – Testing the complete integrated system.
    
* **Acceptance Testing (UAT)** – Testing by end-users/business for requirements validation.
    

---

## 🔹 3. Based on **Purpose**

* **Functional Testing** – Validating application features (login, checkout, etc.).
    
* **Non-Functional Testing** – Validating performance, scalability, security, etc.
    

---

## 🔹 4. Types of **Functional Testing**

* Smoke Testing
    
* Sanity Testing
    
* Regression Testing
    
* Retesting
    
* Exploratory Testing
    
* Ad-hoc Testing
    
* Boundary Value Analysis (BVA)
    
* Equivalence Partitioning (EP)
    

---

## 🔹 5. Types of **Non-Functional Testing**

* Performance Testing
    
    * Load Testing
        
    * Stress Testing
        
    * Spike Testing
        
    * Endurance (Soak) Testing
        
* Security Testing
    
* Usability Testing
    
* Compatibility Testing
    
* Reliability Testing
    
* Scalability Testing
    

---

## 🔹 6. Based on **Change**

* Regression Testing – After changes, ensure existing features still work.
    
* Re-Testing – Re-executing failed test cases after fixes.
    

---

## 🔹 7. Other Important Types

* Alpha Testing – Internal team tests before release.
    
* Beta Testing – Limited users test before public release.
    
* A/B Testing – Compare two versions of software.
    
* White Box Testing – Test internal code, logic.
    
* Black Box Testing – Test only inputs/outputs, not internal code.
    
* Grey Box Testing – Combination of both.
    

---

👉 In short, there are **50+ types of testing**, but the most **important for interviews** are:

* Unit, Integration, System, UAT
    
* Smoke, Sanity, Regression, Retesting
    
* Functional vs Non-functional
    
* Performance, Load, Stress, Security
    
* Alpha, Beta, Black Box, White Box
    

---

Do you want me to prepare a **mindmap/cheat sheet diagram** of all testing types for quick revision?

##### You said:

what are the automation suites are

###### ChatGPT said:

Great question 👍  
When we talk about **Automation Suites**, it usually means **collections of automated test cases grouped together** based on purpose, execution priority, or type of testing.

Here are the **main automation suites** used in real projects and interviews:

---

## 🔹 1. **Smoke Suite (Build Verification Suite)**

* Contains **basic critical test cases**.
    
* Runs after every new build deployment.
    
* Ensures application is stable enough for further testing.  
    ✅ Example: Login works, Homepage loads, DB connection is stable.
    

---

## 🔹 2. **Sanity Suite**

* Subset of regression but **focuses on newly added/modified features**.
    
* Ensures **new functionality works** without affecting existing features.  
    ✅ Example: New “Add to Wishlist” feature works fine.
    

---

## 🔹 3. **Regression Suite**

* Contains a **broad set of test cases covering entire application**.
    
* Runs after code changes, bug fixes, or enhancements.
    
* Ensures **no old functionality is broken**.  
    ✅ Example: Login, Checkout, Payment, User Profile, Reports, etc.
    

---

## 🔹 4. **End-to-End (E2E) Suite**

* Covers **full user journey across modules**.
    
* Simulates real-world workflows.  
    ✅ Example: User Signup → Login → Add Product to Cart → Payment → Order Confirmation.
    

---

## 🔹 5. **Performance Suite**

* Automated performance test scripts.
    
* Includes **Load, Stress, Spike, Soak** testing scenarios.  
    ✅ Example: 1000 users login simultaneously.
    

---

## 🔹 6. **Security Suite**

* Automation focused on **vulnerabilities & access control**.
    
* Uses tools like OWASP ZAP, Burp Suite, etc.  
    ✅ Example: SQL Injection, XSS prevention, Broken Authentication.
    

---

## 🔹 7. **API Automation Suite**

* Collection of automated API test cases.
    
* Validates **response codes, schema, headers, payload, performance**.  
    ✅ Example: Verify `/login` API returns `200 OK` and token is generated.
    

---

## 🔹 8. **Cross-Browser / Cross-Platform Suite**

* Runs scripts on **different browsers (Chrome, Firefox, Edge, Safari)** and devices.
    
* Ensures application works everywhere.  
    ✅ Example: Login page works on Chrome, Firefox, and Edge.
    

---

## 🔹 9. **Data-Driven Suite**

* Executes the **same test cases with multiple sets of test data**.
    
* Uses Excel, CSV, DB, or JSON for input data.  
    ✅ Example: Login test with 100 different username/password sets.
    

---

## 🔹 10. **Custom Business Suite**

* Suites designed as per **business workflows/modules**.
    
* Example:
    
    * **Sales Suite** → Customer Onboarding, Invoice, Payment
        
    * **Inventory Suite** → Stock Entry, Update, Reports
        

---

✅ In real projects, the **most common automation suites** are:

* **Smoke, Sanity, Regression, E2E, API**
    

---

Do you want me to create a **sample TestNG XML suite file** (Smoke + Regression) so you can see how we organize suites in Selenium automation?

##### You said:

yes

###### ChatGPT said:

Perfect 👍 Let’s create a **sample TestNG suite file** that contains both **Smoke** and **Regression** automation suites.

---

### 📂 Project Structure Example

```bash
src/test/java
   ├── tests
   │    ├── LoginTest.java
   │    ├── HomePageTest.java
   │    ├── CheckoutTest.java
   │    ├── PaymentTest.java
   │    └── ProfileTest.java
   └── testng.xml
```

---

### ✅ **Sample Test Classes**

[**LoginTest.java**](http://LoginTest.java)

```bash
import org.testng.Assert;
import org.testng.annotations.Test;

public class LoginTest {

    @Test(groups = {"smoke", "regression"})
    public void verifyValidLogin() {
        System.out.println("Executing valid login test");
        Assert.assertTrue(true);
    }

    @Test(groups = {"regression"})
    public void verifyInvalidLogin() {
        System.out.println("Executing invalid login test");
        Assert.assertTrue(true);
    }
}
```

[**CheckoutTest.java**](http://CheckoutTest.java)

```bash
import org.testng.Assert;
import org.testng.annotations.Test;

public class CheckoutTest {

    @Test(groups = {"smoke", "regression"})
    public void verifyAddToCart() {
        System.out.println("Executing add to cart test");
        Assert.assertTrue(true);
    }

    @Test(groups = {"regression"})
    public void verifyCheckoutProcess() {
        System.out.println("Executing checkout process test");
        Assert.assertTrue(true);
    }
}
```

---

### ✅ **testng.xml Suite File**

```bash
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd" >
<suite name="Automation Test Suite" parallel="false">

    <!-- Smoke Suite -->
    <test name="Smoke Suite">
        <groups>
            <run>
                <include name="smoke"/>
            </run>
        </groups>
        <classes>
            <class name="tests.LoginTest"/>
            <class name="tests.CheckoutTest"/>
        </classes>
    </test>

    <!-- Regression Suite -->
    <test name="Regression Suite">
        <groups>
            <run>
                <include name="regression"/>
            </run>
        </groups>
        <classes>
            <class name="tests.LoginTest"/>
            <class name="tests.CheckoutTest"/>
            <class name="tests.PaymentTest"/>
            <class name="tests.ProfileTest"/>
        </classes>
    </test>

</suite>
```

---

### 🔹 How It Works

* Run with:
    
    ```bash
    mvn clean test -DsuiteXmlFile=testng.xml
    ```
    
* **Smoke Suite** → Runs only critical tests (like `verifyValidLogin`, `verifyAddToCart`).
    
* **Regression Suite** → Runs **all regression-tagged tests** across modules.
    

---

👉 Do you want me to also show you how to **separate testng-smoke.xml** and **testng-regression.xml** into two files (so Jenkins can run them individually)?

##### You said:

yes

###### ChatGPT said:

Great 👍 separating **testng-smoke.xml** and **testng-regression.xml** is the most common practice in real automation frameworks, because Jenkins (or any CI/CD tool) can trigger them independently.

---

## 📂 Project Structure Example

```bash
src/test/java
   ├── tests
   │    ├── LoginTest.java
   │    ├── HomePageTest.java
   │    ├── CheckoutTest.java
   │    ├── PaymentTest.java
   │    └── ProfileTest.java
testng-smoke.xml
testng-regression.xml
```

---

## ✅ testng-smoke.xml (Smoke Suite)

```bash
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd" >
<suite name="Smoke Test Suite" parallel="false">

    <test name="Smoke Suite">
        <groups>
            <run>
                <include name="smoke"/>
            </run>
        </groups>
        <classes>
            <class name="tests.LoginTest"/>
            <class name="tests.CheckoutTest"/>
        </classes>
    </test>

</suite>
```

---

## ✅ testng-regression.xml (Regression Suite)

```bash
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd" >
<suite name="Regression Test Suite" parallel="false">

    <test name="Regression Suite">
        <groups>
            <run>
                <include name="regression"/>
            </run>
        </groups>
        <classes>
            <class name="tests.LoginTest"/>
            <class name="tests.CheckoutTest"/>
            <class name="tests.PaymentTest"/>
            <class name="tests.ProfileTest"/>
        </classes>
    </test>

</suite>
```

---

## ✅ Run Command in Maven

Run **smoke suite**:

```bash
mvn clean test -DsuiteXmlFile=testng-smoke.xml
```

Run **regression suite**:

```bash
mvn clean test -DsuiteXmlFile=testng-regression.xml
```

---

## ✅ Jenkins Integration (High-Level)

* Create **two Jenkins jobs (or pipelines)**:
    
    * **Smoke Job** → Runs `testng-smoke.xml` (fast feedback after build).
        
    * **Regression Job** → Runs `testng-regression.xml` (nightly or before release).
        

---

👉 Do you want me to also prepare a **Maven** `pom.xml` profile setup so you can run `smoke` and `regression` with simple commands like:

````bash
mvn clean test -Psmoke
mvn clean test -Pregression
``` instead of always typing `-DsuiteXmlFile`?
````

##### You said:

yes

###### ChatGPT said:

Perfect 👍 Using **Maven profiles** is a neat way to avoid typing `-DsuiteXmlFile` every time. We’ll configure profiles for **Smoke** and **Regression** in the `pom.xml`.

---

## ✅ `pom.xml` with Profiles for TestNG Suites

Here’s a sample snippet you can add to your `pom.xml`:

```bash
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0
         http://maven.apache.org/xsd/maven-4.0.0.xsd">

    <modelVersion>4.0.0</modelVersion>
    <groupId>com.demo</groupId>
    <artifactId>selenium-framework</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>jar</packaging>

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
            <version>7.10.2</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <!-- Surefire Plugin -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-surefire-plugin</artifactId>
                <version>3.2.5</version>
                <configuration>
                    <suiteXmlFiles>
                        <suiteXmlFile>${suiteXmlFile}</suiteXmlFile>
                    </suiteXmlFiles>
                </configuration>
            </plugin>
        </plugins>
    </build>

    <!-- Profiles -->
    <profiles>
        <!-- Smoke Profile -->
        <profile>
            <id>smoke</id>
            <properties>
                <suiteXmlFile>testng-smoke.xml</suiteXmlFile>
            </properties>
        </profile>

        <!-- Regression Profile -->
        <profile>
            <id>regression</id>
            <properties>
                <suiteXmlFile>testng-regression.xml</suiteXmlFile>
            </properties>
        </profile>
    </profiles>
</project>
```

---

## ✅ Run Commands

* Run **Smoke Suite**:
    
    ```bash
    mvn clean test -Psmoke
    ```
    
* Run **Regression Suite**:
    
    ```bash
    mvn clean test -Pregression
    ```
    

---

## 🔹 Benefits

* No need to type `-DsuiteXmlFile` every time.
    
* Cleaner and more **Jenkins-friendly**.
    
* You can also add more profiles later (like `api`, `e2e`, `performance`).