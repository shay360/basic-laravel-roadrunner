<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

This is a Laravel 12 application configured with Laravel Octane and RoadRunner for high-performance request handling.

## Laravel Octane with RoadRunner

This project is configured to use Laravel Octane with RoadRunner as the application server. RoadRunner provides significant performance improvements over traditional PHP-FPM by keeping the application in memory.

### Prerequisites

- PHP 8.2 or higher
- Composer
- RoadRunner binary (included via composer dependencies)

### Installation

1. Clone the repository
2. Install dependencies:

```bash
composer install
```

**Note:** If the automatic RoadRunner binary download fails due to GitHub API rate limits, you can manually download it using:

```bash
./download-rr.sh
```

3. Copy the environment file:

```bash
cp .env.example .env
```

4. Generate application key:

```bash
php artisan key:generate
```

5. Create and configure your database (if using SQLite, it's already configured):

```bash
touch database/database.sqlite
php artisan migrate
```

### Running the Application

#### With Octane (Recommended)

Start the Octane server with RoadRunner:

```bash
php artisan octane:start
```

The application will be available at `http://localhost:8000`

#### With Hot Reloading (Development)

For development with automatic reloading on file changes:

```bash
php artisan octane:start --watch
```

#### Production

For production, you can specify the number of workers and other options:

```bash
php artisan octane:start --server=roadrunner --host=0.0.0.0 --port=8000 --workers=4
```

#### Traditional PHP Server (Alternative)

If you prefer the traditional approach:

```bash
php artisan serve
```

### Octane Commands

- `php artisan octane:start` - Start the Octane server
- `php artisan octane:stop` - Stop the Octane server
- `php artisan octane:reload` - Reload the Octane workers
- `php artisan octane:status` - Check the Octane server status

### Configuration

The Octane configuration can be found in `config/octane.php`. The RoadRunner configuration is in `.rr.yaml`.

You can customize these settings based on your needs:
- Number of workers
- Memory limits
- File watching patterns
- Maximum execution time

### Performance Benefits

Using Octane with RoadRunner provides:
- **Faster response times**: Application stays in memory between requests
- **Lower resource usage**: Reduced overhead from PHP process startup
- **Better throughput**: Handle more concurrent requests
- **Improved scalability**: Better performance under load

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains thousands of video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the [Laravel Partners program](https://partners.laravel.com).

### Premium Partners

- **[Vehikl](https://vehikl.com)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel)**
- **[DevSquad](https://devsquad.com/hire-laravel-developers)**
- **[Redberry](https://redberry.international/laravel-development)**
- **[Active Logic](https://activelogic.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
