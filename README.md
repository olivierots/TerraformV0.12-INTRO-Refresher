# terraform-0.12-refresher

=== what's terraform ? ===
```
Terraform is used for Infrastructure as a code to build, deploy & version an infrastructure 
accross many cloud providers such as such Azure, AWS & google cloud.
dev & ops teams automatically manage & provision the tech stack for an app through a code
rather than using a manual process to configure HW devices, apps & OS
```

=== Learning objectives for this repositery ===
```
Configuring EC2 instances
Creating custom IAM policies with JSON
Remote backends using S3 storage
Setting up security Groups
Creating custom terraform modules 
Working with Elastic IP’s (EIP)
Managing dependencies on resources
Understand the terraform documentation
```

===  few useful things about terraform ===
```
# terraform init ==> initialize the folder and pull down all plugins 
# terraform plan ==> checks the state file, compares what's already created & what needs to be
                     created and look for any difference.
# terraform apply ==> create your resource
# terraform destroy ==> delete your resources
# terraform apply -auto-approve ==> no need to approve before resource creation 
# what is a state file ==> most important file in terraform that keeps track of all the changes we make 
# modules ==> a folder with terraform code inside it. helps you to be more organised with each
              resource in different folders which can then be re-used easily
# dependencies ==> Terraform uses dependencies to determine the correct order in
                   which to create the different resourcess
# count ==> helps us create multiple resources e.g multple ec2 instances or s3 buckets
# terraform import ==> used to import existing aws resources into the terrafrom state file
                       e.g terraform import aws_vpc.existingvpc <vpc_id> 
# data source ==> terraform queries aws and return information via an api
                  e.g ami, AZ (it does not set up anything at all)               
```



