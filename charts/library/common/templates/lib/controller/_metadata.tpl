{{- define "bjw-s.common.lib.controller.metadata.labels" -}}
  {{-
    $labels := (
      merge
        (.Values.controller.labels | default dict)
        (include "bjw-s.common.lib.metadata.allLabels" $ | fromYaml)
    )
  -}}
  {{- with $labels -}}
    {{- toYaml . | tpl $ -}}
  {{- end -}}
{{- end -}}

{{- define "bjw-s.common.lib.controller.metadata.annotations" -}}
  {{-
    $annotations := (
      merge
        (.Values.controller.annotations | default dict)
        (include "bjw-s.common.lib.metadata.globalAnnotations" $ | fromYaml)
    )
  -}}
  {{- with $annotations -}}
    {{- toYaml . | tpl $ -}}
  {{- end -}}
{{- end -}}
