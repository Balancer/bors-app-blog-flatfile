<?php

namespace B2\FlatFileBlog;

class Item extends \bors_page_fs_markdown
{
	function _data_dir_def() { return COMPOSER_ROOT.'/vendor/bors/app-data/data/blog'; }

	function dir()
	{
		return $this->data_dir();
	}

	function _basename()
	{
		return $this->id();
	}

	function url_ex($page)
	{
//		dump($this->b2_app()->base_url(), $this->b2_app());
		//FIXME: Hardcode
		$base = '/blog';
		$record_name = preg_replace('/\.\w+$/', '', basename($this->id()));
		return "$base/$record_name/";
	}
}
