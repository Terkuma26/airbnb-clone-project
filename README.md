# Airbnb-Clone-Project
The Airbnb Clone is a full-stack web application that replicates the core features of Airbnb, a platform that allows users to book stays and list properties for rent. The project helps developers understand and implement real-world functionalities such as authentication, CRUD operations, payment integration, and search filtering.
# Project Goals
**User Features**
Secure authentication (Sign up, Log in/out)
Browse and search listings by location, date, price
Book stays and leave reviews
**Host Features**
Create, edit, and delete property listings
Upload images and descriptions
Manage bookings
**Admin**
Manage users, listings, and reviews
View platform analytics
**Bonus**
Payment integration (e.g. Stripe)
Map support (Google Maps/Mapbox)
Responsive, mobile-friendly UI

# Tech Stack
**Frontend**
React.js – UI components
Next.js – SSR & routing
Tailwind CSS / Bootstrap – Styling
React Hook Form / Formik – Forms
Axios / Fetch – API calls
Mapbox / Google Maps API – Map display
**Backend**
Node.js + Express or Next.js API Routes – REST API
**Database**
MongoDB + Mongoose (NoSQL)
PostgreSQL + Prisma (SQL)
Firebase (optional)
**Auth**
NextAuth.js or JWT
**Storage & Hosting**
Cloudinary / Firebase Storage – Image uploads
Vercel / Netlify – Frontend
Render / Railway / Heroku – Backend

## Team Roles
| Role                                | Responsibilities                                                                                                                    |
| **Business Analyst (BA)**           | Translates stakeholder needs into detailed requirements. Understands business processes and ensures the team builds features that                                             deliver value. ([ITRex][1])                                                     |
| **Product Owner (PO)**              | Owns product vision & roadmap. Decides which features to build and when. Makes sure the final product meets users’ needs and aligns                                           with market or business strategy. ([ITRex][1])                                |
| **Project Manager (PM)**            | Oversees planning, timelines, scope, budget. Keeps the team organized, resolves issues, ensures milestones are met. In Agile settings                                         supports transparency, improves process. ([ITRex][1])                       |
| **UI/UX Designer**                  | Designs user interactions and visual interfaces. Creates wireframes, prototypes, and user journeys. Ensures the Airbnb clone is easy                                          to use, intuitive, and visually consistent. ([ITRex][1])                     |
| **Software Architect**              | Sets high‑level technical direction. Chooses tools, frameworks and system structure. Ensures architecture will scale, be secure,                                              maintainable, and supports integrations (like maps, payments). ([ITRex][1])      |
| **Software Developer**              | Codes the product: frontend, backend or full‑stack depending on team. Implements features, fixes bugs, collaborates on integration                                            points. For Airbnb clone: UI, bookings logic, search/filter, etc. ([ITRex][1]) |
| **Quality Assurance (QA) Engineer** | Tests the application to verify it meets requirements. Catches defects (functional & nonfunctional). Ensures reliability, usability,                                          performance, etc. ([ITRex][1])                                               |
| **Test Automation Engineer**        | Builds and maintains automated test suite. Automates repetitive tests to speed up regression, reduce manual work, and catch issues                                            earlier. ([ITRex][1])                                                          |
| **DevOps Engineer**                 | Manages the infrastructure, deployment pipelines (CI/CD), environment setup. Ensures smooth, reliable releases and                                                            monitoring/maintenance. Handles hosting, scaling, etc. ([ITRex][1])                            |
**Reference** https://itrexgroup.com/blog/software-development-team-structure/ "Software Development Team Structure: Roles & Responsibilities — ITRex"

## Technology Stack
**FrontEnd Technologies**
| Technology                       | Purpose                                                                                       |
| -------------------------------- | --------------------------------------------------------------------------------------------- |
| **React.js**                     | Builds reusable UI components for fast, dynamic user interfaces.                              |
| **Next.js**                      | Adds server-side rendering, routing, and API support to React for better performance and SEO. |
| **Tailwind CSS** / **Bootstrap** | Provides utility-first or component-based CSS frameworks for responsive styling.              |
| **React Hook Form** / **Formik** | Handles form validation and input state management efficiently.                               |
| **Axios** / **Fetch API**        | Sends HTTP requests from frontend to backend (e.g., login, fetch listings).                   |
| **Mapbox** / **Google Maps API** | Integrates interactive maps to display property locations.                                    |

**Backend Technologies**
| Technology             | Purpose                                                                                                     |
| ---------------------- | ----------------------------------------------------------------------------------------------------------- |
| **Node.js**            | Runs JavaScript on the server to build scalable backend services.                                           |
| **Express.js**         | A web framework for Node.js that simplifies routing and handling HTTP requests.                             |
| **Next.js API Routes** | (If used full-stack) Handles backend logic directly within a Next.js app without a separate backend server. |

**Database & ORM**
| Technology     | Purpose                                                                                                  |
| -------------- | -------------------------------------------------------------------------------------------------------- |
| **MongoDB**    | A NoSQL database used to store data like users, listings, and bookings.                                  |
| **Mongoose**   | An ODM (Object Data Modeling) tool for MongoDB that helps define schemas and interact with the database. |
| **PostgreSQL** | A relational SQL database alternative to MongoDB, great for structured data.                             |
| **Prisma**     | An ORM for SQL databases like PostgreSQL, simplifying database queries and modeling.                     |

**Authentication & Security**
| Technology                | Purpose                                                                                                 |
| ------------------------- | ------------------------------------------------------------------------------------------------------- |
| **NextAuth.js**           | Provides authentication for Next.js apps with support for credentials and OAuth (Google, GitHub, etc.). |
| **JWT (JSON Web Tokens)** | A token-based method for securely transmitting authentication info between frontend and backend.        |

**Cloud Storage & Hosting**
| Technology                            | Purpose                                                                             |
| ------------------------------------- | ----------------------------------------------------------------------------------- |
| **Cloudinary** / **Firebase Storage** | Handles image uploads and media hosting (property images, user avatars, etc.).      |
| **Vercel** / **Netlify**              | Deploys and hosts the frontend (especially Next.js apps) with CI/CD and global CDN. |
| **Render** / **Railway** / **Heroku** | Hosts backend servers and databases with easy deployment and scaling options.       |

**Testing & DevOps**
| Technology                            | Purpose                                                                 |
| ------------------------------------- | ----------------------------------------------------------------------- |
| **Jest / Cypress**                    | For writing unit and end-to-end tests. Ensures the app works correctly. |
| **Git / GitHub**                      | Version control and collaboration across the development team.          |
| **Docker**                            | Containerizes the application for consistency across environments.      |
| **CI/CD (GitHub Actions, Vercel CI)** | Automates testing and deployment on each code change.                   |

## Database Design
**Key Entities for Airbnb Clone**
| Entity                 | Description                                                                                                        |
| ---------------------- | ------------------------------------------------------------------------------------------------------------------ |
| **User**               | Represents both guests and hosts. Stores profile info, login credentials, and role (guest/host/admin).             |
| **Property (Listing)** | Represents a rental unit. Includes title, description, price, location, images, availability, and host reference.  |
| **Booking**            | Represents a reservation. Tracks which user booked which property, for what dates, and booking status.             |
| **Review**             | Stores feedback from users about properties. Includes rating, comment, and reference to user and property.         |
| **Payment**            | Records transaction details. Includes amount, status (paid/refunded), payment method, user, and booking reference. |


**User**
**Key Fields:**
* `id`: Unique user identifier
* `name`: Full name
* `email`: For login and notifications
* `password`: Encrypted password (or OAuth provider ID)
* `role`: e.g., "guest", "host", "admin"

**Relationships:**
* A **user can list multiple properties** (if host)
* A **user can make multiple bookings** (if guest)
* A **user can leave multiple reviews**
* A **user is associated with multiple payments**

**Property (Listing)**
**Key Fields:**
* `id`: Unique property ID
* `title`: Name of the property/listing
* `description`: Detailed info about the place
* `pricePerNight`: Nightly rate
* `location`: Address or geo-coordinates
* `hostId`: Reference to the User (host)

**Relationships:**
* A **property belongs to one host** (User)
* A **property can have many bookings**
* A **property can have many reviews**
* A **property has many images** (optional)

**Booking**
**Key Fields:**
* `id`: Unique booking ID
* `userId`: Who made the booking (guest)
* `propertyId`: Which property was booked
* `startDate`: Check-in date
* `endDate`: Check-out date
* `status`: e.g., "confirmed", "cancelled"

**Relationships:**
* A **booking belongs to one user (guest)**
* A **booking belongs to one property**
* A **booking has one related payment**

**Review**
**Key Fields:**
* `id`: Unique review ID
* `userId`: Who wrote the review
* `propertyId`: Which property it's for
* `rating`: Numerical score (1–5)
* `comment`: Text feedback

**Relationships:**
**review belongs to one user**
**review belongs to one property**

**Payment**
**Key Fields:**
* `id`: Unique payment ID
* `userId`: Who made the payment
* `bookingId`: Which booking it corresponds to
* `amount`: Total paid
* `status`: e.g., "paid", "pending", "refunded"

**Relationships:**
**payment belongs to one booking**
**payment is made by one user**

 **Example Relationships Summary (ERD-style)**
 **User ⟶ Properties**: One-to-many
**User ⟶ Bookings**: One-to-many
**User ⟶ Reviews**: One-to-many
 **User ⟶ Payments**: One-to-many
**Property ⟶ Bookings**: One-to-many
**Property ⟶ Reviews**: One-to-many
**Booking ⟶ Payment**: One-to-one
**Booking ⟶ Property/User**: Many-to-one
**Review ⟶ Property/User**: Many-to-one

## Main Features
**👤 User Management**
* User registration and login with secure authentication
* Profile creation and editing
* Role-based access: Guest, Host, Admin
* OAuth login support (optional)

**🏠 Property Management**
* Hosts can create, update, and delete property listings
* Upload property images and details (title, price, location, etc.)
* Set availability and nightly rates
* Manage owned listings from dashboard

**📅 Booking System**
* Book available properties for specific dates
* View and manage upcoming/past bookings
* Prevent double-bookings
* Booking status updates (confirmed, cancelled, etc.)

**💳 Payment Integration (Advanced)**
* Secure payments via Stripe or another gateway
* Store and display payment history
* Handle refunds and cancellations

**⭐ Reviews & Ratings**
* Guests can leave reviews and ratings after stays
* View reviews on listing pages
* Optional host responses to reviews

**🔍 Search & Filter**
* Search listings by location, date, price, and more
* Apply filters like guest count, amenities, etc.
* Map-based property search (Google Maps or Mapbox)

**📱 Responsive Design**
* Mobile-first, responsive layout
* Fully functional on all screen sizes and devices

**⚙️ Admin Dashboard (Optional)**
* Manage users, listings, bookings, and reviews
* Content moderation tools
* View platform usage analytics and reports

