<?php

defined('APP_PATH') || define('APP_PATH', realpath('.'));

return new \Phalcon\Config(array(
    'database' => array(
        'adapter'     => 'Mysql',
        'host'        => 'localhost',
        'username'    => 'root',
        'password'    => '',
        'dbname'      => 'ap',
        'charset'     => 'utf8',
    ),
    'application' => array(
        'controllersDir' => APP_PATH . '/app/controllers/',
        'modelsDir'      => APP_PATH . '/app/models/',
        'migrationsDir'  => APP_PATH . '/app/migrations/',
        'viewsDir'       => APP_PATH . '/app/views/',
        'pluginsDir'     => APP_PATH . '/app/plugins/',
        'libraryDir'     => APP_PATH . '/app/library/',
        'cacheDir'       => APP_PATH . '/app/cache/',
        'baseUri'        => '/ap/',
		'development'    => true,
    )
));
$di->setShared('view', function () {
    $config = $this->getConfig();

    $view = new View();
    $view->setDI($this);
    $view->setViewsDir($config->application->viewsDir);

    $view->registerEngines([
        '.volt' => function ($view) {
            $config = $this->getConfig();

            $volt = new VoltEngine($view, $this);

            if($config->settings->development === false) {
                $volt->setOptions([
                    'compiledPath' => $config->application->cacheDir,
                    'compiledSeparator' => '_',
                    'compileAlways' => true
                ]);
            }
            return $volt;
        },
        '.phtml' => PhpEngine::class // php >= 5.5 only
        //'.phtml' => 'Phalcon\Mvc\View\Engine\Php' // php <= php 5.4 work-around

    ]);

    return $view;
});
use Phalcon\Mvc\Url;

$url = new Url();

echo $url->getBaseUri();