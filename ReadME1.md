IPL Auction Management System

A DBMS project that simulates the IPL (Indian Premier League) player auction system using SQL and PL/SQL. Developed as part of the Database Management Systems curriculum (UNC602), this project enables auction-style bidding, team-player-owner relationships, and administrative control.

Specification:
- Maintains normalized relational tables for Players, Player Details, Teams, Owners, and Admins
- Automatically assigns Player IDs using PL/SQL triggers
- Updates team balance and player count when a player is sold
- Functional dependencies and schema normalized to 3NF
- Secure admin access with username/password

Technologies Used
- Oracle SQL / PL/SQL
- Functional Dependencies
- Triggers and Stored Procedures
- 1NF, 2NF, 3NF normalization

How to Use
1. Run `schema.sql` to create all required tables
2. Run `insert.sql` to insert sample data
3. Run `procedures.sql` to add logic for printing and selling players
4. Run `triggers.sql` to automate player ID generation and sale updates

Author : Tripty
