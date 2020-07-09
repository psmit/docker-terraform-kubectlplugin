FROM hashicorp/terraform:light

RUN apk add --no-cache jq

RUN mkdir -p ~/.terraform.d/plugins && wget https://github.com/gavinbunney/terraform-provider-kubectl/releases/download/v1.5.0/terraform-provider-kubectl-linux-amd64 -O ~/.terraform.d/plugins/terraform-provider-kubectl && chmod +x ~/.terraform.d/plugins/terraform-provider-kubectl
