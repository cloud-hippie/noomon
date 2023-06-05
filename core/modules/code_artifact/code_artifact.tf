
resource "aws_kms_key" "codeartifact_key" {
  description = "noomon-code-artifact-key"
}

resource "aws_codeartifact_domain" "noomon_codeartifact_domain" {
  domain         = "example"
  encryption_key = aws_kms_key.codeartifact_key.arn
}

resource "aws_codeartifact_repository" "test" {
  repository = "noomon-gradle"
  domain     = aws_codeartifact_domain.noomon_codeartifact_domain.domain

  external_connections {
    external_connection_name = "public:gradle"
  }
}

resource "aws_codeartifact_repository" "test" {
  repository = "noomon-maven"
  domain     = aws_codeartifact_domain.noomon_codeartifact_domain.domain

  external_connections {
    external_connection_name = "public:maven"
  }
}

resource "aws_codeartifact_repository" "test" {
  repository = "noomon-npm"
  domain     = aws_codeartifact_domain.noomon_codeartifact_domain.domain

  external_connections {
    external_connection_name = "public:npm"
  }
}

resource "aws_iam_policy" "codeartifact_policy" {
  name        = "noomon-codeartifact-policy"
  description = "Allows READ access to CodeArtifact"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "codeartifact:Get*",
          "codeartifact:Describe*",
          "codeartifact:List*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
