---
title: "Maven tool"
datePublished: Fri Sep 12 2025 14:53:49 GMT+0000 (Coordinated Universal Time)
cuid: cmfgyjp16000102js9ogl5wpr
slug: maven-tool
tags: shreenibas

---

## 1\. **What is Maven?**

Maven is a **build automation and project management tool** mainly used for **Java projects**.

* It simplifies the process of **compiling code, packaging it into JAR/WAR, managing dependencies (external libraries), running tests, and deploying applications**.
    
* It uses an XML file called `pom.xml` (Project Object Model) to manage everything about a project.
    

👉 Think of Maven as your **project manager + builder** that automatically does repetitive tasks.

---

## 2\. **Why Maven came?**

Before Maven, developers used tools like **ANT** for build automation. But:

* Dependency management was **manual** (you had to download and configure every JAR file yourself).
    
* Project builds were **not standardized** (every company/team had different scripts).
    
* No clear **project lifecycle** (compile → test → package → deploy).
    

Maven solved these problems by:  
✔ Providing **centralized dependency management** (from Maven Central Repository).  
✔ Standardizing **project structure & lifecycle**.  
✔ Making projects **portable** (same build works anywhere).

---

## 3\. **When Maven came?**

* Maven was **created by Apache Software Foundation**.
    
* **First release:** **2004** (successor of Apache Ant).
    
* It became popular from **2005 onwards** because of its dependency management system.
    

---

## 4\. **What problems does Maven solve?**

✅ **Dependency Management** → Automatically downloads required JARs from repositories.  
✅ **Standard Build Lifecycle** → Same commands (`mvn compile`, `mvn test`, `mvn package`) work for any project.  
✅ **Consistent Project Structure** → Standard folder structure (src/main/java, src/test/java).  
✅ **Multi-Module Projects** → Manage multiple sub-projects in one parent project.  
✅ **Integration with CI/CD** → Works smoothly with Jenkins, GitHub Actions, etc.  
✅ **Plugin Ecosystem** → Ready-to-use plugins for testing, reporting, deployment.

---

## 5\. **Where can we use Maven?**

* **Java Applications** (Core Java, Advanced Java).
    
* **Web Applications** (Spring, Hibernate, JSP/Servlet, Struts).
    
* **Automation Frameworks** (Selenium, TestNG, JUnit).
    
* **Microservices** (Spring Boot, REST APIs).
    
* **Big projects with multiple modules**.
    

---

## 6\. **When do we use Maven?**

We use Maven when:

* Project has **dependencies** (external libraries like Selenium, TestNG, Log4j).
    
* You want **standardized builds** (compile, test, package, deploy).
    
* Working in a **team** (so everyone follows same structure).
    
* Project is **integrated with CI/CD** pipelines.
    

👉 Example: In Selenium Automation Projects, Maven is used to manage TestNG, WebDriver, Apache POI, Extent Reports, etc.

---

## 7\. **Prerequisite Knowledge for Maven**

Before learning Maven, you should know:

1. **Core Java** (OOPs, Exceptions, Collections).
    
2. **JDK & JRE setup** (basic Java program execution).
    
3. **Eclipse/IntelliJ IDE** basics.
    
4. **Command line basics** (running commands in terminal).
    
5. **Basic XML** understanding (because POM file is XML).
    

👉 Optional (but useful):

* Knowledge of **JUnit/TestNG** (for test automation).
    
* **Git** (for version control).
    
* **Jenkins** (for CI/CD integration).
    

---

✅ **Summary in One Line**:  
Maven is a **Java project management & build tool (introduced in 2004)** that came to **solve dependency hell and build standardization problems**, used widely in **Java, Selenium, Spring Boot projects**, and requires **basic Java + XML knowledge** before starting.

# 🔑 **Maven Components and Their Work**

---

## 1\. **POM (Project Object Model)**

* **What it is:**  
    An **XML file (**`pom.xml`) at the root of every Maven project.
    
* **What it does:**
    
    * Defines project information (name, version, packaging type).
        
    * Lists **dependencies** (external libraries).
        
    * Declares **plugins** (e.g., for compiler, surefire for test execution).
        
    * Manages **build configurations**.
        
    * Supports **parent–child hierarchy** for multi-module projects.
        

👉 **Without POM.xml, Maven cannot work.**

---

## 2\. **Repositories**

Maven stores and fetches **dependencies (JAR files)** from repositories.

* **Types of Repositories:**
    
    1. **Local Repository**
        
        * A folder in your machine (`~/.m2/repository`).
            
        * Stores downloaded dependencies for reuse (so you don’t re-download every time).
            
    2. **Central Repository**
        
        * Maintained by Apache (https://repo.maven.apache.org/maven2).
            
        * Default online source for dependencies.
            
        * Contains thousands of open-source libraries (Selenium, TestNG, JUnit, etc.).
            
    3. **Remote/Private Repository**
        
        * Used in organizations (e.g., **Nexus, Artifactory, JFrog**).
            
        * Stores custom/company-specific JARs.
            

---

## 3\. **Dependencies**

* **What it is:** External libraries (like Selenium, MySQL connector, TestNG).
    
* **What it does:**
    
    * Defined inside `pom.xml`.
        
    * Maven automatically **downloads & manages versions**.
        
    * Avoids **“JAR Hell”** (manual download and conflicts).
        

👉 Example:

```xml
<dependency>
  <groupId>org.seleniumhq.selenium</groupId>
  <artifactId>selenium-java</artifactId>
  <version>4.23.0</version>
</dependency>
```

---

## 4\. **Maven Lifecycle**

Maven has **three built-in lifecycles**:

1. **Clean Lifecycle** – Cleans project (`mvn clean`).
    
    * Deletes `target/` folder (previous builds).
        
2. **Default Lifecycle** – Main build process.
    
    * **Phases:** validate → compile → test → package → verify → install → deploy
        
3. **Site Lifecycle** – Generates project reports/documentation (`mvn site`).
    

👉 Each lifecycle has **phases**, and each phase has **goals** (actual tasks).

---

## 5\. **Plugins**

* **What it is:** Small tools that extend Maven’s functionality.
    
* **What it does:**
    
    * Each plugin performs a task in a build lifecycle.
        
    * Example plugins:
        
        * **Compiler Plugin** → Compiles Java code.
            
        * **Surefire Plugin** → Runs unit tests (JUnit/TestNG).
            
        * **Shade Plugin** → Creates a fat JAR with dependencies.
            

👉 Example (in `pom.xml`):

```xml
<build>
  <plugins>
    <plugin>
      <groupId>org.apache.maven.plugins</groupId>
      <artifactId>maven-compiler-plugin</artifactId>
      <version>3.11.0</version>
      <configuration>
        <source>17</source>
        <target>17</target>
      </configuration>
    </plugin>
  </plugins>
</build>
```

---

## 6\. **Build Profiles**

* **What it is:** Custom build configurations in `pom.xml`.
    
* **What it does:**
    
    * Helps create **different builds** (e.g., dev, test, prod).
        
    * You can activate a profile with:
        
        ```bash
        mvn clean install -Pdev
        ```
        

👉 Example:

```xml
<profiles>
  <profile>
    <id>dev</id>
    <properties>
      <env>development</env>
    </properties>
  </profile>
  <profile>
    <id>prod</id>
    <properties>
      <env>production</env>
    </properties>
  </profile>
</profiles>
```

---

## 7\. **Archetypes**

* **What it is:** Project **templates** provided by Maven.
    
* **What it does:**
    
    * Helps quickly generate a standard project structure.
        
    * Example:
        
        ```bash
        mvn archetype:generate
        ```
        
    * Creates folders like `src/main/java`, `src/test/java`, etc.
        

---

## 8\. **Super POM**

* **What it is:** The **default parent POM** provided by Maven.
    
* **What it does:**
    
    * Contains default configurations (compiler, reporting, plugins).
        
    * All projects **inherit** from it (if you don’t define something in `pom.xml`, Maven uses defaults from Super POM).
        

---

## 9\. **Effective POM**

* **What it is:** Final POM after merging:  
    **Super POM + Parent POM + Your POM.xml**.
    
* **What it does:**
    
    * Shows actual settings Maven will use.
        
    * You can see it with:
        
        ```bash
        mvn help:effective-pom
        ```
        

---

# 🎯 **Quick Summary Table**

| Component | Role / Work |
| --- | --- |
| **POM.xml** | Central configuration file (dependencies, plugins, builds). |
| **Repositories** | Source of dependencies (Local, Central, Remote). |
| **Dependencies** | External libraries managed automatically. |
| **Lifecycle** | Defines phases of build (clean, compile, test, package, deploy). |
| **Plugins** | Execute specific tasks (compile, test, package). |
| **Profiles** | Different build environments (dev, prod, test). |
| **Archetypes** | Templates for creating new projects. |
| **Super POM** | Default parent POM with built-in configs. |
| **Effective POM** | Final merged POM (Super + Parent + Current). |