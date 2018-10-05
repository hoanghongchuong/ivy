<?php namespace App;

use Illuminate\Database\Eloquent\Model;

class Lang extends Model {

	protected $table='langs';

	protected $fillable = ['id','name','name_en','alias','stt','status','title_vi','title_en','keyword','description'];

	public $timestamps = true;

}
