<?php
namespace App\Http\Middleware;
use Closure;
use Lang;
use Session;
use App;
use Config;

class Locale
{
    public function handle($request, Closure $next)
    {
		if(!Session::has('locale')) {
		  	Session::put('locale', config('app.locale'));
		}
		Lang::setLocale(Session::get('locale'));

      	// if (Session::has('locale')) {
       //      $locale = Session::get('locale', Config::get('app.locale'));
       //  } else {
       //      $locale = substr($request->server('HTTP_ACCEPT_LANGUAGE'), 0, 2);

       //      if ($locale != 'vi' && $locale != 'en') {
       //          $locale = 'vi';
       //      }
       //  }
       //  App::setLocale($locale);
        return $next($request);
    }
}