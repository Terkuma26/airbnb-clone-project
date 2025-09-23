
## Database Normalization Steps

### 1. First Normal Form (1NF)
- **Objective:** Eliminate repeating groups and ensure atomicity (each field holds only one value).  
- **Application in this schema:**
  - All attributes store **atomic values** (e.g., `first_name`, `last_name`, `email` instead of a single "full name" or multi-value field).  
  - No repeating groups or arrays are used.  
  - Example: `payment_method` is stored as a single ENUM value (credit_card, paypal, stripe), not multiple columns.

---

### 2. Second Normal Form (2NF)
- **Objective:** Eliminate partial dependencies (every non-key attribute should depend on the whole primary key).  
- **Application in this schema:**
  - Each table has a **single-column primary key** (`user_id`, `property_id`, `booking_id`, etc.), so partial dependencies do not exist.  
  - Attributes depend entirely on their table’s primary key.  
  - Example: In the **Booking** table, `start_date`, `end_date`, `status`, and `total_price` all depend on `booking_id` (PK).

---

### 3. Third Normal Form (3NF)
- **Objective:** Eliminate transitive dependencies (non-key attributes must not depend on other non-key attributes).  
- **Application in this schema:**
  - No attribute depends on another non-key attribute.  
  - Example: In the **User** table, `role` depends only on `user_id`, not on `email` or `phone_number`.  
  - Example: In the **Payment** table, `payment_method` is directly tied to `payment_id` (PK), not to `amount` or `booking_id`.


### Result
The database schema is normalized up to **Third Normal Form (3NF)**:
- No repeating groups (1NF).  
- No partial dependencies (2NF).  
- No transitive dependencies (3NF).  

This ensures:
- **Data consistency** (no redundant or duplicated data).  
- **Scalability** (new entities and attributes can be added without redesigning the whole schema).  
- **Integrity** (foreign keys and constraints enforce valid relationships).  

