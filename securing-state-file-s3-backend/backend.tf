terraform {
    backend "s3" {
        # folder path of where you'd like to save the file
        key = "terraform/tfstate.tfstate"

        bucket = "www.vespuccitest.tk"
        region = "eu-west-2"
        profile = "default"
        #cat ~/.aws/credentials
        #access_key = "your_access_key"
        #secret_key = "your_secret_key"
    }
}
