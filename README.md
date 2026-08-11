# SQL Data Warehouse

Build a modern data warehouse with **SQL Server**, covering ETL processes, data modeling, from raw source files to business-ready, analytics-friendly data.

## Table of Contents
- Project Overview
- Repository Structure
- Data Warehouse Architecture
- Setup & Usage
- About Me

## Project Overview

This repo shows a practical way to build a SQL-based data warehouse. It's focused on clear, repeatable steps to get data from CSV files into analytics-ready tables. You'll find scripts for landing raw files, cleaning and joining data, and producing star-style models for reporting.

The examples use T-SQL (SQL Server) but the patterns map to other engines with minimal change.

## Repository Structure

Key folders and files:

- `datasets/` - source CSV files (CRM and ERP sample files).
- `scripts/` - SQL scripts and stored procedures for creating and loading database layers.
	- `Init_database.sql` - initial database setup.
	- `bronze/ddl_bronze.sql` - Bronze layer DDL.
	- `bronze/proc_load_bronze.sql` - Bronze load procedures.
	- `silver/ddl_silver.sql` - Silver layer DDL.
	- `silver/proc_load_silver.sql` - Silver load procedures.
	- `gold/ddl_gold.sql` - Gold layer DDL.
- `docs/` - architecture and data model diagrams (Draw.io files).
- `tests/` - quality check scripts for Silver/Gold outputs.

## Data Warehouse Architecture

The warehouse follows a Bronze → Silver → Gold design:

- Bronze: Raw, immutable landing tables populated directly from source CSVs.
- Silver: Cleansed and conformed tables with keys and normalized structures.
- Gold: Business-facing star-schema or denormalized models optimized for reporting.

<img src="docs\Datawharehouse_architecture.png" alt="architecture" />

Processes:

- Ingestion: CSV files are loaded into staging/Bronze tables via stored procedures.
- Transformation: SQL procedures and views apply business logic and data-modeling rules.
- Quality: SQL-based checks under `tests/` validate row counts, nulls, and referential expectations.


## Setup & Usage

Prerequisites:

- A SQL Server instance (or compatible engine).
- Access to run the SQL scripts in the `scripts/` folder.

Basic steps:

1. Create a target database using `scripts/Init_database.sql`.
2. Run DDL scripts in `scripts/bronze/ddl_bronze.sql` to create landing tables.
3. Run `scripts/bronze/proc_load_bronze.sql` (or adapt) to load `datasets/` CSV files into Bronze.
4. Run Silver and Gold DDL + load procedures to transform data into analytics models.
5. Execute tests in `tests/` to validate outputs.

## About Me

Hi 👋 I'm Cyrille PIO, an MSc student in Artificial Intelligence & Big Data, building real-world projects to sharpen my skills and gain hands-on experience. Aiming for a career as a Data Engineer / Data Scientist, I enjoy turning raw data into reliable pipelines and actionable insights.

 [<a href="https://www.linkedin.com/in/yourprofile"><img src="data:image/svg+xml;utf8,<svg%20xmlns='http://www.w3.org/2000/svg'%20viewBox='0%200%2024%2024'><rect%20width='24'%20height='24'%20rx='4'%20fill='%230077B5'/><text%20x='12'%20y='16'%20font-size='8'%20text-anchor='middle'%20fill='%23fff'%20font-family='Arial'>in</text></svg>" alt="LinkedIn" width="32"/></a>]

