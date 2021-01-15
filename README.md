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
* Configuring EC2 instances
* Creating custom IAM policies with JSON
* Remote backends using S3 storage
* Setting up security Groups
* Creating custom terraform modules 
* Working with Elastic IP’s (EIP)
* Managing dependencies on resources
* Understand the terraform documentation
```

===  few useful things about terraform ===
```
* terraform init ==> initialize the folder and pull down all plugins 
* terraform plan ==> checks the state file, compares what's already created & what needs to be
                     created and look for any difference.
* terraform apply ==> create your resource
* terraform destroy ==> delete your resources
* terraform apply -auto-approve ==> no need to approve before resource creation 
* what is a state file ==> most important file in terraform that keeps track of all the changes we make 
* modules ==> a folder with terraform code inside it. helps you to be more organised with each
              resource in different folders which can then be re-used easily
* dependencies ==> Terraform uses dependencies to determine the correct order in
                   which to create the different resourcess
* count ==> helps us create multiple resources e.g multple ec2 instances or s3 buckets
* terraform import ==> used to import existing aws resources into the terrafrom state file
                       e.g terraform import aws_vpc.existingvpc <vpc_id> 
* data source ==> terraform queries aws and return information via an api
                  e.g ami, AZ (it does not set up anything at all)               
```

===  terraform notes & stuffs i've learnt throughout my terraform learning journey === 
```
1. steps to install terraform on Linux ==> link to the downloads for different Terraform Versions
   https://releases.hashicorp.com/terraform/ 
   sudo yum install unzip
   wget https://releases.hashicorp.com/terraform/0.12.27/terraform_0.12.27_linux_amd64.zip
   unzip terraform_0.12.27_linux_amd64.zip    
   sudo mv terraform /usr/local/bin/ ==> move the executable into a directory searched for executables
                                         so you can execute terraform anywhere on your machine 
      
2. what is terraform ?
   It's used for Infrastructure as code, its a multi-platform tool used to deploy an infrastructure accros many cloud
   providers such as aws, GCP & Azure. instead of going into the aws portal on aws and clicking different things to
   create a network we can simply write a code to manage, provision the tech stack for your application.
   Dev & Ops teams manage & provision the tech stack for an app through software, rather than using a manual process to
   configure HW devices & OS.
   
3. useful terraform commands  
   terraform --version ==> see currently installed terraform version
   terrafrom: start terraform & check whether its running
   terraform init: this initializes terraform in your current directory, download the plugins/modules & create a .terrafrom
                   directory. It’s the first command you need to execute
   terraform plan: This outputs the migration plan and is particularly useful for letting someone else validate the change
                   or to verify that there are no unwanted changes.
   terraform apply: Terraform applies a migration plan. (terraform apply --auto-approve can also be used to avoid be prompted
                    for a confirmation evrytime)
   terraform state list or show:  inspect Terraform state or plan
   terraform destroy: delete your infrastructure
   terraform validate: The validate command is used to validate/check the syntax of the Terraform files
   terraform workspace new <name>: create a new workspace
   terraform workspace select <name>: Select a Workspace
   terraform workspace list: list Workspaces
   terraform workspace show: show current Workspace
   terraform console: useful for testing interpolations before using them in configurations
   
4. other terraform important elements:
   state file: keep track of everything we've created & shouldnt be deleted when working on a project. There are two types
   of state files: remote or local.
   workspaces: To manage multiple distinct sets of infrastructure resources/environments. Instead of creating a directory
   for each environment to manage, we need to just create needed workspace.
   providers: this is where you configure your access keys for aws authentication 
   Variables: Variables can be defined by the Terraform files and provided when executing a command.They give more flexibility
              to our configurations and let us deploy the same elements in different zones or with different sizes depending on
              variable value.
  Resources:  Resources are elements you manage from Terraform, which can be an compute engine instance, a DNS record, a firewall
              rule, an external IP address for cloud providers, or even a table or a database.   
  outputs: we basically get the output of an attribute from our terraform infra that we've provisiooned
           say you're creating an s3 bucket or a vpc_id , instead of going back to the aws UI or look in the codeto find it, the
           code can output it for you.
  Modules:  this is basically a folder within a folder. its like a container for multiple resources that are used together. Every
            Terraform configuration has at least one module, known as its root module, which consists of the resources defined in
            the .tf files in the main working directory. Any module should include, at minimum, a main.tf , a variables.tf , and 
            an outputs.tf file
              
```


