---
layout: contributors
title: Contributors
permalink: /contributors/index.html
---
<table>
<tbody>
  {% for contributor in site.contributors %}
    <tr>
      <td>
        <img src="/images/{{ contributor.image }}" style="height:15em;width:10em;"/>
      </td>
      <td>
          <div class="contributor-pane">
          <h3>{{ contributor.name }}</h3>
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
          <a href="{{ contributor.url | relative_url }}">
            Contributions by {{ contributor.shortname}}
          </a>
          </div>
      </td>
    </tr>
  {% endfor %}
</tbody>
</table>
