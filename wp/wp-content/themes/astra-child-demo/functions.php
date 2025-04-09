<?php
add_action('wp_enqueue_scripts', function() {
    wp_enqueue_style('astra-child-demo-style', get_stylesheet_uri(), ['astra-theme-css'], '1.0.0');
});
