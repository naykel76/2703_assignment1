# NAYKEL Default Laravel with JTB

Blank Laravel installation with:

-   NK_JTB
-   NK_icons
-   Parsedown
-   PagesController
-   BrowserSync
-   Default template with sections (`layouts.app`)

###### Views Structure and File

<!-- prettier-ignore -->
```
|-- view
    |--- components
    |--- layouts
        |-- app.blade.php
        |-- markdown.blade.php
    |--- pages
    |--- partials
        | footer.blade.php
        | head.blade.php
        | nav-navbar.blade.php
        | navbar.blade.php
|-- index.blade.php
```

### After cloning this repository, go to the root folder and run the following commands to install dependencies.

-   `composer install`
-   `composer update`
-   `npm install` (optional)
-   rename `.env.example` to `.env`
-   run `php artisan key:generate` **MUST** do after rename `.env`
-   Set app name `APP_NAME="My App"`
-   Set contact email `APP_EMAIL="email@email.com.au"`
