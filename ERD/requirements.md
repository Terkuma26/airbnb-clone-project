## Relationships Between Entities

| Entity A   | Relationship | Entity B   | Description |
|------------|--------------|------------|-------------|
| User       | 1-to-many    | Property   | A user (host) can list many properties, each property belongs to one host. |
| User       | 1-to-many    | Booking    | A user (guest) can make many bookings, each booking is tied to one guest. |
| Property   | 1-to-many    | Booking    | A property can have many bookings, each booking is linked to one property. |
| Booking    | 1-to-1       | Payment    | Each booking has exactly one payment, and each payment is tied to one booking. |
| User       | 1-to-many    | Review     | A user (guest) can leave many reviews, each review is written by one user. |
| Property   | 1-to-many    | Review     | A property can have many reviews, each review belongs to one property. |
| User       | 1-to-many    | Message    | A user can send many messages (as sender). |
| User       | 1-to-many    | Message    | A user can receive many messages (as recipient). |

