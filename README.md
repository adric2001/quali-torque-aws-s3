# Quali Torque AWS S3 Blueprint

## Overview
This repository contains a modular Terraform configuration and a Quali Torque blueprint to provision an AWS S3 bucket.

## Repository Structure
- `main.tf`: Provider and S3 bucket resource definition.
- `variables.tf`: Input variable declarations (Region, Prefix, and Credentials).
- `outputs.tf`: Outputs for the Bucket Name and ARN.
- `blueprint.yaml`: The Torque orchestration definition.

## Technical Approach
The environment utilizes a single Terraform "grain." Secure AWS credentials are managed through Torque's sensitive inputs and passed into the Terraform provider at runtime using environment-variable mapping.

## Challenges & Optimizations
- **Input Mapping:** Optimized the blueprint YAML to use cross-input linking, ensuring that secure strings are mapped correctly to the Terraform module.
- **Root Pathing:** Configured the grain path to root (`.`) to ensure compatibility with a flat repository structure.
- **Error Handling:** Successfully troubleshot `InvalidClientTokenId` and `Unsupported Block` errors by refining Terraform variable blocks and verifying credential integrity.

## Bonus: CI/CD
Added a basic GitHub Action to validate Terraform formatting on every push to ensure code quality.