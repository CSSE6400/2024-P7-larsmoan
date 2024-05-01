terraform { 
 required_providers { 
   aws = { 
    source = "hashicorp/aws" 
    version = "~> 3.0" 
   } 
 } 
} 
 
provider "aws" {
    region = "us-east-1"
    shared_credentials_file = "./credentials"
    default_tags {
        tags = {
            Course       = "CSSE6400"
            Name         = "P8a - larsern"
        }
    }
}
 

resource "aws_sqs_queue" "ical_queue" { 
   name = "ical" 
}
 