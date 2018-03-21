---
layout: contributors
title: Contributors
permalink: /contributors/index.html
---
{% comment %}
Saving this bit that I wrote before discovering Liquid does this for you.
<table>
<tbody>
  <tr>
    {% for contributor in site.data.contributors %}
    {% assign end_of_row = forloop.index0 | modulo: 3 %}
    {% if end_of_row == 0 %}
    </tr><tr>
    {% endif %}
    <td>
        <div class="contributor-pane">
        {{ contributor.name }}
        <img src="/images/{{ contributor.image }}"/>
        </div>
    </td>
    {% endfor %}
  </tr>
</tbody>
</table>

{% endcomment %}

<table>
<tbody>
  {% tablerow contributor in site.contributors cols: 3 %}
    <div class="contributor-pane">
    <h4>{{ contributor.name }}</h4>
    <img src="/images/{{ contributor.image }}" style="width:100%:"/>
    <br>
    {% if contributor.twitter %}
        Twitter:
        <a href="http://twitter.com/{{ contributor.twitter }}">
            @{{ contributor.twitter }}
        </a>
        <br>
    {% endif %}
    {% if contributor.website %}
        Website: 
        <a href="{{ contributor.website }}">
           {{ contributor.website }}
        </a>
        <br>
    {% endif %}
    <br>
    <a href="{{ contributor.url | relative_url }}">
      Contributions by {{ contributor.shortname}}
    </a>
    </div>
  {% endtablerow %}
</tbody>
</table>

