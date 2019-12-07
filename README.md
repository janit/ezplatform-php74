# eZ Platform Symfony 4.4 and PHP 7.4 OPCache Preloading benchmark

A repository for an in-progress version of eZ Platform v3.0.0 used for benchmarking the Symfony 4.4 and PHP 7.4 OPCache Preloading feature. Do not use anywhere in production, this is purely for entertainment purposes!

## Installation

This is a standard Symfony 4 application. You need PHP and MySQL and some sort of web server before installation. Oh, and Node.js and Yarn for building front end assets. After you've got everything in place, installation is roughly:

- create a MySQL database
- Import dump from `/sql/dump.sql`
- run `composer install`

For more details, take a look a <a href="https://github.com/ezsystems/ezplatform#installation">the installation instructions</a> on the official <a href="https://github.com/ezsystems/ezplatform">eZ Platform repository</a>.

Note that currently OPCache Preloading for PHP 7.4 is not working due to some segfaulting. Read more: https://ezplatform.com/blog/benchmarking-php-7.4-opcache-preloading-with-symfony-4.4
