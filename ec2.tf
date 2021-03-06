data "aws_subnet_ids" "My_subnets" {
  vpc_id = "${aws_vpc.default.id}"
}


resource "aws_instance" "servers" {
    #count = "${length(data.aws_subnet_ids.My_subnets.id)}"
    count = 1
    ami = "${lookup(var.amis, var.aws_region)}"
    #availability_zone = "${element(var.azs, count.index)}"
    instance_type = "${lookup(var.instance_type, var.environment)}"
    key_name = "${var.key_name}"
    subnet_id = "${element(tolist(data.aws_subnet_ids.My_subnets.ids), count.index+2)}"
    vpc_security_group_ids = ["${aws_security_group.allow_all.id}"]
    associate_public_ip_address = true
    user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update
                sudo apt-get install -y nginx unzip
                sudo service nginx start
                echo "<h1> Deployed via Terraform </h1>" | "sudo tee /usr/share/nginx/html"
    EOF
    tags = {
        Name = "Terraform-Server-${count.index+1}"
        Env = "test"
        Owner = "Surya"
    }

}
