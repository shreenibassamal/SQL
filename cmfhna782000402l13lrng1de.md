---
title: "Jenkins For Automation Testing"
datePublished: Sat Sep 13 2025 02:26:17 GMT+0000 (Coordinated Universal Time)
cuid: cmfhna782000402l13lrng1de
slug: jenkins-for-automation-testing
tags: shreenibas

---

# ⚙️ **Jenkins Overview**

## 1️⃣ What is Jenkins?

👉 Jenkins is an **open-source automation server** used to implement **Continuous Integration (CI)** and **Continuous Delivery/Deployment (CD)**.  
It automates:

* Building projects
    
* Running tests
    
* Deploying applications
    

So instead of manually running builds/tests/deployments, Jenkins automates everything.

---

## 2️⃣ Why Jenkins came?

Before Jenkins (early 2000s), developers:

* Built projects manually → time-consuming & error-prone.
    
* Integrated code once in a while ("integration hell").
    
* Deployment was manual, risky, and slow.
    

👉 Jenkins solved these by **automating CI/CD pipelines** → code is integrated, tested, and deployed automatically.

---

## 3️⃣ When Jenkins came?

* Jenkins was created in **2004** by **Kohsuke Kawaguchi** at Sun Microsystems.
    
* Initially called **Hudson**, renamed to **Jenkins** in **2011** (after Oracle dispute).
    

---

## 4️⃣ What problem does Jenkins solve?

* **Automation** → no manual builds/tests/deploys.
    
* **Faster feedback** → catch bugs early with CI.
    
* **Scalability** → master-agent setup for distributed builds.
    
* **Consistency** → same process across all environments.
    
* **Integration** → works with Git, Maven, Selenium, Docker, Kubernetes, etc.
    

👉 In short: Jenkins automates **software delivery pipeline** end-to-end.

---

## 5️⃣ Where can we use Jenkins?

* **Automation Testing** → run Selenium/TestNG/JUnit tests.
    
* **DevOps CI/CD** → build → test → deploy pipelines.
    
* **Infrastructure as Code** → integrate with Docker, Kubernetes, Terraform.
    
* **Monitoring** → send reports via Email/Slack.
    
* **Enterprise Projects** → distributed build and deployment pipelines.
    

---

## 6️⃣ When do we use Jenkins?

* When you want **continuous integration** → automatically test code after each commit.
    
* When you want **continuous delivery/deployment** → automatically deploy after successful tests.
    
* When working with **teams** → so every developer’s code gets integrated and tested daily.
    

---

## 7️⃣ Prerequisite Knowledge for Jenkins

Before learning Jenkins, you should know:

1. **Core Java** (for Selenium/TestNG projects).
    
2. **Maven/Gradle** (build tools Jenkins integrates with).
    
3. **Git/GitHub** (source code management).
    
4. **Basic Linux/Windows commands**.
    
5. **Automation Testing (Selenium/TestNG/JUnit)**.
    
6. (Optional) **Docker, Kubernetes, Cloud (AWS/Azure/GCP)** if you want to learn DevOps CI/CD.
    

---

✅ So in summary:

* **Maven** automates builds & dependency management.
    
* **Jenkins** automates the entire CI/CD pipeline (build → test → deploy).
    

Perfect 👍 Let’s break down **Jenkins components** in detail with their roles.

---

# 🧩 **Jenkins Components & Their Work**

---

## 1️⃣ **Jenkins Server (Master/Controller)**

* The **core of Jenkins**.
    
* Provides the **web UI** ([`http://localhost:8080`](http://localhost:8080)).
    
* Stores configuration, jobs, plugins.
    
* Assigns work to agents (slaves).
    
* Monitors builds and shows results.
    

👉 Think of it as the **brain of Jenkins**.

---

## 2️⃣ **Jenkins Nodes (Agents/Slaves)**

* Machines that **execute the jobs** assigned by the Master.
    
* Can be physical servers, VMs, or cloud instances.
    
* Each node has labels (e.g., *Windows*, *Linux*, *Docker*) so jobs can run in the right environment.
    

👉 Master tells agents *what to do*, agents actually **do the work**.

---

## 3️⃣ **Jenkins Jobs / Projects**

* A **job** is a task Jenkins performs (e.g., build, test, deploy).
    
* Types:
    
    * **Freestyle Project** → simple jobs with manual config.
        
    * **Maven Project** → integrates with Maven lifecycle.
        
    * **Pipeline Project** → scripted with `Jenkinsfile`.
        
    * **Multibranch Pipeline** → CI/CD for multiple Git branches.
        

👉 Jobs are the **heart of Jenkins automation**.

---

## 4️⃣ **Jenkins Pipelines**

* A way to define the CI/CD workflow as **code (Jenkinsfile)**.
    
* Two types:
    
    * **Declarative Pipeline** → simpler, structured.
        
    * **Scripted Pipeline** → full flexibility with Groovy scripting.
        
* Consists of **Stages** (`Build`, `Test`, `Deploy`) and **Steps** (commands inside stages).
    

👉 Pipelines = **Automation as Code**.

---

## 5️⃣ **Jenkins Plugins**

* Jenkins is lightweight by default.
    
* Plugins extend functionality:
    
    * Git plugin → SCM
        
    * Maven plugin → build automation
        
    * JUnit/TestNG plugin → test reports
        
    * Email/Slack plugin → notifications
        
    * Allure/Extent → test reporting
        
    * Docker/Kubernetes → DevOps integration
        

👉 Over **1800+ plugins** available.

---

## 6️⃣ **Jenkins Workspace**

* A **directory on the agent machine** where Jenkins checks out the project code and runs builds.
    
* Example:
    
    ```xml
    /var/lib/jenkins/workspace/MyProject/
    ```
    
* Contains source code, compiled classes, reports, and logs.
    

👉 Each job has its **own workspace**.

---

## 7️⃣ **Jenkins Build Triggers**

* Defines *when* a job runs:
    
    * **Manual Trigger** → click "Build Now".
        
    * **Poll SCM** → check Git repo every X minutes.
        
    * **Webhooks** → trigger instantly when code is pushed.
        
    * **Scheduled (Cron)** → e.g., nightly builds.
        
    * **Upstream/Downstream** → trigger job chains.
        

👉 Triggers = **automation entry point**.

---

## 8️⃣ **Jenkins Build Executors**

* Executors are **slots on an agent** that run jobs in parallel.
    
* Example:
    
    * 1 agent with 2 executors → can run 2 builds at the same time.
        

👉 Executors = **multi-tasking power of Jenkins**.

---

## 9️⃣ **Jenkins Artifacts**

* The **output** of a Jenkins job (e.g., JAR, WAR, ZIP, reports).
    
* Stored in `workspace/target` and can be **archived** in Jenkins.
    
* Used for deployments.
    

👉 Artifacts = **deliverables**.

---

## 🔟 **Jenkins Console Output (Logs)**

* Shows **step-by-step execution logs** of a job.
    
* Useful for debugging build/test failures.
    

👉 Think of it as Jenkins’ **black box recorder**.

---

## 1️⃣1️⃣ **Jenkins Security & Credentials**

* Manages **user authentication & authorization**.
    
* Stores **secrets** (API keys, passwords, SSH keys) securely.
    
* Credentials are injected into jobs when required.
    

👉 Ensures builds are **safe & secure**.

---

## 1️⃣2️⃣ **Jenkins Shared Libraries**

* Custom reusable Groovy code for pipelines.
    
* Helps maintain **DRY principle** (Don’t Repeat Yourself).
    

👉 Useful for **enterprise-level pipelines**.

---

# 🎯 Summary (One-liner for each component)

* **Server (Master/Controller)** → Brains of Jenkins.
    
* **Nodes (Agents/Slaves)** → Workers that execute jobs.
    
* **Jobs/Projects** → The actual tasks.
    
* **Pipelines** → Workflow as code.
    
* **Plugins** → Extend Jenkins features.
    
* **Workspace** → Directory for build execution.
    
* **Triggers** → When jobs run.
    
* **Executors** → Parallel job slots.
    
* **Artifacts** → Build outputs.
    
* **Console Output** → Logs.
    
* **Security & Credentials** → Safe access.
    
* **Shared Libraries** → Reusable pipeline code.