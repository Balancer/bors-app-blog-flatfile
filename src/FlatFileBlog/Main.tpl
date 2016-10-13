{*
	Template based on https://github.com/BlackrockDigital/startbootstrap-blog-home
*}

<div class="row">

	<!-- Blog Entries Column -->
	<div class="col-md-8">

{*
		<h1 class="page-header">
			Page Heading
			<small>Secondary Text</small>
		</h1>
*}

{foreach $this->items() as $item}
		<h2>{$item->titled_link()}</h2>

		<p class="lead">by <a href="#">{$item->get('Author')}</a></p>
		<p><span class="glyphicon glyphicon-time"></span> Posted on {$item->ctime()}</p>
		<hr/>
{*
		<img class="img-responsive" src="http://placehold.it/900x300" alt="">
		<hr>
*}

		<p>{$item->body()}</p>
{*
		<a class="btn btn-primary" href="{$item->url()}">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>
*}
		<hr/>
{/foreach}

{*
		<!-- Pager -->
		<ul class="pager">
			<li class="previous">
				<a href="#">&larr; Older</a>
			</li>
			<li class="next">
				<a href="#">Newer &rarr;</a>
			</li>
		</ul>
*}

	</div>

	<!-- Blog Sidebar Widgets Column -->
	<div class="col-md-4">

		<!-- Blog Search Well -->
		<div class="well">
			<h4>Blog Search</h4>
			<div class="input-group">
				<input type="text" class="form-control">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">
						<span class="glyphicon glyphicon-search"></span>
				</button>
				</span>
			</div>
			<!-- /.input-group -->
		</div>

		<!-- Blog Categories Well -->
		<div class="well">
			<h4>Blog Categories</h4>
			<div class="row">
				<div class="col-lg-6">
					<ul class="list-unstyled">
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
					</ul>
				</div>
				<!-- /.col-lg-6 -->
				<div class="col-lg-6">
					<ul class="list-unstyled">
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
						<li><a href="#">Category Name</a>
						</li>
					</ul>
				</div>
				<!-- /.col-lg-6 -->
			</div>
			<!-- /.row -->
		</div>

		<!-- Side Widget Well -->
		<div class="well">
			<h4>ToDo</h4>
			<p>
				<ul>
					<li>Обработка изображений</li>
					<li>Длинные записи под кат</li>
					<li>Интеграция с Infonesy</li>
					<li>НавМеню шаблона Bootstrap3</i>
					<li>Категории = теги</li>
					<li>Автономное разворачивание приложение в подкаталог (добавить index.php и статические пути относительно подкаталога в этом случае)</li>
					<li>Заголовок блога брать из main.md в blog</li>
					<li>Поиск</li>
				</ul>
			</p>
		</div>

	</div>

</div>
<!-- /.row -->
