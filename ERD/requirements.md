## 2. Relationships Between Entities

### 🧑 User ↔ 🏠 Property
- **One user (host)** can list **many properties**.  
- Each property must belong to exactly **one host**.  
- **Relationship:** 1-to-many (User → Property).  


### 🧑 User ↔ 📅 Booking
- **One user (guest)** can make **many bookings**.  
- Each booking is tied to exactly **one guest**.  
- **Relationship:** 1-to-many (User → Booking).  


### 🏠 Property ↔ 📅 Booking
- **One property** can have **many bookings**.  
- Each booking is linked to exactly **one property**.  
- **Relationship:** 1-to-many (Property → Booking).  


### 📅 Booking ↔ 💳 Payment
- Each **booking** has exactly **one payment**.  
- Each **payment** belongs to exactly **one booking**.  
- **Relationship:** 1-to-1 (Booking ↔ Payment).  


### 🧑 User ↔ ⭐ Review
- **One user (guest)** can leave **many reviews**.  
- Each review belongs to exactly **one user**.  
- **Relationship:** 1-to-many (User → Review).  


### 🏠 Property ↔ ⭐ Review
- **One property** can have **many reviews**.  
- Each review belongs to exactly **one property**.  
- **Relationship:** 1-to-many (Property → Review).  


### 🧑 User ↔ 💬 Message
- **One user** can send many messages (as the sender).  
- **One user** can receive many messages (as the recipient).  
- **Relationship:** 1-to-many (User → Message, both sender and recipient roles).  

