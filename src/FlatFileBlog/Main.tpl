<ul>
{foreach $this->items() as $item}
	<li>{$item->titled_link()}</li>
{/foreach}
</ul>
