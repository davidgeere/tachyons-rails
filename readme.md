# Tachyons::Rails

Tachyons::Rails is a gem that makes it super easy to use Tachyons in your upcoming Rails project.

## Why Create The Gem

Sass is my favorite way to utilize css, it gives me way more options. Tachyons has a Sass version it's not ideal. What Tachyons brings is clear pieces to put together a great page. However I feel that the pages become bloated visually. Creating mixins I allowed myself to create components leveraging the Tachyons principles. For example in my project I might have a Circle Border avatar. In Tachyons it would like like this in HTML.

```
<div class="pa4 tc">
  <img
      src="http://tachyons.io/img/logo.jpg"
      class="br-100 ba h3 w3 dib" alt="avatar">
</div>
```

However a prefer cleaner code I want this:

```
<div class="avatar circle-border">
  <img src="http://tachyons.io/img/logo.jpg" alt="avatar">
</div>
```

To achieve this you would create a component using the mixins like this:

avatars.scss
```
.avatar
{
	@include padding-base(a, get-map($spacing-literals, 4));
	@include text-align-base(get-map($text-alignments, c));

	&.circle-border
	{
		@include border-radius-base(get-map($border-radius-sizes, -100));
		@include border-base();
		@include height-base(get-map($height-scales, 3));
		@include width-base(get-map($width-scales, 3));
		@include display-base(get-map($display-designations, ib));
	}
}
```

The example above needs a lot of work, for example we should need to use get-map, but rather just pass the key in.

## Getting started

Docs can be found at http://tachyons.io/docs
The modules are generally pretty small and thus quick and easy to read.

## Docs
The tachyons docs located at http://tachyons.io are all open source and located at https://github.com/tachyons-css/tachyons-css.github.io

You can clone the docs and use them as a template for documenting your own design system / patterns / components.
While not everything is automated, the component library generation makes it extremely easy to
generate and organize the documentation for components as demonstrated at http://tachyons.io/components


## Contributing

I would love help with this library, I just put it together quick so I can work on components.

## Help

If you have a question or need help feel free to open an issue here or jump into the [Tachyons slack channel](http://tachyons-slack-invite.herokuapp.com) or email me here mitch@mitchellgeere.com.

## License

MIT
