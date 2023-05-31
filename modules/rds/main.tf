#Criando RDS

resource "aws_db_parameter_group" "rds_db_parameter_group" {
  name   = "rds-parameter-group"
  family = "postgres14"

  parameter {
    name         = "max_prepared_transactions"
    value        = "64"
    apply_method = "pending-reboot"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_db_instance" "rds_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "postgres"
  engine_version         = "14.5"
  instance_class         = "db.t3.micro"
  db_name                = var.db_name
  username               = var.username
  password               = var.password
  vpc_security_group_ids = [aws_security_group.sg-db.id]
  db_subnet_group_name   = aws_db_subnet_group.subnetGroups.name
  availability_zone      = var.avaiable_zone
  skip_final_snapshot    = true
  identifier             = var.db_identifier
  parameter_group_name   = aws_db_parameter_group.rds_db_parameter_group.name
  apply_immediately      = true
  tags = {
    Project   = var.project
    AutoStart = "Yes"
    AutoStop  = "Yes"
  }
}

resource "aws_db_subnet_group" "subnetGroups" {
  name       = "subnetgroups"
  subnet_ids = var.private-subnet-ids


  tags = {
    Name    = "Subnet Groups"
    Project = var.project
  }
}

resource "aws_security_group" "sg-db" {
  name        = "${var.project}-sg-db"
  description = "Habilita acesso ao Banco para os servicos autorizados"
  vpc_id      = var.vpc-id

  ingress {
    description     = "Libera porta para Securitygroup do bastion host"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [var.sg-bastion-host-id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "${var.project}-sg-db"
    Project = var.project
  }
}