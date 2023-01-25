variable "enabled" {
  type        = bool
  default     = true
  description = "Variable indicating whether deployment is enabled"
}

variable "helm_create_namespace" {
  type        = bool
  default     = true
  description = "Create the namespace if it does not yet exist"
}

variable "helm_chart_name" {
  type        = string
  default     = "kube-state-metrics"
  description = "Helm chart name to be installed"
}

variable "helm_chart_version" {
  type        = string
  default     = "4.29.0"
  description = "Version of the Helm chart"
}

variable "helm_release_name" {
  type        = string
  default     = "kube-state-metrics"
  description = "Helm release name"
}

variable "helm_repo_url" {
  type        = string
  default     = "https://prometheus-community.github.io/helm-charts"
  description = "Helm repository"
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "The K8s namespace in which the kube-state-metrics service account has been created"
}

variable "settings" {
  type        = map(any)
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values, see https://hub.helm.sh/charts/stable/kube-state-metrics"
}

variable "values" {
  type        = string
  default     = ""
  description = "Additional yaml encoded values which will be passed to the Helm chart."
}
