output "codeartifact_domain_arn" {
    value = aws_codeartifact_domain.noomon_codeartifact_domain.arn
    description = "The ARN of the CodeArtifact domain"
}

output "codeartifact_domain_name" {
    value = aws_codeartifact_domain.noomon_codeartifact_domain.domain
    description = "The name of the CodeArtifact domain"
}
