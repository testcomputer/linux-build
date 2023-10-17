# How to Add Additional Repositories in Red Hat

The core repositories for your operating system version, such as BaseOS and AppStream, are always enabled by default. Therefore, there's no need to explicitly add them to the activation key. However, if you need to add other repositories, this guide will walk you through the process.

## Table of Contents
- [Introduction](#introduction)
- [List Available Repositories](#list-available-repositories)
- [Enable a Repository](#enable-a-repository)
- [Disable a Repository](#disable-a-repository)
- [Check Enabled Repositories](#check-enabled-repositories)
- [Using YUM](#using-yum)
- [Manually Adding Repositories](#manually-adding-repositories)
- [Conclusion](#conclusion)

## Introduction
To add additional repositories in Red Hat, you typically use the `subscription-manager` or the relevant configuration files.

## List Available Repositories
First, check which repositories are available for your system:


        sudo subscription-manager repos --list

## Enable a Repository

Once you've identified the repository you want to enable, use the following command:



        sudo subscription-manager repos --enable=<repository_id>

Replace <repository_id> with the ID of the repository you want to enable.
## Disable a Repository

If you wish to disable a specific repository, use:



        sudo subscription-manager repos --disable=<repository_id>

## Check Enabled Repositories

To see which repositories are currently enabled for your system, use:


        sudo subscription-manager repos --list-enabled

## Using YUM

You can also use the yum command (or dnf in newer versions of Red Hat) to list and manage repositories:


        yum repolist

## Manually Adding Repositories

If the repository isn't available through the subscription manager, you can manually add it by creating a .repo file in the /etc/yum.repos.d/ directory. This requires the baseurl or mirrorlist for the repository. An example .repo file might look like:

        
        [repository_id]
        name=Repository Name
        baseurl=http://path.to/repo
        enabled=1
        gpgcheck=1
        gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release

## Conclusion

Always ensure that you trust the source of any repository you add to your system. Adding untrusted repositories can compromise the security and stability of your system. The core repositories, such as BaseOS and AppStream, are enabled by default in Red Hat. However, depending on your requirements, you might need to add additional repositories like EPEL or others.



You can save the above content as a `.md` file and upload it to your GitHub repository or any platform that su
