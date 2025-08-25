---
title: "Playwright with TypeScript"
datePublished: Mon Aug 25 2025 03:25:17 GMT+0000 (Coordinated Universal Time)
cuid: cmeqk0wc1000902l4cksa9ehc
slug: playwright-with-typescript
tags: shreenibas

---

## **Introduction**

Playwright supports TypeScript out of the box. You just write tests in TypeScript, and Playwright will read them, transform to JavaScript and run.

**Note** that Playwright does not check the types and will run tests even if there are non-critical TypeScript compilation errors. We recommend you run TypeScript compiler alongside Playwright.

## **Before we learn we need to know the some of concepts**.

# why did Node.js come to the market in the first place? What problem did it solve?

## **The Background Before Node.js**

Before 2009 (when Node.js was introduced by Ryan Dahl), most web development looked like this:

* **JavaScript only ran in browsers** (for UI interactions).
    
* Server-side code was written in other languages like PHP, Java, Ruby, or .NET.
    
* Each client request was handled in a **blocking, multi-threaded** way — meaning each connection consumed a thread on the server.
    

This caused:

* **High memory consumption** with many connections.
    
* Poor scalability for real-time apps (e.g., chat, gaming, streaming).
    

---

## **Why Node.js Came to Market**

### **1\. To Use JavaScript on the Server**

* Until then, JavaScript was only client-side.
    
* Node.js brought **JavaScript to the backend**, enabling full-stack development with a single language.
    

---

### **2\. Non-blocking, Event-Driven Architecture**

* Traditional servers (like Apache with PHP) used **blocking I/O**: one thread waits for tasks (file read, database query) to complete.
    
* Node.js introduced **non-blocking I/O with an event loop**.
    
* This meant:
    
    * One thread can handle thousands of concurrent requests.
        
    * Great for **real-time apps (chat apps, streaming, APIs)**.
        

---

### **3\. High Performance with V8 Engine**

* Built on **Google Chrome's V8 engine**, Node.js executes JavaScript extremely fast.
    
* Compiles JS into machine code.
    

---

### **4\. Scalability and Lightweight**

* Uses **asynchronous callbacks, promises, async/await**.
    
* Runs on a **single-threaded event loop**, consuming fewer resources than multi-threaded servers.
    

---

### **5\. Huge Ecosystem (npm)**

* Node.js brought **npm (Node Package Manager)**, the world’s largest open-source library ecosystem.
    
* Made it easy to install, share, and update packages.
    

---

### **6\. Ideal for Modern Web Apps**

* Real-time chat (WhatsApp Web, Slack)
    
* Streaming services (Netflix, YouTube backend components)
    
* Microservices & APIs
    
* Automation tools (Playwright, Cypress)
    

---

## **In Simple Words**

Node.js came to the market to:

* **Break the wall between frontend and backend** (one language: JavaScript)
    
* **Handle high-concurrency applications efficiently**
    
* **Speed up development with a giant package ecosystem**
    
* **Enable real-time and scalable applications**
    

---

## **Analogy**

Old servers = Waiters who serve one table at a time (blocking).  
Node.js = A smart waiter who takes many orders, delivers them as they’re ready, and never waits idly.

## what is Node Package Manager (npm) is, how it came to exist, and why it became essential for Node.js and the JavaScript ecosystem.

## **What is npm (Node Package Manager)?**

* **npm** is the default package manager for Node.js.
    
* It allows you to **install, share, manage, and update code packages (libraries, tools, frameworks)**.
    
* It comes bundled with Node.js (no need to install separately).
    

### **What Does npm Do?**

* Installs libraries like Express, React, Playwright, etc.
    
* Manages dependencies in your project via `package.json`.
    
* Allows you to publish your own packages.
    
* Provides access to the **world’s largest open-source library ecosystem**.
    

---

## **How Did npm Come? (The History)**

### **Before npm**

* JavaScript was mostly used in browsers.
    
* Developers relied on manually downloading libraries and linking them with `<script>` tags.
    
* Dependency management was a nightmare:
    
    * No central repository
        
    * Version conflicts (different libraries requiring different versions)
        
    * No standard way to share packages
        

### **The Birth of npm**

* **Created in 2010 by Isaac Z. Schlueter**, shortly after Node.js (2009).
    
* Built to solve:
    
    * **Package sharing** for Node.js
        
    * **Dependency management** in one place
        
    * **Version control** for libraries
        

### **npm's Growth**

* Quickly became the **standard package manager for Node.js**.
    
* Expanded to support frontend tools (React, Angular, Vue, TypeScript, Webpack).
    
* Now used not only in Node.js apps but also for automation, CI/CD, and even Python/.NET integrations.
    

---

## **How npm Works?**

1. You create a project:
    
    ```java
    npm init -y
    ```
    
    → Creates `package.json` (tracks dependencies and project metadata).
    
2. Install a package:
    
    ```java
    npm install express
    ```
    
    → Downloads package to `node_modules/` and updates `package.json`.
    
3. Use it in your code:
    
    ```java
    const express = require('express');
    ```
    
4. Update or remove packages easily:
    
    ```java
    npm update
    npm uninstall express
    ```
    
5. Publish your own library:
    
    ```java
    npm publish
    ```
    

---

## **Why npm is Important**

* Makes Node.js scalable and developer-friendly.
    
* Encourages code reuse (no need to rewrite common modules).
    
* Powers tools like Playwright, Selenium WebDriver JS, ESLint, TypeScript, etc.
    
* Became the **largest package ecosystem in the world (2M+ packages)**.
    

---

## **Alternatives to npm**

* **Yarn** (Facebook’s alternative, faster installs, better caching).
    
* **pnpm** (space-efficient, symlink-based).
    
* **Bun** (modern, ultra-fast).
    

But npm remains the default and most widely supported.

## **1\. npm Workflow (Step by Step with Diagram)**

Here’s how npm works in a typical Node.js project:

```java
 ┌─────────────────────┐
 │ Install Node.js     │
 │ (npm comes with it) │
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Initialize Project  │
 │ npm init -y         │
 │ → creates package.json│
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Install Packages    │
 │ npm install <pkg>   │
 │ → node_modules/     │
 │ → package-lock.json │
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Use in Code         │
 │ require()/import    │
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Update/Remove       │
 │ npm update / uninstall│
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Share Your Project  │
 │ via package.json    │
 └─────────┬───────────┘
           │
           ▼
 ┌─────────────────────┐
 │ Publish Your Package│
 │ npm publish         │
 └─────────────────────┘
```

---

## **2\. Key npm Commands (Automation & Testing Focus)**

### **Project Setup**

* `npm init -y` → Creates a default `package.json`
    
* `npm install` → Installs all dependencies listed in `package.json`
    

### **Installing Tools**

* Playwright:
    
    ```java
    npm install -D @playwright/test
    npx playwright install
    ```
    
* Selenium WebDriver:
    
    ```java
    npm install selenium-webdriver
    ```
    
* TypeScript:
    
    ```java
    npm install -D typescript ts-node @types/node
    ```
    

### **Running Tests**

* Using Playwright:
    
    ```java
    npx playwright test
    ```
    
* Using Selenium with Node:
    
    ```java
    node your_test.js
    ```
    

### **Updating Dependencies**

* Update all:
    
    ```java
    npm update
    ```
    
* Update a specific package:
    
    ```java
    npm install <package>@latest
    ```
    

### **Other Important Commands**

* `npm list` → View installed packages
    
* `npm outdated` → Check for outdated packages
    
* `npm uninstall <package>` → Remove a package
    
* `npm cache clean --force` → Clear npm cache
    

---

## **3\. npm vs Maven (For Automation Testing)**

You’re already learning **Maven** for Java automation, so here’s a direct comparison:

| Feature | npm (Node.js) | Maven (Java) |
| --- | --- | --- |
| **Language Focus** | JavaScript/TypeScript | Java, Kotlin |
| **Dependency File** | `package.json` | `pom.xml` |
| **Package Repository** | npm registry (2M+ packages) | Maven Central (1M+ packages) |
| **Execution** | `npm run`, `npx` | `mvn clean install`, `mvn test` |
| **Build System** | No default build (Webpack, Rollup, etc.) | Built-in build lifecycle |
| **Test Integration** | Playwright, Jest, Mocha, Cypress | TestNG, JUnit, Selenium |
| **Usage in QA** | Web/API automation (Playwright, Cypress) | Web/API automation (Selenium, REST-Assured) |
| **Installation** | `npm install` (fast, lightweight) | `mvn install` (slower, XML heavy) |

### **When to Use npm in Automation?**

* Playwright, Cypress, Puppeteer automation
    
* API testing with Supertest or Axios
    
* TypeScript-based frameworks
    

### **When to Use Maven in Automation?**

* Selenium + Java/TestNG/JUnit projects
    
* RestAssured, Cucumber with Java
    
* Enterprise CI/CD pipelines using Java stack
    

## **1\. 30-Day Playwright with TypeScript Roadmap (using npm)**

This roadmap assumes you know basic JavaScript and are starting fresh with Playwright + TypeScript for automation.

### **Week 1: Fundamentals (Days 1–7)**

* **Day 1–2**: Install Node.js (npm comes with it)
    
    * Verify: `node -v`, `npm -v`
        
    * Create project: `npm init -y`
        
* **Day 3–4**: Learn TypeScript basics
    
    * Install: `npm install -D typescript ts-node @types/node`
        
    * Create `tsconfig.json`
        
* **Day 5–6**: Install Playwright
    
    ```java
    npm install -D @playwright/test
    npx playwright install
    ```
    
* **Day 7**: Run first Playwright test (open a browser, check a title).
    

---

### **Week 2: Core Playwright Features (Days 8–14)**

* **Day 8–9**: Locators (CSS, XPath, text, role)
    
* **Day 10**: Assertions (`expect`, page checks)
    
* **Day 11**: Page interactions (click, type, select)
    
* **Day 12**: Handling waits & timeouts
    
* **Day 13**: Screenshots, videos, and traces
    
* **Day 14**: Practice: Automate a sample login page
    

---

### **Week 3: Advanced Automation (Days 15–21)**

* **Day 15–16**: Fixtures, hooks (`beforeEach`, `afterEach`)
    
* **Day 17**: Data-driven testing
    
* **Day 18**: Parallel test execution
    
* **Day 19**: Page Object Model (POM)
    
* **Day 20**: Environment configuration (`.env`, `config.ts`)
    
* **Day 21**: Generate HTML reports
    

---

### **Week 4: CI/CD & Real-World Project (Days 22–30)**

* **Day 22–23**: Integrate with Git and GitHub
    
* **Day 24–25**: Run tests in headless mode on CI
    
* **Day 26**: Jenkins pipeline setup
    
* **Day 27–28**: Parameterized builds (Dev, QA, Prod)
    
* **Day 29**: Finalize project structure
    
* **Day 30**: Documentation + Resume bullet points
    

---

## **2\. Full npm Ecosystem Architecture**

Here’s how npm operates behind the scenes:

```java
          ┌─────────────────────┐
          │ npm Registry (Cloud)│
          │ 2M+ packages stored │
          └─────────┬───────────┘
                    │
         ┌──────────▼───────────┐
         │ npm CLI (local)      │
         │ npm install, publish │
         └─────────┬────────────┘
                   │
   ┌───────────────▼────────────────┐
   │ package.json (project metadata)│
   │  - dependencies                │
   │  - devDependencies             │
   └───────────────┬────────────────┘
                   │
         ┌─────────▼─────────┐
         │ node_modules/     │
         │ Local installed   │
         │ libraries         │
         └───────────────────┘
```

* **npm Registry**: Central hub for packages.
    
* **npm CLI**: Your interface to install, update, publish.
    
* **package.json**: Blueprint of your project.
    
* **node\_modules/**: Actual downloaded packages.
    

---

## **3\. Real-World Automation Project (Playwright + TypeScript + npm + Jenkins)**

### **Project Title**

**Sales and Inventory Management Automation**

### **Tools Used**

* Node.js + npm
    
* Playwright (`@playwright/test`)
    
* TypeScript
    
* Jenkins (CI/CD)
    
* Allure Reports / HTML Reporter
    

### **Project Structure**

```java
sales-inventory-automation/
├── package.json
├── tsconfig.json
├── playwright.config.ts
├── tests/
│   ├── login.spec.ts
│   ├── addProduct.spec.ts
│   └── salesReport.spec.ts
├── pages/
│   ├── loginPage.ts
│   ├── dashboardPage.ts
│   └── productPage.ts
├── utils/
│   ├── testData.ts
│   └── env.ts
└── reports/
```

### **Jenkins Pipeline Example (Jenkinsfile)**

```java
pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/your-repo/sales-inventory-automation.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npx playwright test'
            }
        }
        stage('Generate Report') {
            steps {
                sh 'npx playwright show-report'
            }
        }
    }
}
```

### **Resume Bullet Points**

* Developed an end-to-end automation framework using **Playwright with TypeScript**.
    
* Implemented **Page Object Model (POM)** and **data-driven testing** for 50+ test cases.
    
* Integrated with **Jenkins CI/CD pipeline**, enabling nightly and on-demand test execution.
    
* Generated **HTML & Allure reports** for stakeholders.
    
* Managed dependencies using **npm** and maintained environment configs.
    

1. **Learn fast (cheat sheets)**
    
2. **Prepare for interviews (Q&A)**
    
3. **Build your own working project (ready to run)**
    

---

## **1\. npm + Playwright + TypeScript Full Commands Cheat Sheet**

### **npm Commands**

```java
# Initialize a new project
npm init -y

# Install packages
npm install <package-name>           # production
npm install -D <package-name>        # dev only

# Install Playwright + TypeScript
npm install -D @playwright/test typescript ts-node @types/node

# Install all dependencies from package.json
npm install

# Update all packages
npm update

# Remove a package
npm uninstall <package-name>

# List installed packages
npm list --depth=0

# Run scripts from package.json
npm run <script-name>
```

### **Playwright Commands**

```java
# Install Playwright browsers
npx playwright install

# Run all tests
npx playwright test

# Run a specific file
npx playwright test tests/login.spec.ts

# Run in headed mode
npx playwright test --headed

# Generate test skeleton
npx playwright codegen https://example.com

# Show last test report
npx playwright show-report
```

### **TypeScript Commands**

```java
# Initialize TS configuration
npx tsc --init

# Compile TypeScript
npx tsc

# Run TypeScript directly (using ts-node)
npx ts-node file.ts
```

---

## **2\. Interview Questions (npm + Playwright + TypeScript)**

### **npm**

* **What is npm?**  
    Default package manager for Node.js, used to install and manage dependencies.
    
* **Difference between dependencies and devDependencies?**  
    `dependencies`: required for production.  
    `devDependencies`: needed only in development/testing.
    
* **What is** `package.json`?  
    It defines project metadata, dependencies, and npm scripts.
    
* **What are** `package-lock.json` and `node_modules/`?
    
    * `package-lock.json`: locks exact versions.
        
    * `node_modules/`: stores actual packages.
        

---

### **Playwright**

* **What is Playwright?**  
    A browser automation tool supporting Chromium, Firefox, WebKit, and Edge.
    
* **Difference between Playwright and Selenium?**  
    Playwright is faster, supports modern web features (shadow DOM, iframes, multiple tabs), and is built for JavaScript/TypeScript.
    
* **How does Playwright handle waits?**  
    Auto-waits for elements to be ready (but supports `page.waitForSelector()` when needed).
    
* **What is the Page Object Model (POM) in Playwright?**  
    A design pattern to separate page-specific locators and methods from tests.
    

---

### **TypeScript**

* **What is TypeScript?**  
    A superset of JavaScript adding static typing.
    
* **Why use TypeScript with Playwright?**  
    Provides type safety, better IntelliSense, fewer runtime errors.
    
* **What is** `tsconfig.json`?  
    Configuration file that defines TypeScript compiler options.
    

---

## **3\. Ready-to-Run Mini Project (Sales & Inventory Automation)**

### **Step 1: Create Project**

```java
mkdir sales-inventory-automation
cd sales-inventory-automation
npm init -y
npm install -D @playwright/test typescript ts-node @types/node
npx playwright install
npx tsc --init
```

---

### **Step 2: Project Structure**

```java
sales-inventory-automation/
├── package.json
├── tsconfig.json
├── playwright.config.ts
├── tests/
│   └── login.spec.ts
├── pages/
│   └── loginPage.ts
└── utils/
    └── testData.ts
```

---

### **Step 3: Example Test –** `tests/login.spec.ts`

```java
import { test, expect } from '@playwright/test';
import { LoginPage } from '../pages/loginPage';

test('Login Test', async ({ page }) => {
  const login = new LoginPage(page);
  await login.goto();
  await login.login('admin', 'password123');
  await expect(page).toHaveURL(/dashboard/);
});
```

---

### **Step 4: Page Object –** `pages/loginPage.ts`

```java
import { Page } from '@playwright/test';

export class LoginPage {
  constructor(private page: Page) {}

  async goto() {
    await this.page.goto('https://example.com/login');
  }

  async login(username: string, password: string) {
    await this.page.fill('#username', username);
    await this.page.fill('#password', password);
    await this.page.click('button[type="submit"]');
  }
}
```

---

### **Step 5: Test Data –** `utils/testData.ts`

```java
export const testData = {
  username: 'admin',
  password: 'password123'
};
```

---

### **Step 6: Run Tests**

```java
npx playwright test
```

---

### **Step 7: Jenkins Integration**

* Use a **Jenkinsfile**:
    

```java
pipeline {
    agent any
    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }
        stage('Run Tests') {
            steps {
                sh 'npx playwright test'
            }
        }
        stage('Generate Report') {
            steps {
                sh 'npx playwright show-report'
            }
        }
    }
}
```

---

### **Resume Highlights**

* Built an **end-to-end Playwright automation framework using TypeScript**.
    
* Implemented **Page Object Model and data-driven testing**.
    
* Integrated with **Jenkins CI/CD** for nightly builds.
    
* Managed dependencies via **npm**, ensuring reproducible builds.
    

---

Now you have:

* **Cheat sheets (npm, Playwright, TS)**
    
* **Interview prep (questions & answers)**
    
* **Mini project (step-by-step, ready to run)**
    
* **CI/CD pipeline template**