# Rails Yelp MVP

A simplified Yelp-style application built with Ruby on Rails. Users can browse restaurants, view details, read reviews, and add their own reviews.

## 🚀 Features

* List of restaurants
* Detailed restaurant pages
* Add reviews with comments and ratings
* Average rating calculation
* Responsive design with custom CSS
* Bootstrap integration
* Refactored forms into partials

## 🛠️ Tech Stack

* **Ruby on Rails 7**
* **PostgreSQL** (default Rails database is fine too)
* **Bootstrap 5** (CDN)
* **ERB** templates
* **CSS** (no SCSS)

## 🧮 Database Models

### Restaurant

* name (string)
* address (string)
* category (string)
* accepts_reservations (boolean)
* has_many :reviews

### Review

* rating (float)
* content (text)
* belongs_to :restaurant

## ▶️ Running the Project

1. Install dependencies:

   ```bash
   bundle install
   ```

2. Create and migrate the database:

   ```bash
   rails db:create db:migrate
   ```

3. Seed data (optional):

   ```bash
   rails db:seed
   ```

4. Start the server:

   ```bash
   rails s
   ```

5. Open in your browser:

   ```
   http://localhost:3000
   ```

## 🤝 Contributing

Feel free to fork and improve! Pull requests welcome.

## 📄 License

This project is for educational purposes (Le Wagon exercise).
