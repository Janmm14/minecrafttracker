{{ template "layout.tpl" . }}

{{ define "content" }}
<div id="inner-content" class="col-xs-4 col-sm-4">
    <div class="box">
        <div class="box-content">
            <form action="/profile/login/" method="POST" enctype="application/x-www-form-urlencoded">
                <div class="text-center">
                    <h3 class="page-header">MineTracker Login Page</h3>
                </div>
                <div class="form-group{{ if isset .errors "email" }} has-error{{ end }}">
                    <label class="control-label">E-mail</label>
                    <input type="text" class="form-control" name="email" value="{{ .lastEmail }}">
                    {{ if isset .errors "email" }}<p class="txt-danger">{{ .errors.email }}</p>{{ end }}
                </div>
                <div class="form-group{{ if isset .errors "password" }} has-error{{ end }}">
                    <label class="control-label">Password</label>
                    <input type="password" class="form-control" name="password">
                    {{ if isset .errors "password" }}<p class="txt-danger">{{ .errors.password }}</p>{{ end }}
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
            </form>
        </div>
    </div>
</div>
{{ end }}

{{ define "js" }}

{{ end }}

{{ define "css" }}

{{ end }}