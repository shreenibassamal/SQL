---
title: "Java OPPS"
datePublished: Tue Sep 16 2025 05:29:54 GMT+0000 (Coordinated Universal Time)
cuid: cmfm45w02000h02jsgfph0bun
slug: java-opps
tags: thespiders

---

# 🔹 Core OOP Concepts in Java

Great question 👍 Let’s go step by step — **OOPs (Object-Oriented Programming System)** is not just a coding style, it’s a **paradigm shift** in programming.

---

## 🔹 1. **What is OOPs?**

👉 **Object-Oriented Programming System (OOPs)** is a programming paradigm based on the concept of **objects** (real-world entities) that contain **data (fields)** and **behavior (methods)**.

* In OOP, everything revolves around **classes** and **objects**.
    
* It focuses on **reusability, modularity, security, and scalability**.
    

---

## 🔹 2. **Why OOPs Came?**

Before OOP, programming was mainly **Procedural Programming** (C, Pascal, etc.).  
Procedural programming had problems:

* Code was **not reusable** (duplicate logic everywhere).
    
* **Data was exposed** (no security, anyone could access it).
    
* **Complexity increased** for large projects.
    
* Hard to **maintain** and **modify**.
    

👉 OOP was introduced to solve these by modeling software closer to **real-world objects**.

---

## 🔹 3. **When OOPs Came?**

* Concept of objects first appeared in **1960s** (Simula 67, the first object-oriented language).
    
* Popularized in **1980s–1990s** with languages like **Smalltalk, C++ (1983), Java (1995)**.
    
* Today, most modern languages (Java, Python, C#, Kotlin, etc.) are **OOP-based** or support OOP.
    

---

## 🔹 4. **What Problems Does OOP Solve?**

| Problem in Procedural Programming | Solution by OOP |
| --- | --- |
| No data security → anyone can modify variables | **Encapsulation** hides data (private fields + getters/setters) |
| Large codebase hard to maintain | **Modularity** → divide into classes |
| Code duplication | **Inheritance** allows reusability |
| No flexibility (one function fits all) | **Polymorphism** allows different behaviors with same interface |
| Hard to model real-world problems | **Objects** represent real-world entities (Car, BankAccount, Employee) |
| Poor scalability | OOP projects can grow easily (extensible) |

---

## 🔹 5. **Core OOP Principles (Pillars)**

1. **Encapsulation** – data hiding & security
    
2. **Abstraction** – hide implementation, show only essential
    
3. **Inheritance** – reusability, IS-A relationship
    
4. **Polymorphism** – one interface, many implementations
    

---

✅ **In short:**  
OOP (introduced in 1960s, popular in 1980s–90s) came to **solve the problems of procedural programming** like lack of reusability, poor maintainability, and data insecurity. It models software closer to real-world objects and makes code **modular, reusable, secure, and scalable**.

Here’s the **timeline of OOP evolution** 📊:

* **1960** → Procedural Programming (C, Pascal)
    
* **1967** → Simula 67 (First OOP Language)
    
* **1980** → Smalltalk (Pure OOP)
    
* **1983** → C++ (Hybrid: OOP + Procedural)
    
* **1995** → Java (Popularized OOP, Platform Independent)
    
* **2025** → Modern OOP (Java, Python, C#, Kotlin)
    

👉 This way you can **remember when and why OOP came**.

---

There are **4 main OOP pillars** + some supporting principles.

---

## 1️⃣ **Encapsulation**

👉 *"Wrapping data (fields) and methods (behaviors) together in a single unit (class)."*

* Achieved using **private fields + public getters/setters**.
    
* Provides **data hiding** and security.
    

**Example:**

```java
class BankAccount {
    private double balance; // data hidden

    public void deposit(double amount) {
        balance += amount;
    }

    public double getBalance() { // controlled access
        return balance;
    }
}
```

📌 Here → balance is hidden, only accessed through methods.

---

## 2️⃣ **Abstraction**

👉 *"Hiding implementation details and showing only the essential features."*

* Achieved using **abstract classes** and **interfaces**.
    
* Focuses on **what to do, not how to do**.
    

**Example:**

```xml
abstract class Shape {
    abstract void draw(); // abstract method
}

class Circle extends Shape {
    void draw() {
        System.out.println("Drawing Circle");
    }
}

class Square extends Shape {
    void draw() {
        System.out.println("Drawing Square");
    }
}
```

📌 User only knows `draw()` works, not *how* it works.

---

## 3️⃣ **Inheritance (IS-A relationship)**

👉 *"Acquiring properties and behaviors of a parent class into a child class."*

* Achieved using `extends` keyword.
    
* Promotes **reusability**.
    

**Example:**

```xml
class Animal {
    void eat() {
        System.out.println("Animal eats");
    }
}

class Dog extends Animal { // IS-A relationship
    void bark() {
        System.out.println("Dog barks");
    }
}
```

📌 Dog **IS-A** Animal.

---

## 4️⃣ **Polymorphism (many forms)**

👉 *"Ability of an object to behave in multiple forms."*

### a) **Compile-time Polymorphism (Method Overloading)**

```xml
class Calculator {
    int add(int a, int b) { return a + b; }
    double add(double a, double b) { return a + b; }
}
```

### b) **Runtime Polymorphism (Method Overriding)**

```xml
class Animal {
    void sound() { System.out.println("Animal makes sound"); }
}
class Dog extends Animal {
    void sound() { System.out.println("Dog barks"); }
}
```

📌 Overloading → same method name, different parameters.  
📌 Overriding → same method in parent and child, resolved at runtime.

---

# 🔹 Supporting OOP Concepts

## 5️⃣ **Class & Object**

* **Class** → Blueprint (e.g., Car).
    
* **Object** → Instance of a class (e.g., myCar).
    

```xml
class Car {
    void drive() { System.out.println("Car is driving"); }
}
Car c = new Car(); // object created
```

---

## 6️⃣ **Constructor**

* Special method to initialize an object.
    
* Same name as class, no return type.
    

```xml
class Student {
    String name;
    Student(String n) {
        name = n;
    }
}
```

---

## 7️⃣ **Association, Aggregation, Composition**

* **Association** → General relationship between classes.
    
* **Aggregation (HAS-A)** → Weak relationship. (Car HAS-A Engine).
    
* **Composition (HAS-A strong)** → Strong ownership (House HAS-A Room).
    

---

## 8️⃣ **Static vs Instance**

* **Static** → Belongs to class, shared across objects.
    
* **Instance** → Each object gets its own copy.
    

---

## 9️⃣ **Method Overloading vs Overriding**

* Overloading → Compile-time polymorphism.
    
* Overriding → Runtime polymorphism.
    

---

## 🔟 **Abstraction vs Encapsulation**

| Feature | Abstraction | Encapsulation |
| --- | --- | --- |
| **What** | Hides *implementation* | Hides *data* |
| **Achieved by** | Abstract class, Interface | Private variables + getters/setters |
| **Focus** | "What to do" | "How to protect data" |

---

# ✅ Final Summary

* **Encapsulation** → Hides *data*
    
* **Abstraction** → Hides *implementation*
    
* **Inheritance** → Reusability (IS-A)
    
* **Polymorphism** → Many forms (overloading/overriding)
    
* **HAS-A** → Composition/Aggregation
    

Perfect 👍 Let me give you a **single Java program** that demonstrates **all 4 OOPs pillars** (Encapsulation, Abstraction, Inheritance, Polymorphism) in one shot. This is a very common **interview-style example**.

---

# 🔹 Java Program (Bank Example)

```xml
// 1. Abstraction (interface)
interface BankOperations {
    void deposit(double amount);
    void withdraw(double amount);
    double getBalance();
}

// 2. Encapsulation (private data + getters/setters)
class BankAccount implements BankOperations {
    private String accountHolder;  // data hidden
    private double balance;        // encapsulated

    public BankAccount(String accountHolder, double initialBalance) {
        this.accountHolder = accountHolder;
        this.balance = initialBalance;
    }

    // Encapsulation → controlled access
    public String getAccountHolder() {
        return accountHolder;
    }

    @Override
    public void deposit(double amount) {
        balance += amount;
        System.out.println(amount + " deposited. Current balance = " + balance);
    }

    @Override
    public void withdraw(double amount) {
        if (amount <= balance) {
            balance -= amount;
            System.out.println(amount + " withdrawn. Current balance = " + balance);
        } else {
            System.out.println("Insufficient funds!");
        }
    }

    @Override
    public double getBalance() {
        return balance;
    }
}

// 3. Inheritance (IS-A relationship)
class SavingsAccount extends BankAccount {
    private double interestRate;

    public SavingsAccount(String accountHolder, double initialBalance, double interestRate) {
        super(accountHolder, initialBalance); // reusing parent constructor
        this.interestRate = interestRate;
    }

    // 4. Polymorphism (Method Overriding → Runtime)
    @Override
    public void deposit(double amount) {
        double interest = amount * interestRate / 100;
        super.deposit(amount + interest);
        System.out.println("Interest of " + interest + " added!");
    }
}

// Test Class
public class OOPsDemo {
    public static void main(String[] args) {
        // Polymorphism → Parent reference, Child object
        BankOperations account = new SavingsAccount("Rahul", 1000, 5);

        System.out.println("Account Holder: " + ((SavingsAccount) account).getAccountHolder());
        account.deposit(1000);   // Overridden method (runtime polymorphism)
        account.withdraw(500);   // Inherited method
        System.out.println("Final Balance: " + account.getBalance());
    }
}
```

---

# 🔹 How OOPs Concepts are Shown Here

1. **Encapsulation** → `private balance`, accessed only via methods.
    
2. **Abstraction** → `BankOperations` interface hides implementation.
    
3. **Inheritance** → `SavingsAccount extends BankAccount`.
    
4. **Polymorphism** →
    
    * **Overriding**: `deposit()` in `SavingsAccount`.
        
    * **Runtime binding**: `BankOperations account = new SavingsAccount(...)`.
        

---

✅ This **one program covers all OOPs pillars**, and you can explain it confidently in interviews.

Perfect 👍 Here’s a **short and smart interview-style answer template** using the Bank example. You can memorize and adapt it when asked:

---

### 🔹 Interview Answer for OOPs Concepts (using Bank Example)

**1\. Encapsulation**  
👉 In my program, I encapsulated the account balance by keeping it `private` inside the `BankAccount` class. It can only be accessed and modified through public methods like `deposit()`, `withdraw()`, and `getBalance()`. This hides data and ensures controlled access.

**2\. Abstraction**  
👉 I used a `BankOperations` interface that declares methods like `deposit()`, `withdraw()`, and `getBalance()`. The interface hides implementation details and only exposes what operations a bank account should support. Different accounts can have different implementations.

**3\. Inheritance (IS-A relationship)**  
👉 The `SavingsAccount` class extends `BankAccount`, meaning a SavingsAccount **is a** BankAccount. It reuses the parent’s functionality and adds extra features like interest.

**4\. Polymorphism**  
👉 I demonstrated polymorphism in two ways:

* **Method Overriding (Runtime Polymorphism):** In `SavingsAccount`, I overrode the `deposit()` method to add interest before depositing.
    
* **Dynamic Method Dispatch:** I used a parent reference `BankOperations account = new SavingsAccount(...)`, and at runtime, the child’s version of `deposit()` was called.
    

---

### 🔹 Final Wrap-Up (30 sec summary)

> “In short, my program shows **Encapsulation** by hiding balance with private fields, **Abstraction** by defining operations in an interface, **Inheritance** with SavingsAccount extending BankAccount, and **Polymorphism** with overridden deposit methods and dynamic method dispatch. Together, this covers all four OOP pillars in Java.”

![](https://cdn.hashnode.com/res/hashnode/image/upload/v1758000551025/801764ca-e972-4b91-a91c-119840926c64.png align="center")