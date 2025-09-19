---
title: "testNG -Unit Testing Framework"
datePublished: Fri Sep 19 2025 05:29:30 GMT+0000 (Coordinated Universal Time)
cuid: cmfqegxrs000802l52m8a3k82
slug: testng-unit-testing-framework
tags: shreenibas

---

# 📌 1. What is TestNG?

* **TestNG (Test Next Generation)** is a **testing framework** inspired by JUnit and NUnit.
    
* It was created by **Cédric Beust** to overcome the **limitations of JUnit (3 & 4)** and make testing more powerful.
    
* It supports **unit testing, functional testing, integration testing, and end-to-end testing**.
    

---

# 📌 2. Why TestNG came?

Before TestNG, most people used **JUnit** in Java. But:

* ❌ JUnit did not support **parallel execution**.
    
* ❌ JUnit had limited **annotations**.
    
* ❌ Grouping tests (e.g., smoke vs regression) was not possible.
    
* ❌ No built-in reporting → only console output.
    
* ❌ Parameterization was hard to achieve.
    

👉 To solve these problems, **TestNG** was introduced.

---

# 📌 3. What problems does TestNG solve?

✅ Supports **annotations** (easy to define pre/post conditions).  
✅ Allows **grouping** (smoke, regression, sanity).  
✅ Supports **parallel execution** → saves time.  
✅ Provides **dependency testing** (`dependsOnMethods`, `dependsOnGroups`).  
✅ Built-in **HTML reports**.  
✅ Allows **parameterization** (via `testng.xml` or `@DataProvider`).  
✅ Integrates seamlessly with **Maven, Jenkins, Selenium**.

---

# 📌 4. Structure of TestNG Framework

Let’s break the **TestNG structure** into 3 levels:

---

## 🔹 (A) TestNG Annotations

These control the **lifecycle of tests**.

| Annotation | Meaning | Example |
| --- | --- | --- |
| `@BeforeSuite` | Runs before entire suite | DB connection |
| `@AfterSuite` | Runs after entire suite | Close DB connection |
| `@BeforeTest` | Runs before `<test>` block in XML | Setup browser |
| `@AfterTest` | Runs after `<test>` block in XML | Quit browser |
| `@BeforeClass` | Runs before class methods | Login |
| `@AfterClass` | Runs after class methods | Logout |
| `@BeforeMethod` | Runs before each test method | Navigate to page |
| `@AfterMethod` | Runs after each test method | Clear cookies |
| `@Test` | Actual test case | Verify login |

👉 Example:

```xml
public class LoginTest {

    @BeforeClass
    public void setup() {
        System.out.println("Launch browser");
    }

    @Test(priority = 1)
    public void validLogin() {
        System.out.println("Valid login test");
    }

    @Test(priority = 2)
    public void invalidLogin() {
        System.out.println("Invalid login test");
    }

    @AfterClass
    public void tearDown() {
        System.out.println("Close browser");
    }
}
```

---

## 🔹 (B) testng.xml (Suite File)

The **test suite configuration file**.

Example:

```xml
<!DOCTYPE suite SYSTEM "https://testng.org/testng-1.0.dtd">
<suite name="RegressionSuite" parallel="false">

    <parameter name="browser" value="chrome"/>
    <parameter name="env" value="qa"/>

    <test name="LoginTests">
        <classes>
            <class name="com.salesinventory.tests.LoginTest"/>
            <class name="com.salesinventory.tests.DashboardTest"/>
        </classes>
    </test>

    <test name="CheckoutTests">
        <classes>
            <class name="com.salesinventory.tests.CheckoutTest"/>
        </classes>
    </test>

</suite>
```

---

## 🔹 (C) Reports

After execution, TestNG automatically generates reports in:  
📂 `test-output` folder →

* `index.html` (summary report)
    
* `emailable-report.html` (can be emailed)
    

---

# 📌 5. How TestNG fits in Automation Framework

```xml
Selenium Tests (@Test methods)
        ↓
TestNG Annotations (@Before/After, @Test)
        ↓
testng.xml (Suite: smoke, regression, parallel)
        ↓
Maven (mvn clean test -DsuiteXmlFile=regression.xml)
        ↓
Jenkins (automated CI/CD job)
        ↓
Reports (TestNG + Extent + Screenshots + Logs)
```

---

✅ **In Summary**

* **What is TestNG?** → A testing framework for Java (next-gen JUnit).
    
* **Why it came?** → To overcome JUnit limitations.
    
* **What problem it solves?** → Grouping, parallel execution, parameterization, reporting.
    
* **Structure?** → Annotations, testng.xml, Reports.
    

# 📌 **1\. TestNG Annotations Overview**

| Annotation | Description | Execution Scope |
| --- | --- | --- |
| `@BeforeSuite` | Runs **once before the entire suite** | Suite |
| `@AfterSuite` | Runs **once after the entire suite** | Suite |
| `@BeforeTest` | Runs **before &lt;test&gt; tag in XML** | Test |
| `@AfterTest` | Runs **after &lt;test&gt; tag in XML** | Test |
| `@BeforeGroups` | Runs **before the first test method of the specified group(s)** | Group |
| `@AfterGroups` | Runs **after the last test method of the specified group(s)** | Group |
| `@BeforeClass` | Runs **before the first method of the current class** | Class |
| `@AfterClass` | Runs **after all methods of the current class** | Class |
| `@BeforeMethod` | Runs **before each @Test method** | Method |
| `@AfterMethod` | Runs **after each @Test method** | Method |
| `@Test` | Marks a **test case** | Method |
| `@DataProvider` | Provides **data for @Test methods** | Method |
| `@Factory` | Creates **dynamic instances of test classes** | Class |
| `@Listeners` | Specifies **TestNG listeners** for the class | Class |
| `@Parameters` | Passes **parameters from XML** to tests | Method |
| `@Optional` | Marks parameter as optional when using `@Parameters` | Method |

---

# 📌 **2\. @Test Annotation – All Attributes**

| Attribute | Description | Example |
| --- | --- | --- |
| `priority` | Order of execution (lower first) | `@Test(priority=1)` |
| `groups` | Assign test to one or more groups | `@Test(groups={"smoke","regression"})` |
| `dependsOnMethods` | Test depends on other **methods** | `@Test(dependsOnMethods={"loginTest"})` |
| `dependsOnGroups` | Test depends on other **groups** | `@Test(dependsOnGroups={"smoke"})` |
| `alwaysRun` | Run test even if dependencies fail | `@Test(dependsOnMethods="init", alwaysRun=true)` |
| `enabled` | Enable or disable test (default = true) | `@Test(enabled=false)` |
| `invocationCount` | Number of times to run the test | `@Test(invocationCount=3)` |
| `threadPoolSize` | Run multiple invocations in parallel | `@Test(invocationCount=5, threadPoolSize=2)` |
| `timeOut` | Fail test if it takes longer than X ms | `@Test(timeOut=2000)` |
| `expectedExceptions` | Pass test if exception occurs | `@Test(expectedExceptions=ArithmeticException.class)` |
| `description` | Adds description for reports | `@Test(description="Verify login functionality")` |
| `dataProvider` | Name of `@DataProvider` method | `@Test(dataProvider="userData")` |
| `suiteName` | Assign test to a suite | `@Test(suiteName="RegressionSuite")` |
| `testName` | Assign test to a test block | `@Test(testName="LoginTestGroup")` |

---

# 📌 **3\. @Before/@After Annotations Attributes**

| Annotation | Key Attributes | Example Usage |
| --- | --- | --- |
| `@BeforeSuite` / `@AfterSuite` | `alwaysRun` → run even if dependent failed | `@BeforeSuite(alwaysRun=true)` |
| `@BeforeTest` / `@AfterTest` | `alwaysRun` | `@BeforeTest(alwaysRun=true)` |
| `@BeforeClass` / `@AfterClass` | `alwaysRun` | `@BeforeClass(alwaysRun=true)` |
| `@BeforeMethod` / `@AfterMethod` | `alwaysRun` | `@BeforeMethod(alwaysRun=true)` |
| `@BeforeGroups` / `@AfterGroups` | `groups` → specify which group(s) to run before/after | `@BeforeGroups(groups={"smoke"})` |

**Notes:**

* `alwaysRun=true` ensures execution even if a dependent configuration fails.
    
* `groups` in `BeforeGroups`/`AfterGroups` must match group names in `@Test`.
    

---

# 📌 **4\. DataProvider Annotation**

* Supplies multiple data sets to a test.
    
* Must return **Object\[\]\[\]** or **Iterator&lt;Object\[\]&gt;**.
    

```xml
@DataProvider(name="loginData")
public Object[][] getData() {
    return new Object[][] {
        {"user1","pass1"},
        {"user2","pass2"}
    };
}

@Test(dataProvider="loginData")
public void loginTest(String username, String password) {
    System.out.println(username + " | " + password);
}
```

---

# 📌 **5\. @Parameters & @Optional**

```xml
<parameter name="browser" value="chrome"/>
<parameter name="env" value="qa"/>
```

```xml
@Parameters({"browser", "env"})
@BeforeTest
public void setup(@Optional("chrome") String browser, String env) {
    System.out.println(browser + " | " + env);
}
```

* `@Optional` provides default value if not specified in XML.
    

---

# 📌 **6\. @Factory**

* Dynamically creates instances of test classes.
    

```xml
@Factory
public Object[] createInstances() {
    return new Object[] { new TestClass(1), new TestClass(2) };
}
```

---

# 📌 **7\. @Listeners**

* Attach listeners to a test class for logging, reporting, or screenshots.
    

```xml
@Listeners(com.salesinventory.utils.ExtentReportListener.class)
public class LoginTest { }
```

---

# 📌 **8\. Execution Flow of Annotations**

```xml
@BeforeSuite
    @BeforeTest
        @BeforeGroups (if any)
            @BeforeClass
                @BeforeMethod
                    @Test
                @AfterMethod
            @AfterClass
        @AfterGroups (if any)
    @AfterTest
@AfterSuite
```

---

# 📌 **9\. Summary Table – TestNG All Annotations + Attributes**

| Annotation | Scope | Common Attributes |
| --- | --- | --- |
| @BeforeSuite / @AfterSuite | Suite | alwaysRun |
| @BeforeTest / @AfterTest | Test | alwaysRun |
| @BeforeGroups / @AfterGroups | Group | groups, alwaysRun |
| @BeforeClass / @AfterClass | Class | alwaysRun |
| @BeforeMethod / @AfterMethod | Method | alwaysRun |
| @Test | Method | priority, groups, dependsOnMethods, dependsOnGroups, alwaysRun, enabled, invocationCount, threadPoolSize, timeOut, expectedExceptions, description, dataProvider, suiteName, testName |
| @DataProvider | Method | name, parallel |
| @Parameters | Method | N/A |
| @Optional | Method | value (default value) |
| @Factory | Class | N/A |
| @Listeners | Class | N/A |

---

✅ With this table, you have **every TestNG annotation and attribute** — fully detailed for **interviews, practical automation, and CI/CD frameworks**.