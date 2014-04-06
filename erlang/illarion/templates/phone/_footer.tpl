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

{# phone+ footer template #}
<div class="row-fluid footer">
    <hr/>
    {% with m.rsc.menu_footer.menu as menu %}
    {% if menu %}
        <ul class="nav nav-footer">
        {% for pid,_m in menu %}
            <li><a {% if id == pid %}class="current"{% endif %} href="{{ pid.page_url }}">{{ pid.short_title|default:(pid.title) }}</a> <span class="divider">/</li>
        {% endfor %}
        </ul>
    {% endif %}
    {% endwith %}
    <span class="pull-right copyright">{% block copyright %}{% include "_copyright.tpl" %}{% endblock %}</span>
    
</div>

