# Loop Commerce Back

A simple e-commerce backend API built with Ruby on Rails.

## Requirements

- Ruby 3.4.4
- Rails 8.x
- PostgreSQL

## Setup

1. **Clone the repository:**
   ```sh
   git clone <your-repo-url>
   cd loop_commerce_back
   ```

2. **Install dependencies:**
   ```sh
   bundle install
   ```

3. **Database setup:**
   ```sh
   rails db:create db:migrate db:seed
   ```

4. **Run the test suite:**
   ```sh
   bundle exec rspec
   ```

5. **Start the server:**
   ```sh
   rails server
   ```

## API Overview

### Authentication

- Users authenticate via email and password.
- Auth token is returned on sign in and required for protected endpoints.

### Endpoints

#### Users

- `POST /api/users` — Register a new user
- `POST /api/users/sign_in` — Sign in
- `DELETE /api/users/sign_out` — Sign out (requires Authorization header)
- `GET /api/users` — Show user info (requires Authorization header)

#### Products

- `GET /api/products` — List products (supports `search`, `category`, `order`, `page` params)
- Returns all categories and total count in the response meta.

#### Orders

- `POST /api/orders` — Create an order (requires Authorization header)
- `GET /api/orders` — List orders for current user (requires Authorization header)

## Environment Variables

- Configure your database and secret keys as needed in `.env` or Rails credentials.

## Testing

- RSpec is used for model and request specs.
- Run all tests with `bundle exec rspec`.

## Deployment

- Standard Rails deployment (Heroku, Render, etc.)
- Ensure environment variables and database are configured.

---

**Note:**
This project is for demonstration purposes. Please review and update security, authentication, and error handling for production use.
