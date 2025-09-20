---
title: "Java Basics To Advance"
datePublished: Sat Sep 20 2025 17:39:10 GMT+0000 (Coordinated Universal Time)
cuid: cmfsjz5aw000102lg75yz8ha9
slug: java-basics-to-advance
tags: shreenibas

---

### Import & Packages 📦

Here's a breakdown of the key concepts related to packages and imports in Java:

1. **📦 Package Definition:**
    
    * A package in Java is a **namespace** that organizes classes and interfaces, preventing naming conflicts.
        
2. **📝 Package Declaration:**
    
    * Packages are declared at the very **beginning** of a Java source file using the `package` keyword, followed by the package name.
        
3. **📥 Import Statement:**
    
    * An `import` statement is used to **bring in classes or interfaces** from other packages into the current file, making them accessible without using a fully qualified name.
        
4. **🎯 Types of Import:**
    
    * **Single-Type Import:** Imports a *single class* or interface (e.g., `import java.util.List;`).
        
    * **On-Demand Import:** Imports *all classes* and interfaces from a package (e.g., `import java.util.*;`). ✨
        
5. **💥 Avoiding Collisions:**
    
    * Packages help in **avoiding name collisions** by grouping similar classes together.
        
6. **🛠️ Built-in Packages:**
    
    * Java comes with pre-built packages.
        
    * Examples: `java.lang` (which is automatically imported), `java.util`, [`java.io`](http://java.io), etc.
        

---

### 📊 Diagram: Types of Packages

Packages can be broadly categorized into two types:

* **⚙️ Built-in Packages**
    
    * Provided by Java (e.g., `java.lang`, `java.util`, [`java.io`](http://java.io)).
        
* **🧑‍💻 User-Defined Packages**
    
    * Created by the programmer to organize their own code.
        

### Delving Deeper into Packages 📂

Think of packages as **folders for your code**. Just as you use folders on your computer to organize documents, photos, and videos, programmers use packages to organize their Java classes. This organization serves three critical purposes:

1. **Namespace Management (Preventing Name Conflicts)**: Imagine two programmers on a large project both create a class named `Utils`. Without packages, the Java compiler wouldn't know which `Utils` class to use. By placing them in different packages (e.g., `com.project.billing.Utils` and `com.project.inventory.Utils`), the names become unique, and conflicts are avoided.
    
2. **Organization and Maintainability**: In any real-world application, you might have hundreds of classes. Packages allow you to group related classes together. For instance, you could have packages like `com.myapp.ui` for user interface elements, [`com.myapp.data`](http://com.myapp.data) for database logic, and `com.myapp.model` for your data structures. This makes the codebase much easier to navigate and understand.
    
3. **Access Control**: Packages are fundamental to controlling visibility in Java. You can declare classes, methods, and variables to be accessible only to other classes *within the same package*. This is called **package-private** access.
    

---

### The `package` Statement and Directory Structure

A crucial rule in Java is that the **package structure must match the directory structure**.

If you declare a class to be in the package `com.myapp.utils`, the Java file (e.g., [`Helper.java`](http://Helper.java)) must be located inside a folder path that mirrors this: `.../com/myapp/utils/`[`Helper.java`](http://Helper.java).

**Naming Convention:** The standard convention for naming packages is to use your organization's internet domain name in reverse, followed by the project and sub-package names. For example, if your domain is [`google.com`](http://google.com), your package might start with [`com.google`](http://com.google)`.projectname`.

---

### Mastering the `import` Statement 📥

The main job of the `import` statement is to save you from typing. Without it, you would have to use the **fully qualified name (FQN)** of every class you use from another package.

**Before** `import`:

Java

```java
java.util.Scanner myScanner = new java.util.Scanner(System.in);
java.util.ArrayList<String> names = new java.util.ArrayList<>();
```

**After** `import`:

Java

```java
import java.util.Scanner;
import java.util.ArrayList;

// Now your code is much cleaner!
Scanner myScanner = new Scanner(System.in);
ArrayList<String> names = new ArrayList<>();
```

#### Wildcard Import vs. Single-Type Import

* `import java.util.List;` (Single-Type): This is explicit and preferred by most developers because it clearly shows which classes are being used.
    
* `import java.util.*;` (Wildcard/On-Demand): This imports all public classes and interfaces from the `java.util` package.
    
    * **Myth Buster**: Using a wildcard import does **not** slow down your program's runtime performance. It has a negligible effect on compile time and does not bloat your final compiled code. The main drawback is potential ambiguity if two packages you import have a class with the same name (e.g., [`java.util.Date`](http://java.util.Date) and [`java.sql.Date`](http://java.sql.Date)).
        

#### Static Import

A special type of import, the **static import**, allows you to import `static` members (methods and variables) of a class. This lets you use them without prefixing the class name. It's often used for mathematical functions or constants to make code more readable.

**Without** `static import`:

Java

```java
double radius = 5.0;
double area = Math.PI * Math.pow(radius, 2);
System.out.println("The area is: " + area);
```

**With** `static import`:

Java

```java
import static java.lang.Math.PI;
import static java.lang.Math.pow;
import static java.lang.System.out;

double radius = 5.0;
double area = PI * pow(radius, 2); // Notice no "Math." prefix
out.println("The area is: " + area); // Notice no "System." prefix
```

Use static imports sparingly, as overusing them can make it unclear where a method or variable is coming from.

---

### Packages and Access Control 🔐

Packages are directly tied to Java's access modifiers.

* `public`: Accessible from any class, anywhere.
    
* `protected`: Accessible within the same package, and by subclasses in *other* packages.
    
* `default` (or **package-private**): This is what you get when you don't specify any modifier. It's accessible **only** by classes within the *same package*.
    
* `private`: Accessible **only** within the class it's declared in.
    

---

### A Tour of Essential Built-in Packages 🛠️

* `java.lang`: The most fundamental package. It's **automatically imported** into every Java program. It contains essential classes like `Object`, `String`, `System`, `Math`, and `Thread`.
    
* `java.util`: The utility toolbox. Contains the Collections Framework (`List`, `Map`, `Set`), as well as helpful classes like `Scanner`, `Random`, and `Date`.
    
* [`java.io`](http://java.io): For all input and output operations, like reading from and writing to files (`File`, `FileReader`, `PrintWriter`).
    
* [`java.net`](http://java.net): For networking. Contains classes for working with sockets, URLs, and internet connections (`URL`, `Socket`).
    
* `java.time`: A modern and robust API for handling dates, times, and time zones (`LocalDate`, `LocalDateTime`, `Duration`).
    
* `java.sql`: The JDBC (Java Database Connectivity) API for connecting to and interacting with databases (`Connection`, `Statement`, `ResultSet`).
    

### Access Modifiers

**1\. Types:** The four access modifiers are `public`, `protected`, `default` (no modifier), and `private`.

**2\.** `public`: The public modifier allows access from **any other class**. For classes, it means they can be accessed from any other package. 🌐

**3\.** `protected`: The protected modifier allows access **within the same package and subclasses**. 🛡️

**4\.** `default`: If no access modifier is specified, it's the default, allowing access **only within the same package**. 🏠

**5\.** `private`: The private modifier restricts access to the **defining class only**. 🔒

**6\. Class-Level Access:** Only `public` and `default` (no modifier) access modifiers are applicable for top-level classes.

**7\. Member-Level Access:** Methods, constructors, and variables can use all four access modifiers to control visibility. 🧱

### Access Modifiers: Extra Information 💡

Here are some extra details about Java access modifiers that weren't on the slide!

---

#### 1\. The `public` Modifier in Detail 🌍

* **Public Classes:** A class declared as `public` can be accessed from any other class in any package. However, there's a rule: a Java source file can have only **one** `public` class, and the filename **must** be the same as the class name (e.g., [`MyClass.java`](http://MyClass.java) must contain `public class MyClass`). This is a key part of how the Java compiler and JVM locate and load classes.
    
* **Public Members:** Public methods and variables can be called or accessed by any other class. This is how you expose the functionality of your class to the rest of your program and to other packages.
    

#### 2\. The `protected` Modifier in Action 🛡️

* **Inheritance is Key:** The `protected` modifier is specifically designed for **inheritance**. It provides a middle ground between `public` and `private`.
    
* **Access from a different package:** A subclass in a different package can access the `protected` members of its superclass. However, it can only access those members on **instances of the subclass itself**, not on an instance of the superclass. This prevents unrestricted access while still allowing for proper inheritance.
    
* **Analogy:** Think of `protected` as a family secret. 🤫 Members of the immediate family (the same package) know it. A child who moves away (a subclass in a different package) also knows the secret, but they can't go around telling it to people outside the family.
    

#### 3\. The `default` (Package-Private) Modifier 🏘️

* **No Keyword:** The `default` access modifier is unique because it has **no keyword**. You just omit the access modifier altogether.
    
* **Use Case:** This modifier is great for classes or members that are only meant to be used by other classes within the same functional unit or package. It helps to encapsulate and hide implementation details that aren't needed by outside code.
    

#### 4\. The `private` Modifier in Detail 🤫

* **Encapsulation:** The primary purpose of the `private` modifier is to enforce **encapsulation**. It hides a class's internal state and implementation details from the outside world. This is a core principle of object-oriented programming.
    
* **Getters and Setters:** You often access `private` variables through public methods called **getters** and **setters**. This gives you control over how the data is read and modified, allowing you to add validation or other logic.