locals {
  resource_name_mysql = "${var.project_name}-${var.environment}-mysql"
  resource_name_backend = "${var.project_name}-${var.environment}-backend"
  resource_name_frontend = "${var.project_name}-${var.environment}-frontend"
  resource_name_ansible =  "${var.project_name}-${var.environment}-ansible"

  mysql_sg_id  = data.aws_ssm_parameter.mysql_sg_id.value
  backend_sg_id  = data.aws_ssm_parameter.backend_sg_id.value
  frontend_sg_id  = data.aws_ssm_parameter.frontend_sg_id.value
  ansible_sg_id  = data.aws_ssm_parameter.ansible_sg_id.value

  public_subnet_id = split(",", data.aws_ssm_parameter.public_subnet_ids.value)[0]
  private_subnet_id = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]
  database_subnet_id = split(",", data.aws_ssm_parameter.database_subnet_ids.value)[0]

}
