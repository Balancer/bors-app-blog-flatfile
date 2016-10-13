<?php

namespace B2\FlatFileBlog;

class Main extends \B2\Page
{
	function _title_def() { return 'Блог'; }
	function _nav_name_def() { return bors_lower($this->title()); }

	function _data_dir_def() { return COMPOSER_ROOT.'/vendor/bors/app-data/data/blog'; }

	function items()
	{
		$files = glob($this->data_dir().'/*.md');
		rsort($files);
		$items = [];
		foreach($files as $file)
		{
			$items[] = \bors_page_fs_markdown::load($file);
			//TODO: time from git?
		}

		return $items;
	}
}
