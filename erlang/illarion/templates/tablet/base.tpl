<!DOCTYPE html>
<!--
%% This file is part of the Illarion project.
%%
%% Copyright © 2014 - Illarion e.V.
%%
%% Illarion is free software: you can redistribute it and/or modify
%% it under the terms of the GNU Affero General Public License as published by
%% the Free Software Foundation, either version 3 of the License, or
%% (at your option) any later version.
%%
%% Illarion is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%% GNU General Public License for more details. 
-->
<html lang="{{ z_language|default:"en"|escape }}">
<head>
	<meta charset="utf-8" />
	<title>{{ m.config.site.title.value }}</title>

	<link rel="icon" href="/lib/images/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/lib/images/favicon.ico" type="image/x-icon" />

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="author" content="Illarion e.V." />

	{% all include "_html_head.tpl" %}
	{% lib 
	        "bootstrap/css/bootstrap.css"
	        "bootstrap/css/bootstrap-responsive.css" 
	        "bootstrap/css/bootstrap-base-site.css" 
	        "css/jquery.loadmask.css" 
	        "css/z.growl.css" 
	        "css/z.modal.css"
            "css/zp-slideshow.css"
	        "css/site.css" 
	%}
	{% block html_head_extra %}{% endblock %}
</head>

<body class="{% block page_class %}{% endblock %}">
{% block navbar %}
	{% include "_navbar.tpl" %}
{% endblock %}
<div class="container-fluid">
	{% block content_area %}
		<div class="content" {% include "_language_attrs.tpl" language=z_language %}>
		{% block content %}
			{% block above %}
			<div class="page-title row-fluid">
				<div class="{% if z_language|is_rtl %}span8{% endif %}">
					{% include "_breadcrumb.tpl" %}
					{% include "_title.tpl" %}
				</div>
			</div>
			{% endblock %}
			<div class="row-fluid">
				<div class="span8 main">
					{% block main %}{% endblock %}
				</div>

				<div id="subnavbar" class="span4">
					{% block subnavbar %}
                        {% include "_subnav.tpl" %}
					{% endblock %}
				</div>
			</div>
			{% block below %}{% endblock %}
		{% endblock %}
		</div>
	{% endblock %}
	{% include "_footer.tpl" %}
</div>


{% include "_js_include.tpl" %}
{% lib
    "js/modules/z.cycle.js"
%}
{% script %}

{% block ua_probe %}
	{% include "_ua_probe.tpl"%}
{% endblock %}
</body>
</html>
