{{- define "tic-tac-toe.fullname" -}}
{{ .Release.Name }}-{{ .Chart.Name }}
{{- end }}

{{- define "tic-tac-toe.name" -}}
{{ .Chart.Name }}
{{- end }}

{{- define "tic-tac-toe.labels" }}
app.kubernetes.io/name: {{ include "tic-tac-toe.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{- define "tic-tac-toe.selectorLabels" }}
app.kubernetes.io/name: {{ include "tic-tac-toe.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

