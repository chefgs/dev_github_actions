# Chef Cookbook DIY Github Action
### Workflow Details
Chef is widely used Infra as code technology in DevOps World. 
This specific GitHub Action Workflow has been used for creating DIY deployment for Chef cookbooks. 
The below mentioned Continuous Integration aspects are covered in the Workflow,
- It checks-out the code into Workspace
- Performs Cookbook Code Analysis using `cookstyle`
- Executes the cookbook in local mode (`chef-client - z` option)
- Executes the `rspec` unit test cases  (Chef Behaviour driven development)
- Packages the cookbooks using `Berkshelf` which uses `berksfile` 
- Creates tar.gz archive of Cookbook packages
- In case of any workflow failures, it sends out email to respective developers and maintainers of the repository
