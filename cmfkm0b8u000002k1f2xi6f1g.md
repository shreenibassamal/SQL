---
title: "Java for Automation Tester"
datePublished: Mon Sep 15 2025 04:13:54 GMT+0000 (Coordinated Universal Time)
cuid: cmfkm0b8u000002k1f2xi6f1g
slug: java-for-automation-tester
tags: shreenibas

---

# What is a method?

A **method** in Java is a named block of code that performs a task (computes a value, updates state, does I/O). Methods are the building blocks of behavior in classes and interfaces.  
Think of a method as “a function attached to a type” (object-oriented).

A method has:

* **Modifiers** (public, private, static, final, abstract, synchronized, native, etc.)
    
* **Return type** (can be any type or `void`)
    
* **Name**
    
* **Parameter list** (zero or more parameters)
    
* `throws` clause (optional checked exceptions it may throw)
    
* **Body** `{ ... }` (except abstract methods, which have no body)
    

# Why methods?

* Reuse code (DRY)
    
* Encapsulate behavior & hide implementation
    
* Organize program logic into small understandable units
    
* Enable polymorphism (different implementations in subclasses)
    
* Allow separation of interface (what) and implementation (how)
    

# How to declare & call a method — basic syntax

```java
// instance method
public int add(int a, int b) {
    return a + b;
}

// static method
public static void greet(String name) {
    System.out.println("Hello, " + name);
}
```

Call:

```java
MyClass obj = new MyClass();
int sum = obj.add(2,3);        // instance call
MyClass.greet("Sam");          // static call
```

# Method components explained

* **Access modifiers**: `public`, `protected`, (package-private default), `private`.
    
* **Non-access modifiers**: `static`, `final`, `abstract`, `synchronized`, `native`, `strictfp`.
    
* **Return type**: type or `void`.
    
* **Name**: must be a valid identifier.
    
* **Parameters**: typed `(Type name, ...)`.
    
* **Throws**: `throws IOException`.
    
* **Body**: code block. `abstract` methods omit body.
    

# Types of methods (common kinds)

* **Instance method** — operates on an object (uses `this`).
    
* **Static method** — belongs to the class, not an instance.
    
* **Abstract method** — declared in abstract class (no body).
    
* **Default & static methods in interfaces** (Java 8+).
    
* **Private methods in interfaces** (Java 9+).
    
* **Synchronized method** — acquires a lock when executing.
    
* **Native method** — implemented in other language (C/C++) using JNI.
    
* **Final method** — cannot be overridden.
    

# Declaration examples (various kinds)

```java
public class Example {
    // instance
    public int square(int x) { return x*x; }

    // static
    public static void log(String s) { System.out.println(s); }

    // synchronized
    public synchronized void increment() { /* thread-safe */ }

    // final
    public final void cannotOverride() { }

    // abstract (in abstract class)
    public abstract void doWork();

    // native
    public native long getNativeTime();

    // varargs
    public int sum(int... nums) { /* treat nums as int[] */ return 0; }
}
```

# Parameters — call-by-value (important!)

Java is **always** pass-by-value:

* For **primitive** parameters (e.g., `int`) the actual primitive value is copied.
    
* For **object references**, the reference is copied (so both caller and method refer to the same object), but the reference itself is passed by value — reassigning that parameter inside the method does **not** change the caller’s reference.
    

Examples:

```java
void modifyInt(int x) { x = 10; }          // caller unchanged
void modifyPerson(Person p) { p.name = "X"; } // caller's object's field changes
void reassignPerson(Person p) { p = new Person("Y"); } // caller's ref unchanged
```

Swap example that fails for primitives:

```java
void swap(int a, int b) { int t=a; a=b; b=t; } // doesn't swap caller ints
```

But you can swap wrapped values by mutating object fields.

# Varargs

Syntax `Type... name` (treated as array)

```java
public void printAll(String... items) {
    for (String s : items) System.out.println(s);
}
```

# Return types and signatures

* The **method signature** in Java (for overloading) is **method name + parameter types**. *Return type is NOT part of the signature.* So you cannot overload by only changing return type.
    
* Overriding requires same signature (name + param types); return type can be **covariant** (a subtype of the parent's return type).
    

Example — invalid (compiler error):

```java
int foo() { ... }
long foo() { ... } // ERROR: duplicate method foo()
```

Covariant return example — valid:

```java
class A { Number get() { ... } }
class B extends A { @Override Integer get() { ... } } // OK
```

# Overloading vs Overriding

* **Overloading**: multiple methods in same class (or subclass) with same name but different parameter lists.
    
* **Overriding**: subclass provides new implementation for inherited method with same signature.
    

Overloading resolution (compile-time) considers types, boxing, widening and varargs — it can be subtle and sometimes ambiguous.

Example of overriding (polymorphism / dynamic dispatch):

```java
class Animal { void speak() { System.out.println(".."); } }
class Dog extends Animal { @Override void speak() { System.out.println("woof"); } }

Animal a = new Dog();
a.speak(); // prints "woof" — runtime dispatch to Dog.speak()
```

Notes:

* `private` and `static` methods are **not** polymorphic — they cannot be overridden (static methods are hidden).
    
* Overriding method cannot reduce visibility (`public` -&gt; `private` is illegal).
    
* Checked-exception rule: overriding method cannot throw broader checked exceptions.
    

# Exceptions in method signature

* Use `throws` for checked exceptions.
    

```java
public void read() throws IOException { /* may throw */ }
```

* `throw` actually throws an exception instance inside the method.
    
* Overriding rule: subclass method can't declare new checked exceptions not declared in the parent (unless they are subclasses).
    

# Constructors vs Methods

* **Constructors** have no return type and must match class name. They initialize objects.
    
* Constructors are invoked using `new` and are not inherited; they use `invokespecial` at JVM level.
    

# The `main` method

Java program entry point:

```java
public static void main(String[] args) { /* ... */ }
// or
public static void main(String... args) { /* ... */ }
```

The JVM looks for `public static void main(String[])`. If not present (or signature differs), you get `NoSuchMethodError` when launching.

# Generics & generic methods

You can declare methods with their own type parameters:

```java
public static <T> T pickFirst(T[] arr) { return arr.length>0 ? arr[0] : null; }
```

# Lambdas & method references (Java 8+)

Lambdas implement a **functional interface** (single abstract method).

```java
List<String> l = List.of("a","b");
l.sort(String::compareToIgnoreCase); // method reference
Consumer<String> c = s -> System.out.println(s); // lambda
Supplier<Date> sd = Date::new; // constructor reference
```

# Reflection & invoking methods at runtime

You can discover and invoke methods using `java.lang.reflect.Method`:

```java
Method m = MyClass.class.getMethod("greet", String.class);
m.invoke(myInstance, "Alex"); // may throw InvocationTargetException, IllegalAccessException
```

Reflection can access private methods with `setAccessible(true)` (subject to security/module rules).

# JVM-level details (brief, but important)

* The JVM stores methods as `method_info` structures in the class file. Each has a **descriptor** describing parameter and return types: e.g. `(ILjava/lang/String;)V` means `(int, String)->void`.
    
* Invocation bytecodes:
    
    * `invokestatic` — static methods
        
    * `invokevirtual` — most instance method calls (virtual dispatch)
        
    * `invokeinterface` — interface method calls
        
    * `invokespecial` — private, constructors, `super` calls
        
    * `invokedynamic` — used for lambdas and dynamic call sites (bootstrap mechanism)
        
* Method call creates a **stack frame**: local variables and operand stack. Recursion uses frames; deep recursion → `StackOverflowError`.
    
* The JVM imposes a limit on method code size: the `Code` attribute of a method in a class file must be ≤ **65535 bytes**. (If your method exceeds that, you must split it.)
    
* The compiler sometimes emits **bridge methods** (synthetic methods) to support generics/covariant returns and maintain binary compatibility after type erasure.
    
* The JIT compiler can **inline** frequently used small methods for performance; `final`/`private` make inlining easier but JVM does aggressive optimizations anyway.
    

# Concurrency-related method behavior

* `synchronized` method locks `this` for instance methods, or the `Class` object for `static synchronized` methods.
    
* Consider locking granularity — synchronized on smaller objects when possible.
    
* Use `java.util.concurrent.locks.Lock` for more flexible behavior.
    

# Annotations on methods

You can annotate methods: `@Override`, `@Deprecated`, custom annotations, `@SafeVarargs` (for varargs + generics), etc. Retention policy determines runtime visibility.

# Common pitfalls & gotchas

* **Return type not part of signature** — can't overload only by return type.
    
* **Calling instance method on** `null` =&gt; `NullPointerException`:
    
    ```java
    MyClass x = null;
    x.instanceMethod(); // NPE at runtime
    ```
    
    You *can* call a static method through a null reference (compiles), but it's strongly discouraged:
    
    ```java
    MyClass m = null;
    m.staticMethod(); // works — resolved as MyClass.staticMethod()
    ```
    
* **Overloading ambiguity** with autoboxing and varargs:
    
    ```java
    void f(int x) {}
    void f(Integer x) {} // ambiguous if you pass null
    ```
    
* **Recursion without base-case** → `StackOverflowError`.
    
* **Large methods**: hard to read and may exceed bytecode size limit; split into smaller methods.
    
* **Exposure of internals**: returning internal mutable objects exposes state.
    

# Best practices

* Keep methods small and single-purpose (SRP).
    
* Use clear verb-based names: `calculateTax`, `isEmpty`, `loadFromFile`.
    
* Prefer immutability / avoid side effects when possible.
    
* Validate parameters early (`Objects.requireNonNull`).
    
* Document behavior, especially for nullability and thread-safety.
    
* Prefer `Optional<T>` for "no value" result when appropriate (API choice).
    
* Use interfaces and default methods for evolving APIs carefully.
    
* Use `final` for parameters and methods where it improves clarity.
    

# Quick cheat-sheet (summary)

* Signature = `name + parameter types` (not return)
    
* Invocation opcodes:
    
    * `invokestatic` — static
        
    * `invokevirtual` — normal instance (virtual dispatch)
        
    * `invokeinterface` — interface methods
        
    * `invokespecial` — private/constructors/super
        
    * `invokedynamic` — lambdas/dynamic
        
* Pass-by-value always — object references are copied, not the object
    
* Overloading resolved at **compile time**; overriding resolved at **runtime**
    
* JVM method code size ≤ 65535 bytes
    
* Covariant returns allowed for overriding
    
* Overriding cannot reduce visibility, cannot add broader checked exceptions
    

# Practical examples (short)

Overloading:

```java
void print(Integer i) { System.out.println("Integer"); }
void print(int i)     { System.out.println("int"); }

print(5);      // prints "int"
print(null);   // compile-time error: ambiguous between Integer and int? (null matches reference type)
```

Overriding & exceptions:

```java
class Parent { void m() throws IOException {} }
class Child extends Parent {
    @Override
    void m() throws FileNotFoundException { } // OK: narrower checked exception
}
```

Reflection:

```java
import java.lang.reflect.*;
Method m = String.class.getMethod("toUpperCase");
String s = (String) m.invoke("hello"); // returns "HELLO"
```

Lambda & method ref:

```java
List<String> names = List.of("bob","Ann");
names.sort(String::compareToIgnoreCase);
Runnable r = () -> System.out.println("hi");
```