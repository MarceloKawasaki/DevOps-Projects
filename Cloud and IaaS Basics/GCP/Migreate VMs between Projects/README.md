# Migrate VMs between Projects

[Project is based on real in company task to migrate VMs between projects]

### This project has the objective of migrating VMs between projects in GCP
<br />

- Pre-requisites:
  - Have an GCP account
  - Have installed on your local machine the gcloud CLI
<br />

- Some heads-up:
  - The [best practice advised by google](https://cloud.google.com/knowledge/kb/how-to-move-an-instance-to-another-project-000004456) is to first stop the VMs and then create the Image. In order to not have problems if there are continuous processes happening in the VM
  - In this task specifically, the VM was not running an important process and it was better to not stop the VM, so we did an different approach here
  - Well, you can always to the processes manually directly in the GCP, but is a good thing to know how to work with CLI
  - In this specific case, it didn't have any specific requirement for IP, Subnets etc.

- Steps:
1. Connect to your GCP account, open the project and know which VM is going to be migrated

2. Connect gcloud CLI into the desired account/project
    - Logout from any current account ```gcloud auth revoke```
    - Login to desired account ```gcloud auth login```
    - Configure default project ```gcloud config set project <project_id>```
3. Once connected, we first will create a snapshot from the Disk
    - The reason to do this, is because you cannot create an image from a VM that has a Disk attached to it, you would need to detach the Disk to do so, but we didn't want to do that
    - So, to create the snapshot we run this command: ```gcloud compute snapshots create <snapshot_name> --source-disk=<disk_name> --source-disk-zone <zone>```
    - Depending on the storage size of the disk, it will take a while
4. Create an Image from the Snapshot created
    - Run: ```gcloud compute images create <image_name> --source-snapshot=<snapshot_name> --storage-location<zone>```
5. Then we are good to create the VM in any other desired project
    - Run: ```gcloud compute instances create <vm_name> --image=<image_name> --image-project=<project_name> --project=<project_name> --subnet default```
    - The "--image project" is the project where the Image was created, and the "--project" is the desired project to create the VM


