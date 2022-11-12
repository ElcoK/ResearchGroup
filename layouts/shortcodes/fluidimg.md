{{ range $param := .Params }}
  {{ $items := split $param "|" }}
  {{ $itemCount := len $items }}
  {{ if ge $itemCount 2}}
  	<a href="{{ index $items 1 }} ">
  		<img 
        src="{{ index $items 0 }}"
        style="display: initial;
        padding-right: 10px;
        margin-top: 5px">
  	</a>
  {{ else }}
  		<img 
        src="{{ index $items 0 }}"
        style="display: initial;
        padding-right: 10px;
        margin-top: 5px">
  {{ end }}

{{ end }}