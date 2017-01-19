<?php

namespace B2;

class FlatFileBlog extends App
{
	function route_map()
	{
		return [
			'/?'  => FlatFileBlog\Main::class,
		];
	}

	function fast_routes($r)
	{
		$r->addRoute('GET', $this->base_url().'/{id:[\w\-]+}/?', FlatFileBlog\View::class);
	}
}
