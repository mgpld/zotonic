{% if m.config.site.title.value %}
	<meta property="og:site_name" content="{{ m.config.site.title.value }}"/>
{% endif %}
{% if id %}
	<meta property="og:title" content="{{ id.title }} - {{ id.category_id.title }}"/>
	<meta property="og:description" content="{{ id|summary:160 }}"/>
	<meta property="og:url" content="http://{{ m.site.hostname }}{{ id.page_url }}"/>
        <meta property="fb:app_id" content="{{ m.config.mod_facebook.appid.value }}"/>
	{% if id.depiction %}
	<meta property="og:image" content="http://{{ m.site.hostname }}{% image_url id.depiction mediaclass="facebook-og" %}"/>
        <meta property="og:image:width" content="200"/>
        <meta property="og:image:height" content="200"/>
	{% endif %}
{% endif %}
