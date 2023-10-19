markdown

# Enabling Additional Repositories in Red Hat

When using Red Hat, the core repositories like `BaseOS` and `AppStream` are enabled by default. However, there might be situations where you need to enable additional repositories. Below is a step-by-step guide on how to do that.

## **1. List Available Repositories**

To see which repositories are available for your system:
        
        sudo subscription-manager repos --list

2. Enable a Repository

Once you've identified the repository you want to enable:

        
        sudo subscription-manager repos --enable=<repository_id>

Replace <repository_id> with the ID of the repository you want to enable.
3. Disable a Repository

To disable a specific repository:

        
        sudo subscription-manager repos --disable=<repository_id>

4. Check Enabled Repositories

To view the repositories that are currently enabled:


        
        sudo subscription-manager repos --list-enabled

5. Using YUM

You can also use the yum command (or dnf in newer versions of Red Hat) to see the repositories:
        
        yum repolist

6. Manually Adding Repositories

If a repository isn't available through the subscription manager, you can add it manually:

Create a .repo file in
    
            /etc/yum.repos.d/.
            
 Add the following:

        
        [repository_id]
        name=Repository Name
        baseurl=http://path.to/repo
        enabled=1
        gpgcheck=1
        gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-redhat-release

  
  Note: Ensure that you trust the source of any repository you add. Untrusted repositories can compromise the security and stability of your system.
