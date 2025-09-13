---
title: "Manual Testing"
datePublished: Sat Sep 13 2025 08:08:25 GMT+0000 (Coordinated Universal Time)
cuid: cmfhzi6yg000202l7bb13cn90
slug: manual-testing-1
tags: shreenibas

---

# 📘 Manual Testing — Complete Conceptual Guide (In Depth)

---

## 1\. **Software Testing Basics**

* **Definition:** Process of verifying a software application to ensure it meets specified requirements and works correctly.
    
* **Objectives:**
    
    * Detect defects before release.
        
    * Improve product quality.
        
    * Ensure compliance with requirements.
        
    * Increase customer confidence.
        
* **Principles of Testing (7 ISTQB Principles):**
    
    1. Testing shows presence of defects (not absence).
        
    2. Exhaustive testing is impossible.
        
    3. Early testing saves time and cost.
        
    4. Defects cluster together (few modules contain most bugs).
        
    5. Pesticide paradox (repeated tests stop finding new defects).
        
    6. Testing depends on context (bank app ≠ game app).
        
    7. Absence-of-errors fallacy (software with no bugs may still be useless if it doesn’t meet needs).
        

---

## 2\. **Manual Testing vs Automation Testing**

* **Manual Testing:**
    
    * Executed by human testers.
        
    * Flexible (exploratory/ad-hoc possible).
        
    * Best for usability, UI validation.
        
* **Automation Testing:**
    
    * Executed via scripts/tools.
        
    * Good for regression, performance, repeated checks.
        
    * Needs investment in frameworks & tools.
        

---

## 3\. **SDLC (Software Development Life Cycle)**

Phases:

1. Requirement gathering
    
2. Design
    
3. Development
    
4. Testing
    
5. Deployment
    
6. Maintenance
    

Testers are involved from **Requirement** stage (shift-left testing).

---

## 4\. **STLC (Software Testing Life Cycle)**

### 1\. Requirement Analysis

* Study BRD, SRS, user stories.
    
* Clarify doubts.
    
* Output → Requirement Analysis Document, RTM draft.
    

### 2\. Test Planning

* Define strategy, effort, scope, budget, tools.
    
* Entry/Exit criteria.
    
* Roles & responsibilities.
    
* Output → Test Plan Document.
    

### 3\. Test Case Development

* Write test cases, scenarios, prepare test data.
    
* Peer review.
    
* Output → Test Case Repository.
    

### 4\. Environment Setup

* Hardware/software/network readiness.
    
* Tools installation.
    
* Output → Environment Checklist.
    

### 5\. Test Execution

* Run test cases.
    
* Mark Pass/Fail/Blocked.
    
* Log defects.
    
* Output → Execution Report.
    

### 6\. Defect Reporting

* Report defects with severity/priority.
    
* Track bug lifecycle.
    
* Output → Defect Logs.
    

### 7\. Test Closure

* Summarize results, lessons learned.
    
* Output → Test Summary Report.
    

---

## 5\. **Levels of Testing**

1. **Unit Testing:**
    
    * Smallest unit (function/class).
        
    * Done by developers.
        
2. **Integration Testing:**
    
    * Verify interaction between modules (API, DB).
        
3. **System Testing:**
    
    * Entire system validation (end-to-end).
        
4. **Acceptance Testing:**
    
    * Validates business requirements.
        
    * Types: Alpha (internal), Beta (external users).
        

---

## 6\. **Types of Testing**

* **Functional Testing:** Ensures business functions work.
    
* **Non-Functional Testing:**
    
    * Performance (speed, load).
        
    * Usability (ease of use).
        
    * Security (safe against attacks).
        
    * Compatibility (OS, devices, browsers).
        
* **Smoke Testing:** Basic checks for build stability.
    
* **Sanity Testing:** Quick verification of bug fix.
    
* **Regression Testing:** Re-run existing tests after changes.
    
* **Exploratory Testing:** Tester explores app without predefined cases.
    
* **Ad-hoc Testing:** Informal, random testing.
    

---

## 7\. **Test Artifacts**

* **Test Plan** – strategy, scope, resources, risk.
    
* **Test Scenarios** – high-level description of functionality to test.
    
* **Test Cases** – step-by-step validation with expected vs actual.
    
* **Test Data** – values used in execution.
    
* **RTM (Requirement Traceability Matrix)** – maps requirements to test cases & defects.
    
* **Defect Report** – details of bugs.
    
* **Test Summary Report** – overall status.
    

---

## 8\. **Test Case in Detail**

* **Structure:**
    
    * ID, Title, Preconditions, Steps, Test Data, Expected, Actual, Status, Priority, Attachments.
        
* **Qualities of Good Test Case:**
    
    * Simple, reusable, atomic, traceable.
        
* **Types of Test Cases:**
    
    * Positive (valid inputs).
        
    * Negative (invalid inputs).
        
    * Edge cases (boundaries).
        

---

## 9\. **Test Design Techniques**

* **Equivalence Partitioning:** Input divided into valid/invalid groups.
    
* **Boundary Value Analysis:** Test values at edges (min, max, just inside/outside).
    
* **Decision Table Testing:** Rule-based conditions → outcomes.
    
* **State Transition Testing:** Verify different system states.
    
* **Error Guessing:** Based on experience (e.g., try special chars).
    

---

## 10\. **Defect Management**

### Bug Lifecycle

1. New
    
2. Assigned
    
3. Open
    
4. Fixed
    
5. Retest
    
6. Verified
    
7. Closed
    

### Defect Attributes

* ID, Title, Steps, Expected vs Actual, Severity, Priority, Environment, Attachments.
    

### Severity vs Priority

* **Severity:** Technical impact (Critical, Major, Minor).
    
* **Priority:** Business urgency (P1, P2, P3).
    

---

## 11\. **Requirement Traceability Matrix (RTM)**

Ensures **100% requirement coverage**.

Example:

| Req ID | Requirement | Test Cases | Status | Defects |
| --- | --- | --- | --- | --- |
| R1 | User login | TC01, TC02 | Pass | \- |
| R2 | Add to cart | TC10, TC11 | Fail | BUG\_45 |

---

## 12\. **Test Environment**

* Combination of hardware, software, DB, network.
    
* Should mimic production.
    
* Example: Windows 11, Chrome 120, MySQL 8.
    

---

## 13\. **Entry & Exit Criteria**

* **Entry:** Requirements signed off, test cases ready, env available.
    
* **Exit:** All planned tests executed, critical defects fixed, reports shared.
    

---

## 14\. **Test Metrics**

* **Test Execution Metrics:** Pass %, Fail %, Blocked tests.
    
* **Defect Metrics:**
    
    * Defect Density = Defects/KLOC.
        
    * Defect Leakage = Post-release defects.
        
* **Coverage Metrics:** % requirements covered.
    

---

## 15\. **Testing Models**

* **Waterfall:** Sequential.
    
* **V-Model:** Testing parallel with dev.
    
* **Agile:** Iterative, incremental.
    
* **Spiral:** Risk-based, iterative.
    

---

## 16\. **Agile Testing**

* Part of sprint team.
    
* Continuous testing.
    
* Test early, deliver fast.
    
* Methods: Exploratory, Acceptance Test Driven Development (ATDD).
    

---

## 17\. **Alpha & Beta Testing**

* **Alpha:** Internal testers, controlled environment.
    
* **Beta:** External users, real environment.
    

---

## 18\. **Static vs Dynamic Testing**

* **Static:** Without code execution (reviews, walkthroughs, inspections).
    
* **Dynamic:** With execution (manual/automation).
    

---

## 19\. **Black Box, White Box, Grey Box**

* **Black Box:** Focus on functionality (no code knowledge).
    
* **White Box:** Focus on code, logic, paths.
    
* **Grey Box:** Partial code knowledge.
    

---

## 20\. **Exploratory & Ad-hoc Testing**

* **Exploratory:** Time-boxed, structured around charters.
    
* **Ad-hoc:** Random, informal.
    

---

## 21\. **Acceptance Testing**

* Validates end-to-end business flow.
    
* Types: UAT (User Acceptance Testing), OAT (Operational Acceptance Testing).
    

---

## 22\. **Test Closure Activities**

* Verify exit criteria.
    
* Prepare Test Summary Report.
    
* Archive test cases & defects.
    
* Lessons learned.
    

---

## 23\. **Best Practices in Manual Testing**

* Test early (shift-left).
    
* Write reusable test cases.
    
* Use RTM for full coverage.
    
* Log defects with evidence.
    
* Regularly review & update test cases.
    
* Pair testing with devs in Agile.