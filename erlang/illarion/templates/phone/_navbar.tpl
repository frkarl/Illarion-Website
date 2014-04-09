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
{# navbar for phone+ #}
<nav class="navbar navbar-fixed-top">
  
      <div class="navbar-inner">
        <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <center>Free open-source role-playing enforced MMORPG</center>
        <a class="brand" href="/"><img src="lib/images/illa_logo.png" class="logo" alt="">
            
        </a>
        
        <div class="nav-collapse">
            <form class="navbar-search pull-right" method="get" action="{% url search %}">
              <input type="text" class="search-query" placeholder="Search" name="qs"/>
            </form>
			<div class="pull-right">
                {% include "_navbar_right.tpl"%}
            </div>        
			{% menu menu_id=menu_id id=id maxdepth=2 %}
        </div>
    </div>

</nav>