{{/* charts/myapp/templates/_helpers.tpl */}}
{{- define "myapp.name" -}}
{{- default .Chart.Name .Values.nameOverride -}}
{{- end -}}

{{- define "myapp.fullname" -}}
{{- $name := include "myapp.name" . -}}
{{- if .Values.fullnameOverride -}}
{{- printf "%s" .Values.fullnameOverride -}}
{{- else -}}
{{- printf "%s-%s" $name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}

{{- define "myapp.selectorLabels" -}}
app.kubernetes.io/name: {{ include "myapp.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
