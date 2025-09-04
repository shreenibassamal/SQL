---
title: ""use strict" in JavaScript"
datePublished: Thu Sep 04 2025 09:13:17 GMT+0000 (Coordinated Universal Time)
cuid: cmf56uxve000d02jvac9jffcg
slug: use-strict-in-javascript
tags: shreenibas

---

## **1\. What is** `"use strict"` in JavaScript?

`"use strict"` is a **directive (not a statement)** that tells the JavaScript engine to execute code in **Strict Mode**.

* Introduced in **ECMAScript 5 (ES5)**.
    
* It changes some silent errors into **explicit errors**, helping developers catch issues early.
    
* Can be applied **globally** (for the whole script) or **locally** (inside a function).
    

### Example:

```java
"use strict"; // enables strict mode
x = 10; // ReferenceError: x is not defined
```

---

## **2\. Why was** `"use strict"` introduced?

Before ES5, JavaScript was:

* More **permissive**, allowing bad practices.
    
* Prone to **silent failures**, making debugging harder.
    
* Not fully optimized for performance.
    

Strict mode:

* Makes JavaScript **safer**.
    
* Prevents some **insecure actions**.
    
* Prepares code for **future ECMAScript versions**.
    

---

## **3\. How to Use** `"use strict"`?

### **A. Global Scope**

```java
"use strict"; // Applies to the entire script

let a = 10;
console.log(a);
```

### **B. Function Scope**

```java
function myFunction() {
  "use strict"; // Applies only inside this function
  let b = 20;
  console.log(b);
}
```

### **C. ES6 Modules**

No need to write `"use strict"` — modules use strict mode automatically.

```java
export function test() {
  // Strict mode is applied automatically
}
```

---

## **4\. What Does Strict Mode Do?**

### **A. Prevents Accidental Globals**

Without strict mode:

```java
x = 5; // Implicitly creates a global variable
```

With strict mode:

```java
"use strict";
x = 5; // ReferenceError
```

---

### **B. Throws Errors for Silent Failures**

```java
"use strict";
let obj = {};
Object.defineProperty(obj, "prop", { value: 10, writable: false });
obj.prop = 20; // TypeError in strict mode
```

---

### **C. Disallows Duplicate Parameter Names**

```java
"use strict";
function sum(a, a, b) { // SyntaxError
  return a + a + b;
}
```

---

### **D. Changes** `this` Behavior

Without strict mode:

```java
function show() { console.log(this); }
show(); // Logs Window (in browsers)
```

With strict mode:

```java
"use strict";
function show() { console.log(this); }
show(); // Logs undefined
```

---

### **E. Reserved Keywords**

Prevents usage of future keywords (`implements`, `interface`, `let`, etc.).

---

## **5\. Advantages of** `"use strict"`

1. **Catches errors early** (ReferenceError, SyntaxError).
    
2. **Prevents accidental globals**.
    
3. **Improves performance** (engines optimize strict mode code better).
    
4. **Prepares code for future JavaScript versions**.
    
5. **Enforces better coding practices**.
    

---

## **6\. Disadvantages**

* Can break **legacy code** if you add it suddenly.
    
* Makes some "loose" coding patterns invalid (e.g., using `this` as global object).
    

---

## **7\. When to Use** `"use strict"`?

* Always use it in **modern JavaScript projects** (if not using ES6 modules).
    
* In **legacy projects**, add it gradually to avoid breaking old code.
    
* Best in:
    
    * Library development
        
    * Shared scripts
        
    * Critical code sections (authentication, payment)
        

---

## **8\. When NOT to Use** `"use strict"`?

* When working with **old codebases** that rely on non-strict behavior.
    
* If using ES6 modules (because strict mode is already default).
    

---

## **9\. Real-World Example**

Without strict mode:

```java
function login() {
  password = "12345"; // accidental global
}
login();
console.log(password); // Prints 12345 - BAD!
```

With strict mode:

```java
"use strict";
function login() {
  password = "12345"; // ReferenceError: password is not defined
}
login();
```

---

## **10\. Summary**

* **What?** → `"use strict"` enforces stricter parsing & error handling.
    
* **Why?** → To catch silent errors, improve security & performance.
    
* **How?** → Add `"use strict";` at the top of a script or function.
    
* **When?** → In all modern code (or when refactoring legacy code).
    

## **How to Enable Strict Mode**

You enable it by adding:

```java
"use strict";
```

at the **top of a script** (applies to the whole file) or at the **top of a function** (applies only to that function).

---

## **Why Do We Use Strict Mode?**

### 1\. **Catches Silent Errors**

In normal JS, some mistakes fail silently. Strict mode throws errors instead.

```java
"use strict";
x = 10;  // ReferenceError: x is not defined
```

---

### 2\. **Prevents Accidental Globals**

Without strict mode:

```java
x = 5; // Creates a global variable (bad practice)
```

With strict mode:

```java
"use strict";
x = 5; // Throws an error: x is not defined
```

---

### 3\. **Disallows Duplicate Property Names**

```java
"use strict";
let obj = {
  name: "John",
  name: "Doe" // SyntaxError in strict mode
};
```

---

### 4\. **Disallows Deleting Variables or Functions**

```java
"use strict";
let x = 10;
delete x; // SyntaxError
```

---

### 5\. **Makes** `this` Behave Predictably

In normal mode:

```java
function show() { console.log(this); }
show(); // Logs window (or global object)
```

In strict mode:

```java
"use strict";
function show() { console.log(this); }
show(); // Logs undefined
```

---

### 6\. **Improves Security**

Strict mode helps prevent the use of features that are likely to make code vulnerable (like `with` statements).

---

### 7\. **Reserved for Future ECMAScript Versions**

It disallows using future reserved keywords like `implements`, `interface`, `let`, `package`, etc.

---

## **Should You Always Use Strict Mode?**

* **Yes**, for modern codebases — it helps catch errors early and enforces better practices.
    
* **No need to add it manually in ES6 modules** (`import/export`) — strict mode is applied automatically.
    

---

### **Example: With and Without Strict Mode**

Without:

```java
x = 100;
console.log(x); // Works, but creates a global variable
```

With:

```java
"use strict";
x = 100; // ReferenceError
```