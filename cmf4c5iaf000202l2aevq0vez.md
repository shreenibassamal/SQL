---
title: "Exception in java and selenium"
datePublished: Wed Sep 03 2025 18:53:42 GMT+0000 (Coordinated Universal Time)
cuid: cmf4c5iaf000202l2aevq0vez
slug: exception-in-java-and-selenium
tags: shreenibas

---

A **NullPointerException (NPE)** occurs in Java when you try to use an object reference that points to `null`. It means the variable has been declared but not assigned any valid object before being used.

---

## **Common Causes of NullPointerException**

1. **Uninitialized Object**
    

```java
WebDriver driver; // declared but not initialized
driver.get("https://example.com"); // NPE here
```

2. **Page Object Not Initialized**
    

```java
LoginPage lp; 
lp.login("user", "pass"); // NPE because lp = null
```

3. **Array or Collection Not Initialized**
    

```java
int[] arr = null;
int n = arr.length; // NPE
```

4. **Return Value is Null**
    

```java
String text = getText(); // method returns null
System.out.println(text.length()); // NPE
```

5. **Chained Calls on Null Reference**
    

```java
String name = null;
int len = name.trim().length(); // NPE
```

---

## **How to Handle NullPointerException**

### **1\. Prevent It (Best Practice)**

* Always **initialize variables** before using them.
    
* For Selenium:
    

```java
WebDriver driver = new ChromeDriver();
```

* For Page Objects:
    

```java
LoginPage lp = new LoginPage(driver);
```

---

### **2\. Null Checks (Defensive Programming)**

```java
if (obj != null) {
    obj.doSomething();
}
```

---

### **3\. Use** `Optional` (Java 8+)

```java
Optional<String> name = Optional.ofNullable(getUserName());
name.ifPresent(n -> System.out.println(n.length()));
```

---

### **4\. Default Values**

```java
String text = (getText() != null) ? getText() : "Default Text";
```

---

### **5\. Proper Initialization in Frameworks**

* **Use** `@BeforeMethod` or `@BeforeClass` in TestNG to initialize objects.
    
* Example:
    

```java
@BeforeMethod
public void setUp() {
    driver = new ChromeDriver();
    loginPage = new LoginPage(driver);
}
```

---

### **6\. Catching NPE (Last Resort – Not Recommended for Prevention)**

```java
try {
    obj.doSomething();
} catch (NullPointerException e) {
    System.out.println("Object was null!");
}
```

> **Note:** Catching NPE is rarely recommended; it hides the real cause. Always fix the root cause.

---

## **How to Debug NullPointerException**

1. Look at the **stack trace** – it shows the exact line.
    
2. Check **which variable is null** on that line.
    
3. Trace back where that variable was initialized.
    
4. Fix the missing initialization or add a proper check.
    

---

### **Example in Selenium (Cause & Fix)**

#### Problem:

```java
public class LoginTest {
    WebDriver driver;
    LoginPage lp;

    @Test
    public void testLogin() {
        lp.login("admin", "admin123"); // NPE because lp is never initialized
    }
}
```

#### Solution:

```java
@BeforeMethod
public void setUp() {
    driver = new ChromeDriver();
    driver.get("https://example.com");
    lp = new LoginPage(driver); // FIX: Proper initialization
}
```