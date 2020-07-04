resource "aws_api_gateway_domain_name" "domain" {
  domain_name = var.domain_name
  certificate_arn = var.certificate_arn
  security_policy = "TLS_1_2"
}
resource "aws_route53_record" "a-record" {
  zone_id = var.zone_id
  name = var.domain_name
  type = "A"
  alias {
    evaluate_target_health = true
    name = aws_api_gateway_domain_name.domain.cloudfront_domain_name
    zone_id = aws_api_gateway_domain_name.domain.cloudfront_zone_id
  }
}
resource "aws_api_gateway_base_path_mapping" "base_path_mapping" {
  api_id = var.api_gateway_rest_api_id
  stage_name = var.api_gateway_stage
  domain_name = var.domain_name
}