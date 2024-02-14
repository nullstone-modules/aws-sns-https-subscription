variable "app_metadata" {
  description = <<EOF
Nullstone automatically injects metadata from the app module into this module through this variable.
This variable is a reserved variable for capabilities.
EOF

  type    = map(string)
  default = {}
}

variable url {
  type        = string
  description = <<EOF
The URL to be subscribed to the connected SNS topic.
The environment variable `NULLSTONE_ENV` can be used to create a dynamic URL.
e.g. `https://api.{{ NULLSTONE_ENV }}.acme.com` will be resolved to `https://api.prod.acme.com` if `NULLSTONE_ENV=prod`.
EOF
}
