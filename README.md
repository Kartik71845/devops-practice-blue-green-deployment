# Blue-Green Deployment – Practice Project

This repository contains a hands-on practice setup to understand the **Blue-Green deployment concept** using simple tools.

This is a **learning project**, not a production system.

---

## 🎯 Goal of This Practice

The goal of this practice was to understand:
- How zero-downtime deployments work
- How traffic can be switched between two application versions
- How CI/CD automates deployments using GitHub Actions

---

## 🛠 Tools Used

- AWS EC2 (Ubuntu)
- Docker
- Nginx
- GitHub Actions
- SSH

---

## 🧠 What is Blue-Green Deployment (in short)

Two versions of the application run at the same time:

- **Blue** → currently serving users
- **Green** → new version being deployed

Traffic is switched from Blue to Green after deployment, avoiding downtime.

---

## 🏗 Architecture Overview

