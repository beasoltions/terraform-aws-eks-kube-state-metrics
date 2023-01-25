# Kube State Metrics Terraform module

Made by <img src="logo.png" width="60" margin alt="Miso"> with ❤️

## Description

A terraform module to deploy the Kube State Metrics Terraform on Amazon EKS cluster.

### Installing

You can install this module as follows:

```tf
module "kube_state_metrics" {
  source = "git::https://github.com/getmiso/terraform-aws-eks-kube-state-metrics.git"
  
  enabled           = true
  helm_release_name = "kube-state-metrics"
  namespace         = "kube-state-metrics"
}
```

### Usage
You can refer to [this documentation](https://github.com/kubernetes/kube-state-metrics) to learn more about kube-state-metrics