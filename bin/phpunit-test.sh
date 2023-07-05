#!/bin/bash
bash ./bin/install-wp-tests.sh wordpress_test root root 127.0.0.1 latest
echo "Running PHPUnit on Single Site"
composer phpunit
rm -rf $WP_TESTS_DIR $WP_CORE_DIR
bash ./bin/install-wp-tests.sh wordpress_test root root 127.0.0.1 latest true
echo "Running PHPUnit on Multisite"
WP_MULTISITE=1 composer phpunit
