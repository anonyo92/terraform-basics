resource "aws_instance" "build-server" {
  ami = "ami-0e34e7b9ca0ace12d"
  instance_type = var.build-server-instance-types[2]
  tags = {"Name": "build-server"}
}

variable "build-server-instance-types" {
  type = list
  default = ["t2.micro", "t2.nano", "t2.medium"]
}

resource "aws_instance" "spark-node" {
  ami = "ami-0e34e7b9ca0ace12d"
  instance_type = var.spark-node-instance-types["beta"]
  tags = {"Name": "spark-node"}
}

variable "spark-node-instance-types" {
  type = map
  default = {
    "poc" : "r5.large"
    "beta": "r5.xlarge"
    "prod": "r5.4xlarge"
  }
}