---
title: "JavaScript"
datePublished: Mon Aug 25 2025 19:18:26 GMT+0000 (Coordinated Universal Time)
cuid: cmeri2nb9000102l99z2v8eip
slug: javascript
tags: shreenibas

---

# **What is JavaScript**

JavaScript is a programming language initially designed to interact with elements of web pages. Within web browsers, JavaScript consists of three main parts:

* **ECMAScript provides the core functionality.**
    
* The [Document Object Model (DOM)](https://www.javascripttutorial.net/javascript-dom/) provides interfaces for interacting with elements on web pages.
    
* The [Browser Object Model (BOM)](https://www.javascripttutorial.net/javascript-bom/) provides the browser API for interacting with the web browser.
    

JavaScript allows you to add interactivity to a web page. Typically, you use JavaScript with HTML and CSS to enhance a web page’s functionality, such as [validating forms](https://www.javascripttutorial.net/javascript-dom/javascript-form-validation/), creating interactive maps, and displaying animated charts.

When a web page is loaded, i.e., after HTML and CSS have been downloaded, the JavaScript engine in the web browser executes the JavaScript code. The JavaScript code then modifies the HTML and CSS to update the user interface dynamically.

The JavaScript engine is a component of web browsers responsible for interpreting and executing JavaScript code. It includes a parser to analyze the code, a compiler to convert it into machine code, and an interpreter to run the compiled code.

Notable JavaScript engines include V8 in Chrome, SpiderMonkey in Firefox, and JavaScriptCore in Safari.

Initially, JavaScript engines were implemented as interpreters. However, modern JavaScript engines are commonly implemented as just-in-time compilers that compile JavaScript code to bytecode for improved performance.

## **Client-side vs. Server-side JavaScript**

When JavaScript is used on a web page, it is executed in web browsers, serving as a client-side language.

JavaScript can run on both web browsers and servers. A popular JavaScript server-side environment is [Node.js](https://www.javascripttutorial.net/nodejs-tutorial/). Unlike client-side JavaScript, server-side JavaScript executes on the server and allows you to access databases, file systems, etc.

## **JavaScript History**

In 1995, JavaScript was developed by [Brendan Eich](https://en.wikipedia.org/wiki/Brendan_Eich), a Netscape developer. Initially named Mocha, it was later renamed to LiveScript.

Netscape decided to rebrand LiveScript to JavaScript to capitalize on the popularity of Java. The decision was made shortly before the release of Netscape Navigator 2 web browser, leading to the introduction of JavaScript version 1.0.

Netscape launched JavaScript 1.1 in Netscape Navigator 3. In the meantime, Microsoft introduced its web browser called [Internet Explorer](https://en.wikipedia.org/wiki/Internet_Explorer) 3 (IE 3) as a competitor to Netscape. However, IE featured its own JavaScript implementation called [JScript](https://en.wikipedia.org/wiki/JScript). Microsoft used the name JScript to avoid potential licensing conflicts with Netscape.

Hence, two distinct versions of JavaScript were in the market:

* JavaScript in Netscape Navigator
    
* JScript in Internet Explorer.
    

At this time, JavaScript lacked standardized syntax and features, prompting the community to advocate for the standardization of the language.

In 1997, JavaScript 1.1 was proposed to the [European Computer Manufacturers Association](https://www.ecma-international.org/) (ECMA) as a proposal. [Technical Committee #39](https://www.ecma-international.org/memento/tc39-m.htm) (TC39) was assigned the task of standardizing the language, maiming to transform it into a general-purpose, cross-platform, and vendor-neutral scripting language.

TC39 came up with ECMA-262, establishing a standard for defining a new scripting language called ECMAScript (often pronounced Ek-ma-script).

Following that, the International Organization for Standardization and International Electrotechnical Commissions (ISO/IEC) adopted ECMAScript (ISO/IEC-16262).

## **JavaScript overview**

Note that the following section offers a solid introduction to JavaScript code. If you’re not yet familiar with it, that’s perfectly fine. You’ll have the opportunity to learn in the upcoming tutorial.

To [define a variable](https://www.javascripttutorial.net/javascript-variables/) in JavaScript, you use `var` keyword. For example:

```javascript
var x = 10;
var y = 20;
```

ES6 added a new way to declare a variable with the [`let`](https://www.javascripttutorial.net/es6/javascript-let/) keyword:

```javascript
let x = 10;
let y = 20;
```

There are differences between [`var` and `let`](https://www.javascripttutorial.net/es6/difference-between-var-and-let/). And it’s a good practice to use the `let` keyword to declare variables.

To declare a [function](https://www.javascripttutorial.net/javascript-function/), you use the `function` keyword. The following example defines a function that calculates the sum of two arguments:

```javascript
function add( a, b ) {
   return a + b;
}
```

To call the `add()` function, you use the following syntax:

```javascript
let result = add(x, y);
```

To log the result into the console window of the web browser or terminal (in the case of node.js), you use the `console.log()` function:

```javascript
console.log(result);
```

Now, you should see `30` in the output.

JavaScript provides you with condition statements such as [`if-else`](https://www.javascripttutorial.net/javascript-if-else/) and [`switch`](https://www.javascripttutorial.net/javascript-switch-case/) statements. For example:

```javascript
let a = 20, 
    b = 30;

function divide(a, b) {
    if(b == 0) {
       throw 'Division by zero';
    }
    return a / b;
}
```

In the `divide()` function, we check whether the de-numerator (b) is zero. If yes, we [throw an exception](https://www.javascripttutorial.net/javascript-try-catch/). Otherwise, we return the result of a / b.

To declare an [array](https://www.javascripttutorial.net/javascript-array/), you use the following syntax:

```javascript
let items = [];
```

To declare an array with initial elements, you specify those elements within the square brackets:

```javascript
let items = [1, 2, 3];
```

You can access the number of elements in the `items` array through its `length` property:

```javascript
console.log(items.length); // 3
```

To iterate over the elements of the `items` array, you use the [`for`](https://www.javascripttutorial.net/javascript-for-loop/) loop statement as follows:

```javascript
for(let i = 0; i < items.length; i++) {
    console.log(items[i]);
}
```

Alternatively, you can use the [`for...of`](https://www.javascripttutorial.net/es6/javascript-for-of/) loop in [ES6](https://www.javascripttutorial.net/es6/):

```javascript
for(let item of items) {
    console.log(item);
}
```

# **JavaScript Syntax**

# **JavaScript Variables**

# **JavaScript Data Types**

**Summary**: in this tutorial, you will learn about JavaScript data types and their unique characteristics.

JavaScript has the primitive data types:

1. [`null`](https://www.javascripttutorial.net/javascript-data-types/#null)
    
2. [`undefined`](https://www.javascripttutorial.net/javascript-data-types/#undefined)
    
3. [`boolean`](https://www.javascripttutorial.net/javascript-data-types/#boolean)
    
4. [`number`](https://www.javascripttutorial.net/javascript-data-types/#number)
    
5. [`string`](https://www.javascripttutorial.net/javascript-data-types/#string)
    
6. [`symbol`](https://www.javascripttutorial.net/javascript-data-types/#symbol) – available from ES2015
    
7. [`bigint`](https://www.javascripttutorial.net/es-next/javascript-bigint/) – available from ES2020
    

and a complex data type [`object`](https://www.javascripttutorial.net/javascript-data-types/#object).

![JavaScript data types](https://www.javascripttutorial.net/wp-content/uploads/2022/01/JavaScript-data-types.svg align="left")

JavaScript is a dynamically typed language, meaning that a [variable](https://www.javascripttutorial.net/javascript-variables/) isn’t associated with a specific type. In other words, a variable can hold a value of different types. For example:

```javascript
let counter = 120; // counter is a number
counter = false;   // counter is now a boolean
counter = "foo";   // counter is now a string
```

To determine the current type of the value stored in a variable, you use the [`typeof`](https://www.javascripttutorial.net/javascript-typeof/) operator:

```javascript
let counter = 120;
console.log(typeof(counter)); // "number"

counter = false; 
console.log(typeof(counter)); // "boolean"

counter = "Hi";
console.log(typeof(counter)); // "string"
```

Output:

```javascript
"number"
"boolean"
"string"
```

## **The undefined type**

The `undefined` type is a primitive type that has only one value `undefined`. By default, when a variable is declared but not initialized, it defaults to `undefined`.

Consider the following example:

```javascript
let counter;
console.log(counter);        // undefined
console.log(typeof counter); // undefined
```

In this example, the `counter` is a variable. Since `counter` hasn’t been initialized, it is assigned the value `undefined`. The type of `counter` is also `undefined`.

It’s important to note that the `typeof` operator also returns `undefined` when you call it on a variable that hasn’t been declared:

```javascript
console.log(typeof undeclaredVar); // undefined
```

## **The null type**

The `null` type is the second primitive data type that also has only one value `null`. For example:

```javascript
let obj = null;
console.log(typeof obj); // object
```

The `typeof null` returns `object` is a known bug in JavaScript. A proposal to fix was rejected due to the potential to break many existing sites.

JavaScript defines that `null` is equal to `undefined` as follows:

```javascript
console.log(null == undefined); // true
```

## **The number type**

JavaScript uses the `number` type to represent both integer and floating-point numbers.

The following statement declares a variable and initializes its value with an integer:

```javascript
let num = 100;
```

To represent a floating-point number, you include a decimal point followed by at least one number. For example:

```javascript
let price = 12.5; 
let discount = 0.05;
```

Note that JavaScript automatically converts a floating-point number into an integer if the number appears to be a whole number.

The reason is that Javascript always wants to use less memory since a floating-point value uses twice as much memory as an integer value. For example:

```javascript
let price = 200.00; // interpreted as an integer 200
```

To get the range of the number type, you use `Number.MIN_VALUE` and `Number.MAX_VALUE`. For example:

```javascript
console.log(Number.MAX_VALUE); // 1.7976931348623157e+308
console.log(Number.MIN_VALUE); // 5e-324
```

Also, you can use `Infinity` and `-Infinity` to represent the infinite number. For example:

```javascript
console.log(Number.MAX_VALUE + Number.MAX_VALUE); // Infinity
console.log(-Number.MAX_VALUE - Number.MAX_VALUE); // -Infinity
```

### **NaN**

`NaN` stands for Not a Number. It is a special numeric value that indicates an invalid number. For example, the division of a string by a number returns `NaN`:.

```javascript
console.log('a'/2); // NaN;
```

The `NaN` has two special characteristics:

* Any operation with `NaN` returns `NaN`.
    
* The `NaN` does not equal any value, including itself.
    

Here are some examples:

```javascript
console.log(NaN/2); // NaN
console.log(NaN == NaN); // false
```

## **The string type**

In JavaScript, a string is a sequence of zero or more characters. A string literal begins and ends with either a single quote(`'`) or a double quote (`"`).

A string that begins with a double quote must end with a double quote, and a string that begins with a single quote must also end with a single quote. For example:

```javascript
let greeting = 'Hi';
let message  = "Bye";
```

If you want to use single quotes or double quotes in a literal string, you need to use the backslash to escape them. For example:

```javascript
let message = 'I\'m also a valid string'; // use \ to escape the single quote (')
```

**JavaScript strings are immutable**, meaning that they cannot be modified once created. However, you can create a new string from an existing one. For example:

```javascript
let str = 'JavaScript';
str = str + ' String';
```

In this example:

* First, declare the `str` variable and initialize it to a string of `'JavaScript'`.
    
* Second, use the `+` operator to combine `'JavaScript'` with `' String'` to make its value as `'Javascript String'`.
    

Behind the scene, the JavaScript engine creates a new string that holds the new string `'JavaScript String'` and destroys the original strings `'JavaScript'` and `' String'`.

The following example attempts to modify the first character of the string JavaScript:

```javascript
let s = 'JavaScript';
s[0] = 'j';
console.log(s);
```

The output is:

```javascript
'JavaScript'
```

But not:

```javascript
'javaScript'
```

## **The boolean type**

The `boolean` type has two literal values: `true` and `false` in lowercase. The following example declares two variables that hold the boolean values.

```javascript
let inProgress = true;
let completed = false;

console.log(typeof completed); // boolean
```

JavaScript allows values of other types to be converted into boolean values of `true` or `false`.

To convert values of other types into boolean values, you use the [`Boolean()`](https://www.javascripttutorial.net/javascript-boolean/) function.

The following table displays the conversion rules:

| **Type** | **true** | **false** |
| --- | --- | --- |
| string | non-empty string | empty string |
| number | non-zero number and Infinity | 0, NaN |
| object | non-null object | null |
| undefined |  | undefined |

For example:

```javascript
console.log(Boolean('Hi'));// true
console.log(Boolean(''));  // false

console.log(Boolean(20));  // true
console.log(Boolean(Infinity));  // true
console.log(Boolean(0));  // false

console.log(Boolean({foo: 100}));  // true on non-empty object
console.log(Boolean(null));// false
```

## **The symbol type**

JavaScript introduced a new primitive type in ES6: the [`symbol`](https://www.javascripttutorial.net/es6/symbol/). Unlike other primitive types, the `symbol` type does not have a literal form.

To create a symbol, you call the `Symbol` function as follows:

```javascript
let s1 = Symbol();
```

The `Symbol` function creates a new unique value every time you call it.

```javascript
console.log(Symbol() == Symbol()); // false
```

Note that you’ll learn more about symbols in the [symbol tutorial](https://www.javascripttutorial.net/es6/symbol/).

## **The bigint type**

The `bigint` type represents the whole numbers that are larger than 2<sup>53</sup> – 1. To form a `bigint` literal number, you append the letter `n` at the end of the number:

```javascript
let pageView = 9007199254740991n;
console.log(typeof(pageView)); // 'bigint'
```

And you’ll learn more about the [`bigint` type here](https://www.javascripttutorial.net/es-next/javascript-bigint/).

## **The object type**

In JavaScript, an [object](https://www.javascripttutorial.net/home/javascript-objects/) is a collection of [properties](https://www.javascripttutorial.net/home/javascript-object-properties/), where each property is defined as a key-value pair.

The following example defines an empty object using the object literal syntax:

```javascript
let emptyObject = {};
```

The following example defines the `person` object with two properties: `firstName` and `lastName`.

```javascript
let person = {
    firstName: 'John',
    lastName: 'Doe'
};
```

A property name of an object can be any string. You can use quotes around the property name if it is not a valid identifier.

For example, if the `person` object has a property `first-name`, you must place it in the quotes such as `"first-name"`.

A property of an object can hold an object. For example:

```javascript
let contact = {
    firstName: 'John',
    lastName: 'Doe',
    email: 'john.doe@example.com',
    phone: '(408)-555-9999',
    address: {
        building: '4000',
        street: 'North 1st street',
        city: 'San Jose',
        state: 'CA',
        country: 'USA'
    }
}
```

The `contact` object has the `firstName`, `lastName`, `email`, `phone`, and `address` properties.

The `address` property itself holds an object that has `building`,  `street`, `city`, `state`, and `country` properties.

To access an object’s property, you can use

* The dot notation (`.`)
    
* The array-like notation (`[]`).
    

The following example uses the dot notation (`.`) to access the `firstName` and `lastName` properties of the `contact` object.

```javascript
console.log(contact.firstName);
console.log(contact.lastName);
```

If you reference a property that does not exist, you’ll get an `undefined` value. For example:

```javascript
console.log(contact.age); // undefined
```

The following example uses the array-like notation to access the `email` and `phone` properties of the `contact` object.

```javascript
console.log(contact['phone']); // '(408)-555-9999'
console.log(contact['email']); // 'john.doe@example.com'
```

## **Summary**

* JavaScript has the primitive types: `number`, `string`, `boolean`, `null`, `undefined`, `symbol` and `bigint` and a complex type: `object`.