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
    

# **JavaScript Arrays**

**Summary**: in this tutorial, you’ll learn about JavaScript arrays and their basic operations.

## **Introduction to JavaScript arrays**

In JavaScript, an array is an ordered list of values. Each value is called an *element* specified by an *index*:

![JavaScript Array](https://www.javascripttutorial.net/wp-content/uploads/2022/08/JavaScript-Array.svg align="left")

A JavaScript array has the following characteristics:

1. First, an array can hold values of mixed types. For example, you can have an array that stores elements with the types [number](https://www.javascripttutorial.net/javascript-number/), [string](https://www.javascripttutorial.net/javascript-number/), [boolean](https://www.javascripttutorial.net/javascript-boolean-type/), and [null](https://www.javascripttutorial.net/object/javascript-null/).
    
2. Second, the size of an array is *dynamic* and *auto-growing*. In other words, you don’t need to specify the array size up front.
    

## **Creating JavaScript arrays**

JavaScript provides you with two ways to create an array. The first one is to use the `Array` constructor as follows:

```javascript
let scores = new Array();Code language: JavaScript (javascript)
```

The `scores` array is empty, which does hold any elements.

If you know the number of elements that the array will hold, you can create an array with an initial size as shown in the following example:

```javascript
let scores = Array(10);Code language: JavaScript (javascript)
```

To create an array and initialize it with some elements, you pass the elements as a comma-separated list into the `Array()` constructor.

For example, the following creates the `scores` array that has five elements (or numbers):

```javascript
let scores = new Array(9, 10, 8, 7, 6);Code language: JavaScript (javascript)
```

Note that if you use the `Array()` constructor to create an array and pass a number into it, you are creating an array with an initial size.

However, when you pass a value of another type like `string` into the `Array()` constructor, you create an array with an element of that value. For example:

```javascript
let athletes = new Array(3); // creates an array with initial size 3
let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3
let signs = new Array('Red'); // creates an array with one element 'Red'Code language: JavaScript (javascript)
```

JavaScript allows you to omit the `new` operator when using the `Array()` constructor. For example, the following statement creates the `artists` array.

```javascript
let artists = Array();Code language: JavaScript (javascript)
```

In practice, you’ll rarely use the `Array()` constructor to create an array.

The more preferred way to create an array is to use the array literal notation:

```javascript
let arrayName = [element1, element2, element3, ...];Code language: JavaScript (javascript)
```

The array literal form uses the square brackets `[]` to wrap a comma-separated list of elements.

The following example creates the `colors` array that holds string elements:

```javascript
let colors = ['red', 'green', 'blue'];Code language: JavaScript (javascript)
```

To create an empty array, you use square brackets without specifying any element like this:

```javascript
let emptyArray = [];Code language: JavaScript (javascript)
```

## **Accessing JavaScript array elements**

JavaScript arrays are zero-based indexed. In other words, the first element of an array starts at index `0`, the second element starts at index `1`, and so on.

To access an element in an array, you specify an index in the square brackets `[]`:

```javascript
arrayName[index]Code language: CSS (css)
```

The following shows how to access the elements of the `mountains` array:

```javascript
let mountains = ['Everest', 'Fuji', 'Nanga Parbat'];

console.log(mountains[0]); // 'Everest'
console.log(mountains[1]); // 'Fuji'
console.log(mountains[2]); // 'Nanga Parbat'Code language: JavaScript (javascript)
```

To change the value of an element, you assign that value to the element like this:

```javascript
let mountains = ['Everest', 'Fuji', 'Nanga Parbat'];
mountains[2] = 'K2';

console.log(mountains);Code language: JavaScript (javascript)
```

Output:

```javascript
[ 'Everest', 'Fuji', 'K2' ]Code language: JSON / JSON with Comments (json)
```

## **Getting the array size**

Typically, the [`length`](https://www.javascripttutorial.net/javascript-array-length/) property of an array returns the number of elements. The following example shows how to use the `length` property:

```javascript
let mountains = ['Everest', 'Fuji', 'Nanga Parbat'];
console.log(mountains.length); // 3Code language: JavaScript (javascript)
```

## **Basic operations on arrays**

The following explains some basic operations on arrays. You’ll learn advanced operations such as [`map()`](https://www.javascripttutorial.net/javascript-array-map/), [`filter()`](https://www.javascripttutorial.net/javascript-array-filter/), and [`reduce()`](https://www.javascripttutorial.net/javascript-array-reduce/) in the next tutorials.

### **1) Appending an element to an array**

To add an element to the end of an array, you use the `push()` method:

```javascript
let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
seas.push('Red Sea');

console.log(seas); Code language: JavaScript (javascript)
```

Output:

```javascript
[ 'Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea', 'Red Sea' ]Code language: JSON / JSON with Comments (json)
```

### **2) Adding an element to the beginning of an array**

To add an element to the beginning of an array, you use the `unshift()` method:

```javascript
let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
seas.unshift('Red Sea');

console.log(seas);Code language: JavaScript (javascript)
```

Output:

```javascript
[ 'Red Sea', 'Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea' ]Code language: JSON / JSON with Comments (json)
```

### **3) Removing an element from the end of an array**

To remove an element from the end of an array, you use the `pop()` method:

```javascript
let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
const lastElement = seas.pop();
console.log(lastElement); Code language: JavaScript (javascript)
```

Output:

```javascript
Baltic Sea
```

### **4) Removing an element from the beginning of an array**

To remove an element from the beginning of an array, you use the `shift()` method:

```javascript
let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
const firstElement = seas.shift();

console.log(firstElement);Code language: JavaScript (javascript)
```

Output:

```javascript
Black Sea
```

### **5) Finding an index of an element in the array**

To find the index of an element, you use the [`indexOf()`](https://www.javascripttutorial.net/javascript-string-indexof/) method:

```javascript
let seas = ['Black Sea', 'Caribbean Sea', 'North Sea', 'Baltic Sea'];
let index = seas.indexOf('North Sea');

console.log(index); // 2Code language: JavaScript (javascript)
```

### **6) Check if a value is an array**

To check if a value is an array, you use [`Array.isArray()`](https://www.javascripttutorial.net/array/how-to-check-if-a-variable-is-an-array-in-javascript/) method:

```javascript
console.log(Array.isArray(seas)); // trueCode language: JavaScript (javascript)
```

## **Summary**

* In JavaScript, an array is an order list of values; each value is called an element specified by an index.
    
* An array can hold values of mixed types.
    
* JavaScript arrays are dynamic, which means that they grow or shrink as needed.
    

# **JavaScript Functions**

# **JavaScript Functions**

**Summary**: in this tutorial, you will learn about JavaScript functions and how to use them to structure the code into smaller and more reusable units.

## **Introduction to JavaScript functions**

When developing an application, you often need to perform the same action in many places. For example, you may want to show a message whenever an error occurs.

To avoid repeating the same code all over places, you can use a function to wrap that code and reuse it.

JavaScript provides many built-in functions such as `parseInt()` and `parseFloat()`. In this tutorial, you will learn how to develop custom functions.

## **Declaring a function**

To declare a function, you use the `function` keyword, followed by the function name, a list of parameters, and the function body as follows:

```javascript
function functionName(parameters) {
    // function body
    // ...
}Code language: JavaScript (javascript)
```

The function name must be a valid JavaScript identifier. By convention, the function names are in `camelCase` and start with verbs like `getData()`, `fetchContents()`, and `isValid()`.

A function can accept zero, one, or multiple parameters. In the case of multiple parameters, you need to use a comma to separate two parameters.

The following declares a function `say()` that accepts no parameter:

```javascript
function say() {
}Code language: JavaScript (javascript)
```

The following declares a function named `square()` that accepts one parameter:

```javascript
function square(a) {
}Code language: JavaScript (javascript)
```

The following declares a function named `add()` that accepts two parameters:

```javascript
function add(a, b) {
}Code language: JavaScript (javascript)
```

Inside the function body, you can write the code to implement an action.

For example, the following `say()` function shows a message to the console:

```javascript
function say(message) {
  console.log(message);
}Code language: JavaScript (javascript)
```

In the body of the `say()` function, we call the `console.log()` function to output a message to the console.

## **Calling a function**

To use a function, you need to call it. Calling a function is also known as invoking a function.

To call a function, you use its name followed by arguments enclosed in parentheses like this:

```javascript
functionName(arguments);Code language: JavaScript (javascript)
```

When calling a function, JavaScript executes the code inside the function body. For example, the following shows how to call the `say()` function:

```javascript
say('Hello');Code language: JavaScript (javascript)
```

In this example, we call the `say()` function and pass a literal string `'Hello'` into it.

### **Parameters vs. Arguments**

The terms parameters and arguments are often used interchangeably. However, they are essentially different.

When declaring a function, you specify the parameters. However, when calling a function, you pass the arguments corresponding to the parameters.

For example, in the `say()` function, the `message` is the parameter and the `'Hello'` string is an argument that corresponds to the `message` parameter.

## **Returning a value**

Every function in JavaScript implicitly returns `undefined` unless you explicitly specify a return value. For example:

```javascript
function say(message) {
  console.log(message);
}

let result = say('Hello');
console.log('Result:', result);Code language: JavaScript (javascript)
```

Output:

```javascript
Hello
Result: undefinedCode language: JavaScript (javascript)
```

To specify a return value for a function, you use the `return` statement followed by an expression or a value, like this:

```javascript
return expression;Code language: JavaScript (javascript)
```

For example, the following `add()` function returns the sum of the two arguments:

```javascript
function add(a, b) {
    return a + b;
}Code language: JavaScript (javascript)
```

The following shows how to call the `add()` function:

```javascript
let sum = add(10, 20);
console.log('Sum:', sum);Code language: JavaScript (javascript)
```

Output:

```javascript
Sum: 30Code language: JavaScript (javascript)
```

The following example uses multiple `return` statements in a function to return different values based on conditions:

```javascript
function compare(a, b) {
    if (a > b) {
        return -1;
    } else if (a < b) {
        return 1;
    }
    return 0;
}Code language: JavaScript (javascript)
```

The `compare()` function compares two values. It returns:

* \-1 if the first argument is greater than the second one.
    
* 1 if the first argument is less than the second one.
    
* 0 if the first argument equals the second one.
    

The function immediately stops executing when it reaches the `return` statement. Therefore, you can use the `return` statement without a value to exit the function prematurely, like this:

```javascript
function say(message) {
  // show nothing if the message is empty
  if (!message) {
    return;
  }
  console.log(message);
}Code language: JavaScript (javascript)
```

In this example, if the `message` is blank (or `undefined`), the `say()` function will show nothing.

The function can return a single value. If you want to [return multiple values from a function](https://www.javascripttutorial.net/javascript-return-multiple-values/), you need to pack these values in an array or an object.

## **The arguments object**

Inside a function, you can access an object called `arguments` that represents the named arguments of the function.

The `arguments` object behaves like an [array](https://www.javascripttutorial.net/javascript-array/) though it is not an instance of the [Array](https://www.javascripttutorial.net/javascript-array/) type.

For example, you can use the square bracket `[]` to access the arguments: `arguments[0]` returns the first argument, `arguments[1]` returns the second one, and so on.

You can also use the `length` property of the `arguments` object to determine the number of arguments.

The following example implements a generic `add()` function that calculates the sum of any number of arguments.

```javascript
function add() {
  let sum = 0;
  for (let i = 0; i < arguments.length; i++) {
    sum += arguments[i];
  }
  return sum;
}Code language: JavaScript (javascript)
```

Hence, you can pass any number of arguments to the `add()` function, like this:

```javascript
console.log(add(1, 2)); // 3
console.log(add(1, 2, 3, 4, 5)); // 15Code language: JavaScript (javascript)
```

## **Function hoisting**

In JavaScript, you can use a function before declaring it. For example:

```javascript
showMe(); // a hoisting example

function showMe() {
  console.log('an hoisting example');
}Code language: JavaScript (javascript)
```

This feature is called [hoisting](https://www.javascripttutorial.net/javascript-hoisting/).

Function hoisting is a mechanism in which the JavaScript engine physically moves function declarations to the top of the code before executing them.

The following shows the version of the code before the JavaScript engine executes it:

```javascript
function showMe() {
  console.log('a hoisting example');
}

showMe(); // a hoisting exampleCode language: JavaScript (javascript)
```

Function hoisting allows you to call a function before declaring it, making the development workflow more smoothly.

## **Summary**

* Use the `function` keyword to declare a function.
    
* Use the `functionName()` to call a function.
    
* All functions implicitly return `undefined` if they don’t explicitly return a value.
    
* Use the `return` statement to return a value from a function explicitly.
    
* The `arguments` variable is an array-like object inside a function, representing function arguments.
    
* The function hoisting allows you to call a function before declaring it.