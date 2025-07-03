provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "pabx_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "PABX-App-Server"
  }
}

resource "aws_instance" "recording_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "Recording-App-Server"
  }
}

resource "aws_instance" "pabx_db" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "PABX-DB-Server"
  }
}

resource "aws_instance" "recording_db" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    Name = "Recording-DB-Server"
  }
}
