<?php

namespace B2;

class FlatFileBlog extends App
{
	function route_map()
	{
		return [
			'/' => FlatFileBlog\Main::class,
		];
	}
}
