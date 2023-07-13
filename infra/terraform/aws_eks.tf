provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.eks.cluster_id
}

resource "kubernetes_namespace" "pairfair" {
  metadata {
    name = "pairfair"
  }
}

resource "kubernetes_deployment" "pairfair" {
  metadata {
    name      = "pairfair"
    namespace = kubernetes_namespace.pairfair.metadata[0].name
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        App = "pairfair"
      }
    }

    template {
      metadata {
        labels = {
          App = "pairfair"
        }
      }

      spec {
        container {
          image = "peteralcock/pairfair:latest"
          name  = "pairfair"
        }
      }
    }
  }
}

